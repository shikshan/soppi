#!/usr/bin/env python3
import sys


def exit(code: int = 0) -> None:
    """Print message and exit with given code"""
    print("\nBye")
    sys.exit(code)


def run_prompt() -> None:
    """Interpret file or REPL"""
    while True:
        try:
            user_in = input(">>> ")
            if user_in == 'quit':
                exit()
        except (EOFError, KeyboardInterrupt):
            exit()


def main() -> None:
    """Main function"""
    banner = r"""
                       _
 ___  ___  _ __  _ __ (_)
/ __|/ _ \| '_ \| '_ \| |
\__ \ (_) | |_) | |_) | |
|___/\___/| .__/| .__/|_|
          |_|   |_|
"""
    args = sys.argv[1:]
    print(banner)
    if len(args) > 1:
        print("Usage: soppii [file]")
        exit(64)
    # elif len(args) == 1:
    #     run_file(args[0])
    else:
        run_prompt()


if __name__ == "__main__":
    main()
