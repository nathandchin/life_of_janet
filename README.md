# Background
## Life
[Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
is a cellular automaton.

## Janet
[Janet](https://janet-lang.org/index.html) is a very neat Lisp-like language.

# Running
To run the program, install the
[latest release](https://github.com/janet-lang/janet/releases) on Github, then
run
```
$ janet life.janet <mode> <speed> <scale>
```
where `mode` is either `term` or `window`, and `speed` and `scale` are any
number greater than 1. A new window should appear with the game running inside.

# Purpose
This is just a fun project to help me learn Janet. Code could use a lot of work.

# TODO
Planned features:
- Add ability to read the initial state from external file
- Add more options for how the simulation is run
- Optimize!
- Clean up code :)
