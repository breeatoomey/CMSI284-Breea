# Read initial balance
# Read annual interest rate
# Interest compounded monthly

def interest_calculator():
    initial = eval(input('Initial balance: '))
    rate = eval(input('Annual interest rate in percent: ')) / 100.00
    n = eval(input('Number of times interest applied per time period: '))
    t = eval(input('Number of time periods elapsed: '))

    print('Your final amount: $' + calculate_final(initial, rate, n, t))

def calculate_final(initial, rate, n, t):
    return format(initial * ((1 + rate/n) ** (n*t)), '.2f')

interest_calculator()
