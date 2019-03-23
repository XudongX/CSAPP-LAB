
bufbomb:     file format elf32-i386


Disassembly of section .init:

08048738 <_init>:
 8048738:	53                   	push   %ebx
 8048739:	83 ec 08             	sub    $0x8,%esp
 804873c:	e8 6f 02 00 00       	call   80489b0 <__x86.get_pc_thunk.bx>
 8048741:	81 c3 bf 38 00 00    	add    $0x38bf,%ebx
 8048747:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804874d:	85 c0                	test   %eax,%eax
 804874f:	74 05                	je     8048756 <_init+0x1e>
 8048751:	e8 1a 02 00 00       	call   8048970 <.plt.got>
 8048756:	83 c4 08             	add    $0x8,%esp
 8048759:	5b                   	pop    %ebx
 804875a:	c3                   	ret    

Disassembly of section .plt:

08048760 <.plt>:
 8048760:	ff 35 04 c0 04 08    	pushl  0x804c004
 8048766:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804876c:	00 00                	add    %al,(%eax)
	...

08048770 <read@plt>:
 8048770:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048776:	68 00 00 00 00       	push   $0x0
 804877b:	e9 e0 ff ff ff       	jmp    8048760 <.plt>

08048780 <srandom@plt>:
 8048780:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048786:	68 08 00 00 00       	push   $0x8
 804878b:	e9 d0 ff ff ff       	jmp    8048760 <.plt>

08048790 <printf@plt>:
 8048790:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048796:	68 10 00 00 00       	push   $0x10
 804879b:	e9 c0 ff ff ff       	jmp    8048760 <.plt>

080487a0 <signal@plt>:
 80487a0:	ff 25 18 c0 04 08    	jmp    *0x804c018
 80487a6:	68 18 00 00 00       	push   $0x18
 80487ab:	e9 b0 ff ff ff       	jmp    8048760 <.plt>

080487b0 <alarm@plt>:
 80487b0:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 80487b6:	68 20 00 00 00       	push   $0x20
 80487bb:	e9 a0 ff ff ff       	jmp    8048760 <.plt>

080487c0 <_IO_getc@plt>:
 80487c0:	ff 25 20 c0 04 08    	jmp    *0x804c020
 80487c6:	68 28 00 00 00       	push   $0x28
 80487cb:	e9 90 ff ff ff       	jmp    8048760 <.plt>

080487d0 <fwrite@plt>:
 80487d0:	ff 25 24 c0 04 08    	jmp    *0x804c024
 80487d6:	68 30 00 00 00       	push   $0x30
 80487db:	e9 80 ff ff ff       	jmp    8048760 <.plt>

080487e0 <bcopy@plt>:
 80487e0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80487e6:	68 38 00 00 00       	push   $0x38
 80487eb:	e9 70 ff ff ff       	jmp    8048760 <.plt>

080487f0 <strcpy@plt>:
 80487f0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80487f6:	68 40 00 00 00       	push   $0x40
 80487fb:	e9 60 ff ff ff       	jmp    8048760 <.plt>

08048800 <getpid@plt>:
 8048800:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048806:	68 48 00 00 00       	push   $0x48
 804880b:	e9 50 ff ff ff       	jmp    8048760 <.plt>

08048810 <gethostname@plt>:
 8048810:	ff 25 34 c0 04 08    	jmp    *0x804c034
 8048816:	68 50 00 00 00       	push   $0x50
 804881b:	e9 40 ff ff ff       	jmp    8048760 <.plt>

08048820 <puts@plt>:
 8048820:	ff 25 38 c0 04 08    	jmp    *0x804c038
 8048826:	68 58 00 00 00       	push   $0x58
 804882b:	e9 30 ff ff ff       	jmp    8048760 <.plt>

08048830 <exit@plt>:
 8048830:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 8048836:	68 60 00 00 00       	push   $0x60
 804883b:	e9 20 ff ff ff       	jmp    8048760 <.plt>

08048840 <srand@plt>:
 8048840:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8048846:	68 68 00 00 00       	push   $0x68
 804884b:	e9 10 ff ff ff       	jmp    8048760 <.plt>

08048850 <mmap@plt>:
 8048850:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048856:	68 70 00 00 00       	push   $0x70
 804885b:	e9 00 ff ff ff       	jmp    8048760 <.plt>

08048860 <__libc_start_main@plt>:
 8048860:	ff 25 48 c0 04 08    	jmp    *0x804c048
 8048866:	68 78 00 00 00       	push   $0x78
 804886b:	e9 f0 fe ff ff       	jmp    8048760 <.plt>

08048870 <write@plt>:
 8048870:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 8048876:	68 80 00 00 00       	push   $0x80
 804887b:	e9 e0 fe ff ff       	jmp    8048760 <.plt>

08048880 <getopt@plt>:
 8048880:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048886:	68 88 00 00 00       	push   $0x88
 804888b:	e9 d0 fe ff ff       	jmp    8048760 <.plt>

08048890 <strcasecmp@plt>:
 8048890:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048896:	68 90 00 00 00       	push   $0x90
 804889b:	e9 c0 fe ff ff       	jmp    8048760 <.plt>

080488a0 <__isoc99_sscanf@plt>:
 80488a0:	ff 25 58 c0 04 08    	jmp    *0x804c058
 80488a6:	68 98 00 00 00       	push   $0x98
 80488ab:	e9 b0 fe ff ff       	jmp    8048760 <.plt>

080488b0 <memset@plt>:
 80488b0:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 80488b6:	68 a0 00 00 00       	push   $0xa0
 80488bb:	e9 a0 fe ff ff       	jmp    8048760 <.plt>

080488c0 <__strdup@plt>:
 80488c0:	ff 25 60 c0 04 08    	jmp    *0x804c060
 80488c6:	68 a8 00 00 00       	push   $0xa8
 80488cb:	e9 90 fe ff ff       	jmp    8048760 <.plt>

080488d0 <__errno_location@plt>:
 80488d0:	ff 25 64 c0 04 08    	jmp    *0x804c064
 80488d6:	68 b0 00 00 00       	push   $0xb0
 80488db:	e9 80 fe ff ff       	jmp    8048760 <.plt>

080488e0 <rand@plt>:
 80488e0:	ff 25 68 c0 04 08    	jmp    *0x804c068
 80488e6:	68 b8 00 00 00       	push   $0xb8
 80488eb:	e9 70 fe ff ff       	jmp    8048760 <.plt>

080488f0 <munmap@plt>:
 80488f0:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 80488f6:	68 c0 00 00 00       	push   $0xc0
 80488fb:	e9 60 fe ff ff       	jmp    8048760 <.plt>

08048900 <sprintf@plt>:
 8048900:	ff 25 70 c0 04 08    	jmp    *0x804c070
 8048906:	68 c8 00 00 00       	push   $0xc8
 804890b:	e9 50 fe ff ff       	jmp    8048760 <.plt>

08048910 <socket@plt>:
 8048910:	ff 25 74 c0 04 08    	jmp    *0x804c074
 8048916:	68 d0 00 00 00       	push   $0xd0
 804891b:	e9 40 fe ff ff       	jmp    8048760 <.plt>

08048920 <random@plt>:
 8048920:	ff 25 78 c0 04 08    	jmp    *0x804c078
 8048926:	68 d8 00 00 00       	push   $0xd8
 804892b:	e9 30 fe ff ff       	jmp    8048760 <.plt>

08048930 <gethostbyname@plt>:
 8048930:	ff 25 7c c0 04 08    	jmp    *0x804c07c
 8048936:	68 e0 00 00 00       	push   $0xe0
 804893b:	e9 20 fe ff ff       	jmp    8048760 <.plt>

08048940 <connect@plt>:
 8048940:	ff 25 80 c0 04 08    	jmp    *0x804c080
 8048946:	68 e8 00 00 00       	push   $0xe8
 804894b:	e9 10 fe ff ff       	jmp    8048760 <.plt>

08048950 <close@plt>:
 8048950:	ff 25 84 c0 04 08    	jmp    *0x804c084
 8048956:	68 f0 00 00 00       	push   $0xf0
 804895b:	e9 00 fe ff ff       	jmp    8048760 <.plt>

08048960 <calloc@plt>:
 8048960:	ff 25 88 c0 04 08    	jmp    *0x804c088
 8048966:	68 f8 00 00 00       	push   $0xf8
 804896b:	e9 f0 fd ff ff       	jmp    8048760 <.plt>

Disassembly of section .plt.got:

08048970 <.plt.got>:
 8048970:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 8048976:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048980 <_start>:
 8048980:	31 ed                	xor    %ebp,%ebp
 8048982:	5e                   	pop    %esi
 8048983:	89 e1                	mov    %esp,%ecx
 8048985:	83 e4 f0             	and    $0xfffffff0,%esp
 8048988:	50                   	push   %eax
 8048989:	54                   	push   %esp
 804898a:	52                   	push   %edx
 804898b:	68 00 9e 04 08       	push   $0x8049e00
 8048990:	68 a0 9d 04 08       	push   $0x8049da0
 8048995:	51                   	push   %ecx
 8048996:	56                   	push   %esi
 8048997:	68 b4 8e 04 08       	push   $0x8048eb4
 804899c:	e8 bf fe ff ff       	call   8048860 <__libc_start_main@plt>
 80489a1:	f4                   	hlt    
 80489a2:	66 90                	xchg   %ax,%ax
 80489a4:	66 90                	xchg   %ax,%ax
 80489a6:	66 90                	xchg   %ax,%ax
 80489a8:	66 90                	xchg   %ax,%ax
 80489aa:	66 90                	xchg   %ax,%ax
 80489ac:	66 90                	xchg   %ax,%ax
 80489ae:	66 90                	xchg   %ax,%ax

080489b0 <__x86.get_pc_thunk.bx>:
 80489b0:	8b 1c 24             	mov    (%esp),%ebx
 80489b3:	c3                   	ret    
 80489b4:	66 90                	xchg   %ax,%ax
 80489b6:	66 90                	xchg   %ax,%ax
 80489b8:	66 90                	xchg   %ax,%ax
 80489ba:	66 90                	xchg   %ax,%ax
 80489bc:	66 90                	xchg   %ax,%ax
 80489be:	66 90                	xchg   %ax,%ax

080489c0 <deregister_tm_clones>:
 80489c0:	b8 e3 d0 04 08       	mov    $0x804d0e3,%eax
 80489c5:	2d e0 d0 04 08       	sub    $0x804d0e0,%eax
 80489ca:	83 f8 06             	cmp    $0x6,%eax
 80489cd:	76 1a                	jbe    80489e9 <deregister_tm_clones+0x29>
 80489cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80489d4:	85 c0                	test   %eax,%eax
 80489d6:	74 11                	je     80489e9 <deregister_tm_clones+0x29>
 80489d8:	55                   	push   %ebp
 80489d9:	89 e5                	mov    %esp,%ebp
 80489db:	83 ec 14             	sub    $0x14,%esp
 80489de:	68 e0 d0 04 08       	push   $0x804d0e0
 80489e3:	ff d0                	call   *%eax
 80489e5:	83 c4 10             	add    $0x10,%esp
 80489e8:	c9                   	leave  
 80489e9:	f3 c3                	repz ret 
 80489eb:	90                   	nop
 80489ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080489f0 <register_tm_clones>:
 80489f0:	b8 e0 d0 04 08       	mov    $0x804d0e0,%eax
 80489f5:	2d e0 d0 04 08       	sub    $0x804d0e0,%eax
 80489fa:	c1 f8 02             	sar    $0x2,%eax
 80489fd:	89 c2                	mov    %eax,%edx
 80489ff:	c1 ea 1f             	shr    $0x1f,%edx
 8048a02:	01 d0                	add    %edx,%eax
 8048a04:	d1 f8                	sar    %eax
 8048a06:	74 1b                	je     8048a23 <register_tm_clones+0x33>
 8048a08:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a0d:	85 d2                	test   %edx,%edx
 8048a0f:	74 12                	je     8048a23 <register_tm_clones+0x33>
 8048a11:	55                   	push   %ebp
 8048a12:	89 e5                	mov    %esp,%ebp
 8048a14:	83 ec 10             	sub    $0x10,%esp
 8048a17:	50                   	push   %eax
 8048a18:	68 e0 d0 04 08       	push   $0x804d0e0
 8048a1d:	ff d2                	call   *%edx
 8048a1f:	83 c4 10             	add    $0x10,%esp
 8048a22:	c9                   	leave  
 8048a23:	f3 c3                	repz ret 
 8048a25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a30 <__do_global_dtors_aux>:
 8048a30:	80 3d 24 d1 04 08 00 	cmpb   $0x0,0x804d124
 8048a37:	75 13                	jne    8048a4c <__do_global_dtors_aux+0x1c>
 8048a39:	55                   	push   %ebp
 8048a3a:	89 e5                	mov    %esp,%ebp
 8048a3c:	83 ec 08             	sub    $0x8,%esp
 8048a3f:	e8 7c ff ff ff       	call   80489c0 <deregister_tm_clones>
 8048a44:	c6 05 24 d1 04 08 01 	movb   $0x1,0x804d124
 8048a4b:	c9                   	leave  
 8048a4c:	f3 c3                	repz ret 
 8048a4e:	66 90                	xchg   %ax,%ax

