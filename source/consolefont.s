
@{{BLOCK(consolefont)

@=======================================================================
@
@	consolefont, 768x8@8, 
@	+ palette 256 entries, not compressed
@	+ 96 tiles not compressed
@	Total size: 512 + 6144 = 6656
@
@	Time-stamp: 2011-11-05, 00:28:42
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global consolefontTiles		@ 6144 unsigned chars
	.hidden consolefontTiles
consolefontTiles:
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x03,0x03,0x03,0x05,0x00,0x00
	.byte 0x00,0x00,0x02,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00

	.byte 0x00,0x00,0x04,0x05,0x04,0x05,0x00,0x00,0x00,0x00,0x03,0x05,0x03,0x05,0x00,0x00
	.byte 0x00,0x00,0x02,0x05,0x02,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x04,0x05,0x00,0x00,0x04,0x05,0x00,0x00,0x03,0x05,0x00,0x00,0x03,0x05,0x00
	.byte 0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x05,0x05,0x01,0x05,0x05,0x05,0x01,0x05,0x05
	.byte 0x00,0x01,0x05,0x00,0x00,0x01,0x05,0x00,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x05
	.byte 0x05,0x03,0x05,0x05,0x05,0x03,0x05,0x05,0x00,0x05,0x05,0x00,0x00,0x05,0x05,0x00

	.byte 0x00,0x00,0x00,0x04,0x05,0x05,0x00,0x00,0x00,0x00,0x03,0x03,0x03,0x03,0x05,0x00
	.byte 0x00,0x02,0x05,0x02,0x05,0x05,0x05,0x00,0x00,0x05,0x01,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x05,0x01,0x05,0x01,0x05,0x00,0x00,0x02,0x02,0x02,0x02,0x05,0x05,0x00
	.byte 0x00,0x05,0x05,0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x03,0x05,0x00
	.byte 0x02,0x02,0x05,0x00,0x02,0x05,0x05,0x00,0x05,0x05,0x05,0x01,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x02,0x05,0x05,0x02,0x02,0x05,0x00
	.byte 0x03,0x05,0x05,0x00,0x03,0x03,0x05,0x00,0x05,0x05,0x00,0x00,0x05,0x05,0x05,0x00

	.byte 0x00,0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x03,0x05,0x05,0x03,0x05,0x00,0x00
	.byte 0x00,0x02,0x02,0x05,0x02,0x05,0x00,0x00,0x00,0x01,0x01,0x01,0x05,0x05,0x00,0x00
	.byte 0x01,0x05,0x05,0x01,0x01,0x05,0x01,0x05,0x02,0x05,0x00,0x05,0x02,0x02,0x05,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x05,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x05,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x05,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x03,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x00
	.byte 0x00,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x03,0x03,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x05,0x05,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x00,0x00,0x00

	.byte 0x04,0x05,0x00,0x04,0x05,0x00,0x04,0x05,0x05,0x03,0x05,0x03,0x05,0x03,0x05,0x05
	.byte 0x00,0x05,0x02,0x02,0x02,0x05,0x05,0x00,0x00,0x00,0x05,0x01,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x01,0x05,0x00,0x00,0x00,0x02,0x05,0x02,0x05,0x02,0x05,0x00
	.byte 0x03,0x05,0x05,0x03,0x05,0x05,0x03,0x05,0x05,0x05,0x00,0x05,0x05,0x00,0x05,0x05
	.byte 0x00,0x00,0x00,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x02,0x05,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x05,0x05,0x05,0x01,0x05,0x05,0x05,0x05,0x00,0x00,0x00,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x03,0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x05,0x05
	.byte 0x00,0x00,0x00,0x00,0x02,0x05,0x05,0x00,0x00,0x00,0x00,0x01,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x02,0x05,0x05,0x00,0x00,0x00,0x00
	.byte 0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x03,0x05,0x05,0x03,0x03,0x05,0x00
	.byte 0x02,0x02,0x05,0x00,0x05,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x05,0x02,0x02,0x00,0x00,0x02,0x05,0x05
	.byte 0x00,0x05,0x03,0x03,0x03,0x05,0x05,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x03,0x03,0x03,0x05,0x00,0x00
	.byte 0x00,0x00,0x05,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x05,0x05,0x00,0x00,0x02,0x02,0x02,0x05,0x00,0x00,0x01,0x01,0x01,0x01,0x05,0x05
	.byte 0x00,0x01,0x01,0x01,0x01,0x05,0x05,0x00,0x02,0x02,0x02,0x05,0x00,0x00,0x00,0x00
	.byte 0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x05,0x05,0x05,0x03,0x03,0x05,0x05
	.byte 0x00,0x00,0x00,0x02,0x02,0x05,0x05,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x00,0x00,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x00,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x00,0x00,0x00,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x03,0x03,0x03,0x03,0x05,0x00
	.byte 0x00,0x02,0x02,0x05,0x02,0x02,0x05,0x00,0x01,0x01,0x05,0x00,0x01,0x01,0x05,0x00
	.byte 0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x05,0x05,0x05,0x05,0x02,0x02,0x05,0x05
	.byte 0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00
	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x02,0x02,0x02,0x02,0x02,0x02,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x01,0x01,0x05
	.byte 0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x00,0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x00
	.byte 0x02,0x02,0x05,0x05,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x01,0x01,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x00,0x00
	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x05,0x05,0x05,0x00,0x02,0x02,0x05,0x05,0x00,0x00,0x00,0x01,0x01,0x05,0x05,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00

	.byte 0x00,0x04,0x04,0x04,0x04,0x00,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x05,0x00
	.byte 0x02,0x02,0x02,0x00,0x00,0x02,0x05,0x00,0x05,0x01,0x01,0x01,0x01,0x05,0x05,0x00
	.byte 0x01,0x05,0x05,0x01,0x01,0x01,0x01,0x05,0x02,0x00,0x00,0x05,0x05,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x00,0x00
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x00,0x05,0x05,0x05,0x05,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x05
	.byte 0x00,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x03,0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x02,0x05,0x05,0x00,0x00,0x00,0x00,0x01,0x05,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x05,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x05,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x02,0x02,0x02,0x02,0x02,0x05,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x00,0x01,0x01,0x01,0x01,0x01,0x05,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x03,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x05,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x01,0x05,0x00
	.byte 0x00,0x00,0x00,0x00,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x02,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x05,0x05,0x02,0x02,0x05,0x05,0x05,0x05,0x00,0x01,0x01,0x05,0x05
	.byte 0x00,0x00,0x01,0x01,0x01,0x05,0x05,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x03,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x00,0x00

	.byte 0x00,0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x05,0x05,0x05,0x05,0x03,0x05
	.byte 0x00,0x05,0x05,0x00,0x00,0x00,0x02,0x05,0x00,0x01,0x01,0x01,0x05,0x00,0x01,0x05
	.byte 0x01,0x05,0x05,0x01,0x05,0x00,0x01,0x05,0x02,0x05,0x00,0x02,0x05,0x00,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x03,0x03,0x05,0x03,0x03,0x05,0x00
	.byte 0x02,0x02,0x05,0x00,0x05,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x05,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x05
	.byte 0x01,0x01,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x05,0x00,0x05,0x05,0x05,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x02,0x02,0x05,0x00,0x02,0x02,0x05
	.byte 0x00,0x05,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x03,0x03,0x05,0x00
	.byte 0x02,0x02,0x05,0x00,0x05,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x02,0x02,0x05,0x05
	.byte 0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00,0x00
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x05
	.byte 0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x00,0x01,0x01,0x05,0x05,0x05,0x05,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x01,0x01,0x05,0x05,0x05,0x05,0x05,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x05
	.byte 0x02,0x02,0x05,0x05,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x05,0x02,0x02,0x05,0x00,0x02,0x02,0x05
	.byte 0x00,0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x05,0x05,0x03,0x03,0x05,0x05,0x05
	.byte 0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x00,0x00,0x00,0x00,0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05
	.byte 0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05
	.byte 0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x03,0x03,0x05,0x05
	.byte 0x02,0x02,0x05,0x02,0x02,0x05,0x05,0x00,0x01,0x01,0x01,0x01,0x05,0x05,0x00,0x00
	.byte 0x01,0x01,0x01,0x01,0x01,0x05,0x00,0x00,0x02,0x02,0x05,0x02,0x02,0x02,0x05,0x00
	.byte 0x03,0x03,0x05,0x05,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x05,0x05,0x05,0x05

	.byte 0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x03,0x05,0x03,0x03,0x03,0x05
	.byte 0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x01,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x05,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x03,0x05,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x02,0x02,0x05,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x02,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x05,0x02,0x02,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x02,0x02,0x05,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x05,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x05,0x05,0x05,0x02,0x02,0x05,0x02,0x02,0x02,0x05,0x00
	.byte 0x03,0x03,0x05,0x05,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x05,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x03,0x03,0x05,0x00
	.byte 0x02,0x02,0x00,0x00,0x05,0x05,0x05,0x00,0x05,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x00,0x05,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x05,0x05,0x03,0x03,0x05,0x05,0x05
	.byte 0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x01,0x05,0x01,0x01,0x01,0x05
	.byte 0x05,0x01,0x01,0x01,0x01,0x01,0x05,0x05,0x00,0x05,0x02,0x02,0x02,0x05,0x05,0x00
	.byte 0x00,0x00,0x05,0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x00,0x00,0x00
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x02,0x05,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x02,0x05,0x02,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x03,0x05,0x03,0x03,0x03,0x05
	.byte 0x05,0x02,0x02,0x02,0x02,0x02,0x05,0x05,0x00,0x05,0x01,0x01,0x01,0x05,0x05,0x00
	.byte 0x00,0x01,0x01,0x01,0x01,0x01,0x05,0x00,0x02,0x02,0x02,0x05,0x02,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x05,0x00,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x00,0x03,0x03,0x05
	.byte 0x00,0x02,0x02,0x05,0x00,0x02,0x02,0x05,0x00,0x05,0x01,0x01,0x01,0x01,0x05,0x05
	.byte 0x00,0x00,0x05,0x01,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x05,0x05,0x05,0x05,0x03,0x03,0x03,0x05
	.byte 0x00,0x00,0x00,0x02,0x02,0x02,0x05,0x05,0x00,0x00,0x01,0x01,0x01,0x05,0x05,0x00
	.byte 0x00,0x01,0x01,0x01,0x05,0x05,0x00,0x00,0x02,0x02,0x02,0x05,0x05,0x00,0x00,0x00
	.byte 0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x00,0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x03,0x03,0x03,0x03,0x05,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x03,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x05,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x01,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x05,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x02,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x05,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x05,0x05,0x03,0x03,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x05,0x00,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x00,0x00

	.byte 0x00,0x00,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x05,0x03,0x05,0x00,0x00,0x00
	.byte 0x02,0x05,0x05,0x05,0x02,0x05,0x00,0x00,0x05,0x05,0x00,0x00,0x05,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x00,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x03,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x04,0x04,0x04,0x05,0x00,0x00,0x00,0x03,0x03,0x05,0x03,0x03,0x05,0x00
	.byte 0x02,0x02,0x05,0x00,0x05,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x05,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x05
	.byte 0x01,0x01,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x05,0x00,0x05,0x05,0x05,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x02,0x02,0x05,0x00,0x02,0x02,0x05
	.byte 0x00,0x05,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x03,0x03,0x05,0x00
	.byte 0x02,0x02,0x05,0x00,0x05,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x02,0x02,0x05,0x05
	.byte 0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00,0x00
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x05
	.byte 0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x00,0x01,0x01,0x05,0x05,0x05,0x05,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x01,0x01,0x05,0x05,0x05,0x05,0x05,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x05
	.byte 0x02,0x02,0x05,0x05,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x05,0x02,0x02,0x05,0x00,0x02,0x02,0x05
	.byte 0x00,0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x00,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x05,0x05,0x03,0x03,0x05,0x05,0x05
	.byte 0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x00,0x00,0x00,0x00,0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05
	.byte 0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05
	.byte 0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x03,0x03,0x05,0x05
	.byte 0x02,0x02,0x05,0x02,0x02,0x05,0x05,0x00,0x01,0x01,0x01,0x01,0x05,0x05,0x00,0x00
	.byte 0x01,0x01,0x01,0x01,0x01,0x05,0x00,0x00,0x02,0x02,0x05,0x02,0x02,0x02,0x05,0x00
	.byte 0x03,0x03,0x05,0x05,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x05,0x05,0x05,0x05

	.byte 0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00
	.byte 0x00,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x03,0x05,0x03,0x03,0x03,0x05
	.byte 0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x01,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x05,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x03,0x05,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x02,0x02,0x05,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x02,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x05,0x02,0x02,0x05,0x05,0x05,0x05,0x05,0x00
	.byte 0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x05,0x05,0x02,0x02,0x05,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x05,0x03,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x05

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x05,0x05,0x05,0x02,0x02,0x05,0x02,0x02,0x02,0x05,0x00
	.byte 0x03,0x03,0x05,0x05,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x05,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x04,0x04,0x05,0x00,0x00,0x03,0x03,0x05,0x05,0x03,0x03,0x05,0x00
	.byte 0x02,0x02,0x00,0x00,0x05,0x05,0x05,0x00,0x05,0x01,0x01,0x01,0x01,0x01,0x05,0x00
	.byte 0x00,0x05,0x05,0x05,0x05,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x00,0x05,0x05,0x03,0x03,0x05,0x05,0x05
	.byte 0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05
	.byte 0x01,0x01,0x05,0x00,0x00,0x01,0x01,0x05,0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05
	.byte 0x05,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x00,0x05,0x05,0x05,0x05,0x05,0x05,0x00

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x00,0x00,0x02,0x02,0x05,0x01,0x01,0x01,0x05,0x01,0x01,0x01,0x05
	.byte 0x05,0x01,0x01,0x01,0x01,0x01,0x05,0x05,0x00,0x05,0x02,0x02,0x02,0x05,0x05,0x00
	.byte 0x00,0x00,0x05,0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x00,0x00,0x00
	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x05,0x00,0x00,0x03,0x03,0x05
	.byte 0x02,0x02,0x05,0x02,0x05,0x02,0x02,0x05,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05
	.byte 0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x05,0x02,0x02,0x02,0x05,0x02,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x05,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05

	.byte 0x04,0x04,0x05,0x00,0x00,0x04,0x04,0x05,0x03,0x03,0x03,0x05,0x03,0x03,0x03,0x05
	.byte 0x05,0x02,0x02,0x02,0x02,0x02,0x05,0x05,0x00,0x05,0x01,0x01,0x01,0x05,0x05,0x00
	.byte 0x00,0x01,0x01,0x01,0x01,0x01,0x05,0x00,0x02,0x02,0x02,0x05,0x02,0x02,0x02,0x05
	.byte 0x03,0x03,0x05,0x00,0x05,0x03,0x03,0x05,0x05,0x05,0x05,0x00,0x00,0x05,0x05,0x05
	.byte 0x00,0x04,0x04,0x05,0x00,0x04,0x04,0x05,0x00,0x03,0x03,0x05,0x00,0x03,0x03,0x05
	.byte 0x00,0x02,0x02,0x05,0x00,0x02,0x02,0x05,0x00,0x05,0x01,0x01,0x01,0x01,0x05,0x05
	.byte 0x00,0x00,0x05,0x01,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00

	.byte 0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x05,0x05,0x05,0x05,0x05,0x03,0x03,0x03,0x05
	.byte 0x00,0x00,0x00,0x02,0x02,0x02,0x05,0x05,0x00,0x00,0x01,0x01,0x01,0x05,0x05,0x00
	.byte 0x00,0x01,0x01,0x01,0x05,0x05,0x00,0x00,0x02,0x02,0x02,0x05,0x05,0x00,0x00,0x00
	.byte 0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05
	.byte 0x00,0x00,0x00,0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x03,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x00,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x05,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x05,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x05,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00

	.byte 0x00,0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x01,0x01,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x03,0x03,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00
	.byte 0x00,0x04,0x04,0x05,0x00,0x00,0x00,0x00,0x00,0x05,0x05,0x03,0x05,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x02,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x01,0x05,0x00,0x00
	.byte 0x00,0x00,0x00,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x00,0x02,0x05,0x00,0x00,0x00
	.byte 0x00,0x03,0x03,0x05,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x02,0x02,0x05,0x00,0x00,0x00,0x00,0x01,0x05,0x05,0x01,0x05,0x00,0x01,0x05
	.byte 0x05,0x05,0x00,0x05,0x01,0x01,0x05,0x05,0x00,0x00,0x00,0x00,0x05,0x05,0x05,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.section .rodata
	.align	2
	.global consolefontPal		@ 512 unsigned chars
	.hidden consolefontPal
consolefontPal:
	.byte 0x00,0x00,0xDE,0x7B,0x5A,0x6B,0xF7,0x5E,0x73,0x4E,0x63,0x0C,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

@}}BLOCK(consolefont)
