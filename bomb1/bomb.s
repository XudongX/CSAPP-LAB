
bomb：     文件格式 elf32-i386


Disassembly of section .init:

08048674 <_init>:
 8048674:	53                   	push   %ebx
 8048675:	83 ec 08             	sub    $0x8,%esp
 8048678:	e8 03 02 00 00       	call   8048880 <__x86.get_pc_thunk.bx>
 804867d:	81 c3 83 39 00 00    	add    $0x3983,%ebx
 8048683:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048689:	85 c0                	test   %eax,%eax
 804868b:	74 05                	je     8048692 <_init+0x1e>
 804868d:	e8 ae 01 00 00       	call   8048840 <__gmon_start__@plt>
 8048692:	83 c4 08             	add    $0x8,%esp
 8048695:	5b                   	pop    %ebx
 8048696:	c3                   	ret    

Disassembly of section .plt:

080486a0 <.plt>:
 80486a0:	ff 35 04 c0 04 08    	pushl  0x804c004
 80486a6:	ff 25 08 c0 04 08    	jmp    *0x804c008
 80486ac:	00 00                	add    %al,(%eax)
	...

080486b0 <read@plt>:
 80486b0:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 80486b6:	68 00 00 00 00       	push   $0x0
 80486bb:	e9 e0 ff ff ff       	jmp    80486a0 <.plt>

080486c0 <printf@plt>:
 80486c0:	ff 25 10 c0 04 08    	jmp    *0x804c010
 80486c6:	68 08 00 00 00       	push   $0x8
 80486cb:	e9 d0 ff ff ff       	jmp    80486a0 <.plt>

080486d0 <fflush@plt>:
 80486d0:	ff 25 14 c0 04 08    	jmp    *0x804c014
 80486d6:	68 10 00 00 00       	push   $0x10
 80486db:	e9 c0 ff ff ff       	jmp    80486a0 <.plt>

080486e0 <fgets@plt>:
 80486e0:	ff 25 18 c0 04 08    	jmp    *0x804c018
 80486e6:	68 18 00 00 00       	push   $0x18
 80486eb:	e9 b0 ff ff ff       	jmp    80486a0 <.plt>

080486f0 <signal@plt>:
 80486f0:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 80486f6:	68 20 00 00 00       	push   $0x20
 80486fb:	e9 a0 ff ff ff       	jmp    80486a0 <.plt>

08048700 <sleep@plt>:
 8048700:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048706:	68 28 00 00 00       	push   $0x28
 804870b:	e9 90 ff ff ff       	jmp    80486a0 <.plt>

08048710 <alarm@plt>:
 8048710:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048716:	68 30 00 00 00       	push   $0x30
 804871b:	e9 80 ff ff ff       	jmp    80486a0 <.plt>

08048720 <bcopy@plt>:
 8048720:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048726:	68 38 00 00 00       	push   $0x38
 804872b:	e9 70 ff ff ff       	jmp    80486a0 <.plt>

08048730 <strcpy@plt>:
 8048730:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 8048736:	68 40 00 00 00       	push   $0x40
 804873b:	e9 60 ff ff ff       	jmp    80486a0 <.plt>

08048740 <getenv@plt>:
 8048740:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048746:	68 48 00 00 00       	push   $0x48
 804874b:	e9 50 ff ff ff       	jmp    80486a0 <.plt>

08048750 <puts@plt>:
 8048750:	ff 25 34 c0 04 08    	jmp    *0x804c034
 8048756:	68 50 00 00 00       	push   $0x50
 804875b:	e9 40 ff ff ff       	jmp    80486a0 <.plt>

08048760 <exit@plt>:
 8048760:	ff 25 38 c0 04 08    	jmp    *0x804c038
 8048766:	68 58 00 00 00       	push   $0x58
 804876b:	e9 30 ff ff ff       	jmp    80486a0 <.plt>

08048770 <__libc_start_main@plt>:
 8048770:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 8048776:	68 60 00 00 00       	push   $0x60
 804877b:	e9 20 ff ff ff       	jmp    80486a0 <.plt>

08048780 <fprintf@plt>:
 8048780:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8048786:	68 68 00 00 00       	push   $0x68
 804878b:	e9 10 ff ff ff       	jmp    80486a0 <.plt>

08048790 <write@plt>:
 8048790:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048796:	68 70 00 00 00       	push   $0x70
 804879b:	e9 00 ff ff ff       	jmp    80486a0 <.plt>

080487a0 <__isoc99_sscanf@plt>:
 80487a0:	ff 25 48 c0 04 08    	jmp    *0x804c048
 80487a6:	68 78 00 00 00       	push   $0x78
 80487ab:	e9 f0 fe ff ff       	jmp    80486a0 <.plt>

080487b0 <fopen@plt>:
 80487b0:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 80487b6:	68 80 00 00 00       	push   $0x80
 80487bb:	e9 e0 fe ff ff       	jmp    80486a0 <.plt>

080487c0 <__errno_location@plt>:
 80487c0:	ff 25 50 c0 04 08    	jmp    *0x804c050
 80487c6:	68 88 00 00 00       	push   $0x88
 80487cb:	e9 d0 fe ff ff       	jmp    80486a0 <.plt>

080487d0 <sprintf@plt>:
 80487d0:	ff 25 54 c0 04 08    	jmp    *0x804c054
 80487d6:	68 90 00 00 00       	push   $0x90
 80487db:	e9 c0 fe ff ff       	jmp    80486a0 <.plt>

080487e0 <socket@plt>:
 80487e0:	ff 25 58 c0 04 08    	jmp    *0x804c058
 80487e6:	68 98 00 00 00       	push   $0x98
 80487eb:	e9 b0 fe ff ff       	jmp    80486a0 <.plt>

080487f0 <gethostbyname@plt>:
 80487f0:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 80487f6:	68 a0 00 00 00       	push   $0xa0
 80487fb:	e9 a0 fe ff ff       	jmp    80486a0 <.plt>

08048800 <strtol@plt>:
 8048800:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048806:	68 a8 00 00 00       	push   $0xa8
 804880b:	e9 90 fe ff ff       	jmp    80486a0 <.plt>

08048810 <connect@plt>:
 8048810:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048816:	68 b0 00 00 00       	push   $0xb0
 804881b:	e9 80 fe ff ff       	jmp    80486a0 <.plt>

08048820 <close@plt>:
 8048820:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048826:	68 b8 00 00 00       	push   $0xb8
 804882b:	e9 70 fe ff ff       	jmp    80486a0 <.plt>

08048830 <__ctype_b_loc@plt>:
 8048830:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 8048836:	68 c0 00 00 00       	push   $0xc0
 804883b:	e9 60 fe ff ff       	jmp    80486a0 <.plt>

Disassembly of section .plt.got:

08048840 <__gmon_start__@plt>:
 8048840:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 8048846:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048850 <_start>:
 8048850:	31 ed                	xor    %ebp,%ebp
 8048852:	5e                   	pop    %esi
 8048853:	89 e1                	mov    %esp,%ecx
 8048855:	83 e4 f0             	and    $0xfffffff0,%esp
 8048858:	50                   	push   %eax
 8048859:	54                   	push   %esp
 804885a:	52                   	push   %edx
 804885b:	68 30 9d 04 08       	push   $0x8049d30
 8048860:	68 d0 9c 04 08       	push   $0x8049cd0
 8048865:	51                   	push   %ecx
 8048866:	56                   	push   %esi
 8048867:	68 4b 89 04 08       	push   $0x804894b
 804886c:	e8 ff fe ff ff       	call   8048770 <__libc_start_main@plt>
 8048871:	f4                   	hlt    
 8048872:	66 90                	xchg   %ax,%ax
 8048874:	66 90                	xchg   %ax,%ax
 8048876:	66 90                	xchg   %ax,%ax
 8048878:	66 90                	xchg   %ax,%ax
 804887a:	66 90                	xchg   %ax,%ax
 804887c:	66 90                	xchg   %ax,%ax
 804887e:	66 90                	xchg   %ax,%ax

08048880 <__x86.get_pc_thunk.bx>:
 8048880:	8b 1c 24             	mov    (%esp),%ebx
 8048883:	c3                   	ret    
 8048884:	66 90                	xchg   %ax,%ax
 8048886:	66 90                	xchg   %ax,%ax
 8048888:	66 90                	xchg   %ax,%ax
 804888a:	66 90                	xchg   %ax,%ax
 804888c:	66 90                	xchg   %ax,%ax
 804888e:	66 90                	xchg   %ax,%ax

08048890 <deregister_tm_clones>:
 8048890:	b8 a3 c3 04 08       	mov    $0x804c3a3,%eax
 8048895:	2d a0 c3 04 08       	sub    $0x804c3a0,%eax
 804889a:	83 f8 06             	cmp    $0x6,%eax
 804889d:	76 1a                	jbe    80488b9 <deregister_tm_clones+0x29>
 804889f:	b8 00 00 00 00       	mov    $0x0,%eax
 80488a4:	85 c0                	test   %eax,%eax
 80488a6:	74 11                	je     80488b9 <deregister_tm_clones+0x29>
 80488a8:	55                   	push   %ebp
 80488a9:	89 e5                	mov    %esp,%ebp
 80488ab:	83 ec 14             	sub    $0x14,%esp
 80488ae:	68 a0 c3 04 08       	push   $0x804c3a0
 80488b3:	ff d0                	call   *%eax
 80488b5:	83 c4 10             	add    $0x10,%esp
 80488b8:	c9                   	leave  
 80488b9:	f3 c3                	repz ret 
 80488bb:	90                   	nop
 80488bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080488c0 <register_tm_clones>:
 80488c0:	b8 a0 c3 04 08       	mov    $0x804c3a0,%eax
 80488c5:	2d a0 c3 04 08       	sub    $0x804c3a0,%eax
 80488ca:	c1 f8 02             	sar    $0x2,%eax
 80488cd:	89 c2                	mov    %eax,%edx
 80488cf:	c1 ea 1f             	shr    $0x1f,%edx
 80488d2:	01 d0                	add    %edx,%eax
 80488d4:	d1 f8                	sar    %eax
 80488d6:	74 1b                	je     80488f3 <register_tm_clones+0x33>
 80488d8:	ba 00 00 00 00       	mov    $0x0,%edx
 80488dd:	85 d2                	test   %edx,%edx
 80488df:	74 12                	je     80488f3 <register_tm_clones+0x33>
 80488e1:	55                   	push   %ebp
 80488e2:	89 e5                	mov    %esp,%ebp
 80488e4:	83 ec 10             	sub    $0x10,%esp
 80488e7:	50                   	push   %eax
 80488e8:	68 a0 c3 04 08       	push   $0x804c3a0
 80488ed:	ff d2                	call   *%edx
 80488ef:	83 c4 10             	add    $0x10,%esp
 80488f2:	c9                   	leave  
 80488f3:	f3 c3                	repz ret 
 80488f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80488f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048900 <__do_global_dtors_aux>:
 8048900:	80 3d c8 c3 04 08 00 	cmpb   $0x0,0x804c3c8
 8048907:	75 13                	jne    804891c <__do_global_dtors_aux+0x1c>
 8048909:	55                   	push   %ebp
 804890a:	89 e5                	mov    %esp,%ebp
 804890c:	83 ec 08             	sub    $0x8,%esp
 804890f:	e8 7c ff ff ff       	call   8048890 <deregister_tm_clones>
 8048914:	c6 05 c8 c3 04 08 01 	movb   $0x1,0x804c3c8
 804891b:	c9                   	leave  
 804891c:	f3 c3                	repz ret 
 804891e:	66 90                	xchg   %ax,%ax

08048920 <frame_dummy>:
 8048920:	b8 10 bf 04 08       	mov    $0x804bf10,%eax
 8048925:	8b 10                	mov    (%eax),%edx
 8048927:	85 d2                	test   %edx,%edx
 8048929:	75 05                	jne    8048930 <frame_dummy+0x10>
 804892b:	eb 93                	jmp    80488c0 <register_tm_clones>
 804892d:	8d 76 00             	lea    0x0(%esi),%esi
 8048930:	ba 00 00 00 00       	mov    $0x0,%edx
 8048935:	85 d2                	test   %edx,%edx
 8048937:	74 f2                	je     804892b <frame_dummy+0xb>
 8048939:	55                   	push   %ebp
 804893a:	89 e5                	mov    %esp,%ebp
 804893c:	83 ec 14             	sub    $0x14,%esp
 804893f:	50                   	push   %eax
 8048940:	ff d2                	call   *%edx
 8048942:	83 c4 10             	add    $0x10,%esp
 8048945:	c9                   	leave  
 8048946:	e9 75 ff ff ff       	jmp    80488c0 <register_tm_clones>