08048a50 <frame_dummy>:
 8048a50:	b8 10 bf 04 08       	mov    $0x804bf10,%eax
 8048a55:	8b 10                	mov    (%eax),%edx
 8048a57:	85 d2                	test   %edx,%edx
 8048a59:	75 05                	jne    8048a60 <frame_dummy+0x10>
 8048a5b:	eb 93                	jmp    80489f0 <register_tm_clones>
 8048a5d:	8d 76 00             	lea    0x0(%esi),%esi
 8048a60:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a65:	85 d2                	test   %edx,%edx
 8048a67:	74 f2                	je     8048a5b <frame_dummy+0xb>
 8048a69:	55                   	push   %ebp
 8048a6a:	89 e5                	mov    %esp,%ebp
 8048a6c:	83 ec 14             	sub    $0x14,%esp
 8048a6f:	50                   	push   %eax
 8048a70:	ff d2                	call   *%edx
 8048a72:	83 c4 10             	add    $0x10,%esp
 8048a75:	c9                   	leave  
 8048a76:	e9 75 ff ff ff       	jmp    80489f0 <register_tm_clones>

08048a7b <bushandler>:
 8048a7b:	55                   	push   %ebp
 8048a7c:	89 e5                	mov    %esp,%ebp
 8048a7e:	83 ec 14             	sub    $0x14,%esp
 8048a81:	68 20 9e 04 08       	push   $0x8049e20
 8048a86:	e8 95 fd ff ff       	call   8048820 <puts@plt>
 8048a8b:	c7 04 24 28 a0 04 08 	movl   $0x804a028,(%esp)
 8048a92:	e8 89 fd ff ff       	call   8048820 <puts@plt>
 8048a97:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048a9e:	e8 8d fd ff ff       	call   8048830 <exit@plt>

08048aa3 <seghandler>:
 8048aa3:	55                   	push   %ebp
 8048aa4:	89 e5                	mov    %esp,%ebp
 8048aa6:	83 ec 14             	sub    $0x14,%esp
 8048aa9:	68 40 9e 04 08       	push   $0x8049e40
 8048aae:	e8 6d fd ff ff       	call   8048820 <puts@plt>
 8048ab3:	c7 04 24 28 a0 04 08 	movl   $0x804a028,(%esp)
 8048aba:	e8 61 fd ff ff       	call   8048820 <puts@plt>
 8048abf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048ac6:	e8 65 fd ff ff       	call   8048830 <exit@plt>

08048acb <illegalhandler>:
 8048acb:	55                   	push   %ebp
 8048acc:	89 e5                	mov    %esp,%ebp
 8048ace:	83 ec 14             	sub    $0x14,%esp
 8048ad1:	68 68 9e 04 08       	push   $0x8049e68
 8048ad6:	e8 45 fd ff ff       	call   8048820 <puts@plt>
 8048adb:	c7 04 24 28 a0 04 08 	movl   $0x804a028,(%esp)
 8048ae2:	e8 39 fd ff ff       	call   8048820 <puts@plt>
 8048ae7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048aee:	e8 3d fd ff ff       	call   8048830 <exit@plt>

08048af3 <usage>:
 8048af3:	55                   	push   %ebp
 8048af4:	89 e5                	mov    %esp,%ebp
 8048af6:	83 ec 10             	sub    $0x10,%esp
 8048af9:	50                   	push   %eax
 8048afa:	68 3e a0 04 08       	push   $0x804a03e
 8048aff:	e8 8c fc ff ff       	call   8048790 <printf@plt>
 8048b04:	c7 04 24 5c a0 04 08 	movl   $0x804a05c,(%esp)
 8048b0b:	e8 10 fd ff ff       	call   8048820 <puts@plt>
 8048b10:	c7 04 24 72 a0 04 08 	movl   $0x804a072,(%esp)
 8048b17:	e8 04 fd ff ff       	call   8048820 <puts@plt>
 8048b1c:	c7 04 24 94 9e 04 08 	movl   $0x8049e94,(%esp)
 8048b23:	e8 f8 fc ff ff       	call   8048820 <puts@plt>
 8048b28:	c7 04 24 d0 9e 04 08 	movl   $0x8049ed0,(%esp)
 8048b2f:	e8 ec fc ff ff       	call   8048820 <puts@plt>
 8048b34:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b3b:	e8 f0 fc ff ff       	call   8048830 <exit@plt>

08048b40 <smoke>:
 8048b40:	55                   	push   %ebp
 8048b41:	89 e5                	mov    %esp,%ebp
 8048b43:	83 ec 14             	sub    $0x14,%esp
 8048b46:	68 8b a0 04 08       	push   $0x804a08b
 8048b4b:	e8 d0 fc ff ff       	call   8048820 <puts@plt>
 8048b50:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b57:	e8 2b 06 00 00       	call   8049187 <validate>
 8048b5c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b63:	e8 c8 fc ff ff       	call   8048830 <exit@plt>

08048b68 <fizz>:
 8048b68:	55                   	push   %ebp
 8048b69:	89 e5                	mov    %esp,%ebp
 8048b6b:	83 ec 08             	sub    $0x8,%esp
 8048b6e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b71:	3b 05 40 d1 04 08    	cmp    0x804d140,%eax
 8048b77:	74 1b                	je     8048b94 <fizz+0x2c>
 8048b79:	83 ec 08             	sub    $0x8,%esp
 8048b7c:	50                   	push   %eax
 8048b7d:	68 f8 9e 04 08       	push   $0x8049ef8
 8048b82:	e8 09 fc ff ff       	call   8048790 <printf@plt>
 8048b87:	83 c4 10             	add    $0x10,%esp
 8048b8a:	83 ec 0c             	sub    $0xc,%esp
 8048b8d:	6a 00                	push   $0x0
 8048b8f:	e8 9c fc ff ff       	call   8048830 <exit@plt>
 8048b94:	83 ec 08             	sub    $0x8,%esp
 8048b97:	50                   	push   %eax
 8048b98:	68 a6 a0 04 08       	push   $0x804a0a6
 8048b9d:	e8 ee fb ff ff       	call   8048790 <printf@plt>
 8048ba2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ba9:	e8 d9 05 00 00       	call   8049187 <validate>
 8048bae:	83 c4 10             	add    $0x10,%esp
 8048bb1:	eb d7                	jmp    8048b8a <fizz+0x22>

08048bb3 <bang>:
 8048bb3:	55                   	push   %ebp
 8048bb4:	89 e5                	mov    %esp,%ebp
 8048bb6:	83 ec 08             	sub    $0x8,%esp
 8048bb9:	a1 38 d1 04 08       	mov    0x804d138,%eax
 8048bbe:	3b 05 40 d1 04 08    	cmp    0x804d140,%eax
 8048bc4:	74 1b                	je     8048be1 <bang+0x2e>
 8048bc6:	83 ec 08             	sub    $0x8,%esp
 8048bc9:	50                   	push   %eax
 8048bca:	68 c4 a0 04 08       	push   $0x804a0c4
 8048bcf:	e8 bc fb ff ff       	call   8048790 <printf@plt>
 8048bd4:	83 c4 10             	add    $0x10,%esp
 8048bd7:	83 ec 0c             	sub    $0xc,%esp
 8048bda:	6a 00                	push   $0x0
 8048bdc:	e8 4f fc ff ff       	call   8048830 <exit@plt>
 8048be1:	83 ec 08             	sub    $0x8,%esp
 8048be4:	50                   	push   %eax
 8048be5:	68 18 9f 04 08       	push   $0x8049f18
 8048bea:	e8 a1 fb ff ff       	call   8048790 <printf@plt>
 8048bef:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048bf6:	e8 8c 05 00 00       	call   8049187 <validate>
 8048bfb:	83 c4 10             	add    $0x10,%esp
 8048bfe:	eb d7                	jmp    8048bd7 <bang+0x24>

08048c00 <Gets>:
 8048c00:	55                   	push   %ebp
 8048c01:	89 e5                	mov    %esp,%ebp
 8048c03:	57                   	push   %edi
 8048c04:	56                   	push   %esi
 8048c05:	53                   	push   %ebx
 8048c06:	83 ec 0c             	sub    $0xc,%esp
 8048c09:	8b 75 08             	mov    0x8(%ebp),%esi
 8048c0c:	c7 05 34 d1 04 08 00 	movl   $0x0,0x804d134
 8048c13:	00 00 00 
 8048c16:	89 f3                	mov    %esi,%ebx
 8048c18:	83 ec 0c             	sub    $0xc,%esp
 8048c1b:	ff 35 44 d1 04 08    	pushl  0x804d144
 8048c21:	e8 9a fb ff ff       	call   80487c0 <_IO_getc@plt>
 8048c26:	83 c4 10             	add    $0x10,%esp
 8048c29:	83 f8 0a             	cmp    $0xa,%eax
 8048c2c:	74 53                	je     8048c81 <Gets+0x81>
 8048c2e:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048c31:	74 4e                	je     8048c81 <Gets+0x81>
 8048c33:	83 c3 01             	add    $0x1,%ebx
 8048c36:	88 43 ff             	mov    %al,-0x1(%ebx)
 8048c39:	8b 15 34 d1 04 08    	mov    0x804d134,%edx
 8048c3f:	81 fa ff 03 00 00    	cmp    $0x3ff,%edx
 8048c45:	7f d1                	jg     8048c18 <Gets+0x18>
 8048c47:	8d 3c 52             	lea    (%edx,%edx,2),%edi
 8048c4a:	89 c1                	mov    %eax,%ecx
 8048c4c:	c0 e9 04             	shr    $0x4,%cl
 8048c4f:	0f be c9             	movsbl %cl,%ecx
 8048c52:	0f b6 89 a0 a1 04 08 	movzbl 0x804a1a0(%ecx),%ecx
 8048c59:	88 8f 80 d1 04 08    	mov    %cl,0x804d180(%edi)
 8048c5f:	83 e0 0f             	and    $0xf,%eax
 8048c62:	0f b6 80 a0 a1 04 08 	movzbl 0x804a1a0(%eax),%eax
 8048c69:	88 87 81 d1 04 08    	mov    %al,0x804d181(%edi)
 8048c6f:	c6 87 82 d1 04 08 20 	movb   $0x20,0x804d182(%edi)
 8048c76:	83 c2 01             	add    $0x1,%edx
 8048c79:	89 15 34 d1 04 08    	mov    %edx,0x804d134
 8048c7f:	eb 97                	jmp    8048c18 <Gets+0x18>
 8048c81:	c6 03 00             	movb   $0x0,(%ebx)
 8048c84:	a1 34 d1 04 08       	mov    0x804d134,%eax
 8048c89:	c6 84 40 80 d1 04 08 	movb   $0x0,0x804d180(%eax,%eax,2)
 8048c90:	00 
 8048c91:	89 f0                	mov    %esi,%eax
 8048c93:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048c96:	5b                   	pop    %ebx
 8048c97:	5e                   	pop    %esi
 8048c98:	5f                   	pop    %edi
 8048c99:	5d                   	pop    %ebp
 8048c9a:	c3                   	ret    

08048c9b <uniqueval>:
 8048c9b:	55                   	push   %ebp
 8048c9c:	89 e5                	mov    %esp,%ebp
 8048c9e:	83 ec 08             	sub    $0x8,%esp
 8048ca1:	e8 5a fb ff ff       	call   8048800 <getpid@plt>
 8048ca6:	83 ec 0c             	sub    $0xc,%esp
 8048ca9:	50                   	push   %eax
 8048caa:	e8 d1 fa ff ff       	call   8048780 <srandom@plt>
 8048caf:	e8 6c fc ff ff       	call   8048920 <random@plt>
 8048cb4:	c9                   	leave  
 8048cb5:	c3                   	ret    

