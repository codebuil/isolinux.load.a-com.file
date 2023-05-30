
#screen13.exe:     file format coff-go32-exe
000010d0 <start>:
    10d0:	1e                   	push   %ds
    10d1:	07                   	pop    %es
    10d2:	f6 05 35 1b 01 00 01 	testb  $0x1,0x11b35
    10d9:	75 25                	jne    1100 <start+0x30>
    10db:	b8 d0 10 00 00       	mov    $0x10d0,%eax
    10e0:	3d 00 10 00 00       	cmp    $0x1000,%eax
    10e5:	7c 19                	jl     1100 <start+0x30>
    10e7:	66 b8 07 05          	mov    $0x507,%ax
    10eb:	64 8b 35 18 00 00 00 	mov    %fs:0x18,%esi
    10f2:	31 db                	xor    %ebx,%ebx
    10f4:	b9 01 00 00 00       	mov    $0x1,%ecx
    10f9:	ba 86 d4 00 00       	mov    $0xd486,%edx
    10fe:	cd 31                	int    $0x31
    1100:	66 8c db             	mov    %ds,%bx
    1103:	66 b8 0a 00          	mov    $0xa,%ax
    1107:	cd 31                	int    $0x31
    1109:	73 04                	jae    110f <ds_alias_ok>
    110b:	b4 4c                	mov    $0x4c,%ah
    110d:	cd 21                	int    $0x21

