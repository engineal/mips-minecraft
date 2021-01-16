def get_generator(output_target):
    """Return the appropriate generator for the output format."""
    if output_target == 'setblock':
        return BlockGenerator()
    elif output_target == 'function':
        return FunctionGenerator()
    else:
        raise ValueError(f"output-target must be either setblock or function, not {output_target}!")


class FunctionGenerator:
    """Create Minecraft commands to store this word using the mips32r6:mem function."""

    @staticmethod
    def generate(reader, offset=0):
        """Create Minecraft commands to store this word."""

        # Place memory in write mode
        yield "scoreboard players set write mips32r6_mem 1"

        address = offset
        for value in reader.read(4):
            # Cast unsigned address to 32-bit signed address
            signed_address = address
            if signed_address & 0x80000000:
                signed_address = -0x100000000 + signed_address

            value = int.from_bytes(value, byteorder='little', signed=True)

            yield f"scoreboard players set address mips32r6_mem {signed_address:d}"
            yield f"scoreboard players set value mips32r6_mem {value:d}"
            yield "function mips32r6:mem"

            address += 4


class BlockGenerator:
    """Create Minecraft setblock commands to store this word."""

    def generate(self, reader, offset=0):
        """Create Minecraft commands to store this word."""
        address = offset
        for value in reader.read(1):
            # TODO: translate coords based on memory map
            x = (address // 1024) % 256
            y = (address // 4) % 256
            z = (address % 4) * 2

            yield f"setblock {x} {y} {z} {self.__translate_block(0xF & ord(value))}"
            yield f"setblock {x} {y} {z + 1} {self.__translate_block(0xF & (ord(value) >> 4))}"

            address += 1

    @staticmethod
    def __translate_block(value):
        return [
            "minecraft:white_wool",
            "minecraft:orange_wool",
            "minecraft:magenta_wool",
            "minecraft:light_blue_wool",
            "minecraft:yellow_wool",
            "minecraft:lime_wool",
            "minecraft:pink_wool",
            "minecraft:gray_wool",
            "minecraft:light_gray_wool",
            "minecraft:cyan_wool",
            "minecraft:purple_wool",
            "minecraft:blue_wool",
            "minecraft:brown_wool",
            "minecraft:green_wool",
            "minecraft:red_wool",
            "minecraft:black_wool"
        ][value]