08048cb6 <test>:
 8048cb6:	55                   	push   %ebp
 8048cb7:	89 e5                	mov    %esp,%ebp
 8048cb9:	53                   	push   %ebx
 8048cba:	83 ec 14             	sub    $0x14,%esp
 8048cbd:	e8 d9 ff ff ff       	call   8048c9b <uniqueval>
 8048cc2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048cc5:	e8 bf 03 00 00       	call   8049089 <getbuf>
 8048cca:	89 c3                	mov    %eax,%ebx
 8048ccc:	e8 ca ff ff ff       	call   8048c9b <uniqueval>
 8048cd1:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048cd4:	39 d0                	cmp    %edx,%eax
 8048cd6:	75 1e                	jne    8048cf6 <test+0x40>
 8048cd8:	3b 1d 40 d1 04 08    	cmp    0x804d140,%ebx
 8048cde:	74 28                	je     8048d08 <test+0x52>
 8048ce0:	83 ec 08             	sub    $0x8,%esp
 8048ce3:	53                   	push   %ebx
 8048ce4:	68 ff a0 04 08       	push   $0x804a0ff
 8048ce9:	e8 a2 fa ff ff       	call   8048790 <printf@plt>
 8048cee:	83 c4 10             	add    $0x10,%esp
 8048cf1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048cf4:	c9                   	leave  
 8048cf5:	c3                   	ret    
 8048cf6:	83 ec 0c             	sub    $0xc,%esp
 8048cf9:	68 40 9f 04 08       	push   $0x8049f40
 8048cfe:	e8 1d fb ff ff       	call   8048820 <puts@plt>
 8048d03:	83 c4 10             	add    $0x10,%esp
 8048d06:	eb e9                	jmp    8048cf1 <test+0x3b>
 8048d08:	83 ec 08             	sub    $0x8,%esp
 8048d0b:	53                   	push   %ebx
 8048d0c:	68 e2 a0 04 08       	push   $0x804a0e2
 8048d11:	e8 7a fa ff ff       	call   8048790 <printf@plt>
 8048d16:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048d1d:	e8 65 04 00 00       	call   8049187 <validate>
 8048d22:	83 c4 10             	add    $0x10,%esp
 8048d25:	eb ca                	jmp    8048cf1 <test+0x3b>

08048d27 <testn>:
 8048d27:	55                   	push   %ebp
 8048d28:	89 e5                	mov    %esp,%ebp
 8048d2a:	53                   	push   %ebx
 8048d2b:	83 ec 14             	sub    $0x14,%esp
 8048d2e:	e8 68 ff ff ff       	call   8048c9b <uniqueval>
 8048d33:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d36:	e8 64 03 00 00       	call   804909f <getbufn>
 8048d3b:	89 c3                	mov    %eax,%ebx
 8048d3d:	e8 59 ff ff ff       	call   8048c9b <uniqueval>
 8048d42:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d45:	39 d0                	cmp    %edx,%eax
 8048d47:	75 1e                	jne    8048d67 <testn+0x40>
 8048d49:	3b 1d 40 d1 04 08    	cmp    0x804d140,%ebx
 8048d4f:	74 28                	je     8048d79 <testn+0x52>
 8048d51:	83 ec 08             	sub    $0x8,%esp
 8048d54:	53                   	push   %ebx
 8048d55:	68 1a a1 04 08       	push   $0x804a11a
 8048d5a:	e8 31 fa ff ff       	call   8048790 <printf@plt>
 8048d5f:	83 c4 10             	add    $0x10,%esp
 8048d62:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048d65:	c9                   	leave  
 8048d66:	c3                   	ret    
 8048d67:	83 ec 0c             	sub    $0xc,%esp
 8048d6a:	68 40 9f 04 08       	push   $0x8049f40
 8048d6f:	e8 ac fa ff ff       	call   8048820 <puts@plt>
 8048d74:	83 c4 10             	add    $0x10,%esp
 8048d77:	eb e9                	jmp    8048d62 <testn+0x3b>
 8048d79:	83 ec 08             	sub    $0x8,%esp
 8048d7c:	53                   	push   %ebx
 8048d7d:	68 6c 9f 04 08       	push   $0x8049f6c
 8048d82:	e8 09 fa ff ff       	call   8048790 <printf@plt>
 8048d87:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048d8e:	e8 f4 03 00 00       	call   8049187 <validate>
 8048d93:	83 c4 10             	add    $0x10,%esp
 8048d96:	eb ca                	jmp    8048d62 <testn+0x3b>

08048d98 <launch>:
 8048d98:	55                   	push   %ebp
 8048d99:	89 e5                	mov    %esp,%ebp
 8048d9b:	53                   	push   %ebx
 8048d9c:	83 ec 44             	sub    $0x44,%esp
 8048d9f:	89 c3                	mov    %eax,%ebx
 8048da1:	8d 45 b8             	lea    -0x48(%ebp),%eax
 8048da4:	25 f0 3f 00 00       	and    $0x3ff0,%eax
 8048da9:	8d 54 10 1e          	lea    0x1e(%eax,%edx,1),%edx
 8048dad:	83 e2 f0             	and    $0xfffffff0,%edx
 8048db0:	29 d4                	sub    %edx,%esp
 8048db2:	8d 54 24 0f          	lea    0xf(%esp),%edx
 8048db6:	83 e2 f0             	and    $0xfffffff0,%edx
 8048db9:	83 ec 04             	sub    $0x4,%esp
 8048dbc:	50                   	push   %eax
 8048dbd:	68 f4 00 00 00       	push   $0xf4
 8048dc2:	52                   	push   %edx
 8048dc3:	e8 e8 fa ff ff       	call   80488b0 <memset@plt>
 8048dc8:	c7 04 24 36 a1 04 08 	movl   $0x804a136,(%esp)
 8048dcf:	e8 bc f9 ff ff       	call   8048790 <printf@plt>
 8048dd4:	83 c4 10             	add    $0x10,%esp
 8048dd7:	85 db                	test   %ebx,%ebx
 8048dd9:	74 13                	je     8048dee <launch+0x56>
 8048ddb:	e8 47 ff ff ff       	call   8048d27 <testn>
 8048de0:	83 3d 3c d1 04 08 00 	cmpl   $0x0,0x804d13c
 8048de7:	74 0c                	je     8048df5 <launch+0x5d>
 8048de9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048dec:	c9                   	leave  
 8048ded:	c3                   	ret    
 8048dee:	e8 c3 fe ff ff       	call   8048cb6 <test>
 8048df3:	eb eb                	jmp    8048de0 <launch+0x48>
 8048df5:	83 ec 0c             	sub    $0xc,%esp
 8048df8:	68 28 a0 04 08       	push   $0x804a028
 8048dfd:	e8 1e fa ff ff       	call   8048820 <puts@plt>
 8048e02:	c7 05 3c d1 04 08 00 	movl   $0x0,0x804d13c
 8048e09:	00 00 00 
 8048e0c:	83 c4 10             	add    $0x10,%esp
 8048e0f:	eb d8                	jmp    8048de9 <launch+0x51>

08048e11 <launcher>:
 8048e11:	55                   	push   %ebp
 8048e12:	89 e5                	mov    %esp,%ebp
 8048e14:	83 ec 10             	sub    $0x10,%esp
 8048e17:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e1a:	a3 30 d1 04 08       	mov    %eax,0x804d130
 8048e1f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048e22:	a3 2c d1 04 08       	mov    %eax,0x804d12c
 8048e27:	6a 00                	push   $0x0
 8048e29:	6a 00                	push   $0x0
 8048e2b:	68 32 01 00 00       	push   $0x132
 8048e30:	6a 07                	push   $0x7
 8048e32:	68 00 00 10 00       	push   $0x100000
 8048e37:	68 00 60 58 55       	push   $0x55586000
 8048e3c:	e8 0f fa ff ff       	call   8048850 <mmap@plt>
 8048e41:	83 c4 20             	add    $0x20,%esp
 8048e44:	3d 00 60 58 55       	cmp    $0x55586000,%eax
 8048e49:	75 49                	jne    8048e94 <launcher+0x83>
 8048e4b:	c7 05 60 d1 04 08 f8 	movl   $0x55685ff8,0x804d160
 8048e52:	5f 68 55 
 8048e55:	ba f8 5f 68 55       	mov    $0x55685ff8,%edx
 8048e5a:	89 e0                	mov    %esp,%eax
 8048e5c:	89 d4                	mov    %edx,%esp
 8048e5e:	89 c2                	mov    %eax,%edx
 8048e60:	89 15 28 d1 04 08    	mov    %edx,0x804d128
 8048e66:	8b 15 2c d1 04 08    	mov    0x804d12c,%edx
 8048e6c:	a1 30 d1 04 08       	mov    0x804d130,%eax
 8048e71:	e8 22 ff ff ff       	call   8048d98 <launch>
 8048e76:	a1 28 d1 04 08       	mov    0x804d128,%eax
 8048e7b:	89 c4                	mov    %eax,%esp
 8048e7d:	83 ec 08             	sub    $0x8,%esp
 8048e80:	68 00 00 10 00       	push   $0x100000
 8048e85:	68 00 60 58 55       	push   $0x55586000
 8048e8a:	e8 61 fa ff ff       	call   80488f0 <munmap@plt>
 8048e8f:	83 c4 10             	add    $0x10,%esp
 8048e92:	c9                   	leave  
 8048e93:	c3                   	ret    
 8048e94:	ff 35 e0 d0 04 08    	pushl  0x804d0e0
 8048e9a:	6a 47                	push   $0x47
 8048e9c:	6a 01                	push   $0x1
 8048e9e:	68 8c 9f 04 08       	push   $0x8049f8c
 8048ea3:	e8 28 f9 ff ff       	call   80487d0 <fwrite@plt>
 8048ea8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048eaf:	e8 7c f9 ff ff       	call   8048830 <exit@plt>

