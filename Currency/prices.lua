
-- prices.lua

-- Table for prices for different minecraft items and blocks,
-- sorted by category
-- This table was generated by generate_prices.py

PRICES = {
    ["Ores (Raw)"] = {
        {263, 0, "coal", 8},
        {16, 0, "coal (ore)", 30},
        {173, 0, "block of coal", 72},
        {265, 0, "iron (ingot)", 15},
        {15, 0, "iron (ore)", 12},
        {42, 0, "iron (block)", 135},
        {266, 0, "gold (ingot)", 40},
        {14, 0, "gold (ore)", 30},
        {41, 0, "gold (block)", 360},
        {264, 0, "diamond (gem)", 160},
        {56, 0, "diamond (ore)", 640},
        {57, 0, "diamond (block)", 1450},
        {351, 4, "lapis lazuli (dye)", 8},
        {21, 0, "lapis lazuli (ore)", 120},
        {22, 0, "lapis lazuli (block)", 70},
        {388, 0, "emerald", 100},
        {129, 0, "emerald ore", 800},
        {133, 0, "block of emerald", 900},
        {406, 0, "nether quartz", 10},
        {153, 0, "nether quartz ore", 40},
        {155, 0, "block of quartz", 40},
        {331, 0, "redstone (dust)", 4},
        {73, 0, "redstone (ore)", 60},
        {74, 0, "redstone (ore)", 60},
        {152, 0, "block of redstone", 36},
        {348, 0, "glowstone (dust)", 4},
        {89, 0, "glowstone (block)", 15},
    },

    ["Blocks (Raw)"] = {
        {3, 0, "dirt", 1},
        {2, 0, "grass", 4},
        {4, 0, "cobblestone", 1},
        {1, 0, "stone", 2},
        {13, 0, "gravel", 3},
        {12, 0, "sand", 1},
        {48, 0, "mossy cobble", 5},
        {332, 0, "snowball", 2},
        {80, 0, "snow (block)", 4},
        {337, 0, "clay (ball)", 3},
        {82, 0, "clay (block)", 12},
        {79, 0, "ice", 6},
        {49, 0, "obsidian", 12},
        {121, 0, "endstone", - (20)},
        {87, 0, "netherrack", 1},
        {88, 0, "soul sand", 4},
        {110, 0, "mycelium", 10},
        {35, 0, "wool (white)", 6},
        {35, -1, "wool (coloured)", 10},
    },

    ["Blocks (Crafted)"] = {
        {44, 3, "cobblestone slab", 1},
        {67, 0, "cobblestone steps", 2},
        {44, 0, "stone slab", 1},
        {139, 0, "cobblestone fence", 1},
        {139, 1, "mossy cobblestone fence", 5},
        {24, 0, "sandstone", 4},
        {44, 1, "sandstone slab", 2},
        {128, 0, "sandstone steps/stairs", 6},
        {24, 1, "decorative sandstone", 4},
        {24, 2, "smooth sandstone", 4},
        {98, 0, "stone brick", 2},
        {44, 5, "stone brick slab", 1},
        {109, 0, "stone brick steps/stairs", 3},
        {98, 1, "stone bricks (mossy)", 6},
        {98, 2, "stone bricks (cracked)", 5},
        {98, 3, "stone block (chiseled)", 50},
        {45, 0, "red bricks", 15},
        {108, 0, "red brick steps/stairs", 25},
        {44, 4, "red brick slab", 8},
        {336, 0, "clay brickette (single)", 4},
        {172, 0, "hardened clay", 15},
        {405, 0, "nether brickette", 2},
        {112, 0, "nether bricks", 8},
        {44, 6, "nether brick slab", 4},
        {114, 0, "nether brick steps/stairs", 12},
        {44, 7, "quartz slab", 20},
        {156, 0, "quartz steps/stairs", 60},
        {155, 2, "quartz block (pillar)", 40},
        {155, 1, "quartz block (chiseled)", 40},
    },

    ["Wood & Plants"] = {
        {17, 0, "logs (oak)", 8},
        {17, 1, "logs (spruce)", 8},
        {17, 2, "logs (birch)", 9},
        {17, 3, "logs (jungle)", 4},
        {5, 0, "wood planks (oak)", 2},
        {44, 2, "wood slab (oak)", 1},
        {53, 0, "wood steps/stairs (oak)", 3},
        {125, 1, "wood planks (spruce)", 2},
        {126, 1, "wood slab(spruce)", 1},
        {134, 0, "wood steps/stairs (spruce)", 3},
        {125, 2, "wood planks (birch)", 2},
        {126, 2, "wood slab(birch)", 1},
        {135, 0, "wood steps/stairs (birch)", 3},
        {125, 3, "wood planks (jungle)", 1},
        {126, 3, "wood slab(jungle)", 1},
        {136, 0, "wood steps/stairs (jungle)", 2},
        {18, -1, "leaves", 1},
        {6, 0, "sapling (oak)", 15},
        {6, 1, "sapling (spruce)", 15},
        {6, 2, "sapling (birch)", 20},
        {6, 3, "sapling (jungle)", 12},
        {37, 0, "dandelion", 2},
        {38, 0, "rose", 2},
        {31, 1, "tall grass", 1},
        {31, 2, "fern", 2},
        {31, 0, "dead shrub", 3},
        {106, 0, "vines", 2},
        {81, 0, "cactus", 3},
        {111, 0, "lily pad", 6},
    },

    ["Food & Farming"] = {
        {365, 0, "chicken (raw)", 8},
        {366, 0, "chicken (cooked)", 9},
        {319, 0, "porkchop (raw)", 12},
        {320, 0, "porkchop (cooked)", 13},
        {363, 0, "beef/steak (raw)", 10},
        {364, 0, "beef/steak (cooked)", 11},
        {349, 0, "fish (raw)", 20},
        {350, 0, "fish (cooked)", 21},
        {392, 0, "potato (raw)", 4},
        {393, 0, "baked potato (cooked)", 5},
        {394, 0, "poisonous potato", 1},
        {391, 0, "carrot", 4},
        {260, 0, "red apple", 60},
        {322, 0, "golden apple", 400},
        {360, 0, "melon (slice)", 2},
        {103, 0, "melon (block)", 25},
        {86, 0, "pumpkin", 10},
        {39, 0, "brown mushroom", 6},
        {40, 0, "red mushroom", 6},
        {282, 0, "mushroom stew", 15},
        {297, 0, "bread", 5},
        {357, 0, "cookie", 1},
        {400, 0, "pumpkin pie", 15},
        {354, 0, "cake", 30},
        {295, 0, "seeds", 2},
        {362, 0, "melon seeds", 2},
        {361, 0, "pumpkin seeds", 3},
        {351, 3, "cocoa beans", 2},
        {296, 0, "wheat", 2},
        {338, 0, "sugar cane", 2},
        {353, 0, "sugar", 2},
        {344, 0, "egg", 2},
        {335, 0, "milk (+bucket=40)", 45},
        {170, 0, "hay bale", 20},
        {382, 0, "glistering melon", 40},
    },

    ["Drops"] = {
        {318, 0, "flint", 4},
        {289, 0, "gunpowder", 10},
        {371, 0, "gold nugget", 5},
        {334, 0, "leather", 20},
        {288, 0, "feather", 4},
        {352, 0, "bone", 6},
        {351, 15, "bone meal", 2},
        {287, 0, "string", 4},
        {367, 0, "rotten flesh", 1},
        {375, 0, "spider eye", 8},
        {376, 0, "fermented spider eye", 18},
        {341, 0, "slimeball", 25},
        {368, 0, "ender pearl", 10},
        {381, 0, "eye of ender", 35},
        {369, 0, "blaze rod", 50},
        {377, 0, "blaze powder", 25},
        {378, 0, "magma cream", 50},
        {370, 0, "ghast tear", 200},
    },

    ["Decorative"] = {
        {58, 0, "workbench/crafting table", 4},
        {61, 0, "furnace", 10},
        {62, 0, "furnace", 10},
        {54, 0, "chest", 15},
        {146, 0, "trapped chest", 25},
        {130, 0, "ender chest", 140},
        {154, 0, "hopper", 100},
        {23, 0, "dispenser", 35},
        {84, 0, "jukebox", 180},
        {25, 0, "note block", 25},
        {145, 0, "anvil", 465},
        {380, 0, "cauldron", 100},
        {116, 0, "enchantment table", 400},
        {47, 0, "bookshelf", 75},
        {20, 0, "glass", 3},
        {102, 0, "glass pane", 1},
        {101, 0, "iron bars", 6},
        {85, 0, "fence", 3},
        {107, 0, "fence gate", 8},
        {113, 0, "nether fence", 24},
        {323, 0, "sign", 4},
        {65, 0, "ladders", 2},
        {321, 0, "painting", 14},
        {389, 0, "item frame", 30},
        {355, 0, "bed", 25},
        {171, -1, "carpet", 7},
    },

    ["Mechanisms"] = {
        {75, 0, "redstone torch", 6},
        {76, 0, "redstone torch", 6},
        {69, 0, "lever", 2},
        {143, 0, "wooden button", 2},
        {77, 0, "stone button", 2},
        {72, 0, "wooden pressure plate", 4},
        {70, 0, "stone pressure plate", 4},
        {147, 0, "weighted pressure plate (light)", 30},
        {148, 0, "weighted pressure plate (heavy)", 80},
        {96, 0, "trapdoor", 5},
        {324, 0, "wooden door", 10},
        {330, 0, "iron door", 90},
        {33, 0, "piston", 30},
        {29, 0, "sticky piston", 55},
        {131, 0, "tripwire hook", 10},
        {151, 0, "daylight sensor", 50},
        {123, 0, "redstone lamp", 35},
        {124, 0, "redstone lamp", 35},
        {356, 0, "redstone repeater", 25},
        {404, 0, "redstone comparator", 30},
    },

    ["Misc"] = {
        {280, 0, "stick", 1},
        {50, 0, "torch", 2},
        {339, 0, "paper", 2},
        {66, 0, "rails", 6},
        {27, 0, "powered rail", 40},
        {28, 0, "detector rail", 16},
        {157, 0, "activator rail", 15},
        {328, 0, "minecart", 80},
        {327, 0, "lava (+bucket=40)", 100},
        {420, 0, "leash", 20},
        {329, 0, "saddle", 250},
        {333, 0, "boat", 10},
        {340, 0, "book", 20},
        {386, 0, "book and quill", 35},
        {281, 0, "bowl", 2},
        {325, 0, "bucket", 40},
        {390, 0, "flower pot", 12},
        {140, 0, "flower pot", 12},
    },

    ["Dyes and Crafting"] = {
        {351, 11, "dandelion yellow", 2},
        {351, 15, "bonemeal (white)", 2},
        {351, 14, "orange dye", 2},
        {351, 1, "rose red", 2},
        {351, 10, "lime dye", 3},
        {351, 2, "cactus green", 4},
        {351, 9, "pink dye", 2},
        {351, 13, "magenta dye", 4},
        {351, 5, "purple dye", 5},
        {351, 4, "lapis lazuli (blue)", 8},
        {351, 6, "cyan dye", 6},
        {351, 12, "light blue dye", 5},
        {351, 7, "light gray dye", 5},
        {351, 8, "gray dye", 6},
        {351, 0, "ink sac (black)", 10},
        {351, 3, "cocoa beans (brown)", 2},
    },

    ["Brewing"] = {
        {379, 0, "brewing stand", 55},
        {372, 0, "nether wart seeds", 4},
        {374, 0, "glass bottle", 3},
    },

    ["Tools & Weapons"] = {
        {261, 0, "bow", 20},
        {262, 0, "arrow", 3},
        {346, 0, "fishing rod", 10},
        {359, 0, "shears", 30},
        {259, 0, "flint and steel", 20},
        {345, 0, "compass", 65},
        {347, 0, "clock", 165},
    }
}
