# Jet's Pizza

> Jet's Pizza is opening up for business and they're tring to figure out an easy way to calculate the price of a pizza. Pizzas can have any combination of the following toppings (at least one topping is required per pizza): tomatoes (+$1.50), onions (+$1.25), pineapple (+$3.50), mushrooms (+$3.75), and avocado (+$0.40). The base price of a pizza is $15 but if the total ends up being over $20, a 5% discount is applied (with the final price rounded to the nearest cent). Your job is to create a program (Python 3.8) that takes in a user's topping preference and return the pizza's price.
> - Sample Input 1: TPM
> - Sample Output 1: 22.56
> - Explanation 1: The toppings of tomatoes (T), pineapple (P), and mushrooms (M) add $8.75 to the base price of $15. Because this is over $20, a 5% discount is applied.
> - Sample Input 2: AAAAAAAMMTGTMMMXMMT
> - Sample Output 2: 19.62
> - Explanation 2: Though some toppings are repeated and in a random order, they still only count once. Avocadoes, mushrooms, and tomatoes add $5.65 to the base price of $15. Because this is over $20, a 5% discount is applied. The characters that do not correspond to valid toppings (G and X) are ignored.
> - Notes: the seven inputs will be passed in (through stdin) separated by newlines; make sure your output (returned on stdout) is also separated by newlines; format your outputs as standard dollar amounts (rounded to the nearest cent with trailing zeroes as necessary) without the dollar sign; Every input will consist of at least one valid topping.

```python
def calculate(order):
	cost = 15
	if "A" in order:
		cost += 0.4
	if "T" in order:
		cost += 1.5
	if "O" in order:
		cost += 1.25
	if "P" in order:
		cost += 3.5
	if "M" in order:
		cost += 3.75
	if cost > 20:
		cost = cost * 0.95
	return cost

def main():
	orders = []
	for i in range(0,7):
		order = input()
		orders.append(order)
	for order in orders:
		print("{:.2f}".format(calculate(order)))

main()
```