08048eb4 <main>:
 8048eb4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048eb8:	83 e4 f0             	and    $0xfffffff0,%esp
 8048ebb:	ff 71 fc             	pushl  -0x4(%ecx)
 8048ebe:	55                   	push   %ebp
 8048ebf:	89 e5                	mov    %esp,%ebp
 8048ec1:	57                   	push   %edi
 8048ec2:	56                   	push   %esi
 8048ec3:	53                   	push   %ebx
 8048ec4:	51                   	push   %ecx
 8048ec5:	83 ec 20             	sub    $0x20,%esp
 8048ec8:	8b 31                	mov    (%ecx),%esi
 8048eca:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048ecd:	68 a3 8a 04 08       	push   $0x8048aa3
 8048ed2:	6a 0b                	push   $0xb
 8048ed4:	e8 c7 f8 ff ff       	call   80487a0 <signal@plt>
 8048ed9:	83 c4 08             	add    $0x8,%esp
 8048edc:	68 7b 8a 04 08       	push   $0x8048a7b
 8048ee1:	6a 07                	push   $0x7
 8048ee3:	e8 b8 f8 ff ff       	call   80487a0 <signal@plt>
 8048ee8:	83 c4 08             	add    $0x8,%esp
 8048eeb:	68 cb 8a 04 08       	push   $0x8048acb
 8048ef0:	6a 04                	push   $0x4
 8048ef2:	e8 a9 f8 ff ff       	call   80487a0 <signal@plt>
 8048ef7:	a1 00 d1 04 08       	mov    0x804d100,%eax
 8048efc:	a3 44 d1 04 08       	mov    %eax,0x804d144
 8048f01:	83 c4 10             	add    $0x10,%esp
 8048f04:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 8048f0b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8048f12:	bf 01 00 00 00       	mov    $0x1,%edi
 8048f17:	89 7d dc             	mov    %edi,-0x24(%ebp)
 8048f1a:	83 ec 04             	sub    $0x4,%esp
 8048f1d:	68 43 a1 04 08       	push   $0x804a143
 8048f22:	53                   	push   %ebx
 8048f23:	56                   	push   %esi
 8048f24:	e8 57 f9 ff ff       	call   8048880 <getopt@plt>
 8048f29:	83 c4 10             	add    $0x10,%esp
 8048f2c:	3c ff                	cmp    $0xff,%al
 8048f2e:	74 7a                	je     8048faa <main+0xf6>
 8048f30:	83 e8 67             	sub    $0x67,%eax
 8048f33:	3c 0e                	cmp    $0xe,%al
 8048f35:	77 5a                	ja     8048f91 <main+0xdd>
 8048f37:	0f b6 c0             	movzbl %al,%eax
 8048f3a:	ff 24 85 64 a1 04 08 	jmp    *0x804a164(,%eax,4)
 8048f41:	8b 03                	mov    (%ebx),%eax
 8048f43:	e8 ab fb ff ff       	call   8048af3 <usage>
 8048f48:	83 ec 0c             	sub    $0xc,%esp
 8048f4b:	ff 35 20 d1 04 08    	pushl  0x804d120
 8048f51:	e8 6a f9 ff ff       	call   80488c0 <__strdup@plt>
 8048f56:	a3 50 d1 04 08       	mov    %eax,0x804d150
 8048f5b:	89 04 24             	mov    %eax,(%esp)
 8048f5e:	e8 f7 0d 00 00       	call   8049d5a <gencookie>
 8048f63:	a3 40 d1 04 08       	mov    %eax,0x804d140
 8048f68:	83 c4 10             	add    $0x10,%esp
 8048f6b:	eb ad                	jmp    8048f1a <main+0x66>
 8048f6d:	83 ec 0c             	sub    $0xc,%esp
 8048f70:	68 d4 9f 04 08       	push   $0x8049fd4
 8048f75:	e8 a6 f8 ff ff       	call   8048820 <puts@plt>
 8048f7a:	c7 05 4c d1 04 08 00 	movl   $0x0,0x804d14c
 8048f81:	00 00 00 
 8048f84:	83 c4 10             	add    $0x10,%esp
 8048f87:	eb 91                	jmp    8048f1a <main+0x66>
 8048f89:	89 3d 48 d1 04 08    	mov    %edi,0x804d148
 8048f8f:	eb 89                	jmp    8048f1a <main+0x66>
 8048f91:	8b 03                	mov    (%ebx),%eax
 8048f93:	e8 5b fb ff ff       	call   8048af3 <usage>
 8048f98:	c7 45 e4 05 00 00 00 	movl   $0x5,-0x1c(%ebp)
 8048f9f:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048fa2:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048fa5:	e9 70 ff ff ff       	jmp    8048f1a <main+0x66>
 8048faa:	83 3d 50 d1 04 08 00 	cmpl   $0x0,0x804d150
 8048fb1:	74 6e                	je     8049021 <main+0x16d>
 8048fb3:	e8 03 01 00 00       	call   80490bb <initialize_bomb>
 8048fb8:	83 ec 08             	sub    $0x8,%esp
 8048fbb:	ff 35 50 d1 04 08    	pushl  0x804d150
 8048fc1:	68 4a a1 04 08       	push   $0x804a14a
 8048fc6:	e8 c5 f7 ff ff       	call   8048790 <printf@plt>
 8048fcb:	83 c4 08             	add    $0x8,%esp
 8048fce:	ff 35 40 d1 04 08    	pushl  0x804d140
 8048fd4:	68 56 a1 04 08       	push   $0x804a156
 8048fd9:	e8 b2 f7 ff ff       	call   8048790 <printf@plt>
 8048fde:	83 c4 04             	add    $0x4,%esp
 8048fe1:	ff 35 40 d1 04 08    	pushl  0x804d140
 8048fe7:	e8 94 f7 ff ff       	call   8048780 <srandom@plt>
 8048fec:	e8 2f f9 ff ff       	call   8048920 <random@plt>
 8048ff1:	25 f0 0f 00 00       	and    $0xff0,%eax
 8048ff6:	8d b8 00 01 00 00    	lea    0x100(%eax),%edi
 8048ffc:	83 c4 08             	add    $0x8,%esp
 8048fff:	6a 04                	push   $0x4
 8049001:	ff 75 e4             	pushl  -0x1c(%ebp)
 8049004:	e8 57 f9 ff ff       	call   8048960 <calloc@plt>
 8049009:	89 c6                	mov    %eax,%esi
 804900b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049011:	83 c4 10             	add    $0x10,%esp
 8049014:	bb 01 00 00 00       	mov    $0x1,%ebx
 8049019:	89 7d dc             	mov    %edi,-0x24(%ebp)
 804901c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 804901f:	eb 2d                	jmp    804904e <main+0x19a>
 8049021:	83 ec 08             	sub    $0x8,%esp
 8049024:	ff 33                	pushl  (%ebx)
 8049026:	68 fc 9f 04 08       	push   $0x8049ffc
 804902b:	e8 60 f7 ff ff       	call   8048790 <printf@plt>
 8049030:	8b 03                	mov    (%ebx),%eax
 8049032:	e8 bc fa ff ff       	call   8048af3 <usage>
 8049037:	e8 e4 f8 ff ff       	call   8048920 <random@plt>
 804903c:	25 f0 00 00 00       	and    $0xf0,%eax
 8049041:	ba 80 00 00 00       	mov    $0x80,%edx
 8049046:	29 c2                	sub    %eax,%edx
 8049048:	89 14 9e             	mov    %edx,(%esi,%ebx,4)
 804904b:	83 c3 01             	add    $0x1,%ebx
 804904e:	39 fb                	cmp    %edi,%ebx
 8049050:	7c e5                	jl     8049037 <main+0x183>
 8049052:	8b 7d dc             	mov    -0x24(%ebp),%edi
 8049055:	bb 00 00 00 00       	mov    $0x0,%ebx
 804905a:	eb 17                	jmp    8049073 <main+0x1bf>
 804905c:	83 ec 08             	sub    $0x8,%esp
 804905f:	89 f8                	mov    %edi,%eax
 8049061:	03 04 9e             	add    (%esi,%ebx,4),%eax
 8049064:	50                   	push   %eax
 8049065:	ff 75 e0             	pushl  -0x20(%ebp)
 8049068:	e8 a4 fd ff ff       	call   8048e11 <launcher>
 804906d:	83 c3 01             	add    $0x1,%ebx
 8049070:	83 c4 10             	add    $0x10,%esp
 8049073:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
 8049076:	7c e4                	jl     804905c <main+0x1a8>
 8049078:	b8 00 00 00 00       	mov    $0x0,%eax
 804907d:	8d 65 f0             	lea    -0x10(%ebp),%esp
 8049080:	59                   	pop    %ecx
 8049081:	5b                   	pop    %ebx
 8049082:	5e                   	pop    %esi
 8049083:	5f                   	pop    %edi
 8049084:	5d                   	pop    %ebp
 8049085:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049088:	c3                   	ret    

08049089 <getbuf>:
 8049089:	55                   	push   %ebp
 804908a:	89 e5                	mov    %esp,%ebp
 804908c:	83 ec 34             	sub    $0x34,%esp
 804908f:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8049092:	50                   	push   %eax
 8049093:	e8 68 fb ff ff       	call   8048c00 <Gets>
 8049098:	b8 01 00 00 00       	mov    $0x1,%eax
 804909d:	c9                   	leave  
 804909e:	c3                   	ret    

0804909f <getbufn>:
 804909f:	55                   	push   %ebp
 80490a0:	89 e5                	mov    %esp,%ebp
 80490a2:	81 ec 14 02 00 00    	sub    $0x214,%esp
 80490a8:	8d 85 f8 fd ff ff    	lea    -0x208(%ebp),%eax
 80490ae:	50                   	push   %eax
 80490af:	e8 4c fb ff ff       	call   8048c00 <Gets>
 80490b4:	b8 01 00 00 00       	mov    $0x1,%eax
 80490b9:	c9                   	leave  
 80490ba:	c3                   	ret    

080490bb <initialize_bomb>:
 80490bb:	55                   	push   %ebp
 80490bc:	89 e5                	mov    %esp,%ebp
 80490be:	56                   	push   %esi
 80490bf:	53                   	push   %ebx
 80490c0:	81 ec 00 24 00 00    	sub    $0x2400,%esp
 80490c6:	83 3d 48 d1 04 08 00 	cmpl   $0x0,0x804d148
 80490cd:	75 10                	jne    80490df <initialize_bomb+0x24>
 80490cf:	83 3d 4c d1 04 08 00 	cmpl   $0x0,0x804d14c
 80490d6:	75 16                	jne    80490ee <initialize_bomb+0x33>
 80490d8:	8d 65 f8             	lea    -0x8(%ebp),%esp
 80490db:	5b                   	pop    %ebx
 80490dc:	5e                   	pop    %esi
 80490dd:	5d                   	pop    %ebp
 80490de:	c3                   	ret    
 80490df:	83 ec 0c             	sub    $0xc,%esp
 80490e2:	6a ff                	push   $0xffffffff
 80490e4:	e8 e4 09 00 00       	call   8049acd <init_timeout>
 80490e9:	83 c4 10             	add    $0x10,%esp
 80490ec:	eb e1                	jmp    80490cf <initialize_bomb+0x14>
 80490ee:	83 ec 08             	sub    $0x8,%esp
 80490f1:	68 00 04 00 00       	push   $0x400
 80490f6:	8d 85 f8 fb ff ff    	lea    -0x408(%ebp),%eax
 80490fc:	50                   	push   %eax
 80490fd:	e8 0e f7 ff ff       	call   8048810 <gethostname@plt>
 8049102:	83 c4 10             	add    $0x10,%esp
 8049105:	85 c0                	test   %eax,%eax
 8049107:	75 65                	jne    804916e <initialize_bomb+0xb3>
 8049109:	a1 e0 c0 04 08       	mov    0x804c0e0,%eax
 804910e:	bb e4 c0 04 08       	mov    $0x804c0e4,%ebx
 8049113:	8d b5 f8 fb ff ff    	lea    -0x408(%ebp),%esi
 8049119:	85 c0                	test   %eax,%eax
 804911b:	74 1b                	je     8049138 <initialize_bomb+0x7d>
 804911d:	83 ec 08             	sub    $0x8,%esp
 8049120:	56                   	push   %esi
 8049121:	50                   	push   %eax
 8049122:	e8 69 f7 ff ff       	call   8048890 <strcasecmp@plt>
 8049127:	83 c4 10             	add    $0x10,%esp
 804912a:	85 c0                	test   %eax,%eax
 804912c:	74 0a                	je     8049138 <initialize_bomb+0x7d>
 804912e:	83 c3 04             	add    $0x4,%ebx
 8049131:	8b 43 fc             	mov    -0x4(%ebx),%eax
 8049134:	85 c0                	test   %eax,%eax
 8049136:	75 e5                	jne    804911d <initialize_bomb+0x62>
 8049138:	83 ec 0c             	sub    $0xc,%esp
 804913b:	8d 85 f8 db ff ff    	lea    -0x2408(%ebp),%eax
 8049141:	50                   	push   %eax
 8049142:	e8 bd 09 00 00       	call   8049b04 <init_driver>
 8049147:	83 c4 10             	add    $0x10,%esp
 804914a:	85 c0                	test   %eax,%eax
 804914c:	79 8a                	jns    80490d8 <initialize_bomb+0x1d>
 804914e:	83 ec 08             	sub    $0x8,%esp
 8049151:	8d 85 f8 db ff ff    	lea    -0x2408(%ebp),%eax
 8049157:	50                   	push   %eax
 8049158:	68 e2 a2 04 08       	push   $0x804a2e2
 804915d:	e8 2e f6 ff ff       	call   8048790 <printf@plt>
 8049162:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049169:	e8 c2 f6 ff ff       	call   8048830 <exit@plt>
 804916e:	83 ec 0c             	sub    $0xc,%esp
 8049171:	68 b0 a1 04 08       	push   $0x804a1b0
 8049176:	e8 a5 f6 ff ff       	call   8048820 <puts@plt>
 804917b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049182:	e8 a9 f6 ff ff       	call   8048830 <exit@plt>

