import java.lang.Integer;
import java.lang.Math;
import java.util.Arrays;

/**
 * The scoreboard division and mod operations changed in 1.13.1, which broke the way I was bit-shifting scoreboard values
 * for negative values.
 * https://minecraft.gamepedia.com/1.13.1#Changes
 * This will affect both the parse_instruction function and memory write function. I have to figure out what the impact is
 * and how to fix it.
 */
public class NewScoreboardDivTest {
    public static void main(String[] args) {
        long oldFailed = 0;
        long newFailed = 0;

        TestMethod oldMethod = (instruction, shift, mask) -> {
            int result = instruction;
            result /= Math.pow(2, shift);
            result %= mask + 1;
            if (instruction < 0) {
                result += mask;
            }
            return result;
        };

        TestMethod newMethod = (instruction, shift, mask) -> Math.floorMod(Math.floorDiv(instruction, (int) Math.pow(2, shift)), mask + 1);

        TestMethod correctMethod = (instruction, shift, mask) -> (instruction >>> shift) & mask;

        for (int i = -10; i < 0; i++) {
            Instruction oldI = new Instruction(i, oldMethod);
            Instruction newI = new Instruction(i, newMethod);
            Instruction correctI = new Instruction(i, correctMethod);
            if (Stream.of(oldI, newI, correctI).distinct().count() > 1) {
                System.out.println(i);
                System.out.println("Correct: " + correctI);
                if (!oldI.equals(correctI)) {
                    oldFailed++;
                    System.out.println("Old:     " + oldI);
                }
                if (!newI.equals(correctI)) {
                    newFailed++;
                    System.out.println("New:     " + newI);
                }
                System.out.println();
            }
        }

        System.out.println(oldFailed + " old failed, " + newFailed + " new failed");
    }

    private static int maskForNBits(int n) {
        return (1 << n) - 1;
    }

    interface TestMethod {
        int calculate(int instruction, int shift, int mask);
    }

    public static class Instruction {

        private int[] nibbles = new int[8];
        private int opcode;
        private int rs;
        private int rt;
        private int rd;
        private int shamt;
        private int funct;
        private int immediate;
        private int address;

        public Instruction(int instruction, TestMethod testMethod) {
            this.nibbles[0] = testMethod.calculate(instruction, 0, maskForNBits(4));
            this.nibbles[1] = testMethod.calculate(instruction, 4, maskForNBits(4));
            this.nibbles[2] = testMethod.calculate(instruction, 8, maskForNBits(4));
            this.nibbles[3] = testMethod.calculate(instruction, 12, maskForNBits(4));
            this.nibbles[4] = testMethod.calculate(instruction, 16, maskForNBits(4));
            this.nibbles[5] = testMethod.calculate(instruction, 20, maskForNBits(4));
            this.nibbles[6] = testMethod.calculate(instruction, 24, maskForNBits(4));
            this.nibbles[7] = testMethod.calculate(instruction, 28, maskForNBits(4));

            this.opcode = testMethod.calculate(instruction, 26, maskForNBits(6));
            this.rs = testMethod.calculate(instruction, 21, maskForNBits(5));
            this.rt = testMethod.calculate(instruction, 16, maskForNBits(5));
            this.rd = testMethod.calculate(instruction, 11, maskForNBits(5));
            this.shamt = testMethod.calculate(instruction, 6, maskForNBits(5));
            this.funct = testMethod.calculate(instruction, 0, maskForNBits(6));
            this.immediate = testMethod.calculate(instruction, 0, maskForNBits(16));
            this.address = testMethod.calculate(instruction, 0, maskForNBits(28));
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof Instruction)) return false;
            Instruction that = (Instruction) o;
            return opcode == that.opcode &&
                    rs == that.rs &&
                    rt == that.rt &&
                    rd == that.rd &&
                    shamt == that.shamt &&
                    funct == that.funct &&
                    immediate == that.immediate &&
                    address == that.address &&
                    Arrays.equals(nibbles, that.nibbles);
        }

        @Override
        public int hashCode() {
            int result = Objects.hash(opcode, rs, rt, rd, shamt, funct, immediate, address);
            result = 31 * result + Arrays.hashCode(nibbles);
            return result;
        }

        @Override
        public String toString() {
            return "Instruction{" +
                    "nibbles=" + Arrays.toString(nibbles) +
                    ", opcode=" + opcode +
                    ", rs=" + rs +
                    ", rt=" + rt +
                    ", rd=" + rd +
                    ", shamt=" + shamt +
                    ", funct=" + funct +
                    ", immediate=" + immediate +
                    ", address=" + address +
                    '}';
        }
    }
}
