# soppi

```sh
                       _
 ___  ___  _ __  _ __ (_)
/ __|/ _ \| '_ \| '_ \| |
\__ \ (_) | |_) | |_) | |
|___/\___/| .__/| .__/|_|
          |_|   |_|
```

A simple programming language for understanding programming languages better.

## How to use

### With Python 3.7 and make available

```sh
# Clone the repository
$ git clone https://github.com/shikshan/soppi.git
$ cd soppi
# run the interpreter
$ python3 soppi/soppii.py

# You can generate a zipapp to share and run
$ make zipapp
$ python3 dist/soppii

```

### With docker

Use this when you don't have Python 3.7 and make available.

```sh
# Clone the repository
$ git clone https://github.com/shikshan/soppi.git
$ cd soppi

# Build the docker image
$ docker build -t "soppi-i" .

# Run docker container, replace "$(PWD)" with absolute path on non unix-like systems
$ docker run --rm -it -v "$(PWD)"/examples:/soppi/examples soppi-i sh
# Now you are inside docker container. Run the interpreter.
$ python3 soppi/soppii
```