08049187 <validate>:
 8049187:	55                   	push   %ebp
 8049188:	89 e5                	mov    %esp,%ebp
 804918a:	57                   	push   %edi
 804918b:	53                   	push   %ebx
 804918c:	81 ec 00 40 00 00    	sub    $0x4000,%esp
 8049192:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049195:	83 3d 50 d1 04 08 00 	cmpl   $0x0,0x804d150
 804919c:	74 3b                	je     80491d9 <validate+0x52>
 804919e:	83 fb 04             	cmp    $0x4,%ebx
 80491a1:	77 48                	ja     80491eb <validate+0x64>
 80491a3:	c7 05 3c d1 04 08 01 	movl   $0x1,0x804d13c
 80491aa:	00 00 00 
 80491ad:	8b 04 9d c0 c0 04 08 	mov    0x804c0c0(,%ebx,4),%eax
 80491b4:	83 e8 01             	sub    $0x1,%eax
 80491b7:	89 04 9d c0 c0 04 08 	mov    %eax,0x804c0c0(,%ebx,4)
 80491be:	85 c0                	test   %eax,%eax
 80491c0:	7e 3b                	jle    80491fd <validate+0x76>
 80491c2:	83 ec 0c             	sub    $0xc,%esp
 80491c5:	68 f7 a2 04 08       	push   $0x804a2f7
 80491ca:	e8 51 f6 ff ff       	call   8048820 <puts@plt>
 80491cf:	83 c4 10             	add    $0x10,%esp
 80491d2:	8d 65 f8             	lea    -0x8(%ebp),%esp
 80491d5:	5b                   	pop    %ebx
 80491d6:	5f                   	pop    %edi
 80491d7:	5d                   	pop    %ebp
 80491d8:	c3                   	ret    
 80491d9:	83 ec 0c             	sub    $0xc,%esp
 80491dc:	68 e8 a1 04 08       	push   $0x804a1e8
 80491e1:	e8 3a f6 ff ff       	call   8048820 <puts@plt>
 80491e6:	83 c4 10             	add    $0x10,%esp
 80491e9:	eb e7                	jmp    80491d2 <validate+0x4b>
 80491eb:	83 ec 0c             	sub    $0xc,%esp
 80491ee:	68 14 a2 04 08       	push   $0x804a214
 80491f3:	e8 28 f6 ff ff       	call   8048820 <puts@plt>
 80491f8:	83 c4 10             	add    $0x10,%esp
 80491fb:	eb d5                	jmp    80491d2 <validate+0x4b>
 80491fd:	83 ec 0c             	sub    $0xc,%esp
 8049200:	68 02 a3 04 08       	push   $0x804a302
 8049205:	e8 16 f6 ff ff       	call   8048820 <puts@plt>
 804920a:	83 c4 10             	add    $0x10,%esp
 804920d:	83 3d 4c d1 04 08 00 	cmpl   $0x0,0x804d14c
 8049214:	0f 84 80 00 00 00    	je     804929a <validate+0x113>
 804921a:	bf 80 d1 04 08       	mov    $0x804d180,%edi
 804921f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049224:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049229:	f2 ae                	repnz scas %es:(%edi),%al
 804922b:	89 c8                	mov    %ecx,%eax
 804922d:	f7 d0                	not    %eax
 804922f:	83 c0 1f             	add    $0x1f,%eax
 8049232:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049237:	76 12                	jbe    804924b <validate+0xc4>
 8049239:	83 ec 0c             	sub    $0xc,%esp
 804923c:	68 3c a2 04 08       	push   $0x804a23c
 8049241:	e8 da f5 ff ff       	call   8048820 <puts@plt>
 8049246:	83 c4 10             	add    $0x10,%esp
 8049249:	eb 87                	jmp    80491d2 <validate+0x4b>
 804924b:	83 ec 0c             	sub    $0xc,%esp
 804924e:	68 80 d1 04 08       	push   $0x804d180
 8049253:	ff 35 40 d1 04 08    	pushl  0x804d140
 8049259:	53                   	push   %ebx
 804925a:	68 08 a3 04 08       	push   $0x804a308
 804925f:	8d 9d f8 df ff ff    	lea    -0x2008(%ebp),%ebx
 8049265:	53                   	push   %ebx
 8049266:	e8 95 f6 ff ff       	call   8048900 <sprintf@plt>
 804926b:	83 c4 20             	add    $0x20,%esp
 804926e:	8d 85 f8 bf ff ff    	lea    -0x4008(%ebp),%eax
 8049274:	50                   	push   %eax
 8049275:	6a 00                	push   $0x0
 8049277:	53                   	push   %ebx
 8049278:	ff 35 50 d1 04 08    	pushl  0x804d150
 804927e:	e8 f3 09 00 00       	call   8049c76 <driver_post>
 8049283:	83 c4 10             	add    $0x10,%esp
 8049286:	85 c0                	test   %eax,%eax
 8049288:	75 25                	jne    80492af <validate+0x128>
 804928a:	83 ec 0c             	sub    $0xc,%esp
 804928d:	68 74 a2 04 08       	push   $0x804a274
 8049292:	e8 89 f5 ff ff       	call   8048820 <puts@plt>
 8049297:	83 c4 10             	add    $0x10,%esp
 804929a:	83 ec 0c             	sub    $0xc,%esp
 804929d:	68 11 a3 04 08       	push   $0x804a311
 80492a2:	e8 79 f5 ff ff       	call   8048820 <puts@plt>
 80492a7:	83 c4 10             	add    $0x10,%esp
 80492aa:	e9 23 ff ff ff       	jmp    80491d2 <validate+0x4b>
 80492af:	83 ec 08             	sub    $0x8,%esp
 80492b2:	8d 85 f8 bf ff ff    	lea    -0x4008(%ebp),%eax
 80492b8:	50                   	push   %eax
 80492b9:	68 a4 a2 04 08       	push   $0x804a2a4
 80492be:	e8 cd f4 ff ff       	call   8048790 <printf@plt>
 80492c3:	83 c4 10             	add    $0x10,%esp
 80492c6:	eb d2                	jmp    804929a <validate+0x113>

080492c8 <sigalrm_handler>:
 80492c8:	55                   	push   %ebp
 80492c9:	89 e5                	mov    %esp,%ebp
 80492cb:	83 ec 10             	sub    $0x10,%esp
 80492ce:	6a 02                	push   $0x2
 80492d0:	68 80 a3 04 08       	push   $0x804a380
 80492d5:	e8 b6 f4 ff ff       	call   8048790 <printf@plt>
 80492da:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492e1:	e8 4a f5 ff ff       	call   8048830 <exit@plt>

080492e6 <rio_readlineb>:
 80492e6:	55                   	push   %ebp
 80492e7:	89 e5                	mov    %esp,%ebp
 80492e9:	57                   	push   %edi
 80492ea:	56                   	push   %esi
 80492eb:	53                   	push   %ebx
 80492ec:	83 ec 1c             	sub    $0x1c,%esp
 80492ef:	83 f9 01             	cmp    $0x1,%ecx
 80492f2:	76 7e                	jbe    8049372 <rio_readlineb+0x8c>
 80492f4:	89 d7                	mov    %edx,%edi
 80492f6:	89 c3                	mov    %eax,%ebx
 80492f8:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 80492fb:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 8049302:	8d 70 0c             	lea    0xc(%eax),%esi
 8049305:	eb 0a                	jmp    8049311 <rio_readlineb+0x2b>
 8049307:	e8 c4 f5 ff ff       	call   80488d0 <__errno_location@plt>
 804930c:	83 38 04             	cmpl   $0x4,(%eax)
 804930f:	75 6c                	jne    804937d <rio_readlineb+0x97>
 8049311:	8b 43 04             	mov    0x4(%ebx),%eax
 8049314:	85 c0                	test   %eax,%eax
 8049316:	7f 23                	jg     804933b <rio_readlineb+0x55>
 8049318:	83 ec 04             	sub    $0x4,%esp
 804931b:	68 00 20 00 00       	push   $0x2000
 8049320:	56                   	push   %esi
 8049321:	ff 33                	pushl  (%ebx)
 8049323:	e8 48 f4 ff ff       	call   8048770 <read@plt>
 8049328:	89 43 04             	mov    %eax,0x4(%ebx)
 804932b:	83 c4 10             	add    $0x10,%esp
 804932e:	85 c0                	test   %eax,%eax
 8049330:	78 d5                	js     8049307 <rio_readlineb+0x21>
 8049332:	85 c0                	test   %eax,%eax
 8049334:	74 4e                	je     8049384 <rio_readlineb+0x9e>
 8049336:	89 73 08             	mov    %esi,0x8(%ebx)
 8049339:	eb d6                	jmp    8049311 <rio_readlineb+0x2b>
 804933b:	8b 4b 08             	mov    0x8(%ebx),%ecx
 804933e:	0f b6 11             	movzbl (%ecx),%edx
 8049341:	83 c1 01             	add    $0x1,%ecx
 8049344:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8049347:	83 e8 01             	sub    $0x1,%eax
 804934a:	89 43 04             	mov    %eax,0x4(%ebx)
 804934d:	83 c7 01             	add    $0x1,%edi
 8049350:	88 57 ff             	mov    %dl,-0x1(%edi)
 8049353:	80 fa 0a             	cmp    $0xa,%dl
 8049356:	74 0c                	je     8049364 <rio_readlineb+0x7e>
 8049358:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 804935c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804935f:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 8049362:	75 ad                	jne    8049311 <rio_readlineb+0x2b>
 8049364:	c6 07 00             	movb   $0x0,(%edi)
 8049367:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804936a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804936d:	5b                   	pop    %ebx
 804936e:	5e                   	pop    %esi
 804936f:	5f                   	pop    %edi
 8049370:	5d                   	pop    %ebp
 8049371:	c3                   	ret    
 8049372:	89 d7                	mov    %edx,%edi
 8049374:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 804937b:	eb e7                	jmp    8049364 <rio_readlineb+0x7e>
 804937d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049382:	eb 05                	jmp    8049389 <rio_readlineb+0xa3>
 8049384:	b8 00 00 00 00       	mov    $0x0,%eax
 8049389:	85 c0                	test   %eax,%eax
 804938b:	75 0f                	jne    804939c <rio_readlineb+0xb6>
 804938d:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
 8049391:	75 d1                	jne    8049364 <rio_readlineb+0x7e>
 8049393:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804939a:	eb cb                	jmp    8049367 <rio_readlineb+0x81>
 804939c:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,-0x1c(%ebp)
 80493a3:	eb c2                	jmp    8049367 <rio_readlineb+0x81>

