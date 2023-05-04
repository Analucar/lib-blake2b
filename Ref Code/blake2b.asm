
blake2b:     file format elf64-x86-64


Disassembly of section .init:

00000000000006b8 <_init>:
 6b8:	48 83 ec 08          	sub    $0x8,%rsp
 6bc:	48 8b 05 25 29 20 00 	mov    0x202925(%rip),%rax        # 202fe8 <__gmon_start__>
 6c3:	48 85 c0             	test   %rax,%rax
 6c6:	74 02                	je     6ca <_init+0x12>
 6c8:	ff d0                	callq  *%rax
 6ca:	48 83 c4 08          	add    $0x8,%rsp
 6ce:	c3                   	retq   

Disassembly of section .plt:

00000000000006d0 <.plt>:
 6d0:	ff 35 b2 28 20 00    	pushq  0x2028b2(%rip)        # 202f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 6d6:	ff 25 b4 28 20 00    	jmpq   *0x2028b4(%rip)        # 202f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 6dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006e0 <puts@plt>:
 6e0:	ff 25 b2 28 20 00    	jmpq   *0x2028b2(%rip)        # 202f98 <puts@GLIBC_2.2.5>
 6e6:	68 00 00 00 00       	pushq  $0x0
 6eb:	e9 e0 ff ff ff       	jmpq   6d0 <.plt>

00000000000006f0 <strlen@plt>:
 6f0:	ff 25 aa 28 20 00    	jmpq   *0x2028aa(%rip)        # 202fa0 <strlen@GLIBC_2.2.5>
 6f6:	68 01 00 00 00       	pushq  $0x1
 6fb:	e9 d0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000700 <__stack_chk_fail@plt>:
 700:	ff 25 a2 28 20 00    	jmpq   *0x2028a2(%rip)        # 202fa8 <__stack_chk_fail@GLIBC_2.4>
 706:	68 02 00 00 00       	pushq  $0x2
 70b:	e9 c0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000710 <printf@plt>:
 710:	ff 25 9a 28 20 00    	jmpq   *0x20289a(%rip)        # 202fb0 <printf@GLIBC_2.2.5>
 716:	68 03 00 00 00       	pushq  $0x3
 71b:	e9 b0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000720 <fgets@plt>:
 720:	ff 25 92 28 20 00    	jmpq   *0x202892(%rip)        # 202fb8 <fgets@GLIBC_2.2.5>
 726:	68 04 00 00 00       	pushq  $0x4
 72b:	e9 a0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000730 <calloc@plt>:
 730:	ff 25 8a 28 20 00    	jmpq   *0x20288a(%rip)        # 202fc0 <calloc@GLIBC_2.2.5>
 736:	68 05 00 00 00       	pushq  $0x5
 73b:	e9 90 ff ff ff       	jmpq   6d0 <.plt>

0000000000000740 <memcpy@plt>:
 740:	ff 25 82 28 20 00    	jmpq   *0x202882(%rip)        # 202fc8 <memcpy@GLIBC_2.14>
 746:	68 06 00 00 00       	pushq  $0x6
 74b:	e9 80 ff ff ff       	jmpq   6d0 <.plt>

0000000000000750 <fopen@plt>:
 750:	ff 25 7a 28 20 00    	jmpq   *0x20287a(%rip)        # 202fd0 <fopen@GLIBC_2.2.5>
 756:	68 07 00 00 00       	pushq  $0x7
 75b:	e9 70 ff ff ff       	jmpq   6d0 <.plt>

Disassembly of section .plt.got:

