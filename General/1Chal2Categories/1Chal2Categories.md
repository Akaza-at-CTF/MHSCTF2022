# 1 chal 2 categories

> This is a two-for-one deal! We have reverse engineering and forensics all bunched up into a single challenge! With two categories comes two files. Good luck!

In the source code for encrypting the image, the encryption procedure involves swapping values in a list. To decrypt it, simply swap it back by traversing the list in reverse order. Rename the image file to match that in the python code.

```python
def glorp(n):
    g = list(format(n, "08b"))
    for i in range(len(g)-1, -1, -1):
        t = g[i]
        g[i] = g[(i * 332 + 6) % 8]
        g[(i * 332 + 6) % 8] = t
    return int(''.join(g), 2)
```

In the image is some text on the bottom left corner, but is very difficult to read with 3 layers of text. The flag is `flag{tw0_st3p5_t0_v1c70ry}`