080493a5 <submitr>:
 80493a5:	55                   	push   %ebp
 80493a6:	89 e5                	mov    %esp,%ebp
 80493a8:	57                   	push   %edi
 80493a9:	56                   	push   %esi
 80493aa:	53                   	push   %ebx
 80493ab:	81 ec 50 a0 00 00    	sub    $0xa050,%esp
 80493b1:	8b 75 08             	mov    0x8(%ebp),%esi
 80493b4:	c7 85 c8 7f ff ff 00 	movl   $0x0,-0x8038(%ebp)
 80493bb:	00 00 00 
 80493be:	6a 00                	push   $0x0
 80493c0:	6a 01                	push   $0x1
 80493c2:	6a 02                	push   $0x2
 80493c4:	e8 47 f5 ff ff       	call   8048910 <socket@plt>
 80493c9:	89 85 b4 5f ff ff    	mov    %eax,-0xa04c(%ebp)
 80493cf:	83 c4 10             	add    $0x10,%esp
 80493d2:	85 c0                	test   %eax,%eax
 80493d4:	0f 88 f9 00 00 00    	js     80494d3 <submitr+0x12e>
 80493da:	83 ec 0c             	sub    $0xc,%esp
 80493dd:	56                   	push   %esi
 80493de:	e8 4d f5 ff ff       	call   8048930 <gethostbyname@plt>
 80493e3:	83 c4 10             	add    $0x10,%esp
 80493e6:	85 c0                	test   %eax,%eax
 80493e8:	0f 84 36 01 00 00    	je     8049524 <submitr+0x17f>
 80493ee:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 80493f1:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 80493f8:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 80493ff:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8049406:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804940d:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 8049413:	83 ec 04             	sub    $0x4,%esp
 8049416:	ff 70 0c             	pushl  0xc(%eax)
 8049419:	8d 55 dc             	lea    -0x24(%ebp),%edx
 804941c:	52                   	push   %edx
 804941d:	8b 40 10             	mov    0x10(%eax),%eax
 8049420:	ff 30                	pushl  (%eax)
 8049422:	e8 b9 f3 ff ff       	call   80487e0 <bcopy@plt>
 8049427:	0f b7 45 0c          	movzwl 0xc(%ebp),%eax
 804942b:	66 c1 c8 08          	ror    $0x8,%ax
 804942f:	66 89 45 da          	mov    %ax,-0x26(%ebp)
 8049433:	83 c4 0c             	add    $0xc,%esp
 8049436:	6a 10                	push   $0x10
 8049438:	53                   	push   %ebx
 8049439:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804943f:	e8 fc f4 ff ff       	call   8048940 <connect@plt>
 8049444:	83 c4 10             	add    $0x10,%esp
 8049447:	85 c0                	test   %eax,%eax
 8049449:	0f 88 01 01 00 00    	js     8049550 <submitr+0x1ab>
 804944f:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 8049454:	b8 00 00 00 00       	mov    $0x0,%eax
 8049459:	89 d9                	mov    %ebx,%ecx
 804945b:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 804945e:	f2 ae                	repnz scas %es:(%edi),%al
 8049460:	89 ce                	mov    %ecx,%esi
 8049462:	f7 d6                	not    %esi
 8049464:	89 d9                	mov    %ebx,%ecx
 8049466:	8b 7d 10             	mov    0x10(%ebp),%edi
 8049469:	f2 ae                	repnz scas %es:(%edi),%al
 804946b:	89 8d b0 5f ff ff    	mov    %ecx,-0xa050(%ebp)
 8049471:	89 d9                	mov    %ebx,%ecx
 8049473:	8b 7d 14             	mov    0x14(%ebp),%edi
 8049476:	f2 ae                	repnz scas %es:(%edi),%al
 8049478:	89 ca                	mov    %ecx,%edx
 804947a:	f7 d2                	not    %edx
 804947c:	89 d9                	mov    %ebx,%ecx
 804947e:	8b 7d 18             	mov    0x18(%ebp),%edi
 8049481:	f2 ae                	repnz scas %es:(%edi),%al
 8049483:	2b 95 b0 5f ff ff    	sub    -0xa050(%ebp),%edx
 8049489:	29 ca                	sub    %ecx,%edx
 804948b:	8d 44 76 fd          	lea    -0x3(%esi,%esi,2),%eax
 804948f:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 8049493:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049498:	0f 87 de 00 00 00    	ja     804957c <submitr+0x1d7>
 804949e:	8d 95 cc 9f ff ff    	lea    -0x6034(%ebp),%edx
 80494a4:	b9 00 08 00 00       	mov    $0x800,%ecx
 80494a9:	b8 00 00 00 00       	mov    $0x0,%eax
 80494ae:	89 d7                	mov    %edx,%edi
 80494b0:	f3 ab                	rep stos %eax,%es:(%edi)
 80494b2:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80494b7:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 80494ba:	f2 ae                	repnz scas %es:(%edi),%al
 80494bc:	f7 d1                	not    %ecx
 80494be:	89 cb                	mov    %ecx,%ebx
 80494c0:	83 eb 01             	sub    $0x1,%ebx
 80494c3:	0f 84 aa 05 00 00    	je     8049a73 <submitr+0x6ce>
 80494c9:	8b 75 1c             	mov    0x1c(%ebp),%esi
 80494cc:	89 d7                	mov    %edx,%edi
 80494ce:	e9 39 01 00 00       	jmp    804960c <submitr+0x267>
 80494d3:	8b 45 20             	mov    0x20(%ebp),%eax
 80494d6:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80494dc:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80494e3:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80494ea:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80494f1:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80494f8:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80494ff:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049506:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804950d:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049514:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804951a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804951f:	e9 7c 04 00 00       	jmp    80499a0 <submitr+0x5fb>
 8049524:	83 ec 04             	sub    $0x4,%esp
 8049527:	56                   	push   %esi
 8049528:	68 a4 a3 04 08       	push   $0x804a3a4
 804952d:	ff 75 20             	pushl  0x20(%ebp)
 8049530:	e8 cb f3 ff ff       	call   8048900 <sprintf@plt>
 8049535:	83 c4 04             	add    $0x4,%esp
 8049538:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804953e:	e8 0d f4 ff ff       	call   8048950 <close@plt>
 8049543:	83 c4 10             	add    $0x10,%esp
 8049546:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804954b:	e9 50 04 00 00       	jmp    80499a0 <submitr+0x5fb>
 8049550:	83 ec 04             	sub    $0x4,%esp
 8049553:	56                   	push   %esi
 8049554:	68 d0 a3 04 08       	push   $0x804a3d0
 8049559:	ff 75 20             	pushl  0x20(%ebp)
 804955c:	e8 9f f3 ff ff       	call   8048900 <sprintf@plt>
 8049561:	83 c4 04             	add    $0x4,%esp
 8049564:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804956a:	e8 e1 f3 ff ff       	call   8048950 <close@plt>
 804956f:	83 c4 10             	add    $0x10,%esp
 8049572:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049577:	e9 24 04 00 00       	jmp    80499a0 <submitr+0x5fb>
 804957c:	8b 45 20             	mov    0x20(%ebp),%eax
 804957f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049585:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804958c:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049593:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 804959a:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 80495a1:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 80495a8:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 80495af:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 80495b6:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 80495bd:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 80495c4:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 80495cb:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 80495d2:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 80495d9:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 80495e0:	83 ec 0c             	sub    $0xc,%esp
 80495e3:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80495e9:	e8 62 f3 ff ff       	call   8048950 <close@plt>
 80495ee:	83 c4 10             	add    $0x10,%esp
 80495f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495f6:	e9 a5 03 00 00       	jmp    80499a0 <submitr+0x5fb>
 80495fb:	88 17                	mov    %dl,(%edi)
 80495fd:	8d 7f 01             	lea    0x1(%edi),%edi
 8049600:	83 c6 01             	add    $0x1,%esi
 8049603:	83 eb 01             	sub    $0x1,%ebx
 8049606:	0f 84 67 04 00 00    	je     8049a73 <submitr+0x6ce>
 804960c:	0f b6 16             	movzbl (%esi),%edx
 804960f:	8d 4a d6             	lea    -0x2a(%edx),%ecx
 8049612:	b8 01 00 00 00       	mov    $0x1,%eax
 8049617:	80 f9 0f             	cmp    $0xf,%cl
 804961a:	77 0d                	ja     8049629 <submitr+0x284>
 804961c:	b8 d9 ff 00 00       	mov    $0xffd9,%eax
 8049621:	d3 e8                	shr    %cl,%eax
 8049623:	83 f0 01             	xor    $0x1,%eax
 8049626:	83 e0 01             	and    $0x1,%eax
 8049629:	84 c0                	test   %al,%al
 804962b:	74 ce                	je     80495fb <submitr+0x256>
 804962d:	80 fa 5f             	cmp    $0x5f,%dl
 8049630:	74 c9                	je     80495fb <submitr+0x256>
 8049632:	89 d0                	mov    %edx,%eax
 8049634:	83 e0 df             	and    $0xffffffdf,%eax
 8049637:	83 e8 41             	sub    $0x41,%eax
 804963a:	3c 19                	cmp    $0x19,%al
 804963c:	76 bd                	jbe    80495fb <submitr+0x256>
 804963e:	80 fa 20             	cmp    $0x20,%dl
 8049641:	74 50                	je     8049693 <submitr+0x2ee>
 8049643:	8d 42 e0             	lea    -0x20(%edx),%eax
 8049646:	3c 5f                	cmp    $0x5f,%al
 8049648:	76 09                	jbe    8049653 <submitr+0x2ae>
 804964a:	80 fa 09             	cmp    $0x9,%dl
 804964d:	0f 85 d4 03 00 00    	jne    8049a27 <submitr+0x682>
 8049653:	83 ec 04             	sub    $0x4,%esp
 8049656:	0f b6 d2             	movzbl %dl,%edx
 8049659:	52                   	push   %edx
 804965a:	68 e4 a4 04 08       	push   $0x804a4e4
 804965f:	8d 85 c0 5f ff ff    	lea    -0xa040(%ebp),%eax
 8049665:	50                   	push   %eax
 8049666:	e8 95 f2 ff ff       	call   8048900 <sprintf@plt>
 804966b:	0f b6 85 c0 5f ff ff 	movzbl -0xa040(%ebp),%eax
 8049672:	88 07                	mov    %al,(%edi)
 8049674:	0f b6 85 c1 5f ff ff 	movzbl -0xa03f(%ebp),%eax
 804967b:	88 47 01             	mov    %al,0x1(%edi)
 804967e:	0f b6 85 c2 5f ff ff 	movzbl -0xa03e(%ebp),%eax
 8049685:	88 47 02             	mov    %al,0x2(%edi)
 8049688:	83 c4 10             	add    $0x10,%esp
 804968b:	8d 7f 03             	lea    0x3(%edi),%edi
 804968e:	e9 6d ff ff ff       	jmp    8049600 <submitr+0x25b>
 8049693:	c6 07 2b             	movb   $0x2b,(%edi)
 8049696:	8d 7f 01             	lea    0x1(%edi),%edi
 8049699:	e9 62 ff ff ff       	jmp    8049600 <submitr+0x25b>
 804969e:	01 c6                	add    %eax,%esi
 80496a0:	29 c3                	sub    %eax,%ebx
 80496a2:	74 29                	je     80496cd <submitr+0x328>
 80496a4:	83 ec 04             	sub    $0x4,%esp
 80496a7:	53                   	push   %ebx
 80496a8:	56                   	push   %esi
 80496a9:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80496af:	e8 bc f1 ff ff       	call   8048870 <write@plt>
 80496b4:	83 c4 10             	add    $0x10,%esp
 80496b7:	85 c0                	test   %eax,%eax
 80496b9:	7f e3                	jg     804969e <submitr+0x2f9>
 80496bb:	e8 10 f2 ff ff       	call   80488d0 <__errno_location@plt>
 80496c0:	83 38 04             	cmpl   $0x4,(%eax)
 80496c3:	0f 85 be 00 00 00    	jne    8049787 <submitr+0x3e2>
 80496c9:	89 f8                	mov    %edi,%eax
 80496cb:	eb d1                	jmp    804969e <submitr+0x2f9>
 80496cd:	83 bd b0 5f ff ff 00 	cmpl   $0x0,-0xa050(%ebp)
 80496d4:	0f 88 ad 00 00 00    	js     8049787 <submitr+0x3e2>
 80496da:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 80496e0:	89 85 cc df ff ff    	mov    %eax,-0x2034(%ebp)
 80496e6:	c7 85 d0 df ff ff 00 	movl   $0x0,-0x2030(%ebp)
 80496ed:	00 00 00 
 80496f0:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
 80496f6:	89 85 d4 df ff ff    	mov    %eax,-0x202c(%ebp)
 80496fc:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049701:	8d 95 cc bf ff ff    	lea    -0x4034(%ebp),%edx
 8049707:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 804970d:	e8 d4 fb ff ff       	call   80492e6 <rio_readlineb>
 8049712:	85 c0                	test   %eax,%eax
 8049714:	0f 8e d7 00 00 00    	jle    80497f1 <submitr+0x44c>
 804971a:	83 ec 0c             	sub    $0xc,%esp
 804971d:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 8049723:	50                   	push   %eax
 8049724:	8d 85 c8 7f ff ff    	lea    -0x8038(%ebp),%eax
 804972a:	50                   	push   %eax
 804972b:	8d 85 cc 7f ff ff    	lea    -0x8034(%ebp),%eax
 8049731:	50                   	push   %eax
 8049732:	68 eb a4 04 08       	push   $0x804a4eb
 8049737:	8d 85 cc bf ff ff    	lea    -0x4034(%ebp),%eax
 804973d:	50                   	push   %eax
 804973e:	e8 5d f1 ff ff       	call   80488a0 <__isoc99_sscanf@plt>
 8049743:	8b 85 c8 7f ff ff    	mov    -0x8038(%ebp),%eax
 8049749:	83 c4 20             	add    $0x20,%esp
 804974c:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049751:	0f 84 af 01 00 00    	je     8049906 <submitr+0x561>
 8049757:	8d 95 c8 5f ff ff    	lea    -0xa038(%ebp),%edx
 804975d:	52                   	push   %edx
 804975e:	50                   	push   %eax
 804975f:	68 f8 a3 04 08       	push   $0x804a3f8
 8049764:	ff 75 20             	pushl  0x20(%ebp)
 8049767:	e8 94 f1 ff ff       	call   8048900 <sprintf@plt>
 804976c:	83 c4 04             	add    $0x4,%esp
 804976f:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049775:	e8 d6 f1 ff ff       	call   8048950 <close@plt>
 804977a:	83 c4 10             	add    $0x10,%esp
 804977d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049782:	e9 19 02 00 00       	jmp    80499a0 <submitr+0x5fb>
 8049787:	8b 45 20             	mov    0x20(%ebp),%eax
 804978a:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049790:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049797:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804979e:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80497a5:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80497ac:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80497b3:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 80497ba:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 80497c1:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 80497c8:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 80497cf:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 80497d6:	83 ec 0c             	sub    $0xc,%esp
 80497d9:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80497df:	e8 6c f1 ff ff       	call   8048950 <close@plt>
 80497e4:	83 c4 10             	add    $0x10,%esp
 80497e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497ec:	e9 af 01 00 00       	jmp    80499a0 <submitr+0x5fb>
 80497f1:	8b 45 20             	mov    0x20(%ebp),%eax
 80497f4:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80497fa:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049801:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049808:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804980f:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049816:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804981d:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049824:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 804982b:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 8049832:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 8049839:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 8049840:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 8049847:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 804984e:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 8049854:	83 ec 0c             	sub    $0xc,%esp
 8049857:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 804985d:	e8 ee f0 ff ff       	call   8048950 <close@plt>
 8049862:	83 c4 10             	add    $0x10,%esp
 8049865:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804986a:	e9 31 01 00 00       	jmp    80499a0 <submitr+0x5fb>
 804986f:	8b 45 20             	mov    0x20(%ebp),%eax
 8049872:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049878:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804987f:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049886:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804988d:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049894:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804989b:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 80498a2:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 80498a9:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 80498b0:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 80498b7:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 80498be:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 80498c5:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 80498c9:	83 ec 0c             	sub    $0xc,%esp
 80498cc:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 80498d2:	e8 79 f0 ff ff       	call   8048950 <close@plt>
 80498d7:	83 c4 10             	add    $0x10,%esp
 80498da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498df:	e9 bc 00 00 00       	jmp    80499a0 <submitr+0x5fb>
 80498e4:	85 c0                	test   %eax,%eax
 80498e6:	74 49                	je     8049931 <submitr+0x58c>
 80498e8:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80498ed:	8d 95 cc bf ff ff    	lea    -0x4034(%ebp),%edx
 80498f3:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 80498f9:	e8 e8 f9 ff ff       	call   80492e6 <rio_readlineb>
 80498fe:	85 c0                	test   %eax,%eax
 8049900:	0f 8e 69 ff ff ff    	jle    804986f <submitr+0x4ca>
 8049906:	0f b6 95 cc bf ff ff 	movzbl -0x4034(%ebp),%edx
 804990d:	b8 0d 00 00 00       	mov    $0xd,%eax
 8049912:	29 d0                	sub    %edx,%eax
 8049914:	75 ce                	jne    80498e4 <submitr+0x53f>
 8049916:	0f b6 95 cd bf ff ff 	movzbl -0x4033(%ebp),%edx
 804991d:	b8 0a 00 00 00       	mov    $0xa,%eax
 8049922:	29 d0                	sub    %edx,%eax
 8049924:	75 be                	jne    80498e4 <submitr+0x53f>
 8049926:	0f b6 85 ce bf ff ff 	movzbl -0x4032(%ebp),%eax
 804992d:	f7 d8                	neg    %eax
 804992f:	eb b3                	jmp    80498e4 <submitr+0x53f>
 8049931:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049936:	8d 95 cc bf ff ff    	lea    -0x4034(%ebp),%edx
 804993c:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 8049942:	e8 9f f9 ff ff       	call   80492e6 <rio_readlineb>
 8049947:	85 c0                	test   %eax,%eax
 8049949:	7e 5d                	jle    80499a8 <submitr+0x603>
 804994b:	83 ec 08             	sub    $0x8,%esp
 804994e:	8d 85 cc bf ff ff    	lea    -0x4034(%ebp),%eax
 8049954:	50                   	push   %eax
 8049955:	ff 75 20             	pushl  0x20(%ebp)
 8049958:	e8 93 ee ff ff       	call   80487f0 <strcpy@plt>
 804995d:	83 c4 04             	add    $0x4,%esp
 8049960:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049966:	e8 e5 ef ff ff       	call   8048950 <close@plt>
 804996b:	8b 45 20             	mov    0x20(%ebp),%eax
 804996e:	0f b6 10             	movzbl (%eax),%edx
 8049971:	b8 4f 00 00 00       	mov    $0x4f,%eax
 8049976:	83 c4 10             	add    $0x10,%esp
 8049979:	29 d0                	sub    %edx,%eax
 804997b:	75 19                	jne    8049996 <submitr+0x5f1>
 804997d:	8b 45 20             	mov    0x20(%ebp),%eax
 8049980:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 8049984:	b8 4b 00 00 00       	mov    $0x4b,%eax
 8049989:	29 d0                	sub    %edx,%eax
 804998b:	75 09                	jne    8049996 <submitr+0x5f1>
 804998d:	8b 45 20             	mov    0x20(%ebp),%eax
 8049990:	0f b6 40 02          	movzbl 0x2(%eax),%eax
 8049994:	f7 d8                	neg    %eax
 8049996:	85 c0                	test   %eax,%eax
 8049998:	0f 95 c0             	setne  %al
 804999b:	0f b6 c0             	movzbl %al,%eax
 804999e:	f7 d8                	neg    %eax
 80499a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80499a3:	5b                   	pop    %ebx
 80499a4:	5e                   	pop    %esi
 80499a5:	5f                   	pop    %edi
 80499a6:	5d                   	pop    %ebp
 80499a7:	c3                   	ret    
 80499a8:	8b 45 20             	mov    0x20(%ebp),%eax
 80499ab:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80499b1:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80499b8:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80499bf:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80499c6:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80499cd:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80499d4:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 80499db:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 80499e2:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 80499e9:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 80499f0:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 80499f7:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 80499fe:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049a05:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049a0c:	83 ec 0c             	sub    $0xc,%esp
 8049a0f:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049a15:	e8 36 ef ff ff       	call   8048950 <close@plt>
 8049a1a:	83 c4 10             	add    $0x10,%esp
 8049a1d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a22:	e9 79 ff ff ff       	jmp    80499a0 <submitr+0x5fb>
 8049a27:	a1 28 a4 04 08       	mov    0x804a428,%eax
 8049a2c:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049a2f:	89 07                	mov    %eax,(%edi)
 8049a31:	a1 67 a4 04 08       	mov    0x804a467,%eax
 8049a36:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049a39:	89 47 3f             	mov    %eax,0x3f(%edi)
 8049a3c:	8b 45 20             	mov    0x20(%ebp),%eax
 8049a3f:	8d 78 04             	lea    0x4(%eax),%edi
 8049a42:	83 e7 fc             	and    $0xfffffffc,%edi
 8049a45:	29 f8                	sub    %edi,%eax
 8049a47:	be 28 a4 04 08       	mov    $0x804a428,%esi
 8049a4c:	29 c6                	sub    %eax,%esi
 8049a4e:	83 c0 43             	add    $0x43,%eax
 8049a51:	c1 e8 02             	shr    $0x2,%eax
 8049a54:	89 c1                	mov    %eax,%ecx
 8049a56:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049a58:	83 ec 0c             	sub    $0xc,%esp
 8049a5b:	ff b5 b4 5f ff ff    	pushl  -0xa04c(%ebp)
 8049a61:	e8 ea ee ff ff       	call   8048950 <close@plt>
 8049a66:	83 c4 10             	add    $0x10,%esp
 8049a69:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a6e:	e9 2d ff ff ff       	jmp    80499a0 <submitr+0x5fb>
 8049a73:	83 ec 08             	sub    $0x8,%esp
 8049a76:	8d 85 cc 9f ff ff    	lea    -0x6034(%ebp),%eax
 8049a7c:	50                   	push   %eax
 8049a7d:	ff 75 18             	pushl  0x18(%ebp)
 8049a80:	ff 75 14             	pushl  0x14(%ebp)
 8049a83:	ff 75 10             	pushl  0x10(%ebp)
 8049a86:	68 6c a4 04 08       	push   $0x804a46c
 8049a8b:	8d bd cc bf ff ff    	lea    -0x4034(%ebp),%edi
 8049a91:	57                   	push   %edi
 8049a92:	e8 69 ee ff ff       	call   8048900 <sprintf@plt>
 8049a97:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a9c:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049aa1:	f2 ae                	repnz scas %es:(%edi),%al
 8049aa3:	89 cf                	mov    %ecx,%edi
 8049aa5:	f7 d7                	not    %edi
 8049aa7:	8d 47 ff             	lea    -0x1(%edi),%eax
 8049aaa:	89 85 b0 5f ff ff    	mov    %eax,-0xa050(%ebp)
 8049ab0:	83 c4 20             	add    $0x20,%esp
 8049ab3:	89 c3                	mov    %eax,%ebx
 8049ab5:	8d b5 cc bf ff ff    	lea    -0x4034(%ebp),%esi
 8049abb:	bf 00 00 00 00       	mov    $0x0,%edi
 8049ac0:	85 c0                	test   %eax,%eax
 8049ac2:	0f 85 dc fb ff ff    	jne    80496a4 <submitr+0x2ff>
 8049ac8:	e9 0d fc ff ff       	jmp    80496da <submitr+0x335>