0000000000000760 <__cxa_finalize@plt>:
 760:	ff 25 92 28 20 00    	jmpq   *0x202892(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
 766:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000770 <_start>:
     770:	31 ed                	xor    %ebp,%ebp
     772:	49 89 d1             	mov    %rdx,%r9
     775:	5e                   	pop    %rsi
     776:	48 89 e2             	mov    %rsp,%rdx
     779:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     77d:	50                   	push   %rax
     77e:	54                   	push   %rsp
     77f:	4c 8d 05 4a 1b 00 00 	lea    0x1b4a(%rip),%r8        # 22d0 <__libc_csu_fini>
     786:	48 8d 0d d3 1a 00 00 	lea    0x1ad3(%rip),%rcx        # 2260 <__libc_csu_init>
     78d:	48 8d 3d 2a 19 00 00 	lea    0x192a(%rip),%rdi        # 20be <main>
     794:	ff 15 46 28 20 00    	callq  *0x202846(%rip)        # 202fe0 <__libc_start_main@GLIBC_2.2.5>
     79a:	f4                   	hlt    
     79b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000007a0 <deregister_tm_clones>:
     7a0:	48 8d 3d 69 28 20 00 	lea    0x202869(%rip),%rdi        # 203010 <__TMC_END__>
     7a7:	55                   	push   %rbp
     7a8:	48 8d 05 61 28 20 00 	lea    0x202861(%rip),%rax        # 203010 <__TMC_END__>
     7af:	48 39 f8             	cmp    %rdi,%rax
     7b2:	48 89 e5             	mov    %rsp,%rbp
     7b5:	74 19                	je     7d0 <deregister_tm_clones+0x30>
     7b7:	48 8b 05 1a 28 20 00 	mov    0x20281a(%rip),%rax        # 202fd8 <_ITM_deregisterTMCloneTable>
     7be:	48 85 c0             	test   %rax,%rax
     7c1:	74 0d                	je     7d0 <deregister_tm_clones+0x30>
     7c3:	5d                   	pop    %rbp
     7c4:	ff e0                	jmpq   *%rax
     7c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     7cd:	00 00 00 
     7d0:	5d                   	pop    %rbp
     7d1:	c3                   	retq   
     7d2:	0f 1f 40 00          	nopl   0x0(%rax)
     7d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     7dd:	00 00 00 

00000000000007e0 <register_tm_clones>:
     7e0:	48 8d 3d 29 28 20 00 	lea    0x202829(%rip),%rdi        # 203010 <__TMC_END__>
     7e7:	48 8d 35 22 28 20 00 	lea    0x202822(%rip),%rsi        # 203010 <__TMC_END__>
     7ee:	55                   	push   %rbp
     7ef:	48 29 fe             	sub    %rdi,%rsi
     7f2:	48 89 e5             	mov    %rsp,%rbp
     7f5:	48 c1 fe 03          	sar    $0x3,%rsi
     7f9:	48 89 f0             	mov    %rsi,%rax
     7fc:	48 c1 e8 3f          	shr    $0x3f,%rax
     800:	48 01 c6             	add    %rax,%rsi
     803:	48 d1 fe             	sar    %rsi
     806:	74 18                	je     820 <register_tm_clones+0x40>
     808:	48 8b 05 e1 27 20 00 	mov    0x2027e1(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
     80f:	48 85 c0             	test   %rax,%rax
     812:	74 0c                	je     820 <register_tm_clones+0x40>
     814:	5d                   	pop    %rbp
     815:	ff e0                	jmpq   *%rax
     817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     81e:	00 00 
     820:	5d                   	pop    %rbp
     821:	c3                   	retq   
     822:	0f 1f 40 00          	nopl   0x0(%rax)
     826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     82d:	00 00 00 

0000000000000830 <__do_global_dtors_aux>:
     830:	80 3d d9 27 20 00 00 	cmpb   $0x0,0x2027d9(%rip)        # 203010 <__TMC_END__>
     837:	75 2f                	jne    868 <__do_global_dtors_aux+0x38>
     839:	48 83 3d b7 27 20 00 	cmpq   $0x0,0x2027b7(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
     840:	00 
     841:	55                   	push   %rbp
     842:	48 89 e5             	mov    %rsp,%rbp
     845:	74 0c                	je     853 <__do_global_dtors_aux+0x23>
     847:	48 8b 3d ba 27 20 00 	mov    0x2027ba(%rip),%rdi        # 203008 <__dso_handle>
     84e:	e8 0d ff ff ff       	callq  760 <__cxa_finalize@plt>
     853:	e8 48 ff ff ff       	callq  7a0 <deregister_tm_clones>
     858:	c6 05 b1 27 20 00 01 	movb   $0x1,0x2027b1(%rip)        # 203010 <__TMC_END__>
     85f:	5d                   	pop    %rbp
     860:	c3                   	retq   
     861:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     868:	f3 c3                	repz retq 
     86a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000870 <frame_dummy>:
     870:	55                   	push   %rbp
     871:	48 89 e5             	mov    %rsp,%rbp
     874:	5d                   	pop    %rbp
     875:	e9 66 ff ff ff       	jmpq   7e0 <register_tm_clones>

000000000000087a <store32>:
    size_t c;       // pointer for b[]
    size_t outlen;  // digest size   
} blake2b_ctx;

/* Necessary to blake2b_long */
static void store32(void *dst, uint32_t w) {
     87a:	55                   	push   %rbp
     87b:	48 89 e5             	mov    %rsp,%rbp
     87e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     882:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    #if defined(NATIVE_LITTLE_ENDIAN)
        memcpy(dst, &w, sizeof w);
    #else
        uint8_t *p = (uint8_t *)dst;
     885:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     889:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
        *p++ = (uint8_t)w;
     88d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     891:	48 8d 50 01          	lea    0x1(%rax),%rdx
     895:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     899:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     89c:	88 10                	mov    %dl,(%rax)
        w >>= 8;
     89e:	c1 6d e4 08          	shrl   $0x8,-0x1c(%rbp)
        *p++ = (uint8_t)w;
     8a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     8a6:	48 8d 50 01          	lea    0x1(%rax),%rdx
     8aa:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     8ae:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     8b1:	88 10                	mov    %dl,(%rax)
        w >>= 8;
     8b3:	c1 6d e4 08          	shrl   $0x8,-0x1c(%rbp)
        *p++ = (uint8_t)w;
     8b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     8bb:	48 8d 50 01          	lea    0x1(%rax),%rdx
     8bf:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     8c3:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     8c6:	88 10                	mov    %dl,(%rax)
        w >>= 8;
     8c8:	c1 6d e4 08          	shrl   $0x8,-0x1c(%rbp)
        *p++ = (uint8_t)w;
     8cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     8d0:	48 8d 50 01          	lea    0x1(%rax),%rdx
     8d4:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     8d8:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     8db:	88 10                	mov    %dl,(%rax)
    #endif
}
     8dd:	90                   	nop
     8de:	5d                   	pop    %rbp
     8df:	c3                   	retq   

00000000000008e0 <blake2b_compress>:
    0x510E527FADE682D1, 0x9B05688C2B3E6C1F,
    0x1F83D9ABFB41BD6B, 0x5BE0CD19137E2179
};


static void blake2b_compress(blake2b_ctx *ctx, int last)   {
     8e0:	55                   	push   %rbp
     8e1:	48 89 e5             	mov    %rsp,%rbp
     8e4:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
     8eb:	48 89 bd 18 fe ff ff 	mov    %rdi,-0x1e8(%rbp)
     8f2:	89 b5 14 fe ff ff    	mov    %esi,-0x1ec(%rbp)
     8f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     8ff:	00 00 
     901:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     905:	31 c0                	xor    %eax,%eax
    //printf("Start Compress. \n");
    const uint8_t sigma[12][16] = {
     907:	c6 85 30 ff ff ff 00 	movb   $0x0,-0xd0(%rbp)
     90e:	c6 85 31 ff ff ff 01 	movb   $0x1,-0xcf(%rbp)
     915:	c6 85 32 ff ff ff 02 	movb   $0x2,-0xce(%rbp)
     91c:	c6 85 33 ff ff ff 03 	movb   $0x3,-0xcd(%rbp)
     923:	c6 85 34 ff ff ff 04 	movb   $0x4,-0xcc(%rbp)
     92a:	c6 85 35 ff ff ff 05 	movb   $0x5,-0xcb(%rbp)
     931:	c6 85 36 ff ff ff 06 	movb   $0x6,-0xca(%rbp)
     938:	c6 85 37 ff ff ff 07 	movb   $0x7,-0xc9(%rbp)
     93f:	c6 85 38 ff ff ff 08 	movb   $0x8,-0xc8(%rbp)
     946:	c6 85 39 ff ff ff 09 	movb   $0x9,-0xc7(%rbp)
     94d:	c6 85 3a ff ff ff 0a 	movb   $0xa,-0xc6(%rbp)
     954:	c6 85 3b ff ff ff 0b 	movb   $0xb,-0xc5(%rbp)
     95b:	c6 85 3c ff ff ff 0c 	movb   $0xc,-0xc4(%rbp)
     962:	c6 85 3d ff ff ff 0d 	movb   $0xd,-0xc3(%rbp)
     969:	c6 85 3e ff ff ff 0e 	movb   $0xe,-0xc2(%rbp)
     970:	c6 85 3f ff ff ff 0f 	movb   $0xf,-0xc1(%rbp)
     977:	c6 85 40 ff ff ff 0e 	movb   $0xe,-0xc0(%rbp)
     97e:	c6 85 41 ff ff ff 0a 	movb   $0xa,-0xbf(%rbp)
     985:	c6 85 42 ff ff ff 04 	movb   $0x4,-0xbe(%rbp)
     98c:	c6 85 43 ff ff ff 08 	movb   $0x8,-0xbd(%rbp)
     993:	c6 85 44 ff ff ff 09 	movb   $0x9,-0xbc(%rbp)
     99a:	c6 85 45 ff ff ff 0f 	movb   $0xf,-0xbb(%rbp)
     9a1:	c6 85 46 ff ff ff 0d 	movb   $0xd,-0xba(%rbp)
     9a8:	c6 85 47 ff ff ff 06 	movb   $0x6,-0xb9(%rbp)
     9af:	c6 85 48 ff ff ff 01 	movb   $0x1,-0xb8(%rbp)
     9b6:	c6 85 49 ff ff ff 0c 	movb   $0xc,-0xb7(%rbp)
     9bd:	c6 85 4a ff ff ff 00 	movb   $0x0,-0xb6(%rbp)
     9c4:	c6 85 4b ff ff ff 02 	movb   $0x2,-0xb5(%rbp)
     9cb:	c6 85 4c ff ff ff 0b 	movb   $0xb,-0xb4(%rbp)
     9d2:	c6 85 4d ff ff ff 07 	movb   $0x7,-0xb3(%rbp)
     9d9:	c6 85 4e ff ff ff 05 	movb   $0x5,-0xb2(%rbp)
     9e0:	c6 85 4f ff ff ff 03 	movb   $0x3,-0xb1(%rbp)
     9e7:	c6 85 50 ff ff ff 0b 	movb   $0xb,-0xb0(%rbp)
     9ee:	c6 85 51 ff ff ff 08 	movb   $0x8,-0xaf(%rbp)
     9f5:	c6 85 52 ff ff ff 0c 	movb   $0xc,-0xae(%rbp)
     9fc:	c6 85 53 ff ff ff 00 	movb   $0x0,-0xad(%rbp)
     a03:	c6 85 54 ff ff ff 05 	movb   $0x5,-0xac(%rbp)
     a0a:	c6 85 55 ff ff ff 02 	movb   $0x2,-0xab(%rbp)
     a11:	c6 85 56 ff ff ff 0f 	movb   $0xf,-0xaa(%rbp)
     a18:	c6 85 57 ff ff ff 0d 	movb   $0xd,-0xa9(%rbp)
     a1f:	c6 85 58 ff ff ff 0a 	movb   $0xa,-0xa8(%rbp)
     a26:	c6 85 59 ff ff ff 0e 	movb   $0xe,-0xa7(%rbp)
     a2d:	c6 85 5a ff ff ff 03 	movb   $0x3,-0xa6(%rbp)
     a34:	c6 85 5b ff ff ff 06 	movb   $0x6,-0xa5(%rbp)
     a3b:	c6 85 5c ff ff ff 07 	movb   $0x7,-0xa4(%rbp)
     a42:	c6 85 5d ff ff ff 01 	movb   $0x1,-0xa3(%rbp)
     a49:	c6 85 5e ff ff ff 09 	movb   $0x9,-0xa2(%rbp)
     a50:	c6 85 5f ff ff ff 04 	movb   $0x4,-0xa1(%rbp)
     a57:	c6 85 60 ff ff ff 07 	movb   $0x7,-0xa0(%rbp)
     a5e:	c6 85 61 ff ff ff 09 	movb   $0x9,-0x9f(%rbp)
     a65:	c6 85 62 ff ff ff 03 	movb   $0x3,-0x9e(%rbp)
     a6c:	c6 85 63 ff ff ff 01 	movb   $0x1,-0x9d(%rbp)
     a73:	c6 85 64 ff ff ff 0d 	movb   $0xd,-0x9c(%rbp)
     a7a:	c6 85 65 ff ff ff 0c 	movb   $0xc,-0x9b(%rbp)
     a81:	c6 85 66 ff ff ff 0b 	movb   $0xb,-0x9a(%rbp)
     a88:	c6 85 67 ff ff ff 0e 	movb   $0xe,-0x99(%rbp)
     a8f:	c6 85 68 ff ff ff 02 	movb   $0x2,-0x98(%rbp)
     a96:	c6 85 69 ff ff ff 06 	movb   $0x6,-0x97(%rbp)
     a9d:	c6 85 6a ff ff ff 05 	movb   $0x5,-0x96(%rbp)
     aa4:	c6 85 6b ff ff ff 0a 	movb   $0xa,-0x95(%rbp)
     aab:	c6 85 6c ff ff ff 04 	movb   $0x4,-0x94(%rbp)
     ab2:	c6 85 6d ff ff ff 00 	movb   $0x0,-0x93(%rbp)
     ab9:	c6 85 6e ff ff ff 0f 	movb   $0xf,-0x92(%rbp)
     ac0:	c6 85 6f ff ff ff 08 	movb   $0x8,-0x91(%rbp)
     ac7:	c6 85 70 ff ff ff 09 	movb   $0x9,-0x90(%rbp)
     ace:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%rbp)
     ad5:	c6 85 72 ff ff ff 05 	movb   $0x5,-0x8e(%rbp)
     adc:	c6 85 73 ff ff ff 07 	movb   $0x7,-0x8d(%rbp)
     ae3:	c6 85 74 ff ff ff 02 	movb   $0x2,-0x8c(%rbp)
     aea:	c6 85 75 ff ff ff 04 	movb   $0x4,-0x8b(%rbp)
     af1:	c6 85 76 ff ff ff 0a 	movb   $0xa,-0x8a(%rbp)
     af8:	c6 85 77 ff ff ff 0f 	movb   $0xf,-0x89(%rbp)
     aff:	c6 85 78 ff ff ff 0e 	movb   $0xe,-0x88(%rbp)
     b06:	c6 85 79 ff ff ff 01 	movb   $0x1,-0x87(%rbp)
     b0d:	c6 85 7a ff ff ff 0b 	movb   $0xb,-0x86(%rbp)
     b14:	c6 85 7b ff ff ff 0c 	movb   $0xc,-0x85(%rbp)
     b1b:	c6 85 7c ff ff ff 06 	movb   $0x6,-0x84(%rbp)
     b22:	c6 85 7d ff ff ff 08 	movb   $0x8,-0x83(%rbp)
     b29:	c6 85 7e ff ff ff 03 	movb   $0x3,-0x82(%rbp)
     b30:	c6 85 7f ff ff ff 0d 	movb   $0xd,-0x81(%rbp)
     b37:	c6 45 80 02          	movb   $0x2,-0x80(%rbp)
     b3b:	c6 45 81 0c          	movb   $0xc,-0x7f(%rbp)
     b3f:	c6 45 82 06          	movb   $0x6,-0x7e(%rbp)
     b43:	c6 45 83 0a          	movb   $0xa,-0x7d(%rbp)
     b47:	c6 45 84 00          	movb   $0x0,-0x7c(%rbp)
     b4b:	c6 45 85 0b          	movb   $0xb,-0x7b(%rbp)
     b4f:	c6 45 86 08          	movb   $0x8,-0x7a(%rbp)
     b53:	c6 45 87 03          	movb   $0x3,-0x79(%rbp)
     b57:	c6 45 88 04          	movb   $0x4,-0x78(%rbp)
     b5b:	c6 45 89 0d          	movb   $0xd,-0x77(%rbp)
     b5f:	c6 45 8a 07          	movb   $0x7,-0x76(%rbp)
     b63:	c6 45 8b 05          	movb   $0x5,-0x75(%rbp)
     b67:	c6 45 8c 0f          	movb   $0xf,-0x74(%rbp)
     b6b:	c6 45 8d 0e          	movb   $0xe,-0x73(%rbp)
     b6f:	c6 45 8e 01          	movb   $0x1,-0x72(%rbp)
     b73:	c6 45 8f 09          	movb   $0x9,-0x71(%rbp)
     b77:	c6 45 90 0c          	movb   $0xc,-0x70(%rbp)
     b7b:	c6 45 91 05          	movb   $0x5,-0x6f(%rbp)
     b7f:	c6 45 92 01          	movb   $0x1,-0x6e(%rbp)
     b83:	c6 45 93 0f          	movb   $0xf,-0x6d(%rbp)
     b87:	c6 45 94 0e          	movb   $0xe,-0x6c(%rbp)
     b8b:	c6 45 95 0d          	movb   $0xd,-0x6b(%rbp)
     b8f:	c6 45 96 04          	movb   $0x4,-0x6a(%rbp)
     b93:	c6 45 97 0a          	movb   $0xa,-0x69(%rbp)
     b97:	c6 45 98 00          	movb   $0x0,-0x68(%rbp)
     b9b:	c6 45 99 07          	movb   $0x7,-0x67(%rbp)
     b9f:	c6 45 9a 06          	movb   $0x6,-0x66(%rbp)
     ba3:	c6 45 9b 03          	movb   $0x3,-0x65(%rbp)
     ba7:	c6 45 9c 09          	movb   $0x9,-0x64(%rbp)
     bab:	c6 45 9d 02          	movb   $0x2,-0x63(%rbp)
     baf:	c6 45 9e 08          	movb   $0x8,-0x62(%rbp)
     bb3:	c6 45 9f 0b          	movb   $0xb,-0x61(%rbp)
     bb7:	c6 45 a0 0d          	movb   $0xd,-0x60(%rbp)
     bbb:	c6 45 a1 0b          	movb   $0xb,-0x5f(%rbp)
     bbf:	c6 45 a2 07          	movb   $0x7,-0x5e(%rbp)
     bc3:	c6 45 a3 0e          	movb   $0xe,-0x5d(%rbp)
     bc7:	c6 45 a4 0c          	movb   $0xc,-0x5c(%rbp)
     bcb:	c6 45 a5 01          	movb   $0x1,-0x5b(%rbp)
     bcf:	c6 45 a6 03          	movb   $0x3,-0x5a(%rbp)
     bd3:	c6 45 a7 09          	movb   $0x9,-0x59(%rbp)
     bd7:	c6 45 a8 05          	movb   $0x5,-0x58(%rbp)
     bdb:	c6 45 a9 00          	movb   $0x0,-0x57(%rbp)
     bdf:	c6 45 aa 0f          	movb   $0xf,-0x56(%rbp)
     be3:	c6 45 ab 04          	movb   $0x4,-0x55(%rbp)
     be7:	c6 45 ac 08          	movb   $0x8,-0x54(%rbp)
     beb:	c6 45 ad 06          	movb   $0x6,-0x53(%rbp)
     bef:	c6 45 ae 02          	movb   $0x2,-0x52(%rbp)
     bf3:	c6 45 af 0a          	movb   $0xa,-0x51(%rbp)
     bf7:	c6 45 b0 06          	movb   $0x6,-0x50(%rbp)
     bfb:	c6 45 b1 0f          	movb   $0xf,-0x4f(%rbp)
     bff:	c6 45 b2 0e          	movb   $0xe,-0x4e(%rbp)
     c03:	c6 45 b3 09          	movb   $0x9,-0x4d(%rbp)
     c07:	c6 45 b4 0b          	movb   $0xb,-0x4c(%rbp)
     c0b:	c6 45 b5 03          	movb   $0x3,-0x4b(%rbp)
     c0f:	c6 45 b6 00          	movb   $0x0,-0x4a(%rbp)
     c13:	c6 45 b7 08          	movb   $0x8,-0x49(%rbp)
     c17:	c6 45 b8 0c          	movb   $0xc,-0x48(%rbp)
     c1b:	c6 45 b9 02          	movb   $0x2,-0x47(%rbp)
     c1f:	c6 45 ba 0d          	movb   $0xd,-0x46(%rbp)
     c23:	c6 45 bb 07          	movb   $0x7,-0x45(%rbp)
     c27:	c6 45 bc 01          	movb   $0x1,-0x44(%rbp)
     c2b:	c6 45 bd 04          	movb   $0x4,-0x43(%rbp)
     c2f:	c6 45 be 0a          	movb   $0xa,-0x42(%rbp)
     c33:	c6 45 bf 05          	movb   $0x5,-0x41(%rbp)
     c37:	c6 45 c0 0a          	movb   $0xa,-0x40(%rbp)
     c3b:	c6 45 c1 02          	movb   $0x2,-0x3f(%rbp)
     c3f:	c6 45 c2 08          	movb   $0x8,-0x3e(%rbp)
     c43:	c6 45 c3 04          	movb   $0x4,-0x3d(%rbp)
     c47:	c6 45 c4 07          	movb   $0x7,-0x3c(%rbp)
     c4b:	c6 45 c5 06          	movb   $0x6,-0x3b(%rbp)
     c4f:	c6 45 c6 01          	movb   $0x1,-0x3a(%rbp)
     c53:	c6 45 c7 05          	movb   $0x5,-0x39(%rbp)
     c57:	c6 45 c8 0f          	movb   $0xf,-0x38(%rbp)
     c5b:	c6 45 c9 0b          	movb   $0xb,-0x37(%rbp)
     c5f:	c6 45 ca 09          	movb   $0x9,-0x36(%rbp)
     c63:	c6 45 cb 0e          	movb   $0xe,-0x35(%rbp)
     c67:	c6 45 cc 03          	movb   $0x3,-0x34(%rbp)
     c6b:	c6 45 cd 0c          	movb   $0xc,-0x33(%rbp)
     c6f:	c6 45 ce 0d          	movb   $0xd,-0x32(%rbp)
     c73:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
     c77:	c6 45 d0 00          	movb   $0x0,-0x30(%rbp)
     c7b:	c6 45 d1 01          	movb   $0x1,-0x2f(%rbp)
     c7f:	c6 45 d2 02          	movb   $0x2,-0x2e(%rbp)
     c83:	c6 45 d3 03          	movb   $0x3,-0x2d(%rbp)
     c87:	c6 45 d4 04          	movb   $0x4,-0x2c(%rbp)
     c8b:	c6 45 d5 05          	movb   $0x5,-0x2b(%rbp)
     c8f:	c6 45 d6 06          	movb   $0x6,-0x2a(%rbp)
     c93:	c6 45 d7 07          	movb   $0x7,-0x29(%rbp)
     c97:	c6 45 d8 08          	movb   $0x8,-0x28(%rbp)
     c9b:	c6 45 d9 09          	movb   $0x9,-0x27(%rbp)
     c9f:	c6 45 da 0a          	movb   $0xa,-0x26(%rbp)
     ca3:	c6 45 db 0b          	movb   $0xb,-0x25(%rbp)
     ca7:	c6 45 dc 0c          	movb   $0xc,-0x24(%rbp)
     cab:	c6 45 dd 0d          	movb   $0xd,-0x23(%rbp)
     caf:	c6 45 de 0e          	movb   $0xe,-0x22(%rbp)
     cb3:	c6 45 df 0f          	movb   $0xf,-0x21(%rbp)
     cb7:	c6 45 e0 0e          	movb   $0xe,-0x20(%rbp)
     cbb:	c6 45 e1 0a          	movb   $0xa,-0x1f(%rbp)
     cbf:	c6 45 e2 04          	movb   $0x4,-0x1e(%rbp)
     cc3:	c6 45 e3 08          	movb   $0x8,-0x1d(%rbp)
     cc7:	c6 45 e4 09          	movb   $0x9,-0x1c(%rbp)
     ccb:	c6 45 e5 0f          	movb   $0xf,-0x1b(%rbp)
     ccf:	c6 45 e6 0d          	movb   $0xd,-0x1a(%rbp)
     cd3:	c6 45 e7 06          	movb   $0x6,-0x19(%rbp)
     cd7:	c6 45 e8 01          	movb   $0x1,-0x18(%rbp)
     cdb:	c6 45 e9 0c          	movb   $0xc,-0x17(%rbp)
     cdf:	c6 45 ea 00          	movb   $0x0,-0x16(%rbp)
     ce3:	c6 45 eb 02          	movb   $0x2,-0x15(%rbp)
     ce7:	c6 45 ec 0b          	movb   $0xb,-0x14(%rbp)
     ceb:	c6 45 ed 07          	movb   $0x7,-0x13(%rbp)
     cef:	c6 45 ee 05          	movb   $0x5,-0x12(%rbp)
     cf3:	c6 45 ef 03          	movb   $0x3,-0x11(%rbp)
    };

    int i;
    uint64_t v[16], m[16];

    for (i = 0; i < 8; i++) {           // init work variables
     cf7:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     cfe:	00 00 00 
     d01:	eb 5e                	jmp    d61 <blake2b_compress+0x481>
        v[i] = ctx->h[i];
     d03:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d0a:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
     d10:	48 63 d2             	movslq %edx,%rdx
     d13:	48 83 c2 10          	add    $0x10,%rdx
     d17:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
     d1b:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d21:	48 98                	cltq   
     d23:	48 89 94 c5 30 fe ff 	mov    %rdx,-0x1d0(%rbp,%rax,8)
     d2a:	ff 
        v[i + 8] = blake2b_iv[i];
     d2b:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d31:	8d 48 08             	lea    0x8(%rax),%ecx
     d34:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d3a:	48 98                	cltq   
     d3c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     d43:	00 
     d44:	48 8d 05 b5 15 00 00 	lea    0x15b5(%rip),%rax        # 2300 <blake2b_iv>
     d4b:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     d4f:	48 63 c1             	movslq %ecx,%rax
     d52:	48 89 94 c5 30 fe ff 	mov    %rdx,-0x1d0(%rbp,%rax,8)
     d59:	ff 
    for (i = 0; i < 8; i++) {           // init work variables
     d5a:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
     d61:	83 bd 2c fe ff ff 07 	cmpl   $0x7,-0x1d4(%rbp)
     d68:	7e 99                	jle    d03 <blake2b_compress+0x423>
    }

    v[12] ^= ctx->t[0];                 // low 64 bits of offset
     d6a:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     d71:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d78:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
     d7f:	48 31 d0             	xor    %rdx,%rax
     d82:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    v[13] ^= ctx->t[1];                 // high 64 bits
     d89:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
     d90:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d97:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
     d9e:	48 31 d0             	xor    %rdx,%rax
     da1:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    if (last)                           // last block flag set ?
     da8:	83 bd 14 fe ff ff 00 	cmpl   $0x0,-0x1ec(%rbp)
     daf:	74 11                	je     dc2 <blake2b_compress+0x4e2>
        v[14] = ~v[14];
     db1:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
     db8:	48 f7 d0             	not    %rax
     dbb:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)

    for (i = 0; i < 16; i++)            // get little-endian words
     dc2:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     dc9:	00 00 00 
     dcc:	e9 47 01 00 00       	jmpq   f18 <blake2b_compress+0x638>
        m[i] = B2B_GET64(&ctx->b[8 * i]);
     dd1:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     dd7:	c1 e0 03             	shl    $0x3,%eax
     dda:	48 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%rdx
     de1:	48 98                	cltq   
     de3:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     de7:	0f b6 c0             	movzbl %al,%eax
     dea:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
     df0:	c1 e2 03             	shl    $0x3,%edx
     df3:	48 63 ca             	movslq %edx,%rcx
     df6:	48 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%rdx
     dfd:	48 01 ca             	add    %rcx,%rdx
     e00:	48 83 c2 01          	add    $0x1,%rdx
     e04:	0f b6 12             	movzbl (%rdx),%edx
     e07:	0f b6 d2             	movzbl %dl,%edx
     e0a:	48 c1 e2 08          	shl    $0x8,%rdx
     e0e:	48 31 d0             	xor    %rdx,%rax
     e11:	48 89 c1             	mov    %rax,%rcx
     e14:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     e1a:	c1 e0 03             	shl    $0x3,%eax
     e1d:	48 63 d0             	movslq %eax,%rdx
     e20:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     e27:	48 01 d0             	add    %rdx,%rax
     e2a:	48 83 c0 02          	add    $0x2,%rax
     e2e:	0f b6 00             	movzbl (%rax),%eax
     e31:	0f b6 c0             	movzbl %al,%eax
     e34:	48 c1 e0 10          	shl    $0x10,%rax
     e38:	48 31 c1             	xor    %rax,%rcx
     e3b:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     e41:	c1 e0 03             	shl    $0x3,%eax
     e44:	48 63 d0             	movslq %eax,%rdx
     e47:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     e4e:	48 01 d0             	add    %rdx,%rax
     e51:	48 83 c0 03          	add    $0x3,%rax
     e55:	0f b6 00             	movzbl (%rax),%eax
     e58:	0f b6 c0             	movzbl %al,%eax
     e5b:	48 c1 e0 18          	shl    $0x18,%rax
     e5f:	48 31 c1             	xor    %rax,%rcx
     e62:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     e68:	c1 e0 03             	shl    $0x3,%eax
     e6b:	48 63 d0             	movslq %eax,%rdx
     e6e:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     e75:	48 01 d0             	add    %rdx,%rax
     e78:	48 83 c0 04          	add    $0x4,%rax
     e7c:	0f b6 00             	movzbl (%rax),%eax
     e7f:	0f b6 c0             	movzbl %al,%eax
     e82:	48 c1 e0 20          	shl    $0x20,%rax
     e86:	48 31 c1             	xor    %rax,%rcx
     e89:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     e8f:	c1 e0 03             	shl    $0x3,%eax
     e92:	48 63 d0             	movslq %eax,%rdx
     e95:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     e9c:	48 01 d0             	add    %rdx,%rax
     e9f:	48 83 c0 05          	add    $0x5,%rax
     ea3:	0f b6 00             	movzbl (%rax),%eax
     ea6:	0f b6 c0             	movzbl %al,%eax
     ea9:	48 c1 e0 28          	shl    $0x28,%rax
     ead:	48 31 c1             	xor    %rax,%rcx
     eb0:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     eb6:	c1 e0 03             	shl    $0x3,%eax
     eb9:	48 63 d0             	movslq %eax,%rdx
     ebc:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     ec3:	48 01 d0             	add    %rdx,%rax
     ec6:	48 83 c0 06          	add    $0x6,%rax
     eca:	0f b6 00             	movzbl (%rax),%eax
     ecd:	0f b6 c0             	movzbl %al,%eax
     ed0:	48 c1 e0 30          	shl    $0x30,%rax
     ed4:	48 31 c1             	xor    %rax,%rcx
     ed7:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     edd:	c1 e0 03             	shl    $0x3,%eax
     ee0:	48 63 d0             	movslq %eax,%rdx
     ee3:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     eea:	48 01 d0             	add    %rdx,%rax
     eed:	48 83 c0 07          	add    $0x7,%rax
     ef1:	0f b6 00             	movzbl (%rax),%eax
     ef4:	0f b6 c0             	movzbl %al,%eax
     ef7:	48 c1 e0 38          	shl    $0x38,%rax
     efb:	48 31 c1             	xor    %rax,%rcx
     efe:	48 89 ca             	mov    %rcx,%rdx
     f01:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     f07:	48 98                	cltq   
     f09:	48 89 94 c5 b0 fe ff 	mov    %rdx,-0x150(%rbp,%rax,8)
     f10:	ff 
    for (i = 0; i < 16; i++)            // get little-endian words
     f11:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
     f18:	83 bd 2c fe ff ff 0f 	cmpl   $0xf,-0x1d4(%rbp)
     f1f:	0f 8e ac fe ff ff    	jle    dd1 <blake2b_compress+0x4f1>


    for (i = 0; i < 12; i++) { // twelve rounds
     f25:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     f2c:	00 00 00 
     f2f:	e9 ff 08 00 00       	jmpq   1833 <blake2b_compress+0xf53>
    
        B2B_G( 0, 4,  8, 12, m[sigma[i][0]], m[sigma[i][ 1]]);
     f34:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
     f3b:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     f42:	48 01 c2             	add    %rax,%rdx
     f45:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     f4b:	48 98                	cltq   
     f4d:	48 c1 e0 04          	shl    $0x4,%rax
     f51:	48 01 e8             	add    %rbp,%rax
     f54:	48 2d d0 00 00 00    	sub    $0xd0,%rax
     f5a:	0f b6 00             	movzbl (%rax),%eax
     f5d:	0f b6 c0             	movzbl %al,%eax
     f60:	48 98                	cltq   
     f62:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     f69:	ff 
     f6a:	48 01 d0             	add    %rdx,%rax
     f6d:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
     f74:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     f7b:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
     f82:	48 31 d0             	xor    %rdx,%rax
     f85:	48 c1 c0 20          	rol    $0x20,%rax
     f89:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
     f90:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
     f97:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
     f9e:	48 01 d0             	add    %rdx,%rax
     fa1:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
     fa8:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
     faf:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
     fb6:	48 31 d0             	xor    %rdx,%rax
     fb9:	48 c1 c8 18          	ror    $0x18,%rax
     fbd:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
     fc4:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
     fcb:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     fd2:	48 01 c2             	add    %rax,%rdx
     fd5:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     fdb:	48 98                	cltq   
     fdd:	48 c1 e0 04          	shl    $0x4,%rax
     fe1:	48 01 e8             	add    %rbp,%rax
     fe4:	48 2d cf 00 00 00    	sub    $0xcf,%rax
     fea:	0f b6 00             	movzbl (%rax),%eax
     fed:	0f b6 c0             	movzbl %al,%eax
     ff0:	48 98                	cltq   
     ff2:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     ff9:	ff 
     ffa:	48 01 d0             	add    %rdx,%rax
     ffd:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    1004:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
    100b:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    1012:	48 31 d0             	xor    %rdx,%rax
    1015:	48 c1 c8 10          	ror    $0x10,%rax
    1019:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    1020:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
    1027:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
    102e:	48 01 d0             	add    %rdx,%rax
    1031:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    1038:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    103f:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    1046:	48 31 d0             	xor    %rdx,%rax
    1049:	48 d1 c0             	rol    %rax
    104c:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)

        B2B_G( 1, 5,  9, 13, m[sigma[i][2]], m[sigma[i][ 3]]);
    1053:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    105a:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    1061:	48 01 c2             	add    %rax,%rdx
    1064:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    106a:	48 98                	cltq   
    106c:	48 c1 e0 04          	shl    $0x4,%rax
    1070:	48 01 e8             	add    %rbp,%rax
    1073:	48 2d ce 00 00 00    	sub    $0xce,%rax
    1079:	0f b6 00             	movzbl (%rax),%eax
    107c:	0f b6 c0             	movzbl %al,%eax
    107f:	48 98                	cltq   
    1081:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1088:	ff 
    1089:	48 01 d0             	add    %rdx,%rax
    108c:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    1093:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    109a:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    10a1:	48 31 d0             	xor    %rdx,%rax
    10a4:	48 c1 c0 20          	rol    $0x20,%rax
    10a8:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    10af:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    10b6:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    10bd:	48 01 d0             	add    %rdx,%rax
    10c0:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    10c7:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    10ce:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    10d5:	48 31 d0             	xor    %rdx,%rax
    10d8:	48 c1 c8 18          	ror    $0x18,%rax
    10dc:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    10e3:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    10ea:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    10f1:	48 01 c2             	add    %rax,%rdx
    10f4:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    10fa:	48 98                	cltq   
    10fc:	48 c1 e0 04          	shl    $0x4,%rax
    1100:	48 01 e8             	add    %rbp,%rax
    1103:	48 2d cd 00 00 00    	sub    $0xcd,%rax
    1109:	0f b6 00             	movzbl (%rax),%eax
    110c:	0f b6 c0             	movzbl %al,%eax
    110f:	48 98                	cltq   
    1111:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1118:	ff 
    1119:	48 01 d0             	add    %rdx,%rax
    111c:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    1123:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    112a:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    1131:	48 31 d0             	xor    %rdx,%rax
    1134:	48 c1 c8 10          	ror    $0x10,%rax
    1138:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    113f:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    1146:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    114d:	48 01 d0             	add    %rdx,%rax
    1150:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    1157:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    115e:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1165:	48 31 d0             	xor    %rdx,%rax
    1168:	48 d1 c0             	rol    %rax
    116b:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    
        B2B_G( 2, 6, 10, 14, m[sigma[i][4]], m[sigma[i][ 5]]);
    1172:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    1179:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1180:	48 01 c2             	add    %rax,%rdx
    1183:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1189:	48 98                	cltq   
    118b:	48 c1 e0 04          	shl    $0x4,%rax
    118f:	48 01 e8             	add    %rbp,%rax
    1192:	48 2d cc 00 00 00    	sub    $0xcc,%rax
    1198:	0f b6 00             	movzbl (%rax),%eax
    119b:	0f b6 c0             	movzbl %al,%eax
    119e:	48 98                	cltq   
    11a0:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    11a7:	ff 
    11a8:	48 01 d0             	add    %rdx,%rax
    11ab:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    11b2:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    11b9:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    11c0:	48 31 d0             	xor    %rdx,%rax
    11c3:	48 c1 c0 20          	rol    $0x20,%rax
    11c7:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    11ce:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    11d5:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    11dc:	48 01 d0             	add    %rdx,%rax
    11df:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    11e6:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    11ed:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    11f4:	48 31 d0             	xor    %rdx,%rax
    11f7:	48 c1 c8 18          	ror    $0x18,%rax
    11fb:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    1202:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    1209:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1210:	48 01 c2             	add    %rax,%rdx
    1213:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1219:	48 98                	cltq   
    121b:	48 c1 e0 04          	shl    $0x4,%rax
    121f:	48 01 e8             	add    %rbp,%rax
    1222:	48 2d cb 00 00 00    	sub    $0xcb,%rax
    1228:	0f b6 00             	movzbl (%rax),%eax
    122b:	0f b6 c0             	movzbl %al,%eax
    122e:	48 98                	cltq   
    1230:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1237:	ff 
    1238:	48 01 d0             	add    %rdx,%rax
    123b:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    1242:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    1249:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    1250:	48 31 d0             	xor    %rdx,%rax
    1253:	48 c1 c8 10          	ror    $0x10,%rax
    1257:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    125e:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    1265:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    126c:	48 01 d0             	add    %rdx,%rax
    126f:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1276:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    127d:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    1284:	48 31 d0             	xor    %rdx,%rax
    1287:	48 d1 c0             	rol    %rax
    128a:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
       
        B2B_G( 3, 7, 11, 15, m[sigma[i][6]], m[sigma[i][ 7]]);
    1291:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1298:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    129f:	48 01 c2             	add    %rax,%rdx
    12a2:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    12a8:	48 98                	cltq   
    12aa:	48 c1 e0 04          	shl    $0x4,%rax
    12ae:	48 01 e8             	add    %rbp,%rax
    12b1:	48 2d ca 00 00 00    	sub    $0xca,%rax
    12b7:	0f b6 00             	movzbl (%rax),%eax
    12ba:	0f b6 c0             	movzbl %al,%eax
    12bd:	48 98                	cltq   
    12bf:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    12c6:	ff 
    12c7:	48 01 d0             	add    %rdx,%rax
    12ca:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    12d1:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    12d8:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    12df:	48 31 d0             	xor    %rdx,%rax
    12e2:	48 c1 c0 20          	rol    $0x20,%rax
    12e6:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    12ed:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    12f4:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    12fb:	48 01 d0             	add    %rdx,%rax
    12fe:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    1305:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    130c:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1313:	48 31 d0             	xor    %rdx,%rax
    1316:	48 c1 c8 18          	ror    $0x18,%rax
    131a:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
    1321:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1328:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    132f:	48 01 c2             	add    %rax,%rdx
    1332:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1338:	48 98                	cltq   
    133a:	48 c1 e0 04          	shl    $0x4,%rax
    133e:	48 01 e8             	add    %rbp,%rax
    1341:	48 2d c9 00 00 00    	sub    $0xc9,%rax
    1347:	0f b6 00             	movzbl (%rax),%eax
    134a:	0f b6 c0             	movzbl %al,%eax
    134d:	48 98                	cltq   
    134f:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1356:	ff 
    1357:	48 01 d0             	add    %rdx,%rax
    135a:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    1361:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    1368:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    136f:	48 31 d0             	xor    %rdx,%rax
    1372:	48 c1 c8 10          	ror    $0x10,%rax
    1376:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    137d:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    1384:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    138b:	48 01 d0             	add    %rdx,%rax
    138e:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    1395:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    139c:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    13a3:	48 31 d0             	xor    %rdx,%rax
    13a6:	48 d1 c0             	rol    %rax
    13a9:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
        
        B2B_G( 0, 5, 10, 15, m[sigma[i][8]], m[sigma[i][ 9]]);
    13b0:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
    13b7:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    13be:	48 01 c2             	add    %rax,%rdx
    13c1:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    13c7:	48 98                	cltq   
    13c9:	48 c1 e0 04          	shl    $0x4,%rax
    13cd:	48 01 e8             	add    %rbp,%rax
    13d0:	48 2d c8 00 00 00    	sub    $0xc8,%rax
    13d6:	0f b6 00             	movzbl (%rax),%eax
    13d9:	0f b6 c0             	movzbl %al,%eax
    13dc:	48 98                	cltq   
    13de:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    13e5:	ff 
    13e6:	48 01 d0             	add    %rdx,%rax
    13e9:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    13f0:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    13f7:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    13fe:	48 31 d0             	xor    %rdx,%rax
    1401:	48 c1 c0 20          	rol    $0x20,%rax
    1405:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    140c:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    1413:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    141a:	48 01 d0             	add    %rdx,%rax
    141d:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1424:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    142b:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    1432:	48 31 d0             	xor    %rdx,%rax
    1435:	48 c1 c8 18          	ror    $0x18,%rax
    1439:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    1440:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
    1447:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    144e:	48 01 c2             	add    %rax,%rdx
    1451:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1457:	48 98                	cltq   
    1459:	48 c1 e0 04          	shl    $0x4,%rax
    145d:	48 01 e8             	add    %rbp,%rax
    1460:	48 2d c7 00 00 00    	sub    $0xc7,%rax
    1466:	0f b6 00             	movzbl (%rax),%eax
    1469:	0f b6 c0             	movzbl %al,%eax
    146c:	48 98                	cltq   
    146e:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1475:	ff 
    1476:	48 01 d0             	add    %rdx,%rax
    1479:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    1480:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    1487:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    148e:	48 31 d0             	xor    %rdx,%rax
    1491:	48 c1 c8 10          	ror    $0x10,%rax
    1495:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    149c:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    14a3:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    14aa:	48 01 d0             	add    %rdx,%rax
    14ad:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    14b4:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    14bb:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    14c2:	48 31 d0             	xor    %rdx,%rax
    14c5:	48 d1 c0             	rol    %rax
    14c8:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
        
        B2B_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
    14cf:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    14d6:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    14dd:	48 01 c2             	add    %rax,%rdx
    14e0:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    14e6:	48 98                	cltq   
    14e8:	48 c1 e0 04          	shl    $0x4,%rax
    14ec:	48 01 e8             	add    %rbp,%rax
    14ef:	48 2d c6 00 00 00    	sub    $0xc6,%rax
    14f5:	0f b6 00             	movzbl (%rax),%eax
    14f8:	0f b6 c0             	movzbl %al,%eax
    14fb:	48 98                	cltq   
    14fd:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1504:	ff 
    1505:	48 01 d0             	add    %rdx,%rax
    1508:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    150f:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
    1516:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    151d:	48 31 d0             	xor    %rdx,%rax
    1520:	48 c1 c0 20          	rol    $0x20,%rax
    1524:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    152b:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    1532:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
    1539:	48 01 d0             	add    %rdx,%rax
    153c:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    1543:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    154a:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1551:	48 31 d0             	xor    %rdx,%rax
    1554:	48 c1 c8 18          	ror    $0x18,%rax
    1558:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    155f:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    1566:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    156d:	48 01 c2             	add    %rax,%rdx
    1570:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1576:	48 98                	cltq   
    1578:	48 c1 e0 04          	shl    $0x4,%rax
    157c:	48 01 e8             	add    %rbp,%rax
    157f:	48 2d c5 00 00 00    	sub    $0xc5,%rax
    1585:	0f b6 00             	movzbl (%rax),%eax
    1588:	0f b6 c0             	movzbl %al,%eax
    158b:	48 98                	cltq   
    158d:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1594:	ff 
    1595:	48 01 d0             	add    %rdx,%rax
    1598:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    159f:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
    15a6:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    15ad:	48 31 d0             	xor    %rdx,%rax
    15b0:	48 c1 c8 10          	ror    $0x10,%rax
    15b4:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    15bb:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    15c2:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
    15c9:	48 01 d0             	add    %rdx,%rax
    15cc:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    15d3:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    15da:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    15e1:	48 31 d0             	xor    %rdx,%rax
    15e4:	48 d1 c0             	rol    %rax
    15e7:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
        
        B2B_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
    15ee:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    15f5:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    15fc:	48 01 c2             	add    %rax,%rdx
    15ff:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1605:	48 98                	cltq   
    1607:	48 c1 e0 04          	shl    $0x4,%rax
    160b:	48 01 e8             	add    %rbp,%rax
    160e:	48 2d c4 00 00 00    	sub    $0xc4,%rax
    1614:	0f b6 00             	movzbl (%rax),%eax
    1617:	0f b6 c0             	movzbl %al,%eax
    161a:	48 98                	cltq   
    161c:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1623:	ff 
    1624:	48 01 d0             	add    %rdx,%rax
    1627:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    162e:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    1635:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    163c:	48 31 d0             	xor    %rdx,%rax
    163f:	48 c1 c0 20          	rol    $0x20,%rax
    1643:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    164a:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
    1651:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    1658:	48 01 d0             	add    %rdx,%rax
    165b:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    1662:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    1669:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    1670:	48 31 d0             	xor    %rdx,%rax
    1673:	48 c1 c8 18          	ror    $0x18,%rax
    1677:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
    167e:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    1685:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    168c:	48 01 c2             	add    %rax,%rdx
    168f:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1695:	48 98                	cltq   
    1697:	48 c1 e0 04          	shl    $0x4,%rax
    169b:	48 01 e8             	add    %rbp,%rax
    169e:	48 2d c3 00 00 00    	sub    $0xc3,%rax
    16a4:	0f b6 00             	movzbl (%rax),%eax
    16a7:	0f b6 c0             	movzbl %al,%eax
    16aa:	48 98                	cltq   
    16ac:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    16b3:	ff 
    16b4:	48 01 d0             	add    %rdx,%rax
    16b7:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    16be:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    16c5:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    16cc:	48 31 d0             	xor    %rdx,%rax
    16cf:	48 c1 c8 10          	ror    $0x10,%rax
    16d3:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    16da:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
    16e1:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    16e8:	48 01 d0             	add    %rdx,%rax
    16eb:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    16f2:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    16f9:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    1700:	48 31 d0             	xor    %rdx,%rax
    1703:	48 d1 c0             	rol    %rax
    1706:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
       
        B2B_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);       
    170d:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1714:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    171b:	48 01 c2             	add    %rax,%rdx
    171e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1724:	48 98                	cltq   
    1726:	48 c1 e0 04          	shl    $0x4,%rax
    172a:	48 01 e8             	add    %rbp,%rax
    172d:	48 2d c2 00 00 00    	sub    $0xc2,%rax
    1733:	0f b6 00             	movzbl (%rax),%eax
    1736:	0f b6 c0             	movzbl %al,%eax
    1739:	48 98                	cltq   
    173b:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1742:	ff 
    1743:	48 01 d0             	add    %rdx,%rax
    1746:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    174d:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    1754:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    175b:	48 31 d0             	xor    %rdx,%rax
    175e:	48 c1 c0 20          	rol    $0x20,%rax
    1762:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    1769:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    1770:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    1777:	48 01 d0             	add    %rdx,%rax
    177a:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    1781:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1788:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    178f:	48 31 d0             	xor    %rdx,%rax
    1792:	48 c1 c8 18          	ror    $0x18,%rax
    1796:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    179d:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    17a4:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    17ab:	48 01 c2             	add    %rax,%rdx
    17ae:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    17b4:	48 98                	cltq   
    17b6:	48 c1 e0 04          	shl    $0x4,%rax
    17ba:	48 01 e8             	add    %rbp,%rax
    17bd:	48 2d c1 00 00 00    	sub    $0xc1,%rax
    17c3:	0f b6 00             	movzbl (%rax),%eax
    17c6:	0f b6 c0             	movzbl %al,%eax
    17c9:	48 98                	cltq   
    17cb:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    17d2:	ff 
    17d3:	48 01 d0             	add    %rdx,%rax
    17d6:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    17dd:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    17e4:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    17eb:	48 31 d0             	xor    %rdx,%rax
    17ee:	48 c1 c8 10          	ror    $0x10,%rax
    17f2:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    17f9:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    1800:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    1807:	48 01 d0             	add    %rdx,%rax
    180a:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    1811:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1818:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    181f:	48 31 d0             	xor    %rdx,%rax
    1822:	48 d1 c0             	rol    %rax
    1825:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    for (i = 0; i < 12; i++) { // twelve rounds
    182c:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    1833:	83 bd 2c fe ff ff 0b 	cmpl   $0xb,-0x1d4(%rbp)
    183a:	0f 8e f4 f6 ff ff    	jle    f34 <blake2b_compress+0x654>
    }       


    for( i = 0; i < 8; ++i )
    1840:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
    1847:	00 00 00 
    184a:	eb 63                	jmp    18af <blake2b_compress+0xfcf>
        ctx->h[i] ^= v[i] ^ v[i + 8];
    184c:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    1853:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
    1859:	48 63 d2             	movslq %edx,%rdx
    185c:	48 83 c2 10          	add    $0x10,%rdx
    1860:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
    1864:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    186a:	48 98                	cltq   
    186c:	48 8b 8c c5 30 fe ff 	mov    -0x1d0(%rbp,%rax,8),%rcx
    1873:	ff 
    1874:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    187a:	83 c0 08             	add    $0x8,%eax
    187d:	48 98                	cltq   
    187f:	48 8b 84 c5 30 fe ff 	mov    -0x1d0(%rbp,%rax,8),%rax
    1886:	ff 
    1887:	48 31 c8             	xor    %rcx,%rax
    188a:	48 89 d1             	mov    %rdx,%rcx
    188d:	48 31 c1             	xor    %rax,%rcx
    1890:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    1897:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
    189d:	48 63 d2             	movslq %edx,%rdx
    18a0:	48 83 c2 10          	add    $0x10,%rdx
    18a4:	48 89 0c d0          	mov    %rcx,(%rax,%rdx,8)
    for( i = 0; i < 8; ++i )
    18a8:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    18af:	83 bd 2c fe ff ff 07 	cmpl   $0x7,-0x1d4(%rbp)
    18b6:	7e 94                	jle    184c <blake2b_compress+0xf6c>

}
    18b8:	90                   	nop
    18b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18bd:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    18c4:	00 00 
    18c6:	74 05                	je     18cd <blake2b_compress+0xfed>
    18c8:	e8 33 ee ff ff       	callq  700 <__stack_chk_fail@plt>
    18cd:	c9                   	leaveq 
    18ce:	c3                   	retq   

