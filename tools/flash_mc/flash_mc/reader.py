class BinaryFileReader:
    """Process the binary input file."""

    def __init__(self, file):
        self.file = file

    def read(self, size=1):
        """Read the input file, returning a generator of binary string chunks of size."""
        with open(self.file, 'rb') as f:
            data = f.read(size)
            while data:
                yield data
                data = f.read(size)