08049acd <init_timeout>:
 8049acd:	55                   	push   %ebp
 8049ace:	89 e5                	mov    %esp,%ebp
 8049ad0:	53                   	push   %ebx
 8049ad1:	83 ec 04             	sub    $0x4,%esp
 8049ad4:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049ad7:	85 db                	test   %ebx,%ebx
 8049ad9:	74 24                	je     8049aff <init_timeout+0x32>
 8049adb:	85 db                	test   %ebx,%ebx
 8049add:	b8 02 00 00 00       	mov    $0x2,%eax
 8049ae2:	0f 48 d8             	cmovs  %eax,%ebx
 8049ae5:	83 ec 08             	sub    $0x8,%esp
 8049ae8:	68 c8 92 04 08       	push   $0x80492c8
 8049aed:	6a 0e                	push   $0xe
 8049aef:	e8 ac ec ff ff       	call   80487a0 <signal@plt>
 8049af4:	89 1c 24             	mov    %ebx,(%esp)
 8049af7:	e8 b4 ec ff ff       	call   80487b0 <alarm@plt>
 8049afc:	83 c4 10             	add    $0x10,%esp
 8049aff:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049b02:	c9                   	leave  
 8049b03:	c3                   	ret    

08049b04 <init_driver>:
 8049b04:	55                   	push   %ebp
 8049b05:	89 e5                	mov    %esp,%ebp
 8049b07:	57                   	push   %edi
 8049b08:	56                   	push   %esi
 8049b09:	53                   	push   %ebx
 8049b0a:	83 ec 24             	sub    $0x24,%esp
 8049b0d:	8b 75 08             	mov    0x8(%ebp),%esi
 8049b10:	6a 01                	push   $0x1
 8049b12:	6a 0d                	push   $0xd
 8049b14:	e8 87 ec ff ff       	call   80487a0 <signal@plt>
 8049b19:	83 c4 08             	add    $0x8,%esp
 8049b1c:	6a 01                	push   $0x1
 8049b1e:	6a 1d                	push   $0x1d
 8049b20:	e8 7b ec ff ff       	call   80487a0 <signal@plt>
 8049b25:	83 c4 08             	add    $0x8,%esp
 8049b28:	6a 01                	push   $0x1
 8049b2a:	6a 1d                	push   $0x1d
 8049b2c:	e8 6f ec ff ff       	call   80487a0 <signal@plt>
 8049b31:	83 c4 0c             	add    $0xc,%esp
 8049b34:	6a 00                	push   $0x0
 8049b36:	6a 01                	push   $0x1
 8049b38:	6a 02                	push   $0x2
 8049b3a:	e8 d1 ed ff ff       	call   8048910 <socket@plt>
 8049b3f:	83 c4 10             	add    $0x10,%esp
 8049b42:	85 c0                	test   %eax,%eax
 8049b44:	0f 88 92 00 00 00    	js     8049bdc <init_driver+0xd8>
 8049b4a:	89 c3                	mov    %eax,%ebx
 8049b4c:	83 ec 0c             	sub    $0xc,%esp
 8049b4f:	68 fc a4 04 08       	push   $0x804a4fc
 8049b54:	e8 d7 ed ff ff       	call   8048930 <gethostbyname@plt>
 8049b59:	83 c4 10             	add    $0x10,%esp
 8049b5c:	85 c0                	test   %eax,%eax
 8049b5e:	0f 84 c3 00 00 00    	je     8049c27 <init_driver+0x123>
 8049b64:	8d 7d d8             	lea    -0x28(%ebp),%edi
 8049b67:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 8049b6e:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 8049b75:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 8049b7c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 8049b83:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 8049b89:	83 ec 04             	sub    $0x4,%esp
 8049b8c:	ff 70 0c             	pushl  0xc(%eax)
 8049b8f:	8d 55 dc             	lea    -0x24(%ebp),%edx
 8049b92:	52                   	push   %edx
 8049b93:	8b 40 10             	mov    0x10(%eax),%eax
 8049b96:	ff 30                	pushl  (%eax)
 8049b98:	e8 43 ec ff ff       	call   80487e0 <bcopy@plt>
 8049b9d:	66 c7 45 da 47 26    	movw   $0x2647,-0x26(%ebp)
 8049ba3:	83 c4 0c             	add    $0xc,%esp
 8049ba6:	6a 10                	push   $0x10
 8049ba8:	57                   	push   %edi
 8049ba9:	53                   	push   %ebx
 8049baa:	e8 91 ed ff ff       	call   8048940 <connect@plt>
 8049baf:	83 c4 10             	add    $0x10,%esp
 8049bb2:	85 c0                	test   %eax,%eax
 8049bb4:	0f 88 92 00 00 00    	js     8049c4c <init_driver+0x148>
 8049bba:	83 ec 0c             	sub    $0xc,%esp
 8049bbd:	53                   	push   %ebx
 8049bbe:	e8 8d ed ff ff       	call   8048950 <close@plt>
 8049bc3:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049bc8:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049bcc:	83 c4 10             	add    $0x10,%esp
 8049bcf:	b8 00 00 00 00       	mov    $0x0,%eax
 8049bd4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8049bd7:	5b                   	pop    %ebx
 8049bd8:	5e                   	pop    %esi
 8049bd9:	5f                   	pop    %edi
 8049bda:	5d                   	pop    %ebp
 8049bdb:	c3                   	ret    
 8049bdc:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049be2:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049be9:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049bf0:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049bf7:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049bfe:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049c05:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049c0c:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049c13:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049c1a:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049c20:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c25:	eb ad                	jmp    8049bd4 <init_driver+0xd0>
 8049c27:	83 ec 04             	sub    $0x4,%esp
 8049c2a:	68 fc a4 04 08       	push   $0x804a4fc
 8049c2f:	68 a4 a3 04 08       	push   $0x804a3a4
 8049c34:	56                   	push   %esi
 8049c35:	e8 c6 ec ff ff       	call   8048900 <sprintf@plt>
 8049c3a:	89 1c 24             	mov    %ebx,(%esp)
 8049c3d:	e8 0e ed ff ff       	call   8048950 <close@plt>
 8049c42:	83 c4 10             	add    $0x10,%esp
 8049c45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c4a:	eb 88                	jmp    8049bd4 <init_driver+0xd0>
 8049c4c:	68 26 47 00 00       	push   $0x4726
 8049c51:	68 fc a4 04 08       	push   $0x804a4fc
 8049c56:	68 b8 a4 04 08       	push   $0x804a4b8
 8049c5b:	56                   	push   %esi
 8049c5c:	e8 9f ec ff ff       	call   8048900 <sprintf@plt>
 8049c61:	89 1c 24             	mov    %ebx,(%esp)
 8049c64:	e8 e7 ec ff ff       	call   8048950 <close@plt>
 8049c69:	83 c4 10             	add    $0x10,%esp
 8049c6c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c71:	e9 5e ff ff ff       	jmp    8049bd4 <init_driver+0xd0>