0804894b <main>:
 804894b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804894f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048952:	ff 71 fc             	pushl  -0x4(%ecx)
 8048955:	55                   	push   %ebp
 8048956:	89 e5                	mov    %esp,%ebp
 8048958:	53                   	push   %ebx
 8048959:	51                   	push   %ecx
 804895a:	8b 01                	mov    (%ecx),%eax
 804895c:	8b 59 04             	mov    0x4(%ecx),%ebx
 804895f:	83 f8 01             	cmp    $0x1,%eax
 8048962:	0f 84 fe 00 00 00    	je     8048a66 <main+0x11b>
 8048968:	83 f8 02             	cmp    $0x2,%eax
 804896b:	0f 85 22 01 00 00    	jne    8048a93 <main+0x148>
 8048971:	83 ec 08             	sub    $0x8,%esp
 8048974:	68 50 9d 04 08       	push   $0x8049d50
 8048979:	ff 73 04             	pushl  0x4(%ebx)
 804897c:	e8 2f fe ff ff       	call   80487b0 <fopen@plt>
 8048981:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048986:	83 c4 10             	add    $0x10,%esp
 8048989:	85 c0                	test   %eax,%eax
 804898b:	0f 84 e4 00 00 00    	je     8048a75 <main+0x12a>
 8048991:	e8 bb 05 00 00       	call   8048f51 <initialize_bomb>
 8048996:	83 ec 0c             	sub    $0xc,%esp
 8048999:	68 d4 9d 04 08       	push   $0x8049dd4
 804899e:	e8 ad fd ff ff       	call   8048750 <puts@plt>
 80489a3:	c7 04 24 10 9e 04 08 	movl   $0x8049e10,(%esp)
 80489aa:	e8 a1 fd ff ff       	call   8048750 <puts@plt>
 80489af:	e8 96 06 00 00       	call   804904a <read_line>
 80489b4:	89 04 24             	mov    %eax,(%esp)
 80489b7:	e8 f2 00 00 00       	call   8048aae <phase_1>
 80489bc:	e8 96 07 00 00       	call   8049157 <phase_defused>
 80489c1:	c7 04 24 3c 9e 04 08 	movl   $0x8049e3c,(%esp)
 80489c8:	e8 83 fd ff ff       	call   8048750 <puts@plt>
 80489cd:	e8 78 06 00 00       	call   804904a <read_line>
 80489d2:	89 04 24             	mov    %eax,(%esp)
 80489d5:	e8 f7 00 00 00       	call   8048ad1 <phase_2>
 80489da:	e8 78 07 00 00       	call   8049157 <phase_defused>
 80489df:	c7 04 24 89 9d 04 08 	movl   $0x8049d89,(%esp)
 80489e6:	e8 65 fd ff ff       	call   8048750 <puts@plt>
 80489eb:	e8 5a 06 00 00       	call   804904a <read_line>
 80489f0:	89 04 24             	mov    %eax,(%esp)
 80489f3:	e8 21 01 00 00       	call   8048b19 <phase_3>
 80489f8:	e8 5a 07 00 00       	call   8049157 <phase_defused>
 80489fd:	c7 04 24 a7 9d 04 08 	movl   $0x8049da7,(%esp)
 8048a04:	e8 47 fd ff ff       	call   8048750 <puts@plt>
 8048a09:	e8 3c 06 00 00       	call   804904a <read_line>
 8048a0e:	89 04 24             	mov    %eax,(%esp)
 8048a11:	e8 ff 01 00 00       	call   8048c15 <phase_4>
 8048a16:	e8 3c 07 00 00       	call   8049157 <phase_defused>
 8048a1b:	c7 04 24 68 9e 04 08 	movl   $0x8049e68,(%esp)
 8048a22:	e8 29 fd ff ff       	call   8048750 <puts@plt>
 8048a27:	e8 1e 06 00 00       	call   804904a <read_line>
 8048a2c:	89 04 24             	mov    %eax,(%esp)
 8048a2f:	e8 32 02 00 00       	call   8048c66 <phase_5>
 8048a34:	e8 1e 07 00 00       	call   8049157 <phase_defused>
 8048a39:	c7 04 24 b6 9d 04 08 	movl   $0x8049db6,(%esp)
 8048a40:	e8 0b fd ff ff       	call   8048750 <puts@plt>
 8048a45:	e8 00 06 00 00       	call   804904a <read_line>
 8048a4a:	89 04 24             	mov    %eax,(%esp)
 8048a4d:	e8 78 02 00 00       	call   8048cca <phase_6>
 8048a52:	e8 00 07 00 00       	call   8049157 <phase_defused>
 8048a57:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a5c:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048a5f:	59                   	pop    %ecx
 8048a60:	5b                   	pop    %ebx
 8048a61:	5d                   	pop    %ebp
 8048a62:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048a65:	c3                   	ret    
 8048a66:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 8048a6b:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048a70:	e9 1c ff ff ff       	jmp    8048991 <main+0x46>
 8048a75:	83 ec 04             	sub    $0x4,%esp
 8048a78:	ff 73 04             	pushl  0x4(%ebx)
 8048a7b:	ff 33                	pushl  (%ebx)
 8048a7d:	68 52 9d 04 08       	push   $0x8049d52
 8048a82:	e8 39 fc ff ff       	call   80486c0 <printf@plt>
 8048a87:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a8e:	e8 cd fc ff ff       	call   8048760 <exit@plt>
 8048a93:	83 ec 08             	sub    $0x8,%esp
 8048a96:	ff 33                	pushl  (%ebx)
 8048a98:	68 6f 9d 04 08       	push   $0x8049d6f
 8048a9d:	e8 1e fc ff ff       	call   80486c0 <printf@plt>
 8048aa2:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048aa9:	e8 b2 fc ff ff       	call   8048760 <exit@plt>

08048aae <phase_1>:
 8048aae:	55                   	push   %ebp
 8048aaf:	89 e5                	mov    %esp,%ebp
 8048ab1:	83 ec 10             	sub    $0x10,%esp
 8048ab4:	68 8c 9e 04 08       	push   $0x8049e8c
 8048ab9:	ff 75 08             	pushl  0x8(%ebp)
 8048abc:	e8 26 04 00 00       	call   8048ee7 <strings_not_equal>
 8048ac1:	83 c4 10             	add    $0x10,%esp
 8048ac4:	85 c0                	test   %eax,%eax
 8048ac6:	75 02                	jne    8048aca <phase_1+0x1c>
 8048ac8:	c9                   	leave  
 8048ac9:	c3                   	ret    
 8048aca:	e8 19 05 00 00       	call   8048fe8 <explode_bomb>
 8048acf:	eb f7                	jmp    8048ac8 <phase_1+0x1a>

08048ad1 <phase_2>:
 8048ad1:	55                   	push   %ebp
 8048ad2:	89 e5                	mov    %esp,%ebp
 8048ad4:	56                   	push   %esi
 8048ad5:	53                   	push   %ebx
 8048ad6:	83 ec 28             	sub    $0x28,%esp
 8048ad9:	8d 45 e0             	lea    -0x20(%ebp),%eax
 8048adc:	50                   	push   %eax
 8048add:	ff 75 08             	pushl  0x8(%ebp)
 8048ae0:	e8 2b 05 00 00       	call   8049010 <read_six_numbers>
 8048ae5:	83 c4 10             	add    $0x10,%esp
 8048ae8:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
 8048aec:	74 05                	je     8048af3 <phase_2+0x22>
 8048aee:	e8 f5 04 00 00       	call   8048fe8 <explode_bomb>
 8048af3:	8d 5d e0             	lea    -0x20(%ebp),%ebx
 8048af6:	8d 75 f4             	lea    -0xc(%ebp),%esi
 8048af9:	eb 07                	jmp    8048b02 <phase_2+0x31>
 8048afb:	83 c3 04             	add    $0x4,%ebx
 8048afe:	39 f3                	cmp    %esi,%ebx
 8048b00:	74 10                	je     8048b12 <phase_2+0x41>
 8048b02:	8b 03                	mov    (%ebx),%eax
 8048b04:	01 c0                	add    %eax,%eax
 8048b06:	39 43 04             	cmp    %eax,0x4(%ebx)
 8048b09:	74 f0                	je     8048afb <phase_2+0x2a>
 8048b0b:	e8 d8 04 00 00       	call   8048fe8 <explode_bomb>
 8048b10:	eb e9                	jmp    8048afb <phase_2+0x2a>
 8048b12:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048b15:	5b                   	pop    %ebx
 8048b16:	5e                   	pop    %esi
 8048b17:	5d                   	pop    %ebp
 8048b18:	c3                   	ret    

08048b19 <phase_3>:
 8048b19:	55                   	push   %ebp
 8048b1a:	89 e5                	mov    %esp,%ebp
 8048b1c:	83 ec 18             	sub    $0x18,%esp
 8048b1f:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8048b22:	50                   	push   %eax
 8048b23:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048b26:	50                   	push   %eax
 8048b27:	68 2f a0 04 08       	push   $0x804a02f
 8048b2c:	ff 75 08             	pushl  0x8(%ebp)
 8048b2f:	e8 6c fc ff ff       	call   80487a0 <__isoc99_sscanf@plt>
 8048b34:	83 c4 10             	add    $0x10,%esp
 8048b37:	83 f8 01             	cmp    $0x1,%eax
 8048b3a:	7e 10                	jle    8048b4c <phase_3+0x33>
 8048b3c:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
 8048b40:	77 7c                	ja     8048bbe <phase_3+0xa5>
 8048b42:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048b45:	ff 24 85 f0 9e 04 08 	jmp    *0x8049ef0(,%eax,4)
 8048b4c:	e8 97 04 00 00       	call   8048fe8 <explode_bomb>
 8048b51:	eb e9                	jmp    8048b3c <phase_3+0x23>
 8048b53:	b8 84 01 00 00       	mov    $0x184,%eax
 8048b58:	eb 05                	jmp    8048b5f <phase_3+0x46>
 8048b5a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b5f:	2d 94 00 00 00       	sub    $0x94,%eax
 8048b64:	05 97 02 00 00       	add    $0x297,%eax
 8048b69:	2d 75 01 00 00       	sub    $0x175,%eax
 8048b6e:	05 75 01 00 00       	add    $0x175,%eax
 8048b73:	2d 75 01 00 00       	sub    $0x175,%eax
 8048b78:	05 75 01 00 00       	add    $0x175,%eax
 8048b7d:	2d 75 01 00 00       	sub    $0x175,%eax
 8048b82:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8048b86:	7f 05                	jg     8048b8d <phase_3+0x74>
 8048b88:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8048b8b:	74 05                	je     8048b92 <phase_3+0x79>
 8048b8d:	e8 56 04 00 00       	call   8048fe8 <explode_bomb>
 8048b92:	c9                   	leave  
 8048b93:	c3                   	ret    
 8048b94:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b99:	eb c9                	jmp    8048b64 <phase_3+0x4b>
 8048b9b:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ba0:	eb c7                	jmp    8048b69 <phase_3+0x50>
 8048ba2:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ba7:	eb c5                	jmp    8048b6e <phase_3+0x55>
 8048ba9:	b8 00 00 00 00       	mov    $0x0,%eax
 8048bae:	eb c3                	jmp    8048b73 <phase_3+0x5a>
 8048bb0:	b8 00 00 00 00       	mov    $0x0,%eax
 8048bb5:	eb c1                	jmp    8048b78 <phase_3+0x5f>
 8048bb7:	b8 00 00 00 00       	mov    $0x0,%eax
 8048bbc:	eb bf                	jmp    8048b7d <phase_3+0x64>
 8048bbe:	e8 25 04 00 00       	call   8048fe8 <explode_bomb>
 8048bc3:	b8 00 00 00 00       	mov    $0x0,%eax
 8048bc8:	eb b8                	jmp    8048b82 <phase_3+0x69>

