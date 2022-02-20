# Cloud w/ a Chance of Rain

> To help out your local meteorologist, you decide to write a sophisticated program that can determine the chance of rain for any given six hours. Hint: think about or's and and's in probability!
> 
> For each input, you will receive a space-separated array of integers (each between 0 and 100) that represent the percent chance of rain for each hour in a six hour period. Your program should return the percent chance (rounded down to the nearest integer) that it rains during any of those six hours.
> 
> Sample Input 1: 5 93 83 28 100 8 
> Sample Output 1: 100
> 
> Sample Input 2: 26 13 4 16 28 30 Sample Output 2:
> 73
> 
> Notes:
> 
> the inputs will be passed in (through stdin) separated by newlines; make sure your output (returned on stdout) is also separated by newlines
the first line of input will contain only one integer representing the number of additional lines of input you will receive

The formula to calculate probability is 1 minus the sum of all probabilities not happening

```python
def main():
	numValues = input()
	for i in range(0, numValues):
		vals = map(int, input().split())
		complement = 1
		for i in vals:
			complement *= ((100-i)/100.0)
		print(int((1-complement)*100))

main()
```
