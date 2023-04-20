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
$ janet main.janet <file> [speed] [mode] [scale]
```
where `mode` is either `term` or `window`, and `speed` and `scale` are any
number greater than 1. A new window should appear with the game running inside.
The default values are `speed = 20`, `mode = window`, and `scale = 10`. `scale`
only affects the game when running in window mode.

## Seeds
The seed file is determined by the first argument passed to the program, called
`file`. The example seeds are formatted with `.` representing dead cells and `$`
representing alive cells. These can be changed by changing the definitions in
`parse.janet`. An example of running the program with a specific seed file is:
```
$ janet main.janet "seeds/glidergun.txt" 50 "window" 20
```

# Purpose
This is just a fun project to learn the basics of Janet.

# TODO
Planned features:
- Add more options for how the simulation is run
- Optimize!
- Clean up code :)
