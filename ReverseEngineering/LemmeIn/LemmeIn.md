# Lemme In

> I want to join this secret club, but they have the weirdest passwords! I've managed to intercept the program they use to authenticate the passwords, but I don't know how to figure it out. Can you figure out the password for me?

The encryption algorithm is simple enough, the input string is reversed then values 1-5 are added to the ASCII values of each character. Decrypting will simply involve subtracting said value and reversing the string.

```python
def roll(text):
        return text[::-1]

def swoop(text):
        text = list(text)
        for i in range(len(text)):
                text[i] = chr(ord(text[i]) + (i % 5))
        return ''.join(text)

#password = input("Enter the password: ")
#if swoop(roll(password)) == "}12u7#dvl{$`fos_4jwchb}jelg":
#       print("Welcome in!")
#else:
#       print("Sorry, wrong password.")

def crack(text):
        text = list(text)
        for i in range(len(text)):
                text[i] = chr(ord(text[i]) - (i % 5))
        return ''.join(text)

flag = roll(crack("}12u7#dvl{$`fos_4jwchb}jelg"))
print(flag)
```

The flag is `flag{ah_th3_old_$witc#3r00}`
