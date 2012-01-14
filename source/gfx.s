.macro inc name file
.section .rodata
.align 2
.global \name
.hidden \name
\name:
	.incbin "../bin/\file\.bin.z"

.endm

#backgrounds
inc bgTiles          bg.img
inc bgPal            bg.pal
inc carbonfiberMap   carbonfiber.map
inc checkerMap       checker.map
inc checker_darkMap  checker-dark.map
inc diamondMap       diamond.map
inc diamond_smallMap diamond-small.map
inc fiberMap         fiber.map
inc weaveMap         weave.map

#textures
inc spritePal        sprite.pal
inc fontTex          font.img
inc submitTex        submit.img
