import os
import sys

# Force the terminal to process ANSI (Purple Colors) and keep font state
if os.name == 'nt':
    from ctypes import windll
    k = windll.kernel32
    k.SetConsoleMode(k.GetStdHandle(-11), 7)

# Your Purple Theme Variable
theme_color = "\033[38;2;200;120;255m"
white = "\033[37m"
reset = "\033[0m"

def RefreshTheme():
    # Clears any weird font overrides left by PowerShell
    sys.stdout.write(reset)
    os.system('cls' if os.name == 'nt' else 'clear')