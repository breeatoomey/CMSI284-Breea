def nato_alphabet():
    letter_to_nato_alphabet = {'a':'alpha', 'b':'bravo', 'c':'charlie',
    'd':'delta', 'e':'echo', 'f':'foxtrot', 'g':'golf', 'h':'hotel',
    'i':'india', 'j':'juliett', 'k':'kilo', 'l':'lima', 'm':'mike',
    'n':'november', 'o':'oscar', 'p':'papa', 'q':'quebec', 'r':'romeo',
    's':'sierra', 't':'tango', 'u':'uniform', 'v':'victor', 'w':'whiskey',
    'x':'xray', 'y':'yankee', 'z':'zulu'}

    message_initial = input('Enter message: ')
    message_initial = ''.join(char for char in message_initial if char.isalpha()).lower()
    for char in message_initial:
        print(letter_to_nato_alphabet[char])

nato_alphabet()
