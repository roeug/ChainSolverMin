# dlltool --as as --64 -v --dllname vode64_dll.dll --base-file base.tmp --output-exp temp.exp --def vode64_dll.def 
#  0 = voded_ voded_ @ 1 
	.section	.edata

	.long	0	# Allways 0
	.long	0x61163747	# Time and date
	.long	0	# Major and Minor version
	.rva	name	# Ptr to name of dll
	.long	1	# Starting ordinal of exports
	.long	1	# Number of functions
	# named funcs 1, low ord 1, high ord 1
	.long	1	# Number of names
	.rva	afuncs  # Address of functions
	.rva	anames	# Address of Name Pointer Table
	.rva	anords	# Address of ordinals
name:	.asciz	"vode64_dll.dll"
# Export address Table
	.align	4
afuncs:
	.rva	voded_	# 1
# Export Name Pointer Table
anames:
	.rva	n1
# Export Ordinal Table
anords:
	.short	0
# Export Name Table
n1:	.asciz	"voded_"
	.section	.init
lab:
	.section	.reloc
	.long	0x00001000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0be
	.short	0x0
	.long	0x00001000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0dd
	.short	0x0
	.long	0x00001000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0e7
	.short	0x0
	.long	0x00001000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa15f
	.short	0x0
	.long	0x00001000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa169
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa008
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c8
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa41e
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4bf
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4dd
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4ec
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa505
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa54c
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa586
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa59c
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5a6
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5b0
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5c7
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d3
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5ec
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa606
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa619
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa62c
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa646
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa65a
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa667
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa679
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa68f
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6bc
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6f8
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa707
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa71d
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa72f
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa74b
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa761
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa770
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa77e
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa795
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b1
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7cf
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7e4
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7f3
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa80a
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa846
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa88b
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa89f
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8aa
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8b8
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8c7
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8d2
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8f9
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa911
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9d0
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa16
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa25
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa3d
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa55
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa76
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa9e
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaad6
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab15
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab4d
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab70
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab98
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabc1
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd1
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe5
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabf9
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac0d
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac2b
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac37
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac46
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac95
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca6
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc2
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacda
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace8
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad1a
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad54
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad8d
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadf7
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae48
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae7a
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeba
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeec
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf11
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf33
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf51
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf74
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf7c
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf84
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafb7
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe0
	.short	0x0
	.long	0x00002000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff8
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa02c
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa038
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa051
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa06c
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa07a
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0ac
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0ce
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0ec
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0fa
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa11b
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa162
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa171
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa18f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1a7
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1d6
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e2
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1ee
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa205
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa222
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa22e
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa23e
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa256
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa27b
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2a7
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2e9
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa321
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa348
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa382
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3ea
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa410
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa42c
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa452
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa471
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa48e
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa499
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4bf
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4c9
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4d3
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4dd
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4e7
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa515
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa51f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa529
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa533
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa53d
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa56b
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa575
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa57f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa589
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa593
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5ad
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d3
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5dd
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5e7
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5f1
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5fb
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa629
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa633
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa63d
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa647
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa651
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa67f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6a5
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6cf
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6f5
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa71e
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa771
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa794
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa79c
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a4
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7d2
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7f7
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa80f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa841
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa861
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa86f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa895
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8c9
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8de
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8ef
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa91c
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa928
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa93f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa95f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa96b
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa97b
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa996
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9ab
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9bc
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9e1
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9f9
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa41
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa59
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa71
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa89
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaa1
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab9
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaad9
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaf4
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaafe
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab08
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab12
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab2f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab4a
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab54
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab5e
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab68
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab99
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd1
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabdb
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe9
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabf3
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac2f
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac39
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac43
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac4d
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac57
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac89
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac93
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac9d
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca7
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacdb
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf6
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad00
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad0a
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad14
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad31
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad4c
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad56
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad60
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad6a
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad99
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadb4
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadbe
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadc8
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadd2
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadef
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae0a
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae14
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae1e
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae28
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae45
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae60
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae6a
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae74
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae7e
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaea1
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaee0
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf92
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafa0
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafc4
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafdb
	.short	0x0
	.long	0x00003000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff3
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa00b
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa023
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa03b
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa053
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa07f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa089
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa097
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0a1
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0d0
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0eb
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0f5
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa103
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa10d
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa140
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa14a
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa158
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa162
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa189
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1a4
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1ae
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1bc
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1c6
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1ff
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa209
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa217
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa221
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa249
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa264
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa26e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa27c
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa286
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2bf
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2c9
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2d7
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2e1
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa309
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa324
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa32e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa33c
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa346
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa37f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa389
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa39e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3a8
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3df
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3e9
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3fe
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa408
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa43f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa449
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa453
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa45d
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa467
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa49f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4a9
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4b3
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4bd
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4c7
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4ff
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa509
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa513
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa51d
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa527
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa567
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa571
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa57b
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa585
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5b3
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5c1
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5cb
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d5
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5f9
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa618
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa622
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa62c
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa636
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa66f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa679
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa683
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa68d
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa697
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6d0
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6da
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6ef
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6f9
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa730
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa73a
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa74f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa759
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa78f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa79d
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ab
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b5
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ef
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7fd
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa80b
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa815
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa857
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa876
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa884
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa88e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8b1
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8d4
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8de
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8e8
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa90b
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa92e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa93c
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa946
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa980
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa98e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa998
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9a2
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9ca
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9ed
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9f7
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa01
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa29
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa44
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa4e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa58
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa62
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa7f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa9e
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaa8
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab2
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaabc
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaf5
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab03
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab11
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab1b
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab55
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab5f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab69
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab73
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab7d
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac16
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac8f
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae8d
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeea
	.short	0x0
	.long	0x00004000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf3c
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa16b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa177
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa188
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa19a
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1cf
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1f9
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa25b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa31b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa35d
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4f6
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5db
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa604
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa60e
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa61c
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa626
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa651
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa670
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa67a
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa684
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa68e
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6bc
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6ca
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6d4
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6de
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa73b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa755
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa776
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa78b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa79b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b1
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7bd
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7c9
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7d5
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7e1
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7f1
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa807
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa816
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa836
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa847
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa85b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa86d
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa88c
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa897
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8a3
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8b5
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8c5
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8df
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8ec
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8f6
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa90d
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa925
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa995
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9ab
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9c0
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9d9
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9f3
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa21
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa2f
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa3a
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa48
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa56
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa62
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa70
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa7e
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa9b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaad
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaac5
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaadf
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab0d
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab1b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab39
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab53
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab5e
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab68
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab73
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab82
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaba4
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb3
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabc3
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabde
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabec
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac07
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac15
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac23
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac2e
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac45
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac71
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac9a
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca6
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacb2
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacbe
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaccd
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacdc
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace8
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf7
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae3b
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae47
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae53
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae61
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae6d
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaedf
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeee
	.short	0x0
	.long	0x00005000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaefd
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa046
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa054
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa078
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa084
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa094
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0bc
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0ce
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0f0
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0fc
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa106
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa135
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa17c
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1ac
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1d9
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa205
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa226
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa231
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa24a
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa260
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa277
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa283
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2a6
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2b8
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2c3
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2d3
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2df
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2f0
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa306
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa34a
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa44e
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa468
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa473
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa486
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4a8
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4c6
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4d4
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4e4
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa508
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa514
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa523
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa536
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa54b
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa566
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa576
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa593
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5ad
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5b8
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5c8
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d8
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5f3
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5ff
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa60b
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa617
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa634
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa653
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6d8
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6f3
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa721
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa72f
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa746
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa756
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa76d
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa78c
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a1
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ce
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7dc
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ea
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7fd
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa808
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa81a
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa96b
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9e5
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9fa
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa27
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa38
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa5e
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa77
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa82
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa96
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaa2
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab9
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaac6
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaad3
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaed
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab01
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab17
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab33
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab4d
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab5b
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab67
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab84
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab94
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaba0
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabac
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabbc
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabc8
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd6
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabfc
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac18
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac24
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac33
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac40
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac55
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac86
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac9e
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaccc
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacdd
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace9
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf5
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad01
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad0d
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad19
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad2a
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad48
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad90
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadfb
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaea9
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf63
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf92
	.short	0x0
	.long	0x00006000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafa6
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa066
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa07e
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0b9
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa117
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa12a
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa13f
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa15e
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1f6
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa20a
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2a5
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2ea
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa301
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa30d
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa31e
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa335
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa34d
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3ac
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa42c
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa454
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa48c
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4ba
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4e1
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa521
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa54f
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa586
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5a4
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5c8
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5f4
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa608
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa627
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa64f
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa679
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa69b
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6bf
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa70d
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa723
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa72f
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa77c
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa791
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7e1
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7f6
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa802
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa842
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8b7
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa957
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa981
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9c6
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaadc
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab45
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb8
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe7
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabfc
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac30
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac93
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf5
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad45
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae62
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaee1
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaef6
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf02
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf16
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf28
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf77
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf9e
	.short	0x0
	.long	0x00007000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff7
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa059
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0ad
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa178
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1bc
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e5
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa238
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa25b
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa266
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa279
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa284
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa293
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2a1
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2af
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2c1
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2cf
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2dd
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2f6
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa308
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa32d
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa347
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa39f
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3ab
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3b7
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c2
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3d8
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa416
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa478
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4d5
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa580
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa621
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa63c
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa675
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa74b
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa765
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa77d
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa789
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a0
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7c8
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7da
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ec
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8ac
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8c7
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8e1
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8f6
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa923
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa957
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa97c
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa998
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9a6
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9c9
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9df
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9fc
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa20
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa6e
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa7f
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa90
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa9e
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab8
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaad5
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaafc
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab06
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab15
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab56
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab7c
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab8a
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaba9
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb9
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabef
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac01
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac0c
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac31
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac3f
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac56
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac7f
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad5f
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad7d
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae6a
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae75
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae85
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae95
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaec7
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaedb
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeeb
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf02
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf27
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf45
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf71
	.short	0x0
	.long	0x00008000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaffd
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa015
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa04b
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa064
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa072
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa18d
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1ac
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e8
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa263
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa298
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2d4
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa36c
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa37e
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa389
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa40d
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa42c
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa469
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa492
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa49c
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4af
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4de
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4f7
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa503
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa526
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa668
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa68f
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a5
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8c9
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8de
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa924
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa962
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa99d
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa2d
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab28
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab87
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab9a
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaba2
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabaa
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabde
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac06
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac3e
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac70
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac8b
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc5
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad73
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaddf
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae1a
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae49
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae95
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaed9
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf21
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf71
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf99
	.short	0x0
	.long	0x00009000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe5
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa01a
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d7
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5e1
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5fb
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa620
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa664
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa68e
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6c1
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6df
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa712
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa730
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa755
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa781
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7d6
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa81c
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa84b
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa86e
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa314
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8f5
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa909
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa917
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa92a
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa932
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa93a
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa96d
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9c8
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9d6
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa98
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaa8
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaae9
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabdf
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaccd
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacdf
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad7a
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad9a
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadb8
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae4b
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeed
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf28
	.short	0x0
	.long	0x0000a000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafa5
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa01c
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa082
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1cd
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa202
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa21b
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa229
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa37e
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4b5
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d9
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa681
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6c7
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6dd
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6e8
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6f0
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa719
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa72e
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa757
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa805
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa89c
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa97f
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa99c
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9b0
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9d2
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9f6
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa0b
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa1b
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa2f
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa3b
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa4f
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa63
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa6f
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa7a
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa85
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa93
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaaa
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab7
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaac6
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaad5
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaed
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaff
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab09
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab18
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab35
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab48
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab52
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab5c
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabbd
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac59
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac68
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac74
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac80
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac8b
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca8
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc6
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace5
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad0d
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad44
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad61
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad89
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad9d
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadaf
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae0d
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaea9
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeb8
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaec4
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaed0
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaedb
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaef8
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf34
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf51
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf60
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf7e
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafb2
	.short	0x0
	.long	0x0000b000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafc3
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa026
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa10f
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa11e
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa128
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa146
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa157
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa162
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa171
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa17c
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa188
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa197
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2dc
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa388
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3df
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3f3
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa401
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa40d
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa426
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa47a
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5e0
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa67a
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa771
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa846
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa870
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9c4
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9e1
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9ed
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa1a
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa4c
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaae
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaac2
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaadf
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaf6
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab09
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab1a
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab5a
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac6f
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac8e
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacad
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc2
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacd9
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacfc
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad29
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad5e
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad75
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad80
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad8a
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae84
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf04
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf25
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf37
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe6
	.short	0x0
	.long	0x0000c000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff7
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa03a
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa14c
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa15a
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa176
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1bf
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa257
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2ce
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2ec
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa321
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa353
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa381
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3a3
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c4
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3f0
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa455
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa47f
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4c0
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4e3
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4f6
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5aa
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5c7
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5e4
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa600
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa60d
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa636
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa647
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa66a
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6fd
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa71d
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a7
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b2
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ca
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ea
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa808
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa81d
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa836
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8c6
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8d2
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa05
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa33
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa4b
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaad
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaacb
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaf0
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab1c
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab41
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab74
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab92
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabca
	.short	0x0
	.long	0x0000d000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadbe
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa76b
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa777
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa785
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a5
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7d1
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa802
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa888
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8db
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa97b
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab0b
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab92
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab9c
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabaa
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb4
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd8
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe6
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabf0
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabfa
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac04
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac1d
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac27
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac31
	.short	0x0
	.long	0x0000e000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac3b
	.short	0x0
	.long	0x0000f000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4e3
	.short	0x0
	.long	0x0000f000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8b0
	.short	0x0
	.long	0x0000f000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab03
	.short	0x0
	.long	0x0000f000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac49
	.short	0x0
	.long	0x0000f000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf3
	.short	0x0
	.long	0x0000f000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae31
	.short	0x0
	.long	0x0000f000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafd0
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa252
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa439
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa53f
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5a8
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa687
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa474
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf1c
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf47
	.short	0x0
	.long	0x00010000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff4
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa005
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa018
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa02e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa066
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0d2
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0e6
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0f0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0fa
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa108
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa12e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa174
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1a9
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e5
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1f7
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa217
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa23f
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa25c
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa285
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa292
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2a1
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2be
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2ef
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa329
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa343
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa36d
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa38b
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3e8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa418
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa448
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa489
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5ac
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa626
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa62e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa636
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa63e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa646
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa64e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa656
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa65e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa666
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa66e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa676
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa67e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa686
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa68e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa696
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa69e
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6a6
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6ae
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6b6
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6be
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa748
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b6
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ed
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa85c
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8da
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa949
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9e1
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa5c
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa74
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa98
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaf6
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab18
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab39
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab6b
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe5
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac1d
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac58
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac8b
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace1
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad38
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad51
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad68
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad7a
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad85
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae0b
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae70
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae78
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae80
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae88
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae90
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae98
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaea0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaea8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeb0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeb8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaec0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaec8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaed0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaed8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaee0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaee8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaef0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaef8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf00
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf08
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf10
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf18
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf20
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf28
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf30
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf38
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf40
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf48
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf50
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf58
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf60
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf68
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf70
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf78
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf80
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf88
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf90
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf98
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafa0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafa8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafb0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafb8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafc0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafc8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafd0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafd8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe8
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa000
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa008
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa010
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa018
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa020
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa028
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa030
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa038
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa040
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa048
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa128
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa130
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa138
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa140
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa148
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa150
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa158
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa160
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa168
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa170
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa178
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa180
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa188
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa190
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa198
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1a0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1a8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1b0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1b8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1c0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1c8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1d0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1d8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa23a
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa349
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa358
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa360
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa368
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa370
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa378
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa380
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa388
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa390
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa398
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3a0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3a8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3b0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3b8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3d0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3d8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3e0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3e8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3f0
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3f8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa400
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa408
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa410
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa418
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa420
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa428
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa430
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa438
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa81a
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa860
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa874
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa89e
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8c2
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8f9
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa908
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa910
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa918
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa920
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa928
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa930
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa938
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa940
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa948
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa950
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa958
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa960
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa968
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa970
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa978
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa980
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa988
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa990
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa15
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa34
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa3c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa44
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa4c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa54
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa5c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa64
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa6c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa74
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa7c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa84
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa8c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa94
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa9c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaa4
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaac
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab4
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaac1
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaace
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaae4
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab08
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab38
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab56
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab70
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab96
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb3
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd9
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac06
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac18
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac2f
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac46
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac68
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac78
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac87
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac98
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacae
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc4
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacea
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad08
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad26
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad89
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad9d
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadb1
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadc5
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae00
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae29
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae5a
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae6e
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae9d
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeb1
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaee8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf00
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf14
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf3c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf4c
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf60
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf76
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf8b
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf97
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafc8
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafea
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff4
	.short	0x0
	.long	0x00012000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaffe
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa008
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa012
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa01c
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa031
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa05a
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d9
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5f7
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa602
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa61f
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa638
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa64e
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa67d
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa693
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6a6
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6c8
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6de
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6ee
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa707
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa715
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa721
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa72f
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa73d
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa749
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa757
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa76e
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa79d
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7bb
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7c9
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7f0
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7fa
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa81e
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa892
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa936
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa96e
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9e8
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace0
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa5b
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa98
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaabe
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaf6
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabaa
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabc3
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac04
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac2b
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac3a
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac62
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac7f
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacd5
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad11
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad2c
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad6f
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad99
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaddb
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae01
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae29
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae4e
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae62
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeee
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf02
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf3f
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf70
	.short	0x0
	.long	0x00013000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafd0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa014
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa049
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa099
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0c1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0fe
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa132
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa196
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1fd
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa230
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa24e
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa277
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa289
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa298
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2b2
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2e6
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2ff
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa341
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa35d
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa36b
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3de
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3fa
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa414
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa43c
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa465
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa483
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4a9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4cc
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4f7
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa50c
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa51a
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa534
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa542
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa570
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa585
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5a4
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5bb
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d5
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5fd
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa61b
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa62a
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa63e
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa650
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa67e
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa695
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6c4
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6f1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa706
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa735
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa765
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa77b
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa796
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b5
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7c3
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7df
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7f7
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa815
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa85b
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa871
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8ab
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8d5
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8fc
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa908
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa910
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa918
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa920
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa928
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa930
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa938
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa940
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa948
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa950
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa958
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa960
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa968
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa970
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa978
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa980
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa988
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa990
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa998
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9a0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9a8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9b0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9b8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9c0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9ca
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9dd
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9f9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa07
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa36
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa4f
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa6a
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa91
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaac9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab01
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab16
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab28
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab4d
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab68
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab70
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab78
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab80
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab88
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab90
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab98
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaba0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaba8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabc0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabc8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabf0
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabf8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac00
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac08
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac10
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac18
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac20
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac28
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac37
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac68
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac81
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca8
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf7
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad45
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad6f
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadae
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadbc
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadcf
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xade9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae26
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae3a
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae65
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae96
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeae
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf0a
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf1f
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf43
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf61
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf69
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf71
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf79
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf81
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf89
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf91
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf99
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafa1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafa9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafb1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafb9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafc1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafc9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafd1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafd9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe9
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff1
	.short	0x0
	.long	0x00014000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaff9
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa001
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa009
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa011
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa019
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa021
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa02a
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa04c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa076
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa08f
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0ab
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0b3
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0bb
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0c3
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0cb
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0d3
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0db
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa13a
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa15d
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa16e
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa197
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1b3
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e0
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1e8
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1f0
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1f8
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa200
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa208
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa210
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa21a
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa276
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2ab
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2ec
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa306
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa319
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa334
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa34b
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa35d
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa39a
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c2
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3cc
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3e0
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa40a
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa445
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa45c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa48c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa496
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4a0
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4bc
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4f4
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa50e
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa547
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa585
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa596
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5fa
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa631
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa655
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa741
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa784
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa81c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa839
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa859
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa869
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa890
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8dc
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8e4
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8ec
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8f4
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8fc
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa904
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa90c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa59
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa76
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaade
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaee
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab04
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab12
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab25
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab49
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab66
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab8c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabb9
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe6
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabfa
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac0e
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac41
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac67
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac8c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacae
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacd9
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad6c
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xada5
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadbd
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadee
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae8b
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaec6
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeed
	.short	0x0
	.long	0x00015000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafac
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa01a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa043
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa084
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0db
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa122
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa190
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa1cd
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa223
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa2c8
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa30a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa329
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3b1
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3b9
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c1
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3c9
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3d1
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3d9
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3e1
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3e9
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3f1
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3f9
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa401
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa409
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa411
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa419
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa421
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa429
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa43e
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa572
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa57a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa582
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa58a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa592
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa59a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5a2
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5b1
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5d2
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5e5
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa602
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa614
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa64b
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa671
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa688
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6af
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6d9
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6fb
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa738
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa78e
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a2
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b6
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7da
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ee
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa809
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa815
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa836
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa866
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa870
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa87a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa889
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa893
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa89d
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8a7
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8b5
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8f8
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa920
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa948
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9a2
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa0a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaabe
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab10
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabba
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabff
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac41
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace2
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad17
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad3a
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad74
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xada1
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadda
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae19
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae5d
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf28
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf4d
	.short	0x0
	.long	0x00016000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xafe1
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa02d
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa051
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0dc
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa0eb
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa10b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa119
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa195
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa231
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa264
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa32d
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa416
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4bf
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa51e
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5b1
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa5f2
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa616
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa668
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6b9
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa6ff
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa743
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa74b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa753
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa75b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa763
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa76b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa773
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa77b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa783
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa78b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa793
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa79b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7a3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7ab
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7b3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7bb
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7c3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7cb
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7d3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7db
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7e3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7eb
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7f3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa7fb
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa803
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa80b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa813
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa81b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa823
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa82b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa84e
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa8a5
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa915
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa9a3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaa5a
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaaa5
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xab36
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaba5
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabbb
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabd1
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabe3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xabf1
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac0d
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac25
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac48
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac6b
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac8a
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac98
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca0
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca8
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacb0
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacb8
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc0
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc8
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacd0
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacd8
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace0
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xace8
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf0
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacf8
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad00
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad08
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xad16
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xadb2
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae14
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae1c
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae24
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae2c
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae34
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae3c
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae4a
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae63
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xae9a
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaeaf
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaec3
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaed5
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf01
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf13
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf35
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf53
	.short	0x0
	.long	0x00017000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaf78
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xada4
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa43a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa44a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa45a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa46a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa47a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa48a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa49a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4aa
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4ba
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4ca
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4da
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4ea
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa4fa
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa50a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa51a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa52a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa53a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa54a
	.short	0x0
	.long	0x00018000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa55a
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa20c
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa270
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa370
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xa3d0
	.short	0x0
	.long	0x00011000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaab6
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac44
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac4c
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac54
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac60
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac68
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac70
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac78
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac80
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac88
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac90
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xac98
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca0
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xaca8
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacb0
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacb8
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc0
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacc8
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacd0
	.short	0x0
	.long	0x00019000	# Starting RVA for chunk
	.long	0xc	# Size of block
	.short	0xacd8
	.short	0x0
