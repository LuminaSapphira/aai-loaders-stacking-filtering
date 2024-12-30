# AAI Loaders - Stacking and Filtering

Adds stacking- and lane-filtering- capable variants of AAI Loaders

In contrast to other similar mods, this mod adds variants of each loader
for stacking-capable, lane-filtering-capable, and stacking- and lane-filtering-capable
loaders. This allows you to build the kind of loader that suits your build without
changing all loaders globally.

It is safe to add to an existing world. No pre-built loaders will be modified.

No runtime scripting! (Apart from that of AAI Loaders itself for lubricant mechanics.)

Requires Space Age DLC license for stacking / stacking + lane-filtering loaders. Lane-filtering-only loaders can still be used without the DLC.

## Configuration

- Each Loader type can be disabled independently
- Built-in mod compatibility can be disabled
- Maximum belt stacking size can be adjusted (still limited by in-world bonus from research)

## Mod Compatibility

- In lieu of Space Age, any mod that provides Stack Inserter may be used to enable stacking loaders.
  - Technology and item prototype names must match Space Age to be detected.
  - Mods adding these may need to be listed as dependencies here before they function properly.
- When a mod adding Lane Balancers/Splitters is enabled, those items will (by default) be used instead of splitters in recipes and icons.
- Compatible mods are listed as optional dependencies

## Help Wanted / Known Issues

- The placed loaders (entities) are visually indistinguishable from the other variants.
  - I don't have the skills to create new sprites. If someone wants to assist, please [create a PR](https://github.com/LuminaSapphira/aai-loaders-stacking-filtering)!
  - Note: the item / recipe icons are layered with vanilla sprites
