# TaggedZi's EXApunks Solutions

Repo to hold my solutions to the levels in the game [Exapunks by Zachtronics](https://www.zachtronics.com/exapunks/).  I also have a section of notes that I've written down in hopes that I won't forget them or they will help others. They were hard learned lessons, only look if you don't mind spoilers.  

The files created for individual levels are in the appropriate Level folders. When possible I try to include my first working attempt, the lowest cycles, smallest size, and lowest actions. (Sometimes either cycles or size also covers actions.)  Often I will spend hours on a single level and end up with tons of different solutions, so I will only try to include the ones I think worthy of mention.

## Resources in my repo

- [Solutions to levels](https://github.com/taggedzi/exapunks/tree/main/levels)
- [My Notes](https://github.com/taggedzi/exapunks/blob/main/notes)
- [Quick Command Reference](https://github.com/taggedzi/exapunks/blob/main/notes/quick_reference.txt)

## Other Resources

- [Developer Zacktronics](https://www.zachtronics.com/)
- [EXApunks on Steam](https://store.steampowered.com/app/716490/EXAPUNKS/)
- [EXApunks Wiki](https://exapunks.fandom.com/wiki/Exapunks_Wiki) Sadly the wiki is kind underwhelming but it does have some useful info.
- [EXApunks Code Patterns](https://journal.3960.org/posts/2018-08-18-code-patterns-for-exapunks/) <-Amazing
- [EXApunks Network communication](https://journal.3960.org/posts/2018-08-22-network-communication-exapunks/) <- Also Amazing
- [VirtualNetwork+ Scripting Reference](https://www.zachtronics.com/virtualnetwork/)

## How to read my files

At the top of the file will be a `NOTE C, S, A` that lists the number (or count of) Cycles, Size, Actions.

I include the code for ALL initial bots in the same file. I distinguish between bots with comments like `; XA` or `; XB` etc.

I also do put blank lines in my code to break up the code into easier to read chuncks (when I feel like it). You are free to remove the spaces to make the code smaller, but the game does not care about blank space when counting its totals.  

Sample File:
```
NOTE 20, 4, 1

; XA
GRAB 300
COPY F M

; XB
MAKE
COPY M F
```
This is an example of a solution that has 2 starting bots, and allegidly runs with 20 Cycles, Size of 4, and 1 Activity. (No the math doesn't really add up here it was just an example... shh.)