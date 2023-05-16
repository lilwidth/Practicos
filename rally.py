MORSE_DATOS= {
    'A': '.-',
    'B': '-...',
    'C': '-.-.',
    'D': '-..',
    'E': '.',
    'F': '..-.',
    'G': '--.',
    'H': '....',
    'I': '..',
    'J': '.---',
    'K': '-.-',
    'L': '.-..',
    'M': '--',
    'N': '-.',
    'O': '---',
    'P': '.--.',
    'Q': '--.-',
    'R': '.-.',
    'S': '...',
    'T': '-',
    'U': '..-',
    'V': '...-',
    'W': '.--',
    'X': '-..-',
    'Y': '-.--',
    'Z': '--..',
    '1': '.----',
    '2': '..---',
    '3': '...--',
    '4': '....-',
    '5': '.....',
    '6': '-....',
    '7': '--...',
    '8': '---..',
    '9': '----.',
    '0': '-----',
    '.': '.-.-.-',
    ',': '--..--',
    '?': '..--..',
    '\'': '· − − − − ·',
    '!': '− · − · − −',
    '/': '− · · − ·',
    '(': '− · − − ·',
    ')': '− · − − · −',
    '&': '· − · · ·',
    ':': '− − − · · ·',
    ';': '− · − · − ·',
    '=': '− · · · −',
    '+': '· − · − ·',
    '-': '− · · · · −',
    '_': '· · − − · −',
    '"': '· − · · − ·',
    '$': '· · · − · · −',
    '@': '· − − · − ·',
    }





def FraseMorse(frase):
    morse=""
    for caracter in frase:
        caracter=caracter.upper()
        if caracter in MORSE_DATOS:
            codigoMorse=MORSE_DATOS[caracter]
            morse=morse+codigoMorse+""
        else:
            morse = morse + ""
    return morse.strip()

def MorseFrase(morse):
    frase = ""
    caracteres = morse.split(" ")
    for codigo in caracteres:
        for clave, valor in MORSE_DATOS.items():
            if valor == codigo:
                frase = frase + clave
                break
            else:
                frase = frase + ""
    return frase


texto = input("Ingrese un texto o código Morse: ")
if "-" in texto or "." in texto:
    frase = MorseFrase(texto)
    print("Frase original:", frase)
else:
    codigo_morse = FraseMorse(texto)
    print("Código Morse:", codigo_morse)