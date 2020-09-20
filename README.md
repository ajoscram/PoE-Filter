# PoE-Filter
An item filter for Path of Exile which strives for readability, ease of use and staying true to the game's colors and sounds.

This filter uses [PoE Filter Generator](https://github.com/ajoscram/PoE-Filter-Generator/wiki) for some very neat sub-filtering. The attached `Subfilters.zip` file includes a lot of extra filters generated via that tool. Once you decompress the file you'll find the following sub-filters generated based on **strictness**:

| Filter | Description |
| :--- | :--- |
| `Base` | Same as the regular download. |
| `Lenient` | Hides start of the league currency. |
| `Semi-strict` | Hides currency that becomes obsolete once quota is met, non-rare atlas bases and non-rare identified items. |
| `Strict` | Hides worthless currency, white maps, magic jewels and all basic rares except jewellry. |
| `Very-strict` |  Hides yellow maps, rare jewels, rare jewellry, ID'ed rares and veiled rares. |
| `Uber-strict` | Hides all red maps except T16s. |

There's also now native **chaos recipe** subfiltering! Previously, users had to create multiple copies of the filter and change each one of them by hand. Every filter listed above also has an associated folder with sub-filters, where each only shows rare iLvl 60+ of a gear piece at a time. These are:

| Subfilter | Description |
| :--- | :--- |
| `Bodies` | shows only iLvl 60+ rare body armours |
| `Helmets` | shows only iLvl 60+ rare helmets |
| `Gloves` | shows only iLvl 60+ rare gloves |
| `Boots` | shows only iLvl 60+ rare boots |
| `Weapons` | shows only iLvl 60+ rare 3x1 weapons (like one handed swords or wands) |
| `Nothing` | shows no iLvl 60+ rare items |

It's important to note that this only affects regular unidentified rares. If the rare item is veiled, influenced, identified, etc. then the item is shown depending on the filter strictness and these rules don't apply.