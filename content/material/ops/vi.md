---
title: VI
author: kleinen
tools: ['vi']
tags: ['vi']
courses: ['info2','networks']
draft: false
date: 2021-10-08
---
# VI
You should learn a couple of vi commands to survive, as vi is available on most *nix computers.

## The absolute minimum
There are two modes in vi: normal and insert.
You need to know which mode you are in, as different commands are available.
[(Why this may be problematic has been discussed thoroughly in the UX field)](https://www.nngroup.com/articles/modes/)
- Normal Mode:
	- vi starts there
	- **get there with `ESC`**
	- start command with`:`
	- `:w` write (save) file
	- `:q` quit (without save, won’t quit if there are changes)
	- **`:wq` quit and save**
	- `:q!` quit without save no matter what
	- < `h`  ^` j`    v `k ` >` l ` the keys under your right hand double as cursor keys; this makes editing fast!
- Insert Mode:
	- type to insert text
	- get there with any insert command, eg
		-  **`i` insert before cursor**
		- `a` insert after cursor
		- `o` insert in new line after this one
		-  `O` insert in new line before this one



## Some Links and further Resources
- [Graphical vi-vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html), [also available in one PDF](https://www.glump.net/_media/howto/desktop/vim-graphical-cheat-sheet-and-tutorial/vi-vim-cheat-sheet-and-tutorial.pdf)
- [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html)
- [Learning the vi Editor/Vim/Modes - Wikibooks, open books for an open world](https://en.wikibooks.org/wiki/Learning_the_vi_Editor/Vim/Modes)