08048bca <func4>:
 8048bca:	55                   	push   %ebp
 8048bcb:	89 e5                	mov    %esp,%ebp
 8048bcd:	57                   	push   %edi
 8048bce:	56                   	push   %esi
 8048bcf:	53                   	push   %ebx
 8048bd0:	83 ec 0c             	sub    $0xc,%esp
 8048bd3:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048bd6:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8048bd9:	85 db                	test   %ebx,%ebx
 8048bdb:	7e 31                	jle    8048c0e <func4+0x44>
 8048bdd:	89 f8                	mov    %edi,%eax
 8048bdf:	83 fb 01             	cmp    $0x1,%ebx
 8048be2:	74 22                	je     8048c06 <func4+0x3c>
 8048be4:	83 ec 08             	sub    $0x8,%esp
 8048be7:	57                   	push   %edi
 8048be8:	8d 43 ff             	lea    -0x1(%ebx),%eax
 8048beb:	50                   	push   %eax
 8048bec:	e8 d9 ff ff ff       	call   8048bca <func4>
 8048bf1:	83 c4 08             	add    $0x8,%esp
 8048bf4:	8d 34 07             	lea    (%edi,%eax,1),%esi
 8048bf7:	57                   	push   %edi
 8048bf8:	83 eb 02             	sub    $0x2,%ebx
 8048bfb:	53                   	push   %ebx
 8048bfc:	e8 c9 ff ff ff       	call   8048bca <func4>
 8048c01:	83 c4 10             	add    $0x10,%esp
 8048c04:	01 f0                	add    %esi,%eax
 8048c06:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048c09:	5b                   	pop    %ebx
 8048c0a:	5e                   	pop    %esi
 8048c0b:	5f                   	pop    %edi
 8048c0c:	5d                   	pop    %ebp
 8048c0d:	c3                   	ret    
 8048c0e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c13:	eb f1                	jmp    8048c06 <func4+0x3c>

08048c15 <phase_4>:
 8048c15:	55                   	push   %ebp
 8048c16:	89 e5                	mov    %esp,%ebp
 8048c18:	83 ec 18             	sub    $0x18,%esp
 8048c1b:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048c1e:	50                   	push   %eax
 8048c1f:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8048c22:	50                   	push   %eax
 8048c23:	68 2f a0 04 08       	push   $0x804a02f
 8048c28:	ff 75 08             	pushl  0x8(%ebp)
 8048c2b:	e8 70 fb ff ff       	call   80487a0 <__isoc99_sscanf@plt>
 8048c30:	83 c4 10             	add    $0x10,%esp
 8048c33:	83 f8 02             	cmp    $0x2,%eax
 8048c36:	74 21                	je     8048c59 <phase_4+0x44>
 8048c38:	e8 ab 03 00 00       	call   8048fe8 <explode_bomb>
 8048c3d:	83 ec 08             	sub    $0x8,%esp
 8048c40:	ff 75 f4             	pushl  -0xc(%ebp)
 8048c43:	6a 06                	push   $0x6
 8048c45:	e8 80 ff ff ff       	call   8048bca <func4>
 8048c4a:	83 c4 10             	add    $0x10,%esp
 8048c4d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8048c50:	74 05                	je     8048c57 <phase_4+0x42>
 8048c52:	e8 91 03 00 00       	call   8048fe8 <explode_bomb>
 8048c57:	c9                   	leave  
 8048c58:	c3                   	ret    
 8048c59:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c5c:	83 e8 02             	sub    $0x2,%eax
 8048c5f:	83 f8 02             	cmp    $0x2,%eax
 8048c62:	76 d9                	jbe    8048c3d <phase_4+0x28>
 8048c64:	eb d2                	jmp    8048c38 <phase_4+0x23>

08048c66 <phase_5>:
 8048c66:	55                   	push   %ebp
 8048c67:	89 e5                	mov    %esp,%ebp
 8048c69:	53                   	push   %ebx
 8048c6a:	83 ec 20             	sub    $0x20,%esp
 8048c6d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048c70:	53                   	push   %ebx
 8048c71:	e8 4f 02 00 00       	call   8048ec5 <string_length>
 8048c76:	83 c4 10             	add    $0x10,%esp
 8048c79:	83 f8 06             	cmp    $0x6,%eax
 8048c7c:	74 05                	je     8048c83 <phase_5+0x1d>
 8048c7e:	e8 65 03 00 00       	call   8048fe8 <explode_bomb>
 8048c83:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c88:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 8048c8c:	83 e2 0f             	and    $0xf,%edx
 8048c8f:	0f b6 92 10 9f 04 08 	movzbl 0x8049f10(%edx),%edx
 8048c96:	88 54 05 f1          	mov    %dl,-0xf(%ebp,%eax,1)
 8048c9a:	83 c0 01             	add    $0x1,%eax
 8048c9d:	83 f8 06             	cmp    $0x6,%eax
 8048ca0:	75 e6                	jne    8048c88 <phase_5+0x22>
 8048ca2:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
 8048ca6:	83 ec 08             	sub    $0x8,%esp
 8048ca9:	68 e6 9e 04 08       	push   $0x8049ee6
 8048cae:	8d 45 f1             	lea    -0xf(%ebp),%eax
 8048cb1:	50                   	push   %eax
 8048cb2:	e8 30 02 00 00       	call   8048ee7 <strings_not_equal>
 8048cb7:	83 c4 10             	add    $0x10,%esp
 8048cba:	85 c0                	test   %eax,%eax
 8048cbc:	75 05                	jne    8048cc3 <phase_5+0x5d>
 8048cbe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048cc1:	c9                   	leave  
 8048cc2:	c3                   	ret    
 8048cc3:	e8 20 03 00 00       	call   8048fe8 <explode_bomb>
 8048cc8:	eb f4                	jmp    8048cbe <phase_5+0x58>

08048cca <phase_6>:
 8048cca:	55                   	push   %ebp
 8048ccb:	89 e5                	mov    %esp,%ebp
 8048ccd:	56                   	push   %esi
 8048cce:	53                   	push   %ebx
 8048ccf:	83 ec 38             	sub    $0x38,%esp
 8048cd2:	8d 45 e0             	lea    -0x20(%ebp),%eax
 8048cd5:	50                   	push   %eax
 8048cd6:	ff 75 08             	pushl  0x8(%ebp)
 8048cd9:	e8 32 03 00 00       	call   8049010 <read_six_numbers>
 8048cde:	83 c4 10             	add    $0x10,%esp
 8048ce1:	be 00 00 00 00       	mov    $0x0,%esi
 8048ce6:	eb 1c                	jmp    8048d04 <phase_6+0x3a>
 8048ce8:	83 c6 01             	add    $0x1,%esi
 8048ceb:	83 fe 06             	cmp    $0x6,%esi
 8048cee:	74 2e                	je     8048d1e <phase_6+0x54>
 8048cf0:	89 f3                	mov    %esi,%ebx
 8048cf2:	8b 44 9d e0          	mov    -0x20(%ebp,%ebx,4),%eax
 8048cf6:	39 44 b5 dc          	cmp    %eax,-0x24(%ebp,%esi,4)
 8048cfa:	74 1b                	je     8048d17 <phase_6+0x4d>
 8048cfc:	83 c3 01             	add    $0x1,%ebx
 8048cff:	83 fb 05             	cmp    $0x5,%ebx
 8048d02:	7e ee                	jle    8048cf2 <phase_6+0x28>
 8048d04:	8b 44 b5 e0          	mov    -0x20(%ebp,%esi,4),%eax
 8048d08:	83 e8 01             	sub    $0x1,%eax
 8048d0b:	83 f8 05             	cmp    $0x5,%eax
 8048d0e:	76 d8                	jbe    8048ce8 <phase_6+0x1e>
 8048d10:	e8 d3 02 00 00       	call   8048fe8 <explode_bomb>
 8048d15:	eb d1                	jmp    8048ce8 <phase_6+0x1e>
 8048d17:	e8 cc 02 00 00       	call   8048fe8 <explode_bomb>
 8048d1c:	eb de                	jmp    8048cfc <phase_6+0x32>
 8048d1e:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048d23:	89 de                	mov    %ebx,%esi
 8048d25:	8b 4c 9d e0          	mov    -0x20(%ebp,%ebx,4),%ecx
 8048d29:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d2e:	ba 3c c1 04 08       	mov    $0x804c13c,%edx
 8048d33:	83 f9 01             	cmp    $0x1,%ecx
 8048d36:	7e 0a                	jle    8048d42 <phase_6+0x78>
 8048d38:	8b 52 08             	mov    0x8(%edx),%edx
 8048d3b:	83 c0 01             	add    $0x1,%eax
 8048d3e:	39 c8                	cmp    %ecx,%eax
 8048d40:	75 f6                	jne    8048d38 <phase_6+0x6e>
 8048d42:	89 54 b5 c8          	mov    %edx,-0x38(%ebp,%esi,4)
 8048d46:	83 c3 01             	add    $0x1,%ebx
 8048d49:	83 fb 06             	cmp    $0x6,%ebx
 8048d4c:	75 d5                	jne    8048d23 <phase_6+0x59>
 8048d4e:	8b 5d c8             	mov    -0x38(%ebp),%ebx
 8048d51:	89 d9                	mov    %ebx,%ecx
 8048d53:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d58:	8b 54 85 c8          	mov    -0x38(%ebp,%eax,4),%edx
 8048d5c:	89 51 08             	mov    %edx,0x8(%ecx)
 8048d5f:	83 c0 01             	add    $0x1,%eax
 8048d62:	89 d1                	mov    %edx,%ecx
 8048d64:	83 f8 06             	cmp    $0x6,%eax
 8048d67:	75 ef                	jne    8048d58 <phase_6+0x8e>
 8048d69:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8048d70:	be 05 00 00 00       	mov    $0x5,%esi
 8048d75:	eb 08                	jmp    8048d7f <phase_6+0xb5>
 8048d77:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048d7a:	83 ee 01             	sub    $0x1,%esi
 8048d7d:	74 10                	je     8048d8f <phase_6+0xc5>
 8048d7f:	8b 43 08             	mov    0x8(%ebx),%eax
 8048d82:	8b 00                	mov    (%eax),%eax
 8048d84:	39 03                	cmp    %eax,(%ebx)
 8048d86:	7d ef                	jge    8048d77 <phase_6+0xad>
 8048d88:	e8 5b 02 00 00       	call   8048fe8 <explode_bomb>
 8048d8d:	eb e8                	jmp    8048d77 <phase_6+0xad>
 8048d8f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048d92:	5b                   	pop    %ebx
 8048d93:	5e                   	pop    %esi
 8048d94:	5d                   	pop    %ebp
 8048d95:	c3                   	ret    

08048d96 <fun7>:
 8048d96:	55                   	push   %ebp
 8048d97:	89 e5                	mov    %esp,%ebp
 8048d99:	53                   	push   %ebx
 8048d9a:	83 ec 04             	sub    $0x4,%esp
 8048d9d:	8b 55 08             	mov    0x8(%ebp),%edx
 8048da0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8048da3:	85 d2                	test   %edx,%edx
 8048da5:	74 3a                	je     8048de1 <fun7+0x4b>
 8048da7:	8b 1a                	mov    (%edx),%ebx
 8048da9:	39 cb                	cmp    %ecx,%ebx
 8048dab:	7f 21                	jg     8048dce <fun7+0x38>
 8048dad:	b8 00 00 00 00       	mov    $0x0,%eax
 8048db2:	39 cb                	cmp    %ecx,%ebx
 8048db4:	74 13                	je     8048dc9 <fun7+0x33>
 8048db6:	83 ec 08             	sub    $0x8,%esp
 8048db9:	51                   	push   %ecx
 8048dba:	ff 72 08             	pushl  0x8(%edx)
 8048dbd:	e8 d4 ff ff ff       	call   8048d96 <fun7>
 8048dc2:	83 c4 10             	add    $0x10,%esp
 8048dc5:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048dc9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048dcc:	c9                   	leave  
 8048dcd:	c3                   	ret    
 8048dce:	83 ec 08             	sub    $0x8,%esp
 8048dd1:	51                   	push   %ecx
 8048dd2:	ff 72 04             	pushl  0x4(%edx)
 8048dd5:	e8 bc ff ff ff       	call   8048d96 <fun7>
 8048dda:	83 c4 10             	add    $0x10,%esp
 8048ddd:	01 c0                	add    %eax,%eax
 8048ddf:	eb e8                	jmp    8048dc9 <fun7+0x33>
 8048de1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048de6:	eb e1                	jmp    8048dc9 <fun7+0x33>

