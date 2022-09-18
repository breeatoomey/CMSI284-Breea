def morse_code():
    letter_to_morse_code = {'a':'.-', 'b':'-...', 'c':'-.-.', 
    'd':'-..', 'e':'.', 'f':'..-.', 'g':'--.', 'h':'....', 
    'i':'..', 'j':'.---', 'k':'-.-', 'l':'.-..', 'm':'--',
    'n':'-.', 'o':'---', 'p':'.--.', 'q':'--.-', 'r':'.-.',
    's':'...', 't':'-', 'u':'..-', 'v':'...-', 'w':'.--',
    'x':'-..-', 'y':'-.--', 'z':'--..'}

    message_initial = input('Enter message: ')
    # May need to replace all non a-z characters
    message_initial = message_initial.replace(' ', '').lower()
    for char in message_initial:
        print(letter_to_morse_code[char])

morse_code()