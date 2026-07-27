# Useful links
https://www.pathofexile.com/item-filter/about
https://www.poewiki.net
https://www.craftofexile.com
https://poedb.tw/us
https://www.filterblade.xyz

# 3.29 To-Do
* Create a `update-economy` script that updates all filter files that have `.econ`.

* Synth items were removed. Gotta clean those gear sections up and add it as a legacy base type.
* Modpool changes need implementing:
    * Added a new Modifier that can roll on Jewels, providing 10-15% increased Mana Cost Efficiency.
    * Chance to Block Attack Damage and Chance to Block Spell Damage Modifiers can now roll on Staves.
    * Modifiers to the level of all Spell Skill Gems and all Spell Skill Gems of a specific damage type on Staves now all have an additional Modifier tier. The lower tier Modifiers appear much more commonly and can roll on Staves at earlier levels. Modifiers to the level of all Spell Skill Gems of a specific damage type go up to +4 at the maximum Modifier tier (previously +3).
    * All of the highest tier increased Spell Damage, Fire Damage, Cold Damage and Lightning Damage Prefix Modifiers on caster weapons are now more common, except for the very highest tier.
    * Caster weapons no longer roll increased Fire, Cold and Lightning Damage Suffix Modifiers, nor can these Modifiers be crafted at the crafting bench anymore.
    * Added a new set of increased Spell Critical Strike Chance modifiers on Staves which have 50% higher values than the corresponding modifiers on one-handed caster weapons.
    * Reduced Enemy Stun Threshold Modifiers no longer roll on Sceptres or caster Staves.
    * Stun Duration Modifiers no longer roll on all weapons, but now can only roll on Maces, attack Staves, Swords, Axes and Bows.
    * The top tier increased Cast Speed Modifiers on caster weapons now have the same weightings as the lower tier modifiers (previously these had lower weightings).
    * The Demon's Horn, Opal Wand and Tornado Wand Base Types now have increased Spell Damage Implicit Modifiers, instead of added Damage. Existing items are not affected by this change.

* Figure out a re-organization of the "gem" section.

* `corpse.filter` needs to be revisited mid-league to check up on real prices.
* `splinter.filter` needs to be revisited mid-league to check up on real prices.
* `enshrouding_crystal.filter` needs to be revisited mid-league to check up on real prices.
* `ducat.filter` needs to be revisited mid-league to check up on real prices.
* `sulphur.filter` needs to be revisited mid-league to check up on real tiering. Maybe cluster with gold?
* `amulet.filter` needs to be revisited mid-league to check up on real talisman prices.
* Elaborate `wombgift.filter`.
* Elaborate `vestigial.filter`.
* Elaborate `chart.filter`.

# To-Do

* Update README.md with a summary of current filter contents.
* Elaborate `idols.filter`.
* Set gold breakpoints in order to intelligently hide small amounts per area level.
* Consider hiding some scarabs at the bottom prices.
* Add a wiki page for this project.

* Re-categorize sounds, they are all over the place.
* Sounds should be set in stone because they indicate something to the user which should be standard across styles.
* This sounds idea might indicate that a "base" style from which all other styles inherit might be a good idea.