RANDOM KICKASS SCRIPTS
======================

This is just gonna be a bunch of useful UNIX scripts.

Expect a lot of text processing, flat file smashing, log cruising, dragon
slaying, killer scripts and one-liners. I'll also do some educational
stuff.

| Script                          | Description                                                                           |
| ---                             | ---                                                                                   |
| [Word Refactor](#word-refactor) | Simple refactoring script that replaces word strings, while cognizant of word endings |
| [qry](#qry)                     | git-ls-files / find / grep wrapper (surprisingly useful)                              |

Word Refactor
-------------

```bash
» echo  "its itsraining() [its] raining() rainginginging raining" | ./word_refactor.pl -m its=es -m raining=regnet
es itsraining() [es] regnet() rainginginging regnet
```

Qry
---

```bash
» qry -name ‘*.java’ -- -i ‘beanname’
```

- [ ] rename to `gfg`
- [ ] actually make it a git wrapper
- [ ] optional use of any three
- [ ] fix stupid xargs bug