08048de8 <secret_phase>:
 8048de8:	55                   	push   %ebp
 8048de9:	89 e5                	mov    %esp,%ebp
 8048deb:	53                   	push   %ebx
 8048dec:	83 ec 04             	sub    $0x4,%esp
 8048def:	e8 56 02 00 00       	call   804904a <read_line>
 8048df4:	83 ec 04             	sub    $0x4,%esp
 8048df7:	6a 0a                	push   $0xa
 8048df9:	6a 00                	push   $0x0
 8048dfb:	50                   	push   %eax
 8048dfc:	e8 ff f9 ff ff       	call   8048800 <strtol@plt>
 8048e01:	89 c3                	mov    %eax,%ebx
 8048e03:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048e06:	83 c4 10             	add    $0x10,%esp
 8048e09:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048e0e:	77 35                	ja     8048e45 <secret_phase+0x5d>
 8048e10:	83 ec 08             	sub    $0x8,%esp
 8048e13:	53                   	push   %ebx
 8048e14:	68 88 c0 04 08       	push   $0x804c088
 8048e19:	e8 78 ff ff ff       	call   8048d96 <fun7>
 8048e1e:	83 c4 10             	add    $0x10,%esp
 8048e21:	83 f8 06             	cmp    $0x6,%eax
 8048e24:	74 05                	je     8048e2b <secret_phase+0x43>
 8048e26:	e8 bd 01 00 00       	call   8048fe8 <explode_bomb>
 8048e2b:	83 ec 0c             	sub    $0xc,%esp
 8048e2e:	68 c0 9e 04 08       	push   $0x8049ec0
 8048e33:	e8 18 f9 ff ff       	call   8048750 <puts@plt>
 8048e38:	e8 1a 03 00 00       	call   8049157 <phase_defused>
 8048e3d:	83 c4 10             	add    $0x10,%esp
 8048e40:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048e43:	c9                   	leave  
 8048e44:	c3                   	ret    
 8048e45:	e8 9e 01 00 00       	call   8048fe8 <explode_bomb>
 8048e4a:	eb c4                	jmp    8048e10 <secret_phase+0x28>

08048e4c <sig_handler>:
 8048e4c:	55                   	push   %ebp
 8048e4d:	89 e5                	mov    %esp,%ebp
 8048e4f:	83 ec 14             	sub    $0x14,%esp
 8048e52:	68 20 9f 04 08       	push   $0x8049f20
 8048e57:	e8 f4 f8 ff ff       	call   8048750 <puts@plt>
 8048e5c:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048e63:	e8 98 f8 ff ff       	call   8048700 <sleep@plt>
 8048e68:	c7 04 24 e2 9f 04 08 	movl   $0x8049fe2,(%esp)
 8048e6f:	e8 4c f8 ff ff       	call   80486c0 <printf@plt>
 8048e74:	83 c4 04             	add    $0x4,%esp
 8048e77:	ff 35 c4 c3 04 08    	pushl  0x804c3c4
 8048e7d:	e8 4e f8 ff ff       	call   80486d0 <fflush@plt>
 8048e82:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048e89:	e8 72 f8 ff ff       	call   8048700 <sleep@plt>
 8048e8e:	c7 04 24 ea 9f 04 08 	movl   $0x8049fea,(%esp)
 8048e95:	e8 b6 f8 ff ff       	call   8048750 <puts@plt>
 8048e9a:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048ea1:	e8 ba f8 ff ff       	call   8048760 <exit@plt>

08048ea6 <invalid_phase>:
 8048ea6:	55                   	push   %ebp
 8048ea7:	89 e5                	mov    %esp,%ebp
 8048ea9:	83 ec 10             	sub    $0x10,%esp
 8048eac:	ff 75 08             	pushl  0x8(%ebp)
 8048eaf:	68 f2 9f 04 08       	push   $0x8049ff2
 8048eb4:	e8 07 f8 ff ff       	call   80486c0 <printf@plt>
 8048eb9:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048ec0:	e8 9b f8 ff ff       	call   8048760 <exit@plt>

08048ec5 <string_length>:
 8048ec5:	55                   	push   %ebp
 8048ec6:	89 e5                	mov    %esp,%ebp
 8048ec8:	8b 55 08             	mov    0x8(%ebp),%edx
 8048ecb:	80 3a 00             	cmpb   $0x0,(%edx)
 8048ece:	74 10                	je     8048ee0 <string_length+0x1b>
 8048ed0:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ed5:	83 c0 01             	add    $0x1,%eax
 8048ed8:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048edc:	75 f7                	jne    8048ed5 <string_length+0x10>
 8048ede:	5d                   	pop    %ebp
 8048edf:	c3                   	ret    
 8048ee0:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ee5:	eb f7                	jmp    8048ede <string_length+0x19>

08048ee7 <strings_not_equal>:
 8048ee7:	55                   	push   %ebp
 8048ee8:	89 e5                	mov    %esp,%ebp
 8048eea:	57                   	push   %edi
 8048eeb:	56                   	push   %esi
 8048eec:	53                   	push   %ebx
 8048eed:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048ef0:	8b 75 0c             	mov    0xc(%ebp),%esi
 8048ef3:	53                   	push   %ebx
 8048ef4:	e8 cc ff ff ff       	call   8048ec5 <string_length>
 8048ef9:	89 c7                	mov    %eax,%edi
 8048efb:	89 34 24             	mov    %esi,(%esp)
 8048efe:	e8 c2 ff ff ff       	call   8048ec5 <string_length>
 8048f03:	83 c4 04             	add    $0x4,%esp
 8048f06:	ba 01 00 00 00       	mov    $0x1,%edx
 8048f0b:	39 c7                	cmp    %eax,%edi
 8048f0d:	74 0a                	je     8048f19 <strings_not_equal+0x32>
 8048f0f:	89 d0                	mov    %edx,%eax
 8048f11:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048f14:	5b                   	pop    %ebx
 8048f15:	5e                   	pop    %esi
 8048f16:	5f                   	pop    %edi
 8048f17:	5d                   	pop    %ebp
 8048f18:	c3                   	ret    
 8048f19:	0f b6 03             	movzbl (%ebx),%eax
 8048f1c:	84 c0                	test   %al,%al
 8048f1e:	74 23                	je     8048f43 <strings_not_equal+0x5c>
 8048f20:	3a 06                	cmp    (%esi),%al
 8048f22:	75 26                	jne    8048f4a <strings_not_equal+0x63>
 8048f24:	83 c3 01             	add    $0x1,%ebx
 8048f27:	83 c6 01             	add    $0x1,%esi
 8048f2a:	0f b6 03             	movzbl (%ebx),%eax
 8048f2d:	84 c0                	test   %al,%al
 8048f2f:	74 0b                	je     8048f3c <strings_not_equal+0x55>
 8048f31:	3a 06                	cmp    (%esi),%al
 8048f33:	74 ef                	je     8048f24 <strings_not_equal+0x3d>
 8048f35:	ba 01 00 00 00       	mov    $0x1,%edx
 8048f3a:	eb d3                	jmp    8048f0f <strings_not_equal+0x28>
 8048f3c:	ba 00 00 00 00       	mov    $0x0,%edx
 8048f41:	eb cc                	jmp    8048f0f <strings_not_equal+0x28>
 8048f43:	ba 00 00 00 00       	mov    $0x0,%edx
 8048f48:	eb c5                	jmp    8048f0f <strings_not_equal+0x28>
 8048f4a:	ba 01 00 00 00       	mov    $0x1,%edx
 8048f4f:	eb be                	jmp    8048f0f <strings_not_equal+0x28>

08048f51 <initialize_bomb>:
 8048f51:	55                   	push   %ebp
 8048f52:	89 e5                	mov    %esp,%ebp
 8048f54:	83 ec 10             	sub    $0x10,%esp
 8048f57:	68 4c 8e 04 08       	push   $0x8048e4c
 8048f5c:	6a 02                	push   $0x2
 8048f5e:	e8 8d f7 ff ff       	call   80486f0 <signal@plt>
 8048f63:	83 c4 10             	add    $0x10,%esp
 8048f66:	c9                   	leave  
 8048f67:	c3                   	ret    

08048f68 <initialize_bomb_solve>:
 8048f68:	55                   	push   %ebp
 8048f69:	89 e5                	mov    %esp,%ebp
 8048f6b:	5d                   	pop    %ebp
 8048f6c:	c3                   	ret    

08048f6d <blank_line>:
 8048f6d:	55                   	push   %ebp
 8048f6e:	89 e5                	mov    %esp,%ebp
 8048f70:	56                   	push   %esi
 8048f71:	53                   	push   %ebx
 8048f72:	8b 75 08             	mov    0x8(%ebp),%esi
 8048f75:	0f b6 1e             	movzbl (%esi),%ebx
 8048f78:	84 db                	test   %bl,%bl
 8048f7a:	74 1b                	je     8048f97 <blank_line+0x2a>
 8048f7c:	e8 af f8 ff ff       	call   8048830 <__ctype_b_loc@plt>
 8048f81:	83 c6 01             	add    $0x1,%esi
 8048f84:	0f be db             	movsbl %bl,%ebx
 8048f87:	8b 00                	mov    (%eax),%eax
 8048f89:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 8048f8e:	75 e5                	jne    8048f75 <blank_line+0x8>
 8048f90:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f95:	eb 05                	jmp    8048f9c <blank_line+0x2f>
 8048f97:	b8 01 00 00 00       	mov    $0x1,%eax
 8048f9c:	5b                   	pop    %ebx
 8048f9d:	5e                   	pop    %esi
 8048f9e:	5d                   	pop    %ebp
 8048f9f:	c3                   	ret    

08048fa0 <skip>:
 8048fa0:	55                   	push   %ebp
 8048fa1:	89 e5                	mov    %esp,%ebp
 8048fa3:	53                   	push   %ebx
 8048fa4:	83 ec 04             	sub    $0x4,%esp
 8048fa7:	83 ec 04             	sub    $0x4,%esp
 8048faa:	ff 35 d0 c3 04 08    	pushl  0x804c3d0
 8048fb0:	6a 50                	push   $0x50
 8048fb2:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 8048fb7:	8d 04 80             	lea    (%eax,%eax,4),%eax
 8048fba:	c1 e0 04             	shl    $0x4,%eax
 8048fbd:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 8048fc2:	50                   	push   %eax
 8048fc3:	e8 18 f7 ff ff       	call   80486e0 <fgets@plt>
 8048fc8:	89 c3                	mov    %eax,%ebx
 8048fca:	83 c4 10             	add    $0x10,%esp
 8048fcd:	85 c0                	test   %eax,%eax
 8048fcf:	74 10                	je     8048fe1 <skip+0x41>
 8048fd1:	83 ec 0c             	sub    $0xc,%esp
 8048fd4:	50                   	push   %eax
 8048fd5:	e8 93 ff ff ff       	call   8048f6d <blank_line>
 8048fda:	83 c4 10             	add    $0x10,%esp
 8048fdd:	85 c0                	test   %eax,%eax
 8048fdf:	75 c6                	jne    8048fa7 <skip+0x7>
 8048fe1:	89 d8                	mov    %ebx,%eax
 8048fe3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048fe6:	c9                   	leave  
 8048fe7:	c3                   	ret    

