# Avengers Assemble

> The club I've been trying to get into has tightened up their security a lot! Can you get the password for me again? Note: the file uses the .asm extension which is not necessarily entirely accurate.

Turning the bytecode into something that resembles Python code:

```python
def main():
	inp = input("What's the password? ")
	pwd = ""
	for i in range(len(inp)):
		pwd = pwd + chr(ord(inp[i])) + (i % 7))
	comp = [102, 109, 99, 106, 127, 53, 116, 95, 122, 113, 120, 118, 100, 55, 51, 103, 57, 128]
	incor = False
	for i in range(len(pwd)):
		if pwd[i] != chr(comp[i]) {
  		print("Incorrect password...")
				incor = True
    if incor == True:
		  break
	if incor == True:
	  print("Welcome!")
    
main()
```

The code accepts an input and does a simple method and compares to the given list. The following code will decrypt the required input and give the flag.

```python
def main()
	comp = [102, 109, 99, 106, 127, 53, 116, 95, 122, 113, 120, 118, 100, 55, 51, 103, 57, 128]
	flag = ""	
	for i in range(len(comp)):
		flag = flag + chr(comp[i] - (i % 7))
	print(flag)

main()
```

The flag is `flag{0n_your_13f7}`
