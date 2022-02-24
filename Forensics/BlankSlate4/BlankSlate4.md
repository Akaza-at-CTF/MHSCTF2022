# Blank Slate 4

> There's something seriously wrong with my friend. They keep sending me these blank files! I hate to keep pestering you, but can you figure out what this one says?

There are two distinct unicode characters in the text file, `U+200B` and `U+0020`. These correspond to the bytes `0xE2 0x80 0x8B` and `0x20`. Since there are only two different characters, it is likely to be some kind of binary encoding. The following code reads the file and converts these characters to binary.

```python
f = open("33dc1a20cb2bfd61ee87a3b4126d40ca.txt", "r")
line = f.read()
output = ""
for i in line:
        if ord(i) == 226: #tests for 0xE2 - only need to check for one of the byte values
                output += "0"
        if ord(i) == 32: #tests for 0x20
                output += "1"
print(output)
f.close()
```

It turns out this is just ASCII, so use [RapidTables](https://www.rapidtables.com/convert/number/ascii-hex-bin-dec-converter.html). Note: there is likely a missing byte `0x20` at the end. The flag is `flag{sti11_n0t_b1ank}`