08048fe8 <explode_bomb>:
 8048fe8:	55                   	push   %ebp
 8048fe9:	89 e5                	mov    %esp,%ebp
 8048feb:	83 ec 14             	sub    $0x14,%esp
 8048fee:	68 03 a0 04 08       	push   $0x804a003
 8048ff3:	e8 58 f7 ff ff       	call   8048750 <puts@plt>
 8048ff8:	c7 04 24 0c a0 04 08 	movl   $0x804a00c,(%esp)
 8048fff:	e8 4c f7 ff ff       	call   8048750 <puts@plt>
 8049004:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804900b:	e8 50 f7 ff ff       	call   8048760 <exit@plt>

08049010 <read_six_numbers>:
 8049010:	55                   	push   %ebp
 8049011:	89 e5                	mov    %esp,%ebp
 8049013:	83 ec 08             	sub    $0x8,%esp
 8049016:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049019:	8d 50 14             	lea    0x14(%eax),%edx
 804901c:	52                   	push   %edx
 804901d:	8d 50 10             	lea    0x10(%eax),%edx
 8049020:	52                   	push   %edx
 8049021:	8d 50 0c             	lea    0xc(%eax),%edx
 8049024:	52                   	push   %edx
 8049025:	8d 50 08             	lea    0x8(%eax),%edx
 8049028:	52                   	push   %edx
 8049029:	8d 50 04             	lea    0x4(%eax),%edx
 804902c:	52                   	push   %edx
 804902d:	50                   	push   %eax
 804902e:	68 23 a0 04 08       	push   $0x804a023
 8049033:	ff 75 08             	pushl  0x8(%ebp)
 8049036:	e8 65 f7 ff ff       	call   80487a0 <__isoc99_sscanf@plt>
 804903b:	83 c4 20             	add    $0x20,%esp
 804903e:	83 f8 05             	cmp    $0x5,%eax
 8049041:	7e 02                	jle    8049045 <read_six_numbers+0x35>
 8049043:	c9                   	leave  
 8049044:	c3                   	ret    
 8049045:	e8 9e ff ff ff       	call   8048fe8 <explode_bomb>

0804904a <read_line>:
 804904a:	55                   	push   %ebp
 804904b:	89 e5                	mov    %esp,%ebp
 804904d:	57                   	push   %edi
 804904e:	56                   	push   %esi
 804904f:	53                   	push   %ebx
 8049050:	83 ec 0c             	sub    $0xc,%esp
 8049053:	e8 48 ff ff ff       	call   8048fa0 <skip>
 8049058:	85 c0                	test   %eax,%eax
 804905a:	74 4f                	je     80490ab <read_line+0x61>
 804905c:	8b 15 cc c3 04 08    	mov    0x804c3cc,%edx
 8049062:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 8049065:	c1 e3 04             	shl    $0x4,%ebx
 8049068:	81 c3 e0 c3 04 08    	add    $0x804c3e0,%ebx
 804906e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049073:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049078:	89 df                	mov    %ebx,%edi
 804907a:	f2 ae                	repnz scas %es:(%edi),%al
 804907c:	f7 d1                	not    %ecx
 804907e:	83 e9 01             	sub    $0x1,%ecx
 8049081:	83 f9 4e             	cmp    $0x4e,%ecx
 8049084:	0f 8f 95 00 00 00    	jg     804911f <read_line+0xd5>
 804908a:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804908d:	c1 e0 04             	shl    $0x4,%eax
 8049090:	c6 84 01 df c3 04 08 	movb   $0x0,0x804c3df(%ecx,%eax,1)
 8049097:	00 
 8049098:	83 c2 01             	add    $0x1,%edx
 804909b:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 80490a1:	89 d8                	mov    %ebx,%eax
 80490a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80490a6:	5b                   	pop    %ebx
 80490a7:	5e                   	pop    %esi
 80490a8:	5f                   	pop    %edi
 80490a9:	5d                   	pop    %ebp
 80490aa:	c3                   	ret    
 80490ab:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 80490b0:	39 05 d0 c3 04 08    	cmp    %eax,0x804c3d0
 80490b6:	74 44                	je     80490fc <read_line+0xb2>
 80490b8:	83 ec 0c             	sub    $0xc,%esp
 80490bb:	68 53 a0 04 08       	push   $0x804a053
 80490c0:	e8 7b f6 ff ff       	call   8048740 <getenv@plt>
 80490c5:	83 c4 10             	add    $0x10,%esp
 80490c8:	85 c0                	test   %eax,%eax
 80490ca:	75 49                	jne    8049115 <read_line+0xcb>
 80490cc:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 80490d1:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 80490d6:	e8 c5 fe ff ff       	call   8048fa0 <skip>
 80490db:	85 c0                	test   %eax,%eax
 80490dd:	0f 85 79 ff ff ff    	jne    804905c <read_line+0x12>
 80490e3:	83 ec 0c             	sub    $0xc,%esp
 80490e6:	68 35 a0 04 08       	push   $0x804a035
 80490eb:	e8 60 f6 ff ff       	call   8048750 <puts@plt>
 80490f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80490f7:	e8 64 f6 ff ff       	call   8048760 <exit@plt>
 80490fc:	83 ec 0c             	sub    $0xc,%esp
 80490ff:	68 35 a0 04 08       	push   $0x804a035
 8049104:	e8 47 f6 ff ff       	call   8048750 <puts@plt>
 8049109:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049110:	e8 4b f6 ff ff       	call   8048760 <exit@plt>
 8049115:	83 ec 0c             	sub    $0xc,%esp
 8049118:	6a 00                	push   $0x0
 804911a:	e8 41 f6 ff ff       	call   8048760 <exit@plt>
 804911f:	83 ec 0c             	sub    $0xc,%esp
 8049122:	68 5e a0 04 08       	push   $0x804a05e
 8049127:	e8 24 f6 ff ff       	call   8048750 <puts@plt>
 804912c:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 8049131:	8d 50 01             	lea    0x1(%eax),%edx
 8049134:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 804913a:	6b c0 50             	imul   $0x50,%eax,%eax
 804913d:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 8049142:	ba 79 a0 04 08       	mov    $0x804a079,%edx
 8049147:	b9 04 00 00 00       	mov    $0x4,%ecx
 804914c:	89 c7                	mov    %eax,%edi
 804914e:	89 d6                	mov    %edx,%esi
 8049150:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049152:	e8 91 fe ff ff       	call   8048fe8 <explode_bomb>

08049157 <phase_defused>:
 8049157:	83 3d cc c3 04 08 06 	cmpl   $0x6,0x804c3cc
 804915e:	74 02                	je     8049162 <phase_defused+0xb>
 8049160:	f3 c3                	repz ret 
 8049162:	55                   	push   %ebp
 8049163:	89 e5                	mov    %esp,%ebp
 8049165:	83 ec 74             	sub    $0x74,%esp
 8049168:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804916b:	50                   	push   %eax
 804916c:	8d 45 a0             	lea    -0x60(%ebp),%eax
 804916f:	50                   	push   %eax
 8049170:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049173:	50                   	push   %eax
 8049174:	68 89 a0 04 08       	push   $0x804a089
 8049179:	68 d0 c4 04 08       	push   $0x804c4d0
 804917e:	e8 1d f6 ff ff       	call   80487a0 <__isoc99_sscanf@plt>
 8049183:	83 c4 20             	add    $0x20,%esp
 8049186:	83 f8 03             	cmp    $0x3,%eax
 8049189:	74 13                	je     804919e <phase_defused+0x47>
 804918b:	83 ec 0c             	sub    $0xc,%esp
 804918e:	68 b8 9f 04 08       	push   $0x8049fb8
 8049193:	e8 b8 f5 ff ff       	call   8048750 <puts@plt>
 8049198:	83 c4 10             	add    $0x10,%esp
 804919b:	c9                   	leave  
 804919c:	eb c2                	jmp    8049160 <phase_defused+0x9>
 804919e:	83 ec 08             	sub    $0x8,%esp
 80491a1:	68 92 a0 04 08       	push   $0x804a092
 80491a6:	8d 45 a8             	lea    -0x58(%ebp),%eax
 80491a9:	50                   	push   %eax
 80491aa:	e8 38 fd ff ff       	call   8048ee7 <strings_not_equal>
 80491af:	83 c4 10             	add    $0x10,%esp
 80491b2:	85 c0                	test   %eax,%eax
 80491b4:	75 d5                	jne    804918b <phase_defused+0x34>
 80491b6:	83 ec 0c             	sub    $0xc,%esp
 80491b9:	68 58 9f 04 08       	push   $0x8049f58
 80491be:	e8 8d f5 ff ff       	call   8048750 <puts@plt>
 80491c3:	c7 04 24 80 9f 04 08 	movl   $0x8049f80,(%esp)
 80491ca:	e8 81 f5 ff ff       	call   8048750 <puts@plt>
 80491cf:	e8 14 fc ff ff       	call   8048de8 <secret_phase>
 80491d4:	83 c4 10             	add    $0x10,%esp
 80491d7:	eb b2                	jmp    804918b <phase_defused+0x34>

080491d9 <sigalrm_handler>:
 80491d9:	55                   	push   %ebp
 80491da:	89 e5                	mov    %esp,%ebp
 80491dc:	83 ec 0c             	sub    $0xc,%esp
 80491df:	6a 00                	push   $0x0
 80491e1:	68 e8 a0 04 08       	push   $0x804a0e8
 80491e6:	ff 35 a0 c3 04 08    	pushl  0x804c3a0
 80491ec:	e8 8f f5 ff ff       	call   8048780 <fprintf@plt>
 80491f1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80491f8:	e8 63 f5 ff ff       	call   8048760 <exit@plt>

080491fd <rio_readlineb>:
 80491fd:	55                   	push   %ebp
 80491fe:	89 e5                	mov    %esp,%ebp
 8049200:	57                   	push   %edi
 8049201:	56                   	push   %esi
 8049202:	53                   	push   %ebx
 8049203:	83 ec 1c             	sub    $0x1c,%esp
 8049206:	83 f9 01             	cmp    $0x1,%ecx
 8049209:	76 7e                	jbe    8049289 <rio_readlineb+0x8c>
 804920b:	89 d7                	mov    %edx,%edi
 804920d:	89 c3                	mov    %eax,%ebx
 804920f:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8049212:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 8049219:	8d 70 0c             	lea    0xc(%eax),%esi
 804921c:	eb 0a                	jmp    8049228 <rio_readlineb+0x2b>
 804921e:	e8 9d f5 ff ff       	call   80487c0 <__errno_location@plt>
 8049223:	83 38 04             	cmpl   $0x4,(%eax)
 8049226:	75 6c                	jne    8049294 <rio_readlineb+0x97>
 8049228:	8b 43 04             	mov    0x4(%ebx),%eax
 804922b:	85 c0                	test   %eax,%eax
 804922d:	7f 23                	jg     8049252 <rio_readlineb+0x55>
 804922f:	83 ec 04             	sub    $0x4,%esp
 8049232:	68 00 20 00 00       	push   $0x2000
 8049237:	56                   	push   %esi
 8049238:	ff 33                	pushl  (%ebx)
 804923a:	e8 71 f4 ff ff       	call   80486b0 <read@plt>
 804923f:	89 43 04             	mov    %eax,0x4(%ebx)
 8049242:	83 c4 10             	add    $0x10,%esp
 8049245:	85 c0                	test   %eax,%eax
 8049247:	78 d5                	js     804921e <rio_readlineb+0x21>
 8049249:	85 c0                	test   %eax,%eax
 804924b:	74 4e                	je     804929b <rio_readlineb+0x9e>
 804924d:	89 73 08             	mov    %esi,0x8(%ebx)
 8049250:	eb d6                	jmp    8049228 <rio_readlineb+0x2b>
 8049252:	8b 4b 08             	mov    0x8(%ebx),%ecx
 8049255:	0f b6 11             	movzbl (%ecx),%edx
 8049258:	83 c1 01             	add    $0x1,%ecx
 804925b:	89 4b 08             	mov    %ecx,0x8(%ebx)
 804925e:	83 e8 01             	sub    $0x1,%eax
 8049261:	89 43 04             	mov    %eax,0x4(%ebx)
 8049264:	83 c7 01             	add    $0x1,%edi
 8049267:	88 57 ff             	mov    %dl,-0x1(%edi)
 804926a:	80 fa 0a             	cmp    $0xa,%dl
 804926d:	74 0c                	je     804927b <rio_readlineb+0x7e>
 804926f:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 8049273:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049276:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 8049279:	75 ad                	jne    8049228 <rio_readlineb+0x2b>
 804927b:	c6 07 00             	movb   $0x0,(%edi)
 804927e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049281:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049284:	5b                   	pop    %ebx
 8049285:	5e                   	pop    %esi
 8049286:	5f                   	pop    %edi
 8049287:	5d                   	pop    %ebp
 8049288:	c3                   	ret    
 8049289:	89 d7                	mov    %edx,%edi
 804928b:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 8049292:	eb e7                	jmp    804927b <rio_readlineb+0x7e>
 8049294:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049299:	eb 05                	jmp    80492a0 <rio_readlineb+0xa3>
 804929b:	b8 00 00 00 00       	mov    $0x0,%eax
 80492a0:	85 c0                	test   %eax,%eax
 80492a2:	75 0f                	jne    80492b3 <rio_readlineb+0xb6>
 80492a4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
 80492a8:	75 d1                	jne    804927b <rio_readlineb+0x7e>
 80492aa:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 80492b1:	eb cb                	jmp    804927e <rio_readlineb+0x81>
 80492b3:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,-0x1c(%ebp)
 80492ba:	eb c2                	jmp    804927e <rio_readlineb+0x81>

