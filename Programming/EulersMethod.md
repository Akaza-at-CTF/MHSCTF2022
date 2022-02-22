# Euler's Method

> Naturally, your favorite class of the day is AP Calculus BC and you've recently been learning Euler's Method. Your teacher has had a lot on their plate, so they've just been using the same curve for your homework problems every day, y'(x) = x^2 - 6y^2, y(5) = 2. To simplify matters, you're going to write a program to automate this trivial task for you.
> For each input, you will receive a space-separated set of two numbers (each between -10 and 10). The first is your step size and the second is the x-value of the point you need the estimated y-value for (to the nearest tenth and incuding trailing zero if necessary). Your output will be between -1,000 and 1,000.
> 
> Sample Input 1: 0.8 5.8
> Sample Output 1: 2.8
> 
> Sample Input 2: 0.9 7.7
> Sample Output 2: -645.1
> 
> Notes:
> 
> the inputs will be passed in (through stdin) separated by newlines; make sure your output is also separated by newlines
the first line of input will contain only one integer representing the number of additional lines of input you will receive

Apply Euler's method.

```python
def main():
  numValues = int(input())
  for i in range(0, numValues):
    val = list(map(float, input().split()))
    h = val[0]
    if h > 10: 
      h = 10
    elif h < -10:
      h = -10
    xt = val[1]
    if xt > 10:
      xt = 10
    elif xt < -10:
      xt = -10
    y = 2
    x = 5
    steps = int(round(xt-x,1)/h) #rounding is necessary due to floating point error
    for j in range(0, steps):
      y = y + h * (pow(x, 2) - 6 * pow(y,2))
      x = x + h
    if y > 1000:
      y = 1000
    elif y < -1000:
      y = -1000
    print(round(y,1))

main()
```