00000000000018cf <blake2b_init>:


int blake2b_init(blake2b_ctx *ctx, size_t outlen, const void *key, size_t keylen) { 
    18cf:	55                   	push   %rbp
    18d0:	48 89 e5             	mov    %rsp,%rbp
    18d3:	48 83 ec 30          	sub    $0x30,%rsp
    18d7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    18db:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    18df:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    18e3:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    size_t i;       
    if (outlen == 0 || outlen > 64 || keylen > 64)           
    18e7:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    18ec:	74 0e                	je     18fc <blake2b_init+0x2d>
    18ee:	48 83 7d e0 40       	cmpq   $0x40,-0x20(%rbp)
    18f3:	77 07                	ja     18fc <blake2b_init+0x2d>
    18f5:	48 83 7d d0 40       	cmpq   $0x40,-0x30(%rbp)
    18fa:	76 0a                	jbe    1906 <blake2b_init+0x37>
        return -1;                      // illegal parameters       
    18fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1901:	e9 02 01 00 00       	jmpq   1a08 <blake2b_init+0x139>
    
    for (i = 0; i < 8; i++)             // state, "param block"
    1906:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    190d:	00 
    190e:	eb 2c                	jmp    193c <blake2b_init+0x6d>
        ctx->h[i] = blake2b_iv[i];       
    1910:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1914:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    191b:	00 
    191c:	48 8d 05 dd 09 00 00 	lea    0x9dd(%rip),%rax        # 2300 <blake2b_iv>
    1923:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
    1927:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    192b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    192f:	48 83 c1 10          	add    $0x10,%rcx
    1933:	48 89 14 c8          	mov    %rdx,(%rax,%rcx,8)
    for (i = 0; i < 8; i++)             // state, "param block"
    1937:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    193c:	48 83 7d f8 07       	cmpq   $0x7,-0x8(%rbp)
    1941:	76 cd                	jbe    1910 <blake2b_init+0x41>
    
    ctx->h[0] ^= 0x01010000 ^ (keylen << 8) ^ outlen;
    1943:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1947:	48 8b 90 80 00 00 00 	mov    0x80(%rax),%rdx
    194e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1952:	48 c1 e0 08          	shl    $0x8,%rax
    1956:	48 33 45 e0          	xor    -0x20(%rbp),%rax
    195a:	48 31 d0             	xor    %rdx,%rax
    195d:	48 35 00 00 01 01    	xor    $0x1010000,%rax
    1963:	48 89 c2             	mov    %rax,%rdx
    1966:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    196a:	48 89 90 80 00 00 00 	mov    %rdx,0x80(%rax)
    
    ctx->t[0] = 0;                      // input count low word
    1971:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1975:	48 c7 80 c0 00 00 00 	movq   $0x0,0xc0(%rax)
    197c:	00 00 00 00 
    ctx->t[1] = 0;                      // input count high word      
    1980:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1984:	48 c7 80 c8 00 00 00 	movq   $0x0,0xc8(%rax)
    198b:	00 00 00 00 
    
    ctx->c = 0;                         // pointer within buffer
    198f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1993:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    199a:	00 00 00 00 
    ctx->outlen = outlen;
    199e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19a2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    19a6:	48 89 90 d8 00 00 00 	mov    %rdx,0xd8(%rax)

    for (i = keylen; i < 128; i++)      // zero input block           
    19ad:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    19b1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    19b5:	eb 13                	jmp    19ca <blake2b_init+0xfb>
        ctx->b[i] = 0;       
    19b7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    19bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19bf:	48 01 d0             	add    %rdx,%rax
    19c2:	c6 00 00             	movb   $0x0,(%rax)
    for (i = keylen; i < 128; i++)      // zero input block           
    19c5:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    19ca:	48 83 7d f8 7f       	cmpq   $0x7f,-0x8(%rbp)
    19cf:	76 e6                	jbe    19b7 <blake2b_init+0xe8>
    
    if (keylen > 0) {           
    19d1:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    19d6:	74 2b                	je     1a03 <blake2b_init+0x134>
        blake2b_update(ctx, key, keylen);           
    19d8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    19dc:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    19e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19e4:	48 89 ce             	mov    %rcx,%rsi
    19e7:	48 89 c7             	mov    %rax,%rdi
    19ea:	b8 00 00 00 00       	mov    $0x0,%eax
    19ef:	e8 16 00 00 00       	callq  1a0a <blake2b_update>
        ctx->c = 128;                   // at the end       
    19f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19f8:	48 c7 80 d0 00 00 00 	movq   $0x80,0xd0(%rax)
    19ff:	80 00 00 00 
    }
    return 0;   
    1a03:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1a08:	c9                   	leaveq 
    1a09:	c3                   	retq   

0000000000001a0a <blake2b_update>:

int blake2b_update(blake2b_ctx *ctx, const void *in, size_t inlen) {       
    1a0a:	55                   	push   %rbp
    1a0b:	48 89 e5             	mov    %rsp,%rbp
    1a0e:	48 83 ec 30          	sub    $0x30,%rsp
    1a12:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1a16:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1a1a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    size_t i;   
    for (i = 0; i < inlen; i++) {
    1a1e:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1a25:	00 
    1a26:	e9 c1 00 00 00       	jmpq   1aec <blake2b_update+0xe2>
        if (ctx->c == 128) {            // buffer full ?
    1a2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a2f:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1a36:	48 3d 80 00 00 00    	cmp    $0x80,%rax
    1a3c:	75 79                	jne    1ab7 <blake2b_update+0xad>
            ctx->t[0] += ctx->c;        // add counters
    1a3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a42:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1a49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a4d:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1a54:	48 01 c2             	add    %rax,%rdx
    1a57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a5b:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
            if (ctx->t[0] < ctx->c)     // carry overflow ?
    1a62:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a66:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1a6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a71:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1a78:	48 39 c2             	cmp    %rax,%rdx
    1a7b:	73 1a                	jae    1a97 <blake2b_update+0x8d>
                ctx->t[1]++;            // high word
    1a7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a81:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    1a88:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1a8c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a90:	48 89 90 c8 00 00 00 	mov    %rdx,0xc8(%rax)
            blake2b_compress(ctx, 0);   // compress (not last)
    1a97:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a9b:	be 00 00 00 00       	mov    $0x0,%esi
    1aa0:	48 89 c7             	mov    %rax,%rdi
    1aa3:	e8 38 ee ff ff       	callq  8e0 <blake2b_compress>
            ctx->c = 0;                 // counter to zero
    1aa8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1aac:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    1ab3:	00 00 00 00 
        }           
        ctx->b[ctx->c++] = ((const uint8_t *) in)[i];       
    1ab7:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1abb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1abf:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    1ac3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ac7:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1ace:	48 8d 48 01          	lea    0x1(%rax),%rcx
    1ad2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1ad6:	48 89 8a d0 00 00 00 	mov    %rcx,0xd0(%rdx)
    1add:	0f b6 0e             	movzbl (%rsi),%ecx
    1ae0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1ae4:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
    for (i = 0; i < inlen; i++) {
    1ae7:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1aec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1af0:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    1af4:	0f 82 31 ff ff ff    	jb     1a2b <blake2b_update+0x21>
    }
    //printf("[update] c: %d\n",ctx->c);
    return 0;
    1afa:	b8 00 00 00 00       	mov    $0x0,%eax
}  
    1aff:	c9                   	leaveq 
    1b00:	c3                   	retq   

0000000000001b01 <blake2b_final>:

int blake2b_final(blake2b_ctx *ctx, void *out)   {       
    1b01:	55                   	push   %rbp
    1b02:	48 89 e5             	mov    %rsp,%rbp
    1b05:	48 83 ec 20          	sub    $0x20,%rsp
    1b09:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1b0d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    size_t i;   
    
    ctx->t[0] += ctx->c;               // mark last block offset
    1b11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b15:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1b1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b20:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1b27:	48 01 c2             	add    %rax,%rdx
    1b2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b2e:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
    
    if (ctx->t[0] < ctx->c)             // carry overflow
    1b35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b39:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1b40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b44:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1b4b:	48 39 c2             	cmp    %rax,%rdx
    1b4e:	73 3e                	jae    1b8e <blake2b_final+0x8d>
        ctx->t[1]++;                    // high word
    1b50:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b54:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    1b5b:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1b5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b63:	48 89 90 c8 00 00 00 	mov    %rdx,0xc8(%rax)
    
    while (ctx->c < 128)                // fill up with zeros
    1b6a:	eb 22                	jmp    1b8e <blake2b_final+0x8d>
        ctx->b[ctx->c++] = 0;       
    1b6c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b70:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1b77:	48 8d 48 01          	lea    0x1(%rax),%rcx
    1b7b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1b7f:	48 89 8a d0 00 00 00 	mov    %rcx,0xd0(%rdx)
    1b86:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1b8a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    while (ctx->c < 128)                // fill up with zeros
    1b8e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b92:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1b99:	48 83 f8 7f          	cmp    $0x7f,%rax
    1b9d:	76 cd                	jbe    1b6c <blake2b_final+0x6b>
    
    blake2b_compress(ctx, 1);           // final block flag = 1
    1b9f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ba3:	be 01 00 00 00       	mov    $0x1,%esi
    1ba8:	48 89 c7             	mov    %rax,%rdi
    1bab:	e8 30 ed ff ff       	callq  8e0 <blake2b_compress>
    
    // little endian convert and store       
    for (i = 0; i < ctx->outlen; i++) {           
    1bb0:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1bb7:	00 
    1bb8:	eb 3d                	jmp    1bf7 <blake2b_final+0xf6>
        ((uint8_t *) out)[i] = (ctx->h[i >> 3] >> (8 * (i & 7))) & 0xFF;       
    1bba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1bbe:	48 c1 e8 03          	shr    $0x3,%rax
    1bc2:	48 89 c2             	mov    %rax,%rdx
    1bc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1bc9:	48 83 c2 10          	add    $0x10,%rdx
    1bcd:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
    1bd1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1bd5:	83 e0 07             	and    $0x7,%eax
    1bd8:	c1 e0 03             	shl    $0x3,%eax
    1bdb:	89 c1                	mov    %eax,%ecx
    1bdd:	48 d3 ea             	shr    %cl,%rdx
    1be0:	48 89 d1             	mov    %rdx,%rcx
    1be3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1be7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1beb:	48 01 d0             	add    %rdx,%rax
    1bee:	89 ca                	mov    %ecx,%edx
    1bf0:	88 10                	mov    %dl,(%rax)
    for (i = 0; i < ctx->outlen; i++) {           
    1bf2:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1bf7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1bfb:	48 8b 80 d8 00 00 00 	mov    0xd8(%rax),%rax
    1c02:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    1c06:	72 b2                	jb     1bba <blake2b_final+0xb9>
    }
    return 0;
    1c08:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1c0d:	c9                   	leaveq 
    1c0e:	c3                   	retq   

0000000000001c0f <blake2b>:

int blake2b(void *out, size_t outlen, const void *key, size_t keylen, const void *in, size_t inlen) {
    1c0f:	55                   	push   %rbp
    1c10:	48 89 e5             	mov    %rsp,%rbp
    1c13:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    1c1a:	48 89 bd 08 ff ff ff 	mov    %rdi,-0xf8(%rbp)
    1c21:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
    1c28:	48 89 95 f8 fe ff ff 	mov    %rdx,-0x108(%rbp)
    1c2f:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
    1c36:	4c 89 85 e8 fe ff ff 	mov    %r8,-0x118(%rbp)
    1c3d:	4c 89 8d e0 fe ff ff 	mov    %r9,-0x120(%rbp)
    1c44:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c4b:	00 00 
    1c4d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1c51:	31 c0                	xor    %eax,%eax
    blake2b_ctx ctx;
    
    if (blake2b_init(&ctx, outlen, key, keylen))
    1c53:	48 8b 8d f0 fe ff ff 	mov    -0x110(%rbp),%rcx
    1c5a:	48 8b 95 f8 fe ff ff 	mov    -0x108(%rbp),%rdx
    1c61:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
    1c68:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1c6f:	48 89 c7             	mov    %rax,%rdi
    1c72:	e8 58 fc ff ff       	callq  18cf <blake2b_init>
    1c77:	85 c0                	test   %eax,%eax
    1c79:	74 07                	je     1c82 <blake2b+0x73>
        return -1;
    1c7b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1c80:	eb 3e                	jmp    1cc0 <blake2b+0xb1>

    blake2b_update(&ctx, in, inlen);
    1c82:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
    1c89:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
    1c90:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1c97:	48 89 ce             	mov    %rcx,%rsi
    1c9a:	48 89 c7             	mov    %rax,%rdi
    1c9d:	e8 68 fd ff ff       	callq  1a0a <blake2b_update>

    blake2b_final(&ctx, out);
    1ca2:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
    1ca9:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1cb0:	48 89 d6             	mov    %rdx,%rsi
    1cb3:	48 89 c7             	mov    %rax,%rdi
    1cb6:	e8 46 fe ff ff       	callq  1b01 <blake2b_final>
    return 0;   
    1cbb:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1cc0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1cc4:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1ccb:	00 00 
    1ccd:	74 05                	je     1cd4 <blake2b+0xc5>
    1ccf:	e8 2c ea ff ff       	callq  700 <__stack_chk_fail@plt>
    1cd4:	c9                   	leaveq 
    1cd5:	c3                   	retq   

0000000000001cd6 <blake2b_long>:


int blake2b_long(void *pout, size_t outlen, const void *in, size_t inlen) {
    1cd6:	55                   	push   %rbp
    1cd7:	48 89 e5             	mov    %rsp,%rbp
    1cda:	48 81 ec b0 01 00 00 	sub    $0x1b0,%rsp
    1ce1:	48 89 bd 68 fe ff ff 	mov    %rdi,-0x198(%rbp)
    1ce8:	48 89 b5 60 fe ff ff 	mov    %rsi,-0x1a0(%rbp)
    1cef:	48 89 95 58 fe ff ff 	mov    %rdx,-0x1a8(%rbp)
    1cf6:	48 89 8d 50 fe ff ff 	mov    %rcx,-0x1b0(%rbp)
    1cfd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d04:	00 00 
    1d06:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1d0a:	31 c0                	xor    %eax,%eax
    uint8_t *out = (uint8_t *)pout;
    1d0c:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1d13:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    blake2b_ctx blake_state;
    uint8_t outlen_bytes[sizeof(uint32_t)] = {0};
    1d1a:	c7 85 6c ff ff ff 00 	movl   $0x0,-0x94(%rbp)
    1d21:	00 00 00 
    int ret = -1;
    1d24:	c7 85 70 fe ff ff ff 	movl   $0xffffffff,-0x190(%rbp)
    1d2b:	ff ff ff 

    if (outlen > UINT32_MAX) {
    1d2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1d33:	48 39 85 60 fe ff ff 	cmp    %rax,-0x1a0(%rbp)
    1d3a:	0f 87 46 03 00 00    	ja     2086 <blake2b_long+0x3b0>
        goto fail;
    }

    /* Ensure little-endian byte order! */
    store32(outlen_bytes, (uint32_t)outlen);
    1d40:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1d47:	89 c2                	mov    %eax,%edx
    1d49:	48 8d 85 6c ff ff ff 	lea    -0x94(%rbp),%rax
    1d50:	89 d6                	mov    %edx,%esi
    1d52:	48 89 c7             	mov    %rax,%rdi
    1d55:	e8 20 eb ff ff       	callq  87a <store32>
        if (ret < 0) {                                                         \
            goto fail;                                                         \
        }                                                                      \
    } while ((void)0, 0)

    if (outlen <= 64) {
    1d5a:	48 83 bd 60 fe ff ff 	cmpq   $0x40,-0x1a0(%rbp)
    1d61:	40 
    1d62:	0f 87 c2 00 00 00    	ja     1e2a <blake2b_long+0x154>
        TRY(blake2b_init(&blake_state, outlen, NULL,0));
    1d68:	48 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%rsi
    1d6f:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1d76:	b9 00 00 00 00       	mov    $0x0,%ecx
    1d7b:	ba 00 00 00 00       	mov    $0x0,%edx
    1d80:	48 89 c7             	mov    %rax,%rdi
    1d83:	e8 47 fb ff ff       	callq  18cf <blake2b_init>
    1d88:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1d8e:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1d95:	0f 88 ee 02 00 00    	js     2089 <blake2b_long+0x3b3>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    1d9b:	48 8d 8d 6c ff ff ff 	lea    -0x94(%rbp),%rcx
    1da2:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1da9:	ba 04 00 00 00       	mov    $0x4,%edx
    1dae:	48 89 ce             	mov    %rcx,%rsi
    1db1:	48 89 c7             	mov    %rax,%rdi
    1db4:	e8 51 fc ff ff       	callq  1a0a <blake2b_update>
    1db9:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1dbf:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1dc6:	0f 88 c0 02 00 00    	js     208c <blake2b_long+0x3b6>
        TRY(blake2b_update(&blake_state, in, inlen));
    1dcc:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1dd3:	48 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%rcx
    1dda:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1de1:	48 89 ce             	mov    %rcx,%rsi
    1de4:	48 89 c7             	mov    %rax,%rdi
    1de7:	e8 1e fc ff ff       	callq  1a0a <blake2b_update>
    1dec:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1df2:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1df9:	0f 88 90 02 00 00    	js     208f <blake2b_long+0x3b9>
        TRY(blake2b_final(&blake_state, out));
    1dff:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    1e06:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1e0d:	48 89 d6             	mov    %rdx,%rsi
    1e10:	48 89 c7             	mov    %rax,%rdi
    1e13:	e8 e9 fc ff ff       	callq  1b01 <blake2b_final>
    1e18:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1e1e:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1e25:	e9 78 02 00 00       	jmpq   20a2 <blake2b_long+0x3cc>
    } else {
        uint32_t toproduce;
        uint8_t out_buffer[64];
        uint8_t in_buffer[64];
        TRY(blake2b_init(&blake_state, 64, NULL, 0));
    1e2a:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1e31:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e36:	ba 00 00 00 00       	mov    $0x0,%edx
    1e3b:	be 40 00 00 00       	mov    $0x40,%esi
    1e40:	48 89 c7             	mov    %rax,%rdi
    1e43:	e8 87 fa ff ff       	callq  18cf <blake2b_init>
    1e48:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1e4e:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1e55:	0f 88 37 02 00 00    	js     2092 <blake2b_long+0x3bc>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    1e5b:	48 8d 8d 6c ff ff ff 	lea    -0x94(%rbp),%rcx
    1e62:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1e69:	ba 04 00 00 00       	mov    $0x4,%edx
    1e6e:	48 89 ce             	mov    %rcx,%rsi
    1e71:	48 89 c7             	mov    %rax,%rdi
    1e74:	e8 91 fb ff ff       	callq  1a0a <blake2b_update>
    1e79:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1e7f:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1e86:	0f 88 09 02 00 00    	js     2095 <blake2b_long+0x3bf>
        TRY(blake2b_update(&blake_state, in, inlen));
    1e8c:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1e93:	48 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%rcx
    1e9a:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1ea1:	48 89 ce             	mov    %rcx,%rsi
    1ea4:	48 89 c7             	mov    %rax,%rdi
    1ea7:	e8 5e fb ff ff       	callq  1a0a <blake2b_update>
    1eac:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1eb2:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1eb9:	0f 88 d9 01 00 00    	js     2098 <blake2b_long+0x3c2>
        TRY(blake2b_final(&blake_state, out_buffer));
    1ebf:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    1ec6:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1ecd:	48 89 d6             	mov    %rdx,%rsi
    1ed0:	48 89 c7             	mov    %rax,%rdi
    1ed3:	e8 29 fc ff ff       	callq  1b01 <blake2b_final>
    1ed8:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1ede:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1ee5:	0f 88 b0 01 00 00    	js     209b <blake2b_long+0x3c5>
        memcpy(out, out_buffer, 64 / 2);
    1eeb:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    1ef2:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1ef9:	ba 20 00 00 00       	mov    $0x20,%edx
    1efe:	48 89 ce             	mov    %rcx,%rsi
    1f01:	48 89 c7             	mov    %rax,%rdi
    1f04:	e8 37 e8 ff ff       	callq  740 <memcpy@plt>
        out += 64 / 2;
    1f09:	48 83 85 78 fe ff ff 	addq   $0x20,-0x188(%rbp)
    1f10:	20 
        toproduce = (uint32_t)outlen - 64 / 2;
    1f11:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1f18:	83 e8 20             	sub    $0x20,%eax
    1f1b:	89 85 74 fe ff ff    	mov    %eax,-0x18c(%rbp)

        while (toproduce > 64) {
    1f21:	e9 b1 00 00 00       	jmpq   1fd7 <blake2b_long+0x301>
            memcpy(in_buffer, out_buffer, 64);
    1f26:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1f2d:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    1f34:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1f38:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    1f3c:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1f40:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    1f44:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1f48:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    1f4c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1f50:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1f54:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1f58:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1f5c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1f60:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    1f64:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1f68:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
            TRY(blake2b(out_buffer, 64, NULL, 0, in_buffer, 64));
    1f6c:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    1f70:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1f77:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1f7d:	49 89 d0             	mov    %rdx,%r8
    1f80:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f85:	ba 00 00 00 00       	mov    $0x0,%edx
    1f8a:	be 40 00 00 00       	mov    $0x40,%esi
    1f8f:	48 89 c7             	mov    %rax,%rdi
    1f92:	e8 78 fc ff ff       	callq  1c0f <blake2b>
    1f97:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1f9d:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1fa4:	0f 88 f4 00 00 00    	js     209e <blake2b_long+0x3c8>
            memcpy(out, out_buffer, 64 / 2);
    1faa:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    1fb1:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1fb8:	ba 20 00 00 00       	mov    $0x20,%edx
    1fbd:	48 89 ce             	mov    %rcx,%rsi
    1fc0:	48 89 c7             	mov    %rax,%rdi
    1fc3:	e8 78 e7 ff ff       	callq  740 <memcpy@plt>
            out += 64 / 2;
    1fc8:	48 83 85 78 fe ff ff 	addq   $0x20,-0x188(%rbp)
    1fcf:	20 
            toproduce -= 64 / 2;
    1fd0:	83 ad 74 fe ff ff 20 	subl   $0x20,-0x18c(%rbp)
        while (toproduce > 64) {
    1fd7:	83 bd 74 fe ff ff 40 	cmpl   $0x40,-0x18c(%rbp)
    1fde:	0f 87 42 ff ff ff    	ja     1f26 <blake2b_long+0x250>
        }

        memcpy(in_buffer, out_buffer, 64);
    1fe4:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1feb:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    1ff2:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1ff6:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    1ffa:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1ffe:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    2002:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    2006:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    200a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    200e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    2012:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2016:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    201a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    201e:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    2022:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2026:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
        TRY(blake2b(out_buffer, toproduce, NULL, 0, in_buffer, 64));
    202a:	8b b5 74 fe ff ff    	mov    -0x18c(%rbp),%esi
    2030:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    2034:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    203b:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    2041:	49 89 d0             	mov    %rdx,%r8
    2044:	b9 00 00 00 00       	mov    $0x0,%ecx
    2049:	ba 00 00 00 00       	mov    $0x0,%edx
    204e:	48 89 c7             	mov    %rax,%rdi
    2051:	e8 b9 fb ff ff       	callq  1c0f <blake2b>
    2056:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    205c:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    2063:	78 3c                	js     20a1 <blake2b_long+0x3cb>
        memcpy(out, out_buffer, toproduce);
    2065:	8b 95 74 fe ff ff    	mov    -0x18c(%rbp),%edx
    206b:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    2072:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    2079:	48 89 ce             	mov    %rcx,%rsi
    207c:	48 89 c7             	mov    %rax,%rdi
    207f:	e8 bc e6 ff ff       	callq  740 <memcpy@plt>
    2084:	eb 1c                	jmp    20a2 <blake2b_long+0x3cc>
        goto fail;
    2086:	90                   	nop
    2087:	eb 19                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b_init(&blake_state, outlen, NULL,0));
    2089:	90                   	nop
    208a:	eb 16                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    208c:	90                   	nop
    208d:	eb 13                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, in, inlen));
    208f:	90                   	nop
    2090:	eb 10                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b_init(&blake_state, 64, NULL, 0));
    2092:	90                   	nop
    2093:	eb 0d                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    2095:	90                   	nop
    2096:	eb 0a                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, in, inlen));
    2098:	90                   	nop
    2099:	eb 07                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b_final(&blake_state, out_buffer));
    209b:	90                   	nop
    209c:	eb 04                	jmp    20a2 <blake2b_long+0x3cc>
            TRY(blake2b(out_buffer, 64, NULL, 0, in_buffer, 64));
    209e:	90                   	nop
    209f:	eb 01                	jmp    20a2 <blake2b_long+0x3cc>
        TRY(blake2b(out_buffer, toproduce, NULL, 0, in_buffer, 64));
    20a1:	90                   	nop
    }
    
