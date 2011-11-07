# tiles
.section .rodata
.align 2
.global bgTiles
.hidden bgTiles
bgTiles:
	.incbin "../bin/bg.img.bin.z"

.section .rodata
.align 2
.global spriteTiles
.hidden spriteTiles
spriteTiles:
	.incbin "../bin/sprite.img.bin.z"

# palettes
.section .rodata
.align 2
.global bgPal
.hidden bgPal
bgPal:
	.incbin "../bin/bg.pal.bin.z"

.section .rodata
.align 2
.global spritePal
.hidden spritePal
spritePal:
	.incbin "../bin/sprite.pal.bin.z"

#maps
.section .rodata
.align 2
.global carbonfiberMap
.hidden carbonfiberMap
carbonfiberMap:
	.incbin "../bin/carbonfiber.map.bin.z"

.section .rodata
.align 2
.global checker_darkMap
.hidden checker_darkMap
checker_darkMap:
	.incbin "../bin/checker-dark.map.bin.z"

.section .rodata
.align 2
.global checkerMap
.hidden checkerMap
checkerMap:
	.incbin "../bin/checker.map.bin.z"

.section .rodata
.align 2
.global diamondMap
.hidden diamondMap
diamondMap:
	.incbin "../bin/diamond.map.bin.z"

.section .rodata
.align 2
.global diamond_smallMap
.hidden diamond_smallMap
diamond_smallMap:
	.incbin "../bin/diamond-small.map.bin.z"

.section .rodata
.align 2
.global fiberMap
.hidden fiberMap
fiberMap:
	.incbin "../bin/fiber.map.bin.z"

.section .rodata
.align 2
.global fontMap
.hidden fontMap
fontMap:
	.incbin "../bin/font.map.bin.z"

.section .rodata
.align 2
.global submitMap
.hidden submitMap
submitMap:
	.incbin "../bin/submit.map.bin.z"

.section .rodata
.align 2
.global weaveMap
.hidden weaveMap
weaveMap:
	.incbin "../bin/weave.map.bin.z"

