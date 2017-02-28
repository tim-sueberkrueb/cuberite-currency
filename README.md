## Simple Currency Plugin for Cuberite

A simple plugin which lets you buy and sell items for a virtual
currency ("coins") on [Cuberite][cuberite-org] Minecraft servers.

Contains the sqlite.lua module from [Cuberite's Core plugin][cuberite-core-gh].
Prices list from [http://www.naughtynathan.co.uk/minecraft/prices.htm](http://www.naughtynathan.co.uk/minecraft/prices.htm).

This is my first Cuberite plugin and Lua project created as an experiment. There be dragons ;) Pull requests and suggestions for improvements welcome!

### Installation
Copy the `Currency` folder to `<path-to-cuberite>/Server/Plugins/` and
enable the plugin in the `settings.ini` file.

### Usage
This plugin adds the following commands:

* `/account <playername> <set:get:add:sub> <value>` Administrate accounts (admin)
* `/coins` Display coins (everyone)
* `/buy <itemname:itemid> <amount>` Buy an item from the virtual marked (everyone)
* `/sell` Sell the currently selected item (everyone)

Limitations:

* Only looks for player names, thus doesn't respect player name changes
* Market purely virtual, no restrictions
* Not all items tradable.

### License
This software is licensed under the Apache License, version 2.0.
See LICENSE for more information.

[cuberite-org]: http://cuberite.org/
[cuberite-core-gh]: https://github.com/cuberite/Core

