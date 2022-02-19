# Avengers Assemble 2

> Time for some more exploiting-secret-clubs'-authorization-software-to-gain-access fun! This time, they gave us a file and a website to input our responses. I would do it myself but I have... homework. [mhsctf-avengersassemble2.0xmmalik.repl.co](https://mhsctf-avengersassemble2.0xmmalik.repl.co/) (you may need to wait for the site to wake up) Note: the file uses the .asm extension which is not necessarily entirely accurate. Don't try to brute force the website, there are over 600 million possible combinations.

Analyse the file and look for operations and numbers. The order of operations correspond to:

```
c = (b - a) * (a % b)
d = c + a * b
returned value = b * 5 + a * c - b * d
```

The flag is `flag{1_c0u1d_do_7hi5_@ll_day}`