080492bc <submitr>:
 80492bc:	55                   	push   %ebp
 80492bd:	89 e5                	mov    %esp,%ebp
 80492bf:	57                   	push   %edi
 80492c0:	56                   	push   %esi
 80492c1:	53                   	push   %ebx
 80492c2:	81 ec 50 a0 00 00    	sub    $0xa050,%esp
 80492c8:	c7 85 c8 7f ff ff 00 	movl   $0x0,-0x8038(%ebp)
 80492cf:	00 00 00 
 80492d2:	6a 00                	push   $0x0
 80492d4:	6a 01                	push   $0x1
 80492d6:	6a 02                	push   $0x2
 80492d8:	e8 03 f5 ff ff       	call   80487e0 <socket@plt>
 80492dd:	89 85 b4 5f ff ff    	mov    %eax,-0xa04c(%ebp)
 80492e3:	83 c4 10             	add    $0x10,%esp
 80492e6:	85 c0                	test   %eax,%eax
 80492e8:	0f 88 fb 00 00 00    	js     80493e9 <submitr+0x12d>
 80492ee:	83 ec 0c             	sub    $0xc,%esp
 80492f1:	ff 75 08             	pushl  0x8(%ebp)
 80492f4:	e8 f7 f4 ff ff       	call   80487f0 <gethostbyname@plt>
 80492f9:	83 c4 10             	add    $0x10,%esp
 80492fc:	85 c0                	test   %eax,%eax
 80492fe:	0f 84 36 01 00 00    	je     804943a <submitr+0x17e>
 8049304:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 8049307:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804930e:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 8049315:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804931c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 8049323:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 8049329:	83 ec 04             	sub    $0x4,%esp
 804932c:	ff 70 0c             	pushl  0xc(%eax)
 804932f:	8d 55 dc             	lea    -0x24(%ebp),%edx
 8049332:	52                   	push   %edx
 8049333:	8b 40 10             	mov    0x10(%eax),%eax
 8049336:	ff 30                	pushl  (%eax)
 8049338:	e8 e3 f3 ff ff       	call   8048720 <bcopy@plt>
 804933d:	0f b7 45 0c          	movzwl 0xc(%ebp),%eax
 8049341:	66 c1 c8 08          	ror    $0x8,%ax
 8049345:	66 89 45 da          	mov    %ax,-0x26(%ebp)
 8049349:	83 c4 0c             	add    $0xc,%esp
 804934c:	6a 10                	push   $0x10
 804934e:	53                   	push   %ebx
 804934f:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049355:	e8 b6 f4 ff ff       	call   8048810 <connect@plt>
 804935a:	83 c4 10             	add    $0x10,%esp
 804935d:	85 c0                	test   %eax,%eax
 804935f:	0f 88 49 01 00 00    	js     80494ae <submitr+0x1f2>
 8049365:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 804936a:	b8 00 00 00 00       	mov    $0x0,%eax
 804936f:	89 d9                	mov    %ebx,%ecx
 8049371:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 8049374:	f2 ae                	repnz scas %es:(%edi),%al
 8049376:	89 ce                	mov    %ecx,%esi
 8049378:	f7 d6                	not    %esi
 804937a:	89 d9                	mov    %ebx,%ecx
 804937c:	8b 7d 10             	mov    0x10(%ebp),%edi
 804937f:	f2 ae                	repnz scas %es:(%edi),%al
 8049381:	89 8d b0 5f ff ff    	mov    %ecx,-0xa050(%ebp)
 8049387:	89 d9                	mov    %ebx,%ecx
 8049389:	8b 7d 14             	mov    0x14(%ebp),%edi
 804938c:	f2 ae                	repnz scas %es:(%edi),%al
 804938e:	89 ca                	mov    %ecx,%edx
 8049390:	f7 d2                	not    %edx
 8049392:	89 d9                	mov    %ebx,%ecx
 8049394:	8b 7d 18             	mov    0x18(%ebp),%edi
 8049397:	f2 ae                	repnz scas %es:(%edi),%al
 8049399:	2b 95 b0 5f ff ff    	sub    -0xa050(%ebp),%edx
 804939f:	29 ca                	sub    %ecx,%edx
 80493a1:	8d 44 76 fd          	lea    -0x3(%esi,%esi,2),%eax
 80493a5:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 80493a9:	3d 00 20 00 00       	cmp    $0x2000,%eax
 80493ae:	0f 87 60 01 00 00    	ja     8049514 <submitr+0x258>
 80493b4:	8d 95 cc 9f ff ff    	lea    -0x6034(%ebp),%edx
 80493ba:	b9 00 08 00 00       	mov    $0x800,%ecx
 80493bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80493c4:	89 d7                	mov    %edx,%edi
 80493c6:	f3 ab                	rep stos %eax,%es:(%edi)
 80493c8:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80493cd:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 80493d0:	f2 ae                	repnz scas %es:(%edi),%al
 80493d2:	f7 d1                	not    %ecx
 80493d4:	89 cb                	mov    %ecx,%ebx
 80493d6:	83 eb 01             	sub    $0x1,%ebx
 80493d9:	0f 84 2c 06 00 00    	je     8049a0b <submitr+0x74f>
 80493df:	8b 75 1c             	mov    0x1c(%ebp),%esi
 80493e2:	89 d7                	mov    %edx,%edi
 80493e4:	e9 bb 01 00 00       	jmp    80495a4 <submitr+0x2e8>
 80493e9:	8b 45 20             	mov    0x20(%ebp),%eax
 80493ec:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80493f2:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80493f9:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049400:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049407:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804940e:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049415:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804941c:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 8049423:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804942a:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049430:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049435:	e9 fe 04 00 00       	jmp    8049938 <submitr+0x67c>
 804943a:	8b 45 20             	mov    0x20(%ebp),%eax
 804943d:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049443:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 804944a:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 8049451:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 8049458:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804945f:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049466:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 804946d:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 8049474:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 804947b:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 8049482:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 8049489:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 804948f:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 8049493:	83 ec 0c             	sub    $0xc,%esp
 8049496:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804949c:	e8 7f f3 ff ff       	call   8048820 <close@plt>
 80494a1:	83 c4 10             	add    $0x10,%esp
 80494a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80494a9:	e9 8a 04 00 00       	jmp    8049938 <submitr+0x67c>
 80494ae:	8b 45 20             	mov    0x20(%ebp),%eax
 80494b1:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80494b7:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
 80494be:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
 80494c5:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
 80494cc:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
 80494d3:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
 80494da:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
 80494e1:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
 80494e8:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80494ef:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
 80494f5:	c6 40 26 00          	movb   $0x0,0x26(%eax)
 80494f9:	83 ec 0c             	sub    $0xc,%esp
 80494fc:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049502:	e8 19 f3 ff ff       	call   8048820 <close@plt>
 8049507:	83 c4 10             	add    $0x10,%esp
 804950a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804950f:	e9 24 04 00 00       	jmp    8049938 <submitr+0x67c>
 8049514:	8b 45 20             	mov    0x20(%ebp),%eax
 8049517:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804951d:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 8049524:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 804952b:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049532:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049539:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049540:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049547:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 804954e:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 8049555:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 804955c:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049563:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 804956a:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049571:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 8049578:	83 ec 0c             	sub    $0xc,%esp
 804957b:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049581:	e8 9a f2 ff ff       	call   8048820 <close@plt>
 8049586:	83 c4 10             	add    $0x10,%esp
 8049589:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804958e:	e9 a5 03 00 00       	jmp    8049938 <submitr+0x67c>
 8049593:	88 17                	mov    %dl,(%edi)
 8049595:	8d 7f 01             	lea    0x1(%edi),%edi
 8049598:	83 c6 01             	add    $0x1,%esi
 804959b:	83 eb 01             	sub    $0x1,%ebx
 804959e:	0f 84 67 04 00 00    	je     8049a0b <submitr+0x74f>
 80495a4:	0f b6 16             	movzbl (%esi),%edx
 80495a7:	8d 4a d6             	lea    -0x2a(%edx),%ecx
 80495aa:	b8 01 00 00 00       	mov    $0x1,%eax
 80495af:	80 f9 0f             	cmp    $0xf,%cl
 80495b2:	77 0d                	ja     80495c1 <submitr+0x305>
 80495b4:	b8 d9 ff 00 00       	mov    $0xffd9,%eax
 80495b9:	d3 e8                	shr    %cl,%eax
 80495bb:	83 f0 01             	xor    $0x1,%eax
 80495be:	83 e0 01             	and    $0x1,%eax
 80495c1:	84 c0                	test   %al,%al
 80495c3:	74 ce                	je     8049593 <submitr+0x2d7>
 80495c5:	80 fa 5f             	cmp    $0x5f,%dl
 80495c8:	74 c9                	je     8049593 <submitr+0x2d7>
 80495ca:	89 d0                	mov    %edx,%eax
 80495cc:	83 e0 df             	and    $0xffffffdf,%eax
 80495cf:	83 e8 41             	sub    $0x41,%eax
 80495d2:	3c 19                	cmp    $0x19,%al
 80495d4:	76 bd                	jbe    8049593 <submitr+0x2d7>
 80495d6:	80 fa 20             	cmp    $0x20,%dl
 80495d9:	74 50                	je     804962b <submitr+0x36f>
 80495db:	8d 42 e0             	lea    -0x20(%edx),%eax
 80495de:	3c 5f                	cmp    $0x5f,%al
 80495e0:	76 09                	jbe    80495eb <submitr+0x32f>
 80495e2:	80 fa 09             	cmp    $0x9,%dl
 80495e5:	0f 85 d4 03 00 00    	jne    80499bf <submitr+0x703>
 80495eb:	83 ec 04             	sub    $0x4,%esp
 80495ee:	0f b6 d2             	movzbl %dl,%edx
 80495f1:	52                   	push   %edx
 80495f2:	68 f4 a1 04 08       	push   $0x804a1f4
 80495f7:	8d 85 c0 5f ff ff    	lea    -0xa040(%ebp),%eax
 80495fd:	50                   	push   %eax
 80495fe:	e8 cd f1 ff ff       	call   80487d0 <sprintf@plt>
 8049603:	0f b6 85 c0 5f ff ff 	movzbl -0xa040(%ebp),%eax
 804960a:	88 07                	mov    %al,(%edi)
 804960c:	0f b6 85 c1 5f ff ff 	movzbl -0xa03f(%ebp),%eax
 8049613:	88 47 01             	mov    %al,0x1(%edi)
 8049616:	0f b6 85 c2 5f ff ff 	movzbl -0xa03e(%ebp),%eax
 804961d:	88 47 02             	mov    %al,0x2(%edi)
 8049620:	83 c4 10             	add    $0x10,%esp
 8049623:	8d 7f 03             	lea    0x3(%edi),%edi
 8049626:	e9 6d ff ff ff       	jmp    8049598 <submitr+0x2dc>
 804962b:	c6 07 2b             	movb   $0x2b,(%edi)
 804962e:	8d 7f 01             	lea    0x1(%edi),%edi
 8049631:	e9 62 ff ff ff       	jmp    8049598 <submitr+0x2dc>
 8049636:	01 c6                	add    %eax,%esi
 8049638:	29 c3                	sub    %eax,%ebx
 804963a:	74 29                	je     8049665 <submitr+0x3a9>
 804963c:	83 ec 04             	sub    $0x4,%esp
 804963f:	53                   	push   %ebx
 8049640:	56                   	push   %esi
 8049641:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049647:	e8 44 f1 ff ff       	call   8048790 <write@plt>
 804964c:	83 c4 10             	add    $0x10,%esp
 804964f:	85 c0                	test   %eax,%eax
 8049651:	7f e3                	jg     8049636 <submitr+0x37a>
 8049653:	e8 68 f1 ff ff       	call   80487c0 <__errno_location@plt>
 8049658:	83 38 04             	cmpl   $0x4,(%eax)
 804965b:	0f 85 be 00 00 00    	jne    804971f <submitr+0x463>
 8049661:	89 f8                	mov    %edi,%eax
 8049663:	eb d1                	jmp    8049636 <submitr+0x37a>
 8049665:	83 bd b0 5f ff ff 00 	cmpl   $0x0,-0xa050(%ebp)
 804966c:	0f 88 ad 00 00 00    	js     804971f <submitr+0x463>
 8049672:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 8049678:	89 85 cc df ff ff    	mov    %eax,-0x2034(%ebp)
 804967e:	c7 85 d0 df ff ff 00 	movl   $0x0,-0x2030(%ebp)
 8049685:	00 00 00 
 8049688:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
 804968e:	89 85 d4 df ff ff    	mov    %eax,-0x202c(%ebp)
 8049694:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049699:	8d 95 cc bf ff ff    	lea    -0x4034(%ebp),%edx
 804969f:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 80496a5:	e8 53 fb ff ff       	call   80491fd <rio_readlineb>
 80496aa:	85 c0                	test   %eax,%eax
 80496ac:	0f 8e d7 00 00 00    	jle    8049789 <submitr+0x4cd>
 80496b2:	83 ec 0c             	sub    $0xc,%esp
 80496b5:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 80496bb:	50                   	push   %eax
 80496bc:	8d 85 c8 7f ff ff    	lea    -0x8038(%ebp),%eax
 80496c2:	50                   	push   %eax
 80496c3:	8d 85 cc 7f ff ff    	lea    -0x8034(%ebp),%eax
 80496c9:	50                   	push   %eax
 80496ca:	68 fb a1 04 08       	push   $0x804a1fb
 80496cf:	8d 85 cc bf ff ff    	lea    -0x4034(%ebp),%eax
 80496d5:	50                   	push   %eax
 80496d6:	e8 c5 f0 ff ff       	call   80487a0 <__isoc99_sscanf@plt>
 80496db:	8b 85 c8 7f ff ff    	mov    -0x8038(%ebp),%eax
 80496e1:	83 c4 20             	add    $0x20,%esp
 80496e4:	3d c8 00 00 00       	cmp    $0xc8,%eax
 80496e9:	0f 84 af 01 00 00    	je     804989e <submitr+0x5e2>
 80496ef:	8d 95 c8 5f ff ff    	lea    -0xa038(%ebp),%edx
 80496f5:	52                   	push   %edx
 80496f6:	50                   	push   %eax
 80496f7:	68 0c a1 04 08       	push   $0x804a10c
 80496fc:	ff 75 20             	pushl  0x20(%ebp)
 80496ff:	e8 cc f0 ff ff       	call   80487d0 <sprintf@plt>
 8049704:	83 c4 04             	add    $0x4,%esp
 8049707:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804970d:	e8 0e f1 ff ff       	call   8048820 <close@plt>
 8049712:	83 c4 10             	add    $0x10,%esp
 8049715:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804971a:	e9 19 02 00 00       	jmp    8049938 <submitr+0x67c>
 804971f:	8b 45 20             	mov    0x20(%ebp),%eax
 8049722:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049728:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804972f:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049736:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804973d:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049744:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804974b:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 8049752:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 8049759:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 8049760:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 8049767:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 804976e:	83 ec 0c             	sub    $0xc,%esp
 8049771:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049777:	e8 a4 f0 ff ff       	call   8048820 <close@plt>
 804977c:	83 c4 10             	add    $0x10,%esp
 804977f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049784:	e9 af 01 00 00       	jmp    8049938 <submitr+0x67c>
 8049789:	8b 45 20             	mov    0x20(%ebp),%eax
 804978c:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049792:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049799:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80497a0:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80497a7:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80497ae:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80497b5:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 80497bc:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 80497c3:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 80497ca:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 80497d1:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 80497d8:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 80497df:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 80497e6:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 80497ec:	83 ec 0c             	sub    $0xc,%esp
 80497ef:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80497f5:	e8 26 f0 ff ff       	call   8048820 <close@plt>
 80497fa:	83 c4 10             	add    $0x10,%esp
 80497fd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049802:	e9 31 01 00 00       	jmp    8049938 <submitr+0x67c>
 8049807:	8b 45 20             	mov    0x20(%ebp),%eax
 804980a:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049810:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049817:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804981e:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049825:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804982c:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049833:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804983a:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 8049841:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 8049848:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 804984f:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 8049856:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 804985d:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 8049861:	83 ec 0c             	sub    $0xc,%esp
 8049864:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804986a:	e8 b1 ef ff ff       	call   8048820 <close@plt>
 804986f:	83 c4 10             	add    $0x10,%esp
 8049872:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049877:	e9 bc 00 00 00       	jmp    8049938 <submitr+0x67c>
 804987c:	85 c0                	test   %eax,%eax
 804987e:	74 49                	je     80498c9 <submitr+0x60d>
 8049880:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049885:	8d 95 cc bf ff ff    	lea    -0x4034(%ebp),%edx
 804988b:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 8049891:	e8 67 f9 ff ff       	call   80491fd <rio_readlineb>
 8049896:	85 c0                	test   %eax,%eax
 8049898:	0f 8e 69 ff ff ff    	jle    8049807 <submitr+0x54b>
 804989e:	0f b6 95 cc bf ff ff 	movzbl -0x4034(%ebp),%edx
 80498a5:	b8 0d 00 00 00       	mov    $0xd,%eax
 80498aa:	29 d0                	sub    %edx,%eax
 80498ac:	75 ce                	jne    804987c <submitr+0x5c0>
 80498ae:	0f b6 95 cd bf ff ff 	movzbl -0x4033(%ebp),%edx
 80498b5:	b8 0a 00 00 00       	mov    $0xa,%eax
 80498ba:	29 d0                	sub    %edx,%eax
 80498bc:	75 be                	jne    804987c <submitr+0x5c0>
 80498be:	0f b6 85 ce bf ff ff 	movzbl -0x4032(%ebp),%eax
 80498c5:	f7 d8                	neg    %eax
 80498c7:	eb b3                	jmp    804987c <submitr+0x5c0>
 80498c9:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80498ce:	8d 95 cc bf ff ff    	lea    -0x4034(%ebp),%edx
 80498d4:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 80498da:	e8 1e f9 ff ff       	call   80491fd <rio_readlineb>
 80498df:	85 c0                	test   %eax,%eax
 80498e1:	7e 5d                	jle    8049940 <submitr+0x684>
 80498e3:	83 ec 08             	sub    $0x8,%esp
 80498e6:	8d 85 cc bf ff ff    	lea    -0x4034(%ebp),%eax
 80498ec:	50                   	push   %eax
 80498ed:	ff 75 20             	pushl  0x20(%ebp)
 80498f0:	e8 3b ee ff ff       	call   8048730 <strcpy@plt>
 80498f5:	83 c4 04             	add    $0x4,%esp
 80498f8:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80498fe:	e8 1d ef ff ff       	call   8048820 <close@plt>
 8049903:	8b 45 20             	mov    0x20(%ebp),%eax
 8049906:	0f b6 10             	movzbl (%eax),%edx
 8049909:	b8 4f 00 00 00       	mov    $0x4f,%eax
 804990e:	83 c4 10             	add    $0x10,%esp
 8049911:	29 d0                	sub    %edx,%eax
 8049913:	75 19                	jne    804992e <submitr+0x672>
 8049915:	8b 45 20             	mov    0x20(%ebp),%eax
 8049918:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 804991c:	b8 4b 00 00 00       	mov    $0x4b,%eax
 8049921:	29 d0                	sub    %edx,%eax
 8049923:	75 09                	jne    804992e <submitr+0x672>
 8049925:	8b 45 20             	mov    0x20(%ebp),%eax
 8049928:	0f b6 40 02          	movzbl 0x2(%eax),%eax
 804992c:	f7 d8                	neg    %eax
 804992e:	85 c0                	test   %eax,%eax
 8049930:	0f 95 c0             	setne  %al
 8049933:	0f b6 c0             	movzbl %al,%eax
 8049936:	f7 d8                	neg    %eax
 8049938:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804993b:	5b                   	pop    %ebx
 804993c:	5e                   	pop    %esi
 804993d:	5f                   	pop    %edi
 804993e:	5d                   	pop    %ebp
 804993f:	c3                   	ret    
 8049940:	8b 45 20             	mov    0x20(%ebp),%eax
 8049943:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049949:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049950:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049957:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804995e:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049965:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804996c:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049973:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 804997a:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049981:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049988:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 804998f:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049996:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 804999d:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 80499a4:	83 ec 0c             	sub    $0xc,%esp
 80499a7:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80499ad:	e8 6e ee ff ff       	call   8048820 <close@plt>
 80499b2:	83 c4 10             	add    $0x10,%esp
 80499b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499ba:	e9 79 ff ff ff       	jmp    8049938 <submitr+0x67c>
 80499bf:	a1 3c a1 04 08       	mov    0x804a13c,%eax
 80499c4:	8b 7d 20             	mov    0x20(%ebp),%edi
 80499c7:	89 07                	mov    %eax,(%edi)
 80499c9:	a1 7b a1 04 08       	mov    0x804a17b,%eax
 80499ce:	8b 7d 20             	mov    0x20(%ebp),%edi
 80499d1:	89 47 3f             	mov    %eax,0x3f(%edi)
 80499d4:	8b 45 20             	mov    0x20(%ebp),%eax
 80499d7:	8d 78 04             	lea    0x4(%eax),%edi
 80499da:	83 e7 fc             	and    $0xfffffffc,%edi
 80499dd:	29 f8                	sub    %edi,%eax
 80499df:	be 3c a1 04 08       	mov    $0x804a13c,%esi
 80499e4:	29 c6                	sub    %eax,%esi
 80499e6:	83 c0 43             	add    $0x43,%eax
 80499e9:	c1 e8 02             	shr    $0x2,%eax
 80499ec:	89 c1                	mov    %eax,%ecx
 80499ee:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80499f0:	83 ec 0c             	sub    $0xc,%esp
 80499f3:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80499f9:	e8 22 ee ff ff       	call   8048820 <close@plt>
 80499fe:	83 c4 10             	add    $0x10,%esp
 8049a01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a06:	e9 2d ff ff ff       	jmp    8049938 <submitr+0x67c>
 8049a0b:	83 ec 08             	sub    $0x8,%esp
 8049a0e:	8d 85 cc 9f ff ff    	lea    -0x6034(%ebp),%eax
 8049a14:	50                   	push   %eax
 8049a15:	ff 75 18             	pushl  0x18(%ebp)
 8049a18:	ff 75 14             	pushl  0x14(%ebp)
 8049a1b:	ff 75 10             	pushl  0x10(%ebp)
 8049a1e:	68 80 a1 04 08       	push   $0x804a180
 8049a23:	8d bd cc bf ff ff    	lea    -0x4034(%ebp),%edi
 8049a29:	57                   	push   %edi
 8049a2a:	e8 a1 ed ff ff       	call   80487d0 <sprintf@plt>
 8049a2f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a34:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a39:	f2 ae                	repnz scas %es:(%edi),%al
 8049a3b:	89 cf                	mov    %ecx,%edi
 8049a3d:	f7 d7                	not    %edi
 8049a3f:	8d 47 ff             	lea    -0x1(%edi),%eax
 8049a42:	89 85 b0 5f ff ff    	mov    %eax,-0xa050(%ebp)
 8049a48:	83 c4 20             	add    $0x20,%esp
 8049a4b:	89 c3                	mov    %eax,%ebx
 8049a4d:	8d b5 cc bf ff ff    	lea    -0x4034(%ebp),%esi
 8049a53:	bf 00 00 00 00       	mov    $0x0,%edi
 8049a58:	85 c0                	test   %eax,%eax
 8049a5a:	0f 85 dc fb ff ff    	jne    804963c <submitr+0x380>
 8049a60:	e9 0d fc ff ff       	jmp    8049672 <submitr+0x3b6>