fail:
    //clear_internal_memory(&blake_state, sizeof(blake_state));
    return ret;
    20a2:	8b 85 70 fe ff ff    	mov    -0x190(%rbp),%eax
    
#undef TRY
}
    20a8:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    20ac:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    20b3:	00 00 
    20b5:	74 05                	je     20bc <blake2b_long+0x3e6>
    20b7:	e8 44 e6 ff ff       	callq  700 <__stack_chk_fail@plt>
    20bc:	c9                   	leaveq 
    20bd:	c3                   	retq   

00000000000020be <main>:


int main(int argc, char *argv[]){
    20be:	55                   	push   %rbp
    20bf:	48 89 e5             	mov    %rsp,%rbp
    20c2:	53                   	push   %rbx
    20c3:	48 81 ec 28 06 00 00 	sub    $0x628,%rsp
    20ca:	89 bd dc f9 ff ff    	mov    %edi,-0x624(%rbp)
    20d0:	48 89 b5 d0 f9 ff ff 	mov    %rsi,-0x630(%rbp)
    20d7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20de:	00 00 
    20e0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    20e4:	31 c0                	xor    %eax,%eax

    FILE *file = fopen("temp.txt", "r");
    20e6:	48 8d 35 53 02 00 00 	lea    0x253(%rip),%rsi        # 2340 <blake2b_iv+0x40>
    20ed:	48 8d 3d 4e 02 00 00 	lea    0x24e(%rip),%rdi        # 2342 <blake2b_iv+0x42>
    20f4:	e8 57 e6 ff ff       	callq  750 <fopen@plt>
    20f9:	48 89 85 f0 f9 ff ff 	mov    %rax,-0x610(%rbp)
    char in[1000];
    char key[512];

    if (file == NULL) {
    2100:	48 83 bd f0 f9 ff ff 	cmpq   $0x0,-0x610(%rbp)
    2107:	00 
    2108:	75 16                	jne    2120 <main+0x62>
        printf("No file!\n\n");
    210a:	48 8d 3d 3a 02 00 00 	lea    0x23a(%rip),%rdi        # 234b <blake2b_iv+0x4b>
    2111:	e8 ca e5 ff ff       	callq  6e0 <puts@plt>
        return 0;
    2116:	b8 00 00 00 00       	mov    $0x0,%eax
    211b:	e9 16 01 00 00       	jmpq   2236 <main+0x178>
    }

    uint8_t* out = (uint8_t*) calloc(0x20, sizeof(uint8_t));
    2120:	be 01 00 00 00       	mov    $0x1,%esi
    2125:	bf 20 00 00 00       	mov    $0x20,%edi
    212a:	e8 01 e6 ff ff       	callq  730 <calloc@plt>
    212f:	48 89 85 f8 f9 ff ff 	mov    %rax,-0x608(%rbp)

    fgets(in, 1000, file);
    2136:	48 8b 95 f0 f9 ff ff 	mov    -0x610(%rbp),%rdx
    213d:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    2144:	be e8 03 00 00       	mov    $0x3e8,%esi
    2149:	48 89 c7             	mov    %rax,%rdi
    214c:	e8 cf e5 ff ff       	callq  720 <fgets@plt>
    fgets(key, 512, file);
    2151:	48 8b 95 f0 f9 ff ff 	mov    -0x610(%rbp),%rdx
    2158:	48 8d 85 00 fa ff ff 	lea    -0x600(%rbp),%rax
    215f:	be 00 02 00 00       	mov    $0x200,%esi
    2164:	48 89 c7             	mov    %rax,%rdi
    2167:	e8 b4 e5 ff ff       	callq  720 <fgets@plt>

    //char* in = "Certificação da Componente Criptográfica: Blake2b Hash Function";
    //char* key = "PassCert";
    
    blake2b(out, 0x20, key, strlen(key), in, strlen(in));
    216c:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    2173:	48 89 c7             	mov    %rax,%rdi
    2176:	e8 75 e5 ff ff       	callq  6f0 <strlen@plt>
    217b:	48 89 c3             	mov    %rax,%rbx
    217e:	48 8d 85 00 fa ff ff 	lea    -0x600(%rbp),%rax
    2185:	48 89 c7             	mov    %rax,%rdi
    2188:	e8 63 e5 ff ff       	callq  6f0 <strlen@plt>
    218d:	48 89 c6             	mov    %rax,%rsi
    2190:	48 8d 8d 00 fc ff ff 	lea    -0x400(%rbp),%rcx
    2197:	48 8d 95 00 fa ff ff 	lea    -0x600(%rbp),%rdx
    219e:	48 8b 85 f8 f9 ff ff 	mov    -0x608(%rbp),%rax
    21a5:	49 89 d9             	mov    %rbx,%r9
    21a8:	49 89 c8             	mov    %rcx,%r8
    21ab:	48 89 f1             	mov    %rsi,%rcx
    21ae:	be 20 00 00 00       	mov    $0x20,%esi
    21b3:	48 89 c7             	mov    %rax,%rdi
    21b6:	e8 54 fa ff ff       	callq  1c0f <blake2b>

    printf("\n\nC Implementation - Blake2b Hash Function(\"%s\") with [ \"%s\" ] as key:\n",in,key);
    21bb:	48 8d 95 00 fa ff ff 	lea    -0x600(%rbp),%rdx
    21c2:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    21c9:	48 89 c6             	mov    %rax,%rsi
    21cc:	48 8d 3d 85 01 00 00 	lea    0x185(%rip),%rdi        # 2358 <blake2b_iv+0x58>
    21d3:	b8 00 00 00 00       	mov    $0x0,%eax
    21d8:	e8 33 e5 ff ff       	callq  710 <printf@plt>

    for(int i = 0; i < 0x20; i++){
    21dd:	c7 85 ec f9 ff ff 00 	movl   $0x0,-0x614(%rbp)
    21e4:	00 00 00 
    21e7:	eb 33                	jmp    221c <main+0x15e>
        printf("%02x", out[i]);
    21e9:	8b 85 ec f9 ff ff    	mov    -0x614(%rbp),%eax
    21ef:	48 63 d0             	movslq %eax,%rdx
    21f2:	48 8b 85 f8 f9 ff ff 	mov    -0x608(%rbp),%rax
    21f9:	48 01 d0             	add    %rdx,%rax
    21fc:	0f b6 00             	movzbl (%rax),%eax
    21ff:	0f b6 c0             	movzbl %al,%eax
    2202:	89 c6                	mov    %eax,%esi
    2204:	48 8d 3d 95 01 00 00 	lea    0x195(%rip),%rdi        # 23a0 <blake2b_iv+0xa0>
    220b:	b8 00 00 00 00       	mov    $0x0,%eax
    2210:	e8 fb e4 ff ff       	callq  710 <printf@plt>
    for(int i = 0; i < 0x20; i++){
    2215:	83 85 ec f9 ff ff 01 	addl   $0x1,-0x614(%rbp)
    221c:	83 bd ec f9 ff ff 1f 	cmpl   $0x1f,-0x614(%rbp)
    2223:	7e c4                	jle    21e9 <main+0x12b>
    }

    printf("\n\n\n");
    2225:	48 8d 3d 79 01 00 00 	lea    0x179(%rip),%rdi        # 23a5 <blake2b_iv+0xa5>
    222c:	e8 af e4 ff ff       	callq  6e0 <puts@plt>
    2231:	b8 00 00 00 00       	mov    $0x0,%eax
    2236:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    223a:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2241:	00 00 
    2243:	74 05                	je     224a <main+0x18c>
    2245:	e8 b6 e4 ff ff       	callq  700 <__stack_chk_fail@plt>
    224a:	48 81 c4 28 06 00 00 	add    $0x628,%rsp
    2251:	5b                   	pop    %rbx
    2252:	5d                   	pop    %rbp
    2253:	c3                   	retq   
    2254:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    225b:	00 00 00 
    225e:	66 90                	xchg   %ax,%ax

0000000000002260 <__libc_csu_init>:
    2260:	41 57                	push   %r15
    2262:	41 56                	push   %r14
    2264:	49 89 d7             	mov    %rdx,%r15
    2267:	41 55                	push   %r13
    2269:	41 54                	push   %r12
    226b:	4c 8d 25 0e 0b 20 00 	lea    0x200b0e(%rip),%r12        # 202d80 <__frame_dummy_init_array_entry>
    2272:	55                   	push   %rbp
    2273:	48 8d 2d 0e 0b 20 00 	lea    0x200b0e(%rip),%rbp        # 202d88 <__init_array_end>
    227a:	53                   	push   %rbx
    227b:	41 89 fd             	mov    %edi,%r13d
    227e:	49 89 f6             	mov    %rsi,%r14
    2281:	4c 29 e5             	sub    %r12,%rbp
    2284:	48 83 ec 08          	sub    $0x8,%rsp
    2288:	48 c1 fd 03          	sar    $0x3,%rbp
    228c:	e8 27 e4 ff ff       	callq  6b8 <_init>
    2291:	48 85 ed             	test   %rbp,%rbp
    2294:	74 20                	je     22b6 <__libc_csu_init+0x56>
    2296:	31 db                	xor    %ebx,%ebx
    2298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    229f:	00 
    22a0:	4c 89 fa             	mov    %r15,%rdx
    22a3:	4c 89 f6             	mov    %r14,%rsi
    22a6:	44 89 ef             	mov    %r13d,%edi
    22a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    22ad:	48 83 c3 01          	add    $0x1,%rbx
    22b1:	48 39 dd             	cmp    %rbx,%rbp
    22b4:	75 ea                	jne    22a0 <__libc_csu_init+0x40>
    22b6:	48 83 c4 08          	add    $0x8,%rsp
    22ba:	5b                   	pop    %rbx
    22bb:	5d                   	pop    %rbp
    22bc:	41 5c                	pop    %r12
    22be:	41 5d                	pop    %r13
    22c0:	41 5e                	pop    %r14
    22c2:	41 5f                	pop    %r15
    22c4:	c3                   	retq   
    22c5:	90                   	nop
    22c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    22cd:	00 00 00 

00000000000022d0 <__libc_csu_fini>:
    22d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000022d4 <_fini>:
    22d4:	48 83 ec 08          	sub    $0x8,%rsp
    22d8:	48 83 c4 08          	add    $0x8,%rsp
    22dc:	c3                   	retq   