08049c76 <driver_post>:
 8049c76:	55                   	push   %ebp
 8049c77:	89 e5                	mov    %esp,%ebp
 8049c79:	53                   	push   %ebx
 8049c7a:	83 ec 04             	sub    $0x4,%esp
 8049c7d:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c80:	8b 45 10             	mov    0x10(%ebp),%eax
 8049c83:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049c86:	85 c0                	test   %eax,%eax
 8049c88:	75 17                	jne    8049ca1 <driver_post+0x2b>
 8049c8a:	85 d2                	test   %edx,%edx
 8049c8c:	74 05                	je     8049c93 <driver_post+0x1d>
 8049c8e:	80 3a 00             	cmpb   $0x0,(%edx)
 8049c91:	75 31                	jne    8049cc4 <driver_post+0x4e>
 8049c93:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049c98:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049c9c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049c9f:	c9                   	leave  
 8049ca0:	c3                   	ret    
 8049ca1:	83 ec 08             	sub    $0x8,%esp
 8049ca4:	ff 75 0c             	pushl  0xc(%ebp)
 8049ca7:	68 06 a5 04 08       	push   $0x804a506
 8049cac:	e8 df ea ff ff       	call   8048790 <printf@plt>
 8049cb1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049cb6:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049cba:	83 c4 10             	add    $0x10,%esp
 8049cbd:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cc2:	eb d8                	jmp    8049c9c <driver_post+0x26>
 8049cc4:	83 ec 04             	sub    $0x4,%esp
 8049cc7:	53                   	push   %ebx
 8049cc8:	ff 75 0c             	pushl  0xc(%ebp)
 8049ccb:	68 1d a5 04 08       	push   $0x804a51d
 8049cd0:	52                   	push   %edx
 8049cd1:	68 24 a5 04 08       	push   $0x804a524
 8049cd6:	68 26 47 00 00       	push   $0x4726
 8049cdb:	68 fc a4 04 08       	push   $0x804a4fc
 8049ce0:	e8 c0 f6 ff ff       	call   80493a5 <submitr>
 8049ce5:	83 c4 20             	add    $0x20,%esp
 8049ce8:	eb b2                	jmp    8049c9c <driver_post+0x26>

08049cea <hash>:
 8049cea:	55                   	push   %ebp
 8049ceb:	89 e5                	mov    %esp,%ebp
 8049ced:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049cf0:	0f b6 11             	movzbl (%ecx),%edx
 8049cf3:	84 d2                	test   %dl,%dl
 8049cf5:	74 19                	je     8049d10 <hash+0x26>
 8049cf7:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cfc:	6b c0 67             	imul   $0x67,%eax,%eax
 8049cff:	83 c1 01             	add    $0x1,%ecx
 8049d02:	0f be d2             	movsbl %dl,%edx
 8049d05:	01 d0                	add    %edx,%eax
 8049d07:	0f b6 11             	movzbl (%ecx),%edx
 8049d0a:	84 d2                	test   %dl,%dl
 8049d0c:	75 ee                	jne    8049cfc <hash+0x12>
 8049d0e:	5d                   	pop    %ebp
 8049d0f:	c3                   	ret    
 8049d10:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d15:	eb f7                	jmp    8049d0e <hash+0x24>

08049d17 <check>:
 8049d17:	55                   	push   %ebp
 8049d18:	89 e5                	mov    %esp,%ebp
 8049d1a:	8b 55 08             	mov    0x8(%ebp),%edx
 8049d1d:	89 d1                	mov    %edx,%ecx
 8049d1f:	c1 e9 1c             	shr    $0x1c,%ecx
 8049d22:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d27:	85 c9                	test   %ecx,%ecx
 8049d29:	74 1f                	je     8049d4a <check+0x33>
 8049d2b:	80 fa 0a             	cmp    $0xa,%dl
 8049d2e:	74 1c                	je     8049d4c <check+0x35>
 8049d30:	b9 08 00 00 00       	mov    $0x8,%ecx
 8049d35:	89 d0                	mov    %edx,%eax
 8049d37:	d3 e8                	shr    %cl,%eax
 8049d39:	3c 0a                	cmp    $0xa,%al
 8049d3b:	74 16                	je     8049d53 <check+0x3c>
 8049d3d:	83 c1 08             	add    $0x8,%ecx
 8049d40:	83 f9 20             	cmp    $0x20,%ecx
 8049d43:	75 f0                	jne    8049d35 <check+0x1e>
 8049d45:	b8 01 00 00 00       	mov    $0x1,%eax
 8049d4a:	5d                   	pop    %ebp
 8049d4b:	c3                   	ret    
 8049d4c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d51:	eb f7                	jmp    8049d4a <check+0x33>
 8049d53:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d58:	eb f0                	jmp    8049d4a <check+0x33>

08049d5a <gencookie>:
 8049d5a:	55                   	push   %ebp
 8049d5b:	89 e5                	mov    %esp,%ebp
 8049d5d:	53                   	push   %ebx
 8049d5e:	83 ec 04             	sub    $0x4,%esp
 8049d61:	ff 75 08             	pushl  0x8(%ebp)
 8049d64:	e8 81 ff ff ff       	call   8049cea <hash>
 8049d69:	83 ec 08             	sub    $0x8,%esp
 8049d6c:	50                   	push   %eax
 8049d6d:	e8 ce ea ff ff       	call   8048840 <srand@plt>
 8049d72:	83 c4 10             	add    $0x10,%esp
 8049d75:	e8 66 eb ff ff       	call   80488e0 <rand@plt>
 8049d7a:	89 c3                	mov    %eax,%ebx
 8049d7c:	83 ec 0c             	sub    $0xc,%esp
 8049d7f:	50                   	push   %eax
 8049d80:	e8 92 ff ff ff       	call   8049d17 <check>
 8049d85:	83 c4 10             	add    $0x10,%esp
 8049d88:	85 c0                	test   %eax,%eax
 8049d8a:	74 e9                	je     8049d75 <gencookie+0x1b>
 8049d8c:	89 d8                	mov    %ebx,%eax
 8049d8e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049d91:	c9                   	leave  
 8049d92:	c3                   	ret    
 8049d93:	66 90                	xchg   %ax,%ax
 8049d95:	66 90                	xchg   %ax,%ax
 8049d97:	66 90                	xchg   %ax,%ax
 8049d99:	66 90                	xchg   %ax,%ax
 8049d9b:	66 90                	xchg   %ax,%ax
 8049d9d:	66 90                	xchg   %ax,%ax
 8049d9f:	90                   	nop

08049da0 <__libc_csu_init>:
 8049da0:	55                   	push   %ebp
 8049da1:	57                   	push   %edi
 8049da2:	56                   	push   %esi
 8049da3:	53                   	push   %ebx
 8049da4:	e8 07 ec ff ff       	call   80489b0 <__x86.get_pc_thunk.bx>
 8049da9:	81 c3 57 22 00 00    	add    $0x2257,%ebx
 8049daf:	83 ec 0c             	sub    $0xc,%esp
 8049db2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8049db6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8049dbc:	e8 77 e9 ff ff       	call   8048738 <_init>
 8049dc1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049dc7:	29 c6                	sub    %eax,%esi
 8049dc9:	c1 fe 02             	sar    $0x2,%esi
 8049dcc:	85 f6                	test   %esi,%esi
 8049dce:	74 25                	je     8049df5 <__libc_csu_init+0x55>
 8049dd0:	31 ff                	xor    %edi,%edi
 8049dd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049dd8:	83 ec 04             	sub    $0x4,%esp
 8049ddb:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049ddf:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049de3:	55                   	push   %ebp
 8049de4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049deb:	83 c7 01             	add    $0x1,%edi
 8049dee:	83 c4 10             	add    $0x10,%esp
 8049df1:	39 fe                	cmp    %edi,%esi
 8049df3:	75 e3                	jne    8049dd8 <__libc_csu_init+0x38>
 8049df5:	83 c4 0c             	add    $0xc,%esp
 8049df8:	5b                   	pop    %ebx
 8049df9:	5e                   	pop    %esi
 8049dfa:	5f                   	pop    %edi
 8049dfb:	5d                   	pop    %ebp
 8049dfc:	c3                   	ret    
 8049dfd:	8d 76 00             	lea    0x0(%esi),%esi

08049e00 <__libc_csu_fini>:
 8049e00:	f3 c3                	repz ret 

Disassembly of section .fini:

08049e04 <_fini>:
 8049e04:	53                   	push   %ebx
 8049e05:	83 ec 08             	sub    $0x8,%esp
 8049e08:	e8 a3 eb ff ff       	call   80489b0 <__x86.get_pc_thunk.bx>
 8049e0d:	81 c3 f3 21 00 00    	add    $0x21f3,%ebx
 8049e13:	83 c4 08             	add    $0x8,%esp
 8049e16:	5b                   	pop    %ebx
 8049e17:	c3                   	ret    