08049a65 <init_timeout>:
 8049a65:	55                   	push   %ebp
 8049a66:	89 e5                	mov    %esp,%ebp
 8049a68:	53                   	push   %ebx
 8049a69:	83 ec 04             	sub    $0x4,%esp
 8049a6c:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049a6f:	85 db                	test   %ebx,%ebx
 8049a71:	74 24                	je     8049a97 <init_timeout+0x32>
 8049a73:	83 ec 08             	sub    $0x8,%esp
 8049a76:	68 d9 91 04 08       	push   $0x80491d9
 8049a7b:	6a 0e                	push   $0xe
 8049a7d:	e8 6e ec ff ff       	call   80486f0 <signal@plt>
 8049a82:	85 db                	test   %ebx,%ebx
 8049a84:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a89:	0f 48 d8             	cmovs  %eax,%ebx
 8049a8c:	89 1c 24             	mov    %ebx,(%esp)
 8049a8f:	e8 7c ec ff ff       	call   8048710 <alarm@plt>
 8049a94:	83 c4 10             	add    $0x10,%esp
 8049a97:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049a9a:	c9                   	leave  
 8049a9b:	c3                   	ret    

08049a9c <init_driver>:
 8049a9c:	55                   	push   %ebp
 8049a9d:	89 e5                	mov    %esp,%ebp
 8049a9f:	57                   	push   %edi
 8049aa0:	56                   	push   %esi
 8049aa1:	53                   	push   %ebx
 8049aa2:	83 ec 24             	sub    $0x24,%esp
 8049aa5:	8b 75 08             	mov    0x8(%ebp),%esi
 8049aa8:	6a 01                	push   $0x1
 8049aaa:	6a 0d                	push   $0xd
 8049aac:	e8 3f ec ff ff       	call   80486f0 <signal@plt>
 8049ab1:	83 c4 08             	add    $0x8,%esp
 8049ab4:	6a 01                	push   $0x1
 8049ab6:	6a 1d                	push   $0x1d
 8049ab8:	e8 33 ec ff ff       	call   80486f0 <signal@plt>
 8049abd:	83 c4 08             	add    $0x8,%esp
 8049ac0:	6a 01                	push   $0x1
 8049ac2:	6a 1d                	push   $0x1d
 8049ac4:	e8 27 ec ff ff       	call   80486f0 <signal@plt>
 8049ac9:	83 c4 0c             	add    $0xc,%esp
 8049acc:	6a 00                	push   $0x0
 8049ace:	6a 01                	push   $0x1
 8049ad0:	6a 02                	push   $0x2
 8049ad2:	e8 09 ed ff ff       	call   80487e0 <socket@plt>
 8049ad7:	83 c4 10             	add    $0x10,%esp
 8049ada:	85 c0                	test   %eax,%eax
 8049adc:	0f 88 92 00 00 00    	js     8049b74 <init_driver+0xd8>
 8049ae2:	89 c3                	mov    %eax,%ebx
 8049ae4:	83 ec 0c             	sub    $0xc,%esp
 8049ae7:	68 0c a2 04 08       	push   $0x804a20c
 8049aec:	e8 ff ec ff ff       	call   80487f0 <gethostbyname@plt>
 8049af1:	83 c4 10             	add    $0x10,%esp
 8049af4:	85 c0                	test   %eax,%eax
 8049af6:	0f 84 c3 00 00 00    	je     8049bbf <init_driver+0x123>
 8049afc:	8d 7d d8             	lea    -0x28(%ebp),%edi
 8049aff:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 8049b06:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 8049b0d:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8049b14:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 8049b1b:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 8049b21:	83 ec 04             	sub    $0x4,%esp
 8049b24:	ff 70 0c             	pushl  0xc(%eax)
 8049b27:	8d 55 dc             	lea    -0x24(%ebp),%edx
 8049b2a:	52                   	push   %edx
 8049b2b:	8b 40 10             	mov    0x10(%eax),%eax
 8049b2e:	ff 30                	pushl  (%eax)
 8049b30:	e8 eb eb ff ff       	call   8048720 <bcopy@plt>
 8049b35:	66 c7 45 da 3b 6e    	movw   $0x6e3b,-0x26(%ebp)
 8049b3b:	83 c4 0c             	add    $0xc,%esp
 8049b3e:	6a 10                	push   $0x10
 8049b40:	57                   	push   %edi
 8049b41:	53                   	push   %ebx
 8049b42:	e8 c9 ec ff ff       	call   8048810 <connect@plt>
 8049b47:	83 c4 10             	add    $0x10,%esp
 8049b4a:	85 c0                	test   %eax,%eax
 8049b4c:	0f 88 d9 00 00 00    	js     8049c2b <init_driver+0x18f>
 8049b52:	83 ec 0c             	sub    $0xc,%esp
 8049b55:	53                   	push   %ebx
 8049b56:	e8 c5 ec ff ff       	call   8048820 <close@plt>
 8049b5b:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049b60:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049b64:	83 c4 10             	add    $0x10,%esp
 8049b67:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b6c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049b6f:	5b                   	pop    %ebx
 8049b70:	5e                   	pop    %esi
 8049b71:	5f                   	pop    %edi
 8049b72:	5d                   	pop    %ebp
 8049b73:	c3                   	ret    
 8049b74:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049b7a:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049b81:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049b88:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049b8f:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049b96:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049b9d:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049ba4:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049bab:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049bb2:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049bb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049bbd:	eb ad                	jmp    8049b6c <init_driver+0xd0>
 8049bbf:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049bc5:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 8049bcc:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 8049bd3:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 8049bda:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049be1:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049be8:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 8049bef:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 8049bf6:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 8049bfd:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 8049c04:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 8049c0b:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 8049c11:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 8049c15:	83 ec 0c             	sub    $0xc,%esp
 8049c18:	53                   	push   %ebx
 8049c19:	e8 02 ec ff ff       	call   8048820 <close@plt>
 8049c1e:	83 c4 10             	add    $0x10,%esp
 8049c21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c26:	e9 41 ff ff ff       	jmp    8049b6c <init_driver+0xd0>
 8049c2b:	83 ec 04             	sub    $0x4,%esp
 8049c2e:	68 0c a2 04 08       	push   $0x804a20c
 8049c33:	68 cc a1 04 08       	push   $0x804a1cc
 8049c38:	56                   	push   %esi
 8049c39:	e8 92 eb ff ff       	call   80487d0 <sprintf@plt>
 8049c3e:	89 1c 24             	mov    %ebx,(%esp)
 8049c41:	e8 da eb ff ff       	call   8048820 <close@plt>
 8049c46:	83 c4 10             	add    $0x10,%esp
 8049c49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c4e:	e9 19 ff ff ff       	jmp    8049b6c <init_driver+0xd0>

