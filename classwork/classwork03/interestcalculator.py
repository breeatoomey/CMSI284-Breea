# Read initial balance
# Read annual interest rate
# Interest compounded monthly

def interest_calculator():
    initial = eval(input('Initial balance: '))
    rate = eval(input('Annual interest rate in percent: ')) / 100.00

    print('After first month: $' + calculate_final(initial, rate, 1)
      + '\nAfter second month: $' + calculate_final(initial, rate, 2)
      + '\nAfter third month: $' + calculate_final(initial, rate, 3))

def calculate_final(initial, rate, month):
    return format(initial * (1 + rate/12) ** month, '.2f')

interest_calculator()