08049c53 <driver_post>:
 8049c53:	55                   	push   %ebp
 8049c54:	89 e5                	mov    %esp,%ebp
 8049c56:	53                   	push   %ebx
 8049c57:	83 ec 04             	sub    $0x4,%esp
 8049c5a:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c5d:	8b 45 10             	mov    0x10(%ebp),%eax
 8049c60:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049c63:	85 c0                	test   %eax,%eax
 8049c65:	75 17                	jne    8049c7e <driver_post+0x2b>
 8049c67:	85 d2                	test   %edx,%edx
 8049c69:	74 05                	je     8049c70 <driver_post+0x1d>
 8049c6b:	80 3a 00             	cmpb   $0x0,(%edx)
 8049c6e:	75 31                	jne    8049ca1 <driver_post+0x4e>
 8049c70:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049c75:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049c79:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049c7c:	c9                   	leave  
 8049c7d:	c3                   	ret    
 8049c7e:	83 ec 08             	sub    $0x8,%esp
 8049c81:	ff 75 0c             	pushl  0xc(%ebp)
 8049c84:	68 1a a2 04 08       	push   $0x804a21a
 8049c89:	e8 32 ea ff ff       	call   80486c0 <printf@plt>
 8049c8e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049c93:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049c97:	83 c4 10             	add    $0x10,%esp
 8049c9a:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c9f:	eb d8                	jmp    8049c79 <driver_post+0x26>
 8049ca1:	83 ec 04             	sub    $0x4,%esp
 8049ca4:	53                   	push   %ebx
 8049ca5:	ff 75 0c             	pushl  0xc(%ebp)
 8049ca8:	68 31 a2 04 08       	push   $0x804a231
 8049cad:	52                   	push   %edx
 8049cae:	68 40 a2 04 08       	push   $0x804a240
 8049cb3:	68 6e 3b 00 00       	push   $0x3b6e
 8049cb8:	68 0c a2 04 08       	push   $0x804a20c
 8049cbd:	e8 fa f5 ff ff       	call   80492bc <submitr>
 8049cc2:	83 c4 20             	add    $0x20,%esp
 8049cc5:	eb b2                	jmp    8049c79 <driver_post+0x26>
 8049cc7:	66 90                	xchg   %ax,%ax
 8049cc9:	66 90                	xchg   %ax,%ax
 8049ccb:	66 90                	xchg   %ax,%ax
 8049ccd:	66 90                	xchg   %ax,%ax
 8049ccf:	90                   	nop

08049cd0 <__libc_csu_init>:
 8049cd0:	55                   	push   %ebp
 8049cd1:	57                   	push   %edi
 8049cd2:	56                   	push   %esi
 8049cd3:	53                   	push   %ebx
 8049cd4:	e8 a7 eb ff ff       	call   8048880 <__x86.get_pc_thunk.bx>
 8049cd9:	81 c3 27 23 00 00    	add    $0x2327,%ebx
 8049cdf:	83 ec 0c             	sub    $0xc,%esp
 8049ce2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8049ce6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8049cec:	e8 83 e9 ff ff       	call   8048674 <_init>
 8049cf1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049cf7:	29 c6                	sub    %eax,%esi
 8049cf9:	c1 fe 02             	sar    $0x2,%esi
 8049cfc:	85 f6                	test   %esi,%esi
 8049cfe:	74 25                	je     8049d25 <__libc_csu_init+0x55>
 8049d00:	31 ff                	xor    %edi,%edi
 8049d02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049d08:	83 ec 04             	sub    $0x4,%esp
 8049d0b:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049d0f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049d13:	55                   	push   %ebp
 8049d14:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049d1b:	83 c7 01             	add    $0x1,%edi
 8049d1e:	83 c4 10             	add    $0x10,%esp
 8049d21:	39 fe                	cmp    %edi,%esi
 8049d23:	75 e3                	jne    8049d08 <__libc_csu_init+0x38>
 8049d25:	83 c4 0c             	add    $0xc,%esp
 8049d28:	5b                   	pop    %ebx
 8049d29:	5e                   	pop    %esi
 8049d2a:	5f                   	pop    %edi
 8049d2b:	5d                   	pop    %ebp
 8049d2c:	c3                   	ret    
 8049d2d:	8d 76 00             	lea    0x0(%esi),%esi

08049d30 <__libc_csu_fini>:
 8049d30:	f3 c3                	repz ret 

Disassembly of section .fini:

08049d34 <_fini>:
 8049d34:	53                   	push   %ebx
 8049d35:	83 ec 08             	sub    $0x8,%esp
 8049d38:	e8 43 eb ff ff       	call   8048880 <__x86.get_pc_thunk.bx>
 8049d3d:	81 c3 c3 22 00 00    	add    $0x22c3,%ebx
 8049d43:	83 c4 08             	add    $0x8,%esp
 8049d46:	5b                   	pop    %ebx
 8049d47:	c3                   	ret    
