
blake2b:     file format elf64-x86-64


Disassembly of section .init:

00000000000005d8 <_init>:
 5d8:	48 83 ec 08          	sub    $0x8,%rsp
 5dc:	48 8b 05 05 2a 20 00 	mov    0x202a05(%rip),%rax        # 202fe8 <__gmon_start__>
 5e3:	48 85 c0             	test   %rax,%rax
 5e6:	74 02                	je     5ea <_init+0x12>
 5e8:	ff d0                	callq  *%rax
 5ea:	48 83 c4 08          	add    $0x8,%rsp
 5ee:	c3                   	retq   

Disassembly of section .plt:

00000000000005f0 <.plt>:
 5f0:	ff 35 b2 29 20 00    	pushq  0x2029b2(%rip)        # 202fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
 5f6:	ff 25 b4 29 20 00    	jmpq   *0x2029b4(%rip)        # 202fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
 5fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000600 <strlen@plt>:
 600:	ff 25 b2 29 20 00    	jmpq   *0x2029b2(%rip)        # 202fb8 <strlen@GLIBC_2.2.5>
 606:	68 00 00 00 00       	pushq  $0x0
 60b:	e9 e0 ff ff ff       	jmpq   5f0 <.plt>

0000000000000610 <__stack_chk_fail@plt>:
 610:	ff 25 aa 29 20 00    	jmpq   *0x2029aa(%rip)        # 202fc0 <__stack_chk_fail@GLIBC_2.4>
 616:	68 01 00 00 00       	pushq  $0x1
 61b:	e9 d0 ff ff ff       	jmpq   5f0 <.plt>

0000000000000620 <calloc@plt>:
 620:	ff 25 a2 29 20 00    	jmpq   *0x2029a2(%rip)        # 202fc8 <calloc@GLIBC_2.2.5>
 626:	68 02 00 00 00       	pushq  $0x2
 62b:	e9 c0 ff ff ff       	jmpq   5f0 <.plt>

0000000000000630 <memcpy@plt>:
 630:	ff 25 9a 29 20 00    	jmpq   *0x20299a(%rip)        # 202fd0 <memcpy@GLIBC_2.14>
 636:	68 03 00 00 00       	pushq  $0x3
 63b:	e9 b0 ff ff ff       	jmpq   5f0 <.plt>

Disassembly of section .plt.got:

0000000000000640 <__cxa_finalize@plt>:
 640:	ff 25 b2 29 20 00    	jmpq   *0x2029b2(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
 646:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000650 <_start>:
     650:	31 ed                	xor    %ebp,%ebp
     652:	49 89 d1             	mov    %rdx,%r9
     655:	5e                   	pop    %rsi
     656:	48 89 e2             	mov    %rsp,%rdx
     659:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     65d:	50                   	push   %rax
     65e:	54                   	push   %rsp
     65f:	4c 8d 05 fa 1a 00 00 	lea    0x1afa(%rip),%r8        # 2160 <__libc_csu_fini>
     666:	48 8d 0d 83 1a 00 00 	lea    0x1a83(%rip),%rcx        # 20f0 <__libc_csu_init>
     66d:	48 8d 3d 2a 19 00 00 	lea    0x192a(%rip),%rdi        # 1f9e <main>
     674:	ff 15 66 29 20 00    	callq  *0x202966(%rip)        # 202fe0 <__libc_start_main@GLIBC_2.2.5>
     67a:	f4                   	hlt    
     67b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000680 <deregister_tm_clones>:
     680:	48 8d 3d 89 29 20 00 	lea    0x202989(%rip),%rdi        # 203010 <__TMC_END__>
     687:	55                   	push   %rbp
     688:	48 8d 05 81 29 20 00 	lea    0x202981(%rip),%rax        # 203010 <__TMC_END__>
     68f:	48 39 f8             	cmp    %rdi,%rax
     692:	48 89 e5             	mov    %rsp,%rbp
     695:	74 19                	je     6b0 <deregister_tm_clones+0x30>
     697:	48 8b 05 3a 29 20 00 	mov    0x20293a(%rip),%rax        # 202fd8 <_ITM_deregisterTMCloneTable>
     69e:	48 85 c0             	test   %rax,%rax
     6a1:	74 0d                	je     6b0 <deregister_tm_clones+0x30>
     6a3:	5d                   	pop    %rbp
     6a4:	ff e0                	jmpq   *%rax
     6a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     6ad:	00 00 00 
     6b0:	5d                   	pop    %rbp
     6b1:	c3                   	retq   
     6b2:	0f 1f 40 00          	nopl   0x0(%rax)
     6b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     6bd:	00 00 00 

00000000000006c0 <register_tm_clones>:
     6c0:	48 8d 3d 49 29 20 00 	lea    0x202949(%rip),%rdi        # 203010 <__TMC_END__>
     6c7:	48 8d 35 42 29 20 00 	lea    0x202942(%rip),%rsi        # 203010 <__TMC_END__>
     6ce:	55                   	push   %rbp
     6cf:	48 29 fe             	sub    %rdi,%rsi
     6d2:	48 89 e5             	mov    %rsp,%rbp
     6d5:	48 c1 fe 03          	sar    $0x3,%rsi
     6d9:	48 89 f0             	mov    %rsi,%rax
     6dc:	48 c1 e8 3f          	shr    $0x3f,%rax
     6e0:	48 01 c6             	add    %rax,%rsi
     6e3:	48 d1 fe             	sar    %rsi
     6e6:	74 18                	je     700 <register_tm_clones+0x40>
     6e8:	48 8b 05 01 29 20 00 	mov    0x202901(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
     6ef:	48 85 c0             	test   %rax,%rax
     6f2:	74 0c                	je     700 <register_tm_clones+0x40>
     6f4:	5d                   	pop    %rbp
     6f5:	ff e0                	jmpq   *%rax
     6f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     6fe:	00 00 
     700:	5d                   	pop    %rbp
     701:	c3                   	retq   
     702:	0f 1f 40 00          	nopl   0x0(%rax)
     706:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     70d:	00 00 00 

0000000000000710 <__do_global_dtors_aux>:
     710:	80 3d f9 28 20 00 00 	cmpb   $0x0,0x2028f9(%rip)        # 203010 <__TMC_END__>
     717:	75 2f                	jne    748 <__do_global_dtors_aux+0x38>
     719:	48 83 3d d7 28 20 00 	cmpq   $0x0,0x2028d7(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
     720:	00 
     721:	55                   	push   %rbp
     722:	48 89 e5             	mov    %rsp,%rbp
     725:	74 0c                	je     733 <__do_global_dtors_aux+0x23>
     727:	48 8b 3d da 28 20 00 	mov    0x2028da(%rip),%rdi        # 203008 <__dso_handle>
     72e:	e8 0d ff ff ff       	callq  640 <__cxa_finalize@plt>
     733:	e8 48 ff ff ff       	callq  680 <deregister_tm_clones>
     738:	c6 05 d1 28 20 00 01 	movb   $0x1,0x2028d1(%rip)        # 203010 <__TMC_END__>
     73f:	5d                   	pop    %rbp
     740:	c3                   	retq   
     741:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     748:	f3 c3                	repz retq 
     74a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000750 <frame_dummy>:
     750:	55                   	push   %rbp
     751:	48 89 e5             	mov    %rsp,%rbp
     754:	5d                   	pop    %rbp
     755:	e9 66 ff ff ff       	jmpq   6c0 <register_tm_clones>

000000000000075a <store32>:
    size_t c;       // pointer for b[]
    size_t outlen;  // digest size   
} blake2b_ctx;

/* Necessary to blake2b_long */
static void store32(void *dst, uint32_t w) {
     75a:	55                   	push   %rbp
     75b:	48 89 e5             	mov    %rsp,%rbp
     75e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     762:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    #if defined(NATIVE_LITTLE_ENDIAN)
        memcpy(dst, &w, sizeof w);
    #else
        uint8_t *p = (uint8_t *)dst;
     765:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     769:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
        *p++ = (uint8_t)w;
     76d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     771:	48 8d 50 01          	lea    0x1(%rax),%rdx
     775:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     779:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     77c:	88 10                	mov    %dl,(%rax)
        w >>= 8;
     77e:	c1 6d e4 08          	shrl   $0x8,-0x1c(%rbp)
        *p++ = (uint8_t)w;
     782:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     786:	48 8d 50 01          	lea    0x1(%rax),%rdx
     78a:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     78e:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     791:	88 10                	mov    %dl,(%rax)
        w >>= 8;
     793:	c1 6d e4 08          	shrl   $0x8,-0x1c(%rbp)
        *p++ = (uint8_t)w;
     797:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     79b:	48 8d 50 01          	lea    0x1(%rax),%rdx
     79f:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     7a3:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     7a6:	88 10                	mov    %dl,(%rax)
        w >>= 8;
     7a8:	c1 6d e4 08          	shrl   $0x8,-0x1c(%rbp)
        *p++ = (uint8_t)w;
     7ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     7b0:	48 8d 50 01          	lea    0x1(%rax),%rdx
     7b4:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
     7b8:	8b 55 e4             	mov    -0x1c(%rbp),%edx
     7bb:	88 10                	mov    %dl,(%rax)
    #endif
}
     7bd:	90                   	nop
     7be:	5d                   	pop    %rbp
     7bf:	c3                   	retq   

00000000000007c0 <blake2b_compress>:
    0x510E527FADE682D1, 0x9B05688C2B3E6C1F,
    0x1F83D9ABFB41BD6B, 0x5BE0CD19137E2179
};


static void blake2b_compress(blake2b_ctx *ctx, int last)   {
     7c0:	55                   	push   %rbp
     7c1:	48 89 e5             	mov    %rsp,%rbp
     7c4:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
     7cb:	48 89 bd 18 fe ff ff 	mov    %rdi,-0x1e8(%rbp)
     7d2:	89 b5 14 fe ff ff    	mov    %esi,-0x1ec(%rbp)
     7d8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     7df:	00 00 
     7e1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     7e5:	31 c0                	xor    %eax,%eax
    //printf("Start Compress. \n");
    const uint8_t sigma[12][16] = {
     7e7:	c6 85 30 ff ff ff 00 	movb   $0x0,-0xd0(%rbp)
     7ee:	c6 85 31 ff ff ff 01 	movb   $0x1,-0xcf(%rbp)
     7f5:	c6 85 32 ff ff ff 02 	movb   $0x2,-0xce(%rbp)
     7fc:	c6 85 33 ff ff ff 03 	movb   $0x3,-0xcd(%rbp)
     803:	c6 85 34 ff ff ff 04 	movb   $0x4,-0xcc(%rbp)
     80a:	c6 85 35 ff ff ff 05 	movb   $0x5,-0xcb(%rbp)
     811:	c6 85 36 ff ff ff 06 	movb   $0x6,-0xca(%rbp)
     818:	c6 85 37 ff ff ff 07 	movb   $0x7,-0xc9(%rbp)
     81f:	c6 85 38 ff ff ff 08 	movb   $0x8,-0xc8(%rbp)
     826:	c6 85 39 ff ff ff 09 	movb   $0x9,-0xc7(%rbp)
     82d:	c6 85 3a ff ff ff 0a 	movb   $0xa,-0xc6(%rbp)
     834:	c6 85 3b ff ff ff 0b 	movb   $0xb,-0xc5(%rbp)
     83b:	c6 85 3c ff ff ff 0c 	movb   $0xc,-0xc4(%rbp)
     842:	c6 85 3d ff ff ff 0d 	movb   $0xd,-0xc3(%rbp)
     849:	c6 85 3e ff ff ff 0e 	movb   $0xe,-0xc2(%rbp)
     850:	c6 85 3f ff ff ff 0f 	movb   $0xf,-0xc1(%rbp)
     857:	c6 85 40 ff ff ff 0e 	movb   $0xe,-0xc0(%rbp)
     85e:	c6 85 41 ff ff ff 0a 	movb   $0xa,-0xbf(%rbp)
     865:	c6 85 42 ff ff ff 04 	movb   $0x4,-0xbe(%rbp)
     86c:	c6 85 43 ff ff ff 08 	movb   $0x8,-0xbd(%rbp)
     873:	c6 85 44 ff ff ff 09 	movb   $0x9,-0xbc(%rbp)
     87a:	c6 85 45 ff ff ff 0f 	movb   $0xf,-0xbb(%rbp)
     881:	c6 85 46 ff ff ff 0d 	movb   $0xd,-0xba(%rbp)
     888:	c6 85 47 ff ff ff 06 	movb   $0x6,-0xb9(%rbp)
     88f:	c6 85 48 ff ff ff 01 	movb   $0x1,-0xb8(%rbp)
     896:	c6 85 49 ff ff ff 0c 	movb   $0xc,-0xb7(%rbp)
     89d:	c6 85 4a ff ff ff 00 	movb   $0x0,-0xb6(%rbp)
     8a4:	c6 85 4b ff ff ff 02 	movb   $0x2,-0xb5(%rbp)
     8ab:	c6 85 4c ff ff ff 0b 	movb   $0xb,-0xb4(%rbp)
     8b2:	c6 85 4d ff ff ff 07 	movb   $0x7,-0xb3(%rbp)
     8b9:	c6 85 4e ff ff ff 05 	movb   $0x5,-0xb2(%rbp)
     8c0:	c6 85 4f ff ff ff 03 	movb   $0x3,-0xb1(%rbp)
     8c7:	c6 85 50 ff ff ff 0b 	movb   $0xb,-0xb0(%rbp)
     8ce:	c6 85 51 ff ff ff 08 	movb   $0x8,-0xaf(%rbp)
     8d5:	c6 85 52 ff ff ff 0c 	movb   $0xc,-0xae(%rbp)
     8dc:	c6 85 53 ff ff ff 00 	movb   $0x0,-0xad(%rbp)
     8e3:	c6 85 54 ff ff ff 05 	movb   $0x5,-0xac(%rbp)
     8ea:	c6 85 55 ff ff ff 02 	movb   $0x2,-0xab(%rbp)
     8f1:	c6 85 56 ff ff ff 0f 	movb   $0xf,-0xaa(%rbp)
     8f8:	c6 85 57 ff ff ff 0d 	movb   $0xd,-0xa9(%rbp)
     8ff:	c6 85 58 ff ff ff 0a 	movb   $0xa,-0xa8(%rbp)
     906:	c6 85 59 ff ff ff 0e 	movb   $0xe,-0xa7(%rbp)
     90d:	c6 85 5a ff ff ff 03 	movb   $0x3,-0xa6(%rbp)
     914:	c6 85 5b ff ff ff 06 	movb   $0x6,-0xa5(%rbp)
     91b:	c6 85 5c ff ff ff 07 	movb   $0x7,-0xa4(%rbp)
     922:	c6 85 5d ff ff ff 01 	movb   $0x1,-0xa3(%rbp)
     929:	c6 85 5e ff ff ff 09 	movb   $0x9,-0xa2(%rbp)
     930:	c6 85 5f ff ff ff 04 	movb   $0x4,-0xa1(%rbp)
     937:	c6 85 60 ff ff ff 07 	movb   $0x7,-0xa0(%rbp)
     93e:	c6 85 61 ff ff ff 09 	movb   $0x9,-0x9f(%rbp)
     945:	c6 85 62 ff ff ff 03 	movb   $0x3,-0x9e(%rbp)
     94c:	c6 85 63 ff ff ff 01 	movb   $0x1,-0x9d(%rbp)
     953:	c6 85 64 ff ff ff 0d 	movb   $0xd,-0x9c(%rbp)
     95a:	c6 85 65 ff ff ff 0c 	movb   $0xc,-0x9b(%rbp)
     961:	c6 85 66 ff ff ff 0b 	movb   $0xb,-0x9a(%rbp)
     968:	c6 85 67 ff ff ff 0e 	movb   $0xe,-0x99(%rbp)
     96f:	c6 85 68 ff ff ff 02 	movb   $0x2,-0x98(%rbp)
     976:	c6 85 69 ff ff ff 06 	movb   $0x6,-0x97(%rbp)
     97d:	c6 85 6a ff ff ff 05 	movb   $0x5,-0x96(%rbp)
     984:	c6 85 6b ff ff ff 0a 	movb   $0xa,-0x95(%rbp)
     98b:	c6 85 6c ff ff ff 04 	movb   $0x4,-0x94(%rbp)
     992:	c6 85 6d ff ff ff 00 	movb   $0x0,-0x93(%rbp)
     999:	c6 85 6e ff ff ff 0f 	movb   $0xf,-0x92(%rbp)
     9a0:	c6 85 6f ff ff ff 08 	movb   $0x8,-0x91(%rbp)
     9a7:	c6 85 70 ff ff ff 09 	movb   $0x9,-0x90(%rbp)
     9ae:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%rbp)
     9b5:	c6 85 72 ff ff ff 05 	movb   $0x5,-0x8e(%rbp)
     9bc:	c6 85 73 ff ff ff 07 	movb   $0x7,-0x8d(%rbp)
     9c3:	c6 85 74 ff ff ff 02 	movb   $0x2,-0x8c(%rbp)
     9ca:	c6 85 75 ff ff ff 04 	movb   $0x4,-0x8b(%rbp)
     9d1:	c6 85 76 ff ff ff 0a 	movb   $0xa,-0x8a(%rbp)
     9d8:	c6 85 77 ff ff ff 0f 	movb   $0xf,-0x89(%rbp)
     9df:	c6 85 78 ff ff ff 0e 	movb   $0xe,-0x88(%rbp)
     9e6:	c6 85 79 ff ff ff 01 	movb   $0x1,-0x87(%rbp)
     9ed:	c6 85 7a ff ff ff 0b 	movb   $0xb,-0x86(%rbp)
     9f4:	c6 85 7b ff ff ff 0c 	movb   $0xc,-0x85(%rbp)
     9fb:	c6 85 7c ff ff ff 06 	movb   $0x6,-0x84(%rbp)
     a02:	c6 85 7d ff ff ff 08 	movb   $0x8,-0x83(%rbp)
     a09:	c6 85 7e ff ff ff 03 	movb   $0x3,-0x82(%rbp)
     a10:	c6 85 7f ff ff ff 0d 	movb   $0xd,-0x81(%rbp)
     a17:	c6 45 80 02          	movb   $0x2,-0x80(%rbp)
     a1b:	c6 45 81 0c          	movb   $0xc,-0x7f(%rbp)
     a1f:	c6 45 82 06          	movb   $0x6,-0x7e(%rbp)
     a23:	c6 45 83 0a          	movb   $0xa,-0x7d(%rbp)
     a27:	c6 45 84 00          	movb   $0x0,-0x7c(%rbp)
     a2b:	c6 45 85 0b          	movb   $0xb,-0x7b(%rbp)
     a2f:	c6 45 86 08          	movb   $0x8,-0x7a(%rbp)
     a33:	c6 45 87 03          	movb   $0x3,-0x79(%rbp)
     a37:	c6 45 88 04          	movb   $0x4,-0x78(%rbp)
     a3b:	c6 45 89 0d          	movb   $0xd,-0x77(%rbp)
     a3f:	c6 45 8a 07          	movb   $0x7,-0x76(%rbp)
     a43:	c6 45 8b 05          	movb   $0x5,-0x75(%rbp)
     a47:	c6 45 8c 0f          	movb   $0xf,-0x74(%rbp)
     a4b:	c6 45 8d 0e          	movb   $0xe,-0x73(%rbp)
     a4f:	c6 45 8e 01          	movb   $0x1,-0x72(%rbp)
     a53:	c6 45 8f 09          	movb   $0x9,-0x71(%rbp)
     a57:	c6 45 90 0c          	movb   $0xc,-0x70(%rbp)
     a5b:	c6 45 91 05          	movb   $0x5,-0x6f(%rbp)
     a5f:	c6 45 92 01          	movb   $0x1,-0x6e(%rbp)
     a63:	c6 45 93 0f          	movb   $0xf,-0x6d(%rbp)
     a67:	c6 45 94 0e          	movb   $0xe,-0x6c(%rbp)
     a6b:	c6 45 95 0d          	movb   $0xd,-0x6b(%rbp)
     a6f:	c6 45 96 04          	movb   $0x4,-0x6a(%rbp)
     a73:	c6 45 97 0a          	movb   $0xa,-0x69(%rbp)
     a77:	c6 45 98 00          	movb   $0x0,-0x68(%rbp)
     a7b:	c6 45 99 07          	movb   $0x7,-0x67(%rbp)
     a7f:	c6 45 9a 06          	movb   $0x6,-0x66(%rbp)
     a83:	c6 45 9b 03          	movb   $0x3,-0x65(%rbp)
     a87:	c6 45 9c 09          	movb   $0x9,-0x64(%rbp)
     a8b:	c6 45 9d 02          	movb   $0x2,-0x63(%rbp)
     a8f:	c6 45 9e 08          	movb   $0x8,-0x62(%rbp)
     a93:	c6 45 9f 0b          	movb   $0xb,-0x61(%rbp)
     a97:	c6 45 a0 0d          	movb   $0xd,-0x60(%rbp)
     a9b:	c6 45 a1 0b          	movb   $0xb,-0x5f(%rbp)
     a9f:	c6 45 a2 07          	movb   $0x7,-0x5e(%rbp)
     aa3:	c6 45 a3 0e          	movb   $0xe,-0x5d(%rbp)
     aa7:	c6 45 a4 0c          	movb   $0xc,-0x5c(%rbp)
     aab:	c6 45 a5 01          	movb   $0x1,-0x5b(%rbp)
     aaf:	c6 45 a6 03          	movb   $0x3,-0x5a(%rbp)
     ab3:	c6 45 a7 09          	movb   $0x9,-0x59(%rbp)
     ab7:	c6 45 a8 05          	movb   $0x5,-0x58(%rbp)
     abb:	c6 45 a9 00          	movb   $0x0,-0x57(%rbp)
     abf:	c6 45 aa 0f          	movb   $0xf,-0x56(%rbp)
     ac3:	c6 45 ab 04          	movb   $0x4,-0x55(%rbp)
     ac7:	c6 45 ac 08          	movb   $0x8,-0x54(%rbp)
     acb:	c6 45 ad 06          	movb   $0x6,-0x53(%rbp)
     acf:	c6 45 ae 02          	movb   $0x2,-0x52(%rbp)
     ad3:	c6 45 af 0a          	movb   $0xa,-0x51(%rbp)
     ad7:	c6 45 b0 06          	movb   $0x6,-0x50(%rbp)
     adb:	c6 45 b1 0f          	movb   $0xf,-0x4f(%rbp)
     adf:	c6 45 b2 0e          	movb   $0xe,-0x4e(%rbp)
     ae3:	c6 45 b3 09          	movb   $0x9,-0x4d(%rbp)
     ae7:	c6 45 b4 0b          	movb   $0xb,-0x4c(%rbp)
     aeb:	c6 45 b5 03          	movb   $0x3,-0x4b(%rbp)
     aef:	c6 45 b6 00          	movb   $0x0,-0x4a(%rbp)
     af3:	c6 45 b7 08          	movb   $0x8,-0x49(%rbp)
     af7:	c6 45 b8 0c          	movb   $0xc,-0x48(%rbp)
     afb:	c6 45 b9 02          	movb   $0x2,-0x47(%rbp)
     aff:	c6 45 ba 0d          	movb   $0xd,-0x46(%rbp)
     b03:	c6 45 bb 07          	movb   $0x7,-0x45(%rbp)
     b07:	c6 45 bc 01          	movb   $0x1,-0x44(%rbp)
     b0b:	c6 45 bd 04          	movb   $0x4,-0x43(%rbp)
     b0f:	c6 45 be 0a          	movb   $0xa,-0x42(%rbp)
     b13:	c6 45 bf 05          	movb   $0x5,-0x41(%rbp)
     b17:	c6 45 c0 0a          	movb   $0xa,-0x40(%rbp)
     b1b:	c6 45 c1 02          	movb   $0x2,-0x3f(%rbp)
     b1f:	c6 45 c2 08          	movb   $0x8,-0x3e(%rbp)
     b23:	c6 45 c3 04          	movb   $0x4,-0x3d(%rbp)
     b27:	c6 45 c4 07          	movb   $0x7,-0x3c(%rbp)
     b2b:	c6 45 c5 06          	movb   $0x6,-0x3b(%rbp)
     b2f:	c6 45 c6 01          	movb   $0x1,-0x3a(%rbp)
     b33:	c6 45 c7 05          	movb   $0x5,-0x39(%rbp)
     b37:	c6 45 c8 0f          	movb   $0xf,-0x38(%rbp)
     b3b:	c6 45 c9 0b          	movb   $0xb,-0x37(%rbp)
     b3f:	c6 45 ca 09          	movb   $0x9,-0x36(%rbp)
     b43:	c6 45 cb 0e          	movb   $0xe,-0x35(%rbp)
     b47:	c6 45 cc 03          	movb   $0x3,-0x34(%rbp)
     b4b:	c6 45 cd 0c          	movb   $0xc,-0x33(%rbp)
     b4f:	c6 45 ce 0d          	movb   $0xd,-0x32(%rbp)
     b53:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
     b57:	c6 45 d0 00          	movb   $0x0,-0x30(%rbp)
     b5b:	c6 45 d1 01          	movb   $0x1,-0x2f(%rbp)
     b5f:	c6 45 d2 02          	movb   $0x2,-0x2e(%rbp)
     b63:	c6 45 d3 03          	movb   $0x3,-0x2d(%rbp)
     b67:	c6 45 d4 04          	movb   $0x4,-0x2c(%rbp)
     b6b:	c6 45 d5 05          	movb   $0x5,-0x2b(%rbp)
     b6f:	c6 45 d6 06          	movb   $0x6,-0x2a(%rbp)
     b73:	c6 45 d7 07          	movb   $0x7,-0x29(%rbp)
     b77:	c6 45 d8 08          	movb   $0x8,-0x28(%rbp)
     b7b:	c6 45 d9 09          	movb   $0x9,-0x27(%rbp)
     b7f:	c6 45 da 0a          	movb   $0xa,-0x26(%rbp)
     b83:	c6 45 db 0b          	movb   $0xb,-0x25(%rbp)
     b87:	c6 45 dc 0c          	movb   $0xc,-0x24(%rbp)
     b8b:	c6 45 dd 0d          	movb   $0xd,-0x23(%rbp)
     b8f:	c6 45 de 0e          	movb   $0xe,-0x22(%rbp)
     b93:	c6 45 df 0f          	movb   $0xf,-0x21(%rbp)
     b97:	c6 45 e0 0e          	movb   $0xe,-0x20(%rbp)
     b9b:	c6 45 e1 0a          	movb   $0xa,-0x1f(%rbp)
     b9f:	c6 45 e2 04          	movb   $0x4,-0x1e(%rbp)
     ba3:	c6 45 e3 08          	movb   $0x8,-0x1d(%rbp)
     ba7:	c6 45 e4 09          	movb   $0x9,-0x1c(%rbp)
     bab:	c6 45 e5 0f          	movb   $0xf,-0x1b(%rbp)
     baf:	c6 45 e6 0d          	movb   $0xd,-0x1a(%rbp)
     bb3:	c6 45 e7 06          	movb   $0x6,-0x19(%rbp)
     bb7:	c6 45 e8 01          	movb   $0x1,-0x18(%rbp)
     bbb:	c6 45 e9 0c          	movb   $0xc,-0x17(%rbp)
     bbf:	c6 45 ea 00          	movb   $0x0,-0x16(%rbp)
     bc3:	c6 45 eb 02          	movb   $0x2,-0x15(%rbp)
     bc7:	c6 45 ec 0b          	movb   $0xb,-0x14(%rbp)
     bcb:	c6 45 ed 07          	movb   $0x7,-0x13(%rbp)
     bcf:	c6 45 ee 05          	movb   $0x5,-0x12(%rbp)
     bd3:	c6 45 ef 03          	movb   $0x3,-0x11(%rbp)
    };

    int i;
    uint64_t v[16], m[16];

    for (i = 0; i < 8; i++) {           // init work variables
     bd7:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     bde:	00 00 00 
     be1:	eb 5e                	jmp    c41 <blake2b_compress+0x481>
        v[i] = ctx->h[i];
     be3:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     bea:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
     bf0:	48 63 d2             	movslq %edx,%rdx
     bf3:	48 83 c2 10          	add    $0x10,%rdx
     bf7:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
     bfb:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     c01:	48 98                	cltq   
     c03:	48 89 94 c5 30 fe ff 	mov    %rdx,-0x1d0(%rbp,%rax,8)
     c0a:	ff 
        v[i + 8] = blake2b_iv[i];
     c0b:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     c11:	8d 48 08             	lea    0x8(%rax),%ecx
     c14:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     c1a:	48 98                	cltq   
     c1c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     c23:	00 
     c24:	48 8d 05 75 15 00 00 	lea    0x1575(%rip),%rax        # 21a0 <blake2b_iv>
     c2b:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     c2f:	48 63 c1             	movslq %ecx,%rax
     c32:	48 89 94 c5 30 fe ff 	mov    %rdx,-0x1d0(%rbp,%rax,8)
     c39:	ff 
    for (i = 0; i < 8; i++) {           // init work variables
     c3a:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
     c41:	83 bd 2c fe ff ff 07 	cmpl   $0x7,-0x1d4(%rbp)
     c48:	7e 99                	jle    be3 <blake2b_compress+0x423>
    }

    v[12] ^= ctx->t[0];                 // low 64 bits of offset
     c4a:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     c51:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     c58:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
     c5f:	48 31 d0             	xor    %rdx,%rax
     c62:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    v[13] ^= ctx->t[1];                 // high 64 bits
     c69:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
     c70:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     c77:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
     c7e:	48 31 d0             	xor    %rdx,%rax
     c81:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    if (last)                           // last block flag set ?
     c88:	83 bd 14 fe ff ff 00 	cmpl   $0x0,-0x1ec(%rbp)
     c8f:	74 11                	je     ca2 <blake2b_compress+0x4e2>
        v[14] = ~v[14];
     c91:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
     c98:	48 f7 d0             	not    %rax
     c9b:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)

    for (i = 0; i < 16; i++)            // get little-endian words
     ca2:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     ca9:	00 00 00 
     cac:	e9 47 01 00 00       	jmpq   df8 <blake2b_compress+0x638>
        m[i] = B2B_GET64(&ctx->b[8 * i]);
     cb1:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     cb7:	c1 e0 03             	shl    $0x3,%eax
     cba:	48 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%rdx
     cc1:	48 98                	cltq   
     cc3:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     cc7:	0f b6 c0             	movzbl %al,%eax
     cca:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
     cd0:	c1 e2 03             	shl    $0x3,%edx
     cd3:	48 63 ca             	movslq %edx,%rcx
     cd6:	48 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%rdx
     cdd:	48 01 ca             	add    %rcx,%rdx
     ce0:	48 83 c2 01          	add    $0x1,%rdx
     ce4:	0f b6 12             	movzbl (%rdx),%edx
     ce7:	0f b6 d2             	movzbl %dl,%edx
     cea:	48 c1 e2 08          	shl    $0x8,%rdx
     cee:	48 31 d0             	xor    %rdx,%rax
     cf1:	48 89 c1             	mov    %rax,%rcx
     cf4:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     cfa:	c1 e0 03             	shl    $0x3,%eax
     cfd:	48 63 d0             	movslq %eax,%rdx
     d00:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d07:	48 01 d0             	add    %rdx,%rax
     d0a:	48 83 c0 02          	add    $0x2,%rax
     d0e:	0f b6 00             	movzbl (%rax),%eax
     d11:	0f b6 c0             	movzbl %al,%eax
     d14:	48 c1 e0 10          	shl    $0x10,%rax
     d18:	48 31 c1             	xor    %rax,%rcx
     d1b:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d21:	c1 e0 03             	shl    $0x3,%eax
     d24:	48 63 d0             	movslq %eax,%rdx
     d27:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d2e:	48 01 d0             	add    %rdx,%rax
     d31:	48 83 c0 03          	add    $0x3,%rax
     d35:	0f b6 00             	movzbl (%rax),%eax
     d38:	0f b6 c0             	movzbl %al,%eax
     d3b:	48 c1 e0 18          	shl    $0x18,%rax
     d3f:	48 31 c1             	xor    %rax,%rcx
     d42:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d48:	c1 e0 03             	shl    $0x3,%eax
     d4b:	48 63 d0             	movslq %eax,%rdx
     d4e:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d55:	48 01 d0             	add    %rdx,%rax
     d58:	48 83 c0 04          	add    $0x4,%rax
     d5c:	0f b6 00             	movzbl (%rax),%eax
     d5f:	0f b6 c0             	movzbl %al,%eax
     d62:	48 c1 e0 20          	shl    $0x20,%rax
     d66:	48 31 c1             	xor    %rax,%rcx
     d69:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d6f:	c1 e0 03             	shl    $0x3,%eax
     d72:	48 63 d0             	movslq %eax,%rdx
     d75:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d7c:	48 01 d0             	add    %rdx,%rax
     d7f:	48 83 c0 05          	add    $0x5,%rax
     d83:	0f b6 00             	movzbl (%rax),%eax
     d86:	0f b6 c0             	movzbl %al,%eax
     d89:	48 c1 e0 28          	shl    $0x28,%rax
     d8d:	48 31 c1             	xor    %rax,%rcx
     d90:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d96:	c1 e0 03             	shl    $0x3,%eax
     d99:	48 63 d0             	movslq %eax,%rdx
     d9c:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     da3:	48 01 d0             	add    %rdx,%rax
     da6:	48 83 c0 06          	add    $0x6,%rax
     daa:	0f b6 00             	movzbl (%rax),%eax
     dad:	0f b6 c0             	movzbl %al,%eax
     db0:	48 c1 e0 30          	shl    $0x30,%rax
     db4:	48 31 c1             	xor    %rax,%rcx
     db7:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     dbd:	c1 e0 03             	shl    $0x3,%eax
     dc0:	48 63 d0             	movslq %eax,%rdx
     dc3:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     dca:	48 01 d0             	add    %rdx,%rax
     dcd:	48 83 c0 07          	add    $0x7,%rax
     dd1:	0f b6 00             	movzbl (%rax),%eax
     dd4:	0f b6 c0             	movzbl %al,%eax
     dd7:	48 c1 e0 38          	shl    $0x38,%rax
     ddb:	48 31 c1             	xor    %rax,%rcx
     dde:	48 89 ca             	mov    %rcx,%rdx
     de1:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     de7:	48 98                	cltq   
     de9:	48 89 94 c5 b0 fe ff 	mov    %rdx,-0x150(%rbp,%rax,8)
     df0:	ff 
    for (i = 0; i < 16; i++)            // get little-endian words
     df1:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
     df8:	83 bd 2c fe ff ff 0f 	cmpl   $0xf,-0x1d4(%rbp)
     dff:	0f 8e ac fe ff ff    	jle    cb1 <blake2b_compress+0x4f1>


    for (i = 0; i < 12; i++) { // twelve rounds
     e05:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     e0c:	00 00 00 
     e0f:	e9 ff 08 00 00       	jmpq   1713 <blake2b_compress+0xf53>
    
        B2B_G( 0, 4,  8, 12, m[sigma[i][0]], m[sigma[i][ 1]]);
     e14:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
     e1b:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     e22:	48 01 c2             	add    %rax,%rdx
     e25:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     e2b:	48 98                	cltq   
     e2d:	48 c1 e0 04          	shl    $0x4,%rax
     e31:	48 01 e8             	add    %rbp,%rax
     e34:	48 2d d0 00 00 00    	sub    $0xd0,%rax
     e3a:	0f b6 00             	movzbl (%rax),%eax
     e3d:	0f b6 c0             	movzbl %al,%eax
     e40:	48 98                	cltq   
     e42:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     e49:	ff 
     e4a:	48 01 d0             	add    %rdx,%rax
     e4d:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
     e54:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     e5b:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
     e62:	48 31 d0             	xor    %rdx,%rax
     e65:	48 c1 c0 20          	rol    $0x20,%rax
     e69:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
     e70:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
     e77:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
     e7e:	48 01 d0             	add    %rdx,%rax
     e81:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
     e88:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
     e8f:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
     e96:	48 31 d0             	xor    %rdx,%rax
     e99:	48 c1 c8 18          	ror    $0x18,%rax
     e9d:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
     ea4:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
     eab:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     eb2:	48 01 c2             	add    %rax,%rdx
     eb5:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     ebb:	48 98                	cltq   
     ebd:	48 c1 e0 04          	shl    $0x4,%rax
     ec1:	48 01 e8             	add    %rbp,%rax
     ec4:	48 2d cf 00 00 00    	sub    $0xcf,%rax
     eca:	0f b6 00             	movzbl (%rax),%eax
     ecd:	0f b6 c0             	movzbl %al,%eax
     ed0:	48 98                	cltq   
     ed2:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     ed9:	ff 
     eda:	48 01 d0             	add    %rdx,%rax
     edd:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
     ee4:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     eeb:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
     ef2:	48 31 d0             	xor    %rdx,%rax
     ef5:	48 c1 c8 10          	ror    $0x10,%rax
     ef9:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
     f00:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
     f07:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
     f0e:	48 01 d0             	add    %rdx,%rax
     f11:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
     f18:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
     f1f:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
     f26:	48 31 d0             	xor    %rdx,%rax
     f29:	48 d1 c0             	rol    %rax
     f2c:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)

        B2B_G( 1, 5,  9, 13, m[sigma[i][2]], m[sigma[i][ 3]]);
     f33:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
     f3a:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
     f41:	48 01 c2             	add    %rax,%rdx
     f44:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     f4a:	48 98                	cltq   
     f4c:	48 c1 e0 04          	shl    $0x4,%rax
     f50:	48 01 e8             	add    %rbp,%rax
     f53:	48 2d ce 00 00 00    	sub    $0xce,%rax
     f59:	0f b6 00             	movzbl (%rax),%eax
     f5c:	0f b6 c0             	movzbl %al,%eax
     f5f:	48 98                	cltq   
     f61:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     f68:	ff 
     f69:	48 01 d0             	add    %rdx,%rax
     f6c:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
     f73:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
     f7a:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
     f81:	48 31 d0             	xor    %rdx,%rax
     f84:	48 c1 c0 20          	rol    $0x20,%rax
     f88:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
     f8f:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
     f96:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
     f9d:	48 01 d0             	add    %rdx,%rax
     fa0:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
     fa7:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
     fae:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
     fb5:	48 31 d0             	xor    %rdx,%rax
     fb8:	48 c1 c8 18          	ror    $0x18,%rax
     fbc:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
     fc3:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
     fca:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
     fd1:	48 01 c2             	add    %rax,%rdx
     fd4:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     fda:	48 98                	cltq   
     fdc:	48 c1 e0 04          	shl    $0x4,%rax
     fe0:	48 01 e8             	add    %rbp,%rax
     fe3:	48 2d cd 00 00 00    	sub    $0xcd,%rax
     fe9:	0f b6 00             	movzbl (%rax),%eax
     fec:	0f b6 c0             	movzbl %al,%eax
     fef:	48 98                	cltq   
     ff1:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     ff8:	ff 
     ff9:	48 01 d0             	add    %rdx,%rax
     ffc:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    1003:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    100a:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    1011:	48 31 d0             	xor    %rdx,%rax
    1014:	48 c1 c8 10          	ror    $0x10,%rax
    1018:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    101f:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    1026:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    102d:	48 01 d0             	add    %rdx,%rax
    1030:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    1037:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    103e:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1045:	48 31 d0             	xor    %rdx,%rax
    1048:	48 d1 c0             	rol    %rax
    104b:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    
        B2B_G( 2, 6, 10, 14, m[sigma[i][4]], m[sigma[i][ 5]]);
    1052:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    1059:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1060:	48 01 c2             	add    %rax,%rdx
    1063:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1069:	48 98                	cltq   
    106b:	48 c1 e0 04          	shl    $0x4,%rax
    106f:	48 01 e8             	add    %rbp,%rax
    1072:	48 2d cc 00 00 00    	sub    $0xcc,%rax
    1078:	0f b6 00             	movzbl (%rax),%eax
    107b:	0f b6 c0             	movzbl %al,%eax
    107e:	48 98                	cltq   
    1080:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1087:	ff 
    1088:	48 01 d0             	add    %rdx,%rax
    108b:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    1092:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    1099:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    10a0:	48 31 d0             	xor    %rdx,%rax
    10a3:	48 c1 c0 20          	rol    $0x20,%rax
    10a7:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    10ae:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    10b5:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    10bc:	48 01 d0             	add    %rdx,%rax
    10bf:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    10c6:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    10cd:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    10d4:	48 31 d0             	xor    %rdx,%rax
    10d7:	48 c1 c8 18          	ror    $0x18,%rax
    10db:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    10e2:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    10e9:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    10f0:	48 01 c2             	add    %rax,%rdx
    10f3:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    10f9:	48 98                	cltq   
    10fb:	48 c1 e0 04          	shl    $0x4,%rax
    10ff:	48 01 e8             	add    %rbp,%rax
    1102:	48 2d cb 00 00 00    	sub    $0xcb,%rax
    1108:	0f b6 00             	movzbl (%rax),%eax
    110b:	0f b6 c0             	movzbl %al,%eax
    110e:	48 98                	cltq   
    1110:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1117:	ff 
    1118:	48 01 d0             	add    %rdx,%rax
    111b:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    1122:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    1129:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    1130:	48 31 d0             	xor    %rdx,%rax
    1133:	48 c1 c8 10          	ror    $0x10,%rax
    1137:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    113e:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    1145:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    114c:	48 01 d0             	add    %rdx,%rax
    114f:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1156:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    115d:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    1164:	48 31 d0             	xor    %rdx,%rax
    1167:	48 d1 c0             	rol    %rax
    116a:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
       
        B2B_G( 3, 7, 11, 15, m[sigma[i][6]], m[sigma[i][ 7]]);
    1171:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1178:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    117f:	48 01 c2             	add    %rax,%rdx
    1182:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1188:	48 98                	cltq   
    118a:	48 c1 e0 04          	shl    $0x4,%rax
    118e:	48 01 e8             	add    %rbp,%rax
    1191:	48 2d ca 00 00 00    	sub    $0xca,%rax
    1197:	0f b6 00             	movzbl (%rax),%eax
    119a:	0f b6 c0             	movzbl %al,%eax
    119d:	48 98                	cltq   
    119f:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    11a6:	ff 
    11a7:	48 01 d0             	add    %rdx,%rax
    11aa:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    11b1:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    11b8:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    11bf:	48 31 d0             	xor    %rdx,%rax
    11c2:	48 c1 c0 20          	rol    $0x20,%rax
    11c6:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    11cd:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    11d4:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    11db:	48 01 d0             	add    %rdx,%rax
    11de:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    11e5:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    11ec:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    11f3:	48 31 d0             	xor    %rdx,%rax
    11f6:	48 c1 c8 18          	ror    $0x18,%rax
    11fa:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
    1201:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1208:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    120f:	48 01 c2             	add    %rax,%rdx
    1212:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1218:	48 98                	cltq   
    121a:	48 c1 e0 04          	shl    $0x4,%rax
    121e:	48 01 e8             	add    %rbp,%rax
    1221:	48 2d c9 00 00 00    	sub    $0xc9,%rax
    1227:	0f b6 00             	movzbl (%rax),%eax
    122a:	0f b6 c0             	movzbl %al,%eax
    122d:	48 98                	cltq   
    122f:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1236:	ff 
    1237:	48 01 d0             	add    %rdx,%rax
    123a:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    1241:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    1248:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    124f:	48 31 d0             	xor    %rdx,%rax
    1252:	48 c1 c8 10          	ror    $0x10,%rax
    1256:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    125d:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    1264:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    126b:	48 01 d0             	add    %rdx,%rax
    126e:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    1275:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    127c:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1283:	48 31 d0             	xor    %rdx,%rax
    1286:	48 d1 c0             	rol    %rax
    1289:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
        
        B2B_G( 0, 5, 10, 15, m[sigma[i][8]], m[sigma[i][ 9]]);
    1290:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
    1297:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    129e:	48 01 c2             	add    %rax,%rdx
    12a1:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    12a7:	48 98                	cltq   
    12a9:	48 c1 e0 04          	shl    $0x4,%rax
    12ad:	48 01 e8             	add    %rbp,%rax
    12b0:	48 2d c8 00 00 00    	sub    $0xc8,%rax
    12b6:	0f b6 00             	movzbl (%rax),%eax
    12b9:	0f b6 c0             	movzbl %al,%eax
    12bc:	48 98                	cltq   
    12be:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    12c5:	ff 
    12c6:	48 01 d0             	add    %rdx,%rax
    12c9:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    12d0:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    12d7:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    12de:	48 31 d0             	xor    %rdx,%rax
    12e1:	48 c1 c0 20          	rol    $0x20,%rax
    12e5:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    12ec:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    12f3:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    12fa:	48 01 d0             	add    %rdx,%rax
    12fd:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1304:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    130b:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    1312:	48 31 d0             	xor    %rdx,%rax
    1315:	48 c1 c8 18          	ror    $0x18,%rax
    1319:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    1320:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
    1327:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    132e:	48 01 c2             	add    %rax,%rdx
    1331:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1337:	48 98                	cltq   
    1339:	48 c1 e0 04          	shl    $0x4,%rax
    133d:	48 01 e8             	add    %rbp,%rax
    1340:	48 2d c7 00 00 00    	sub    $0xc7,%rax
    1346:	0f b6 00             	movzbl (%rax),%eax
    1349:	0f b6 c0             	movzbl %al,%eax
    134c:	48 98                	cltq   
    134e:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1355:	ff 
    1356:	48 01 d0             	add    %rdx,%rax
    1359:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    1360:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    1367:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    136e:	48 31 d0             	xor    %rdx,%rax
    1371:	48 c1 c8 10          	ror    $0x10,%rax
    1375:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    137c:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    1383:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    138a:	48 01 d0             	add    %rdx,%rax
    138d:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1394:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    139b:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    13a2:	48 31 d0             	xor    %rdx,%rax
    13a5:	48 d1 c0             	rol    %rax
    13a8:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
        
        B2B_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
    13af:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    13b6:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    13bd:	48 01 c2             	add    %rax,%rdx
    13c0:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    13c6:	48 98                	cltq   
    13c8:	48 c1 e0 04          	shl    $0x4,%rax
    13cc:	48 01 e8             	add    %rbp,%rax
    13cf:	48 2d c6 00 00 00    	sub    $0xc6,%rax
    13d5:	0f b6 00             	movzbl (%rax),%eax
    13d8:	0f b6 c0             	movzbl %al,%eax
    13db:	48 98                	cltq   
    13dd:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    13e4:	ff 
    13e5:	48 01 d0             	add    %rdx,%rax
    13e8:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    13ef:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
    13f6:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    13fd:	48 31 d0             	xor    %rdx,%rax
    1400:	48 c1 c0 20          	rol    $0x20,%rax
    1404:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    140b:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    1412:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
    1419:	48 01 d0             	add    %rdx,%rax
    141c:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    1423:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    142a:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1431:	48 31 d0             	xor    %rdx,%rax
    1434:	48 c1 c8 18          	ror    $0x18,%rax
    1438:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    143f:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    1446:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    144d:	48 01 c2             	add    %rax,%rdx
    1450:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1456:	48 98                	cltq   
    1458:	48 c1 e0 04          	shl    $0x4,%rax
    145c:	48 01 e8             	add    %rbp,%rax
    145f:	48 2d c5 00 00 00    	sub    $0xc5,%rax
    1465:	0f b6 00             	movzbl (%rax),%eax
    1468:	0f b6 c0             	movzbl %al,%eax
    146b:	48 98                	cltq   
    146d:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1474:	ff 
    1475:	48 01 d0             	add    %rdx,%rax
    1478:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    147f:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
    1486:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    148d:	48 31 d0             	xor    %rdx,%rax
    1490:	48 c1 c8 10          	ror    $0x10,%rax
    1494:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    149b:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    14a2:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
    14a9:	48 01 d0             	add    %rdx,%rax
    14ac:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    14b3:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    14ba:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    14c1:	48 31 d0             	xor    %rdx,%rax
    14c4:	48 d1 c0             	rol    %rax
    14c7:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
        
        B2B_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
    14ce:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    14d5:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    14dc:	48 01 c2             	add    %rax,%rdx
    14df:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    14e5:	48 98                	cltq   
    14e7:	48 c1 e0 04          	shl    $0x4,%rax
    14eb:	48 01 e8             	add    %rbp,%rax
    14ee:	48 2d c4 00 00 00    	sub    $0xc4,%rax
    14f4:	0f b6 00             	movzbl (%rax),%eax
    14f7:	0f b6 c0             	movzbl %al,%eax
    14fa:	48 98                	cltq   
    14fc:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1503:	ff 
    1504:	48 01 d0             	add    %rdx,%rax
    1507:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    150e:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    1515:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    151c:	48 31 d0             	xor    %rdx,%rax
    151f:	48 c1 c0 20          	rol    $0x20,%rax
    1523:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    152a:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
    1531:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    1538:	48 01 d0             	add    %rdx,%rax
    153b:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    1542:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    1549:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    1550:	48 31 d0             	xor    %rdx,%rax
    1553:	48 c1 c8 18          	ror    $0x18,%rax
    1557:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
    155e:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    1565:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    156c:	48 01 c2             	add    %rax,%rdx
    156f:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1575:	48 98                	cltq   
    1577:	48 c1 e0 04          	shl    $0x4,%rax
    157b:	48 01 e8             	add    %rbp,%rax
    157e:	48 2d c3 00 00 00    	sub    $0xc3,%rax
    1584:	0f b6 00             	movzbl (%rax),%eax
    1587:	0f b6 c0             	movzbl %al,%eax
    158a:	48 98                	cltq   
    158c:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1593:	ff 
    1594:	48 01 d0             	add    %rdx,%rax
    1597:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    159e:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    15a5:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    15ac:	48 31 d0             	xor    %rdx,%rax
    15af:	48 c1 c8 10          	ror    $0x10,%rax
    15b3:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    15ba:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
    15c1:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    15c8:	48 01 d0             	add    %rdx,%rax
    15cb:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    15d2:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    15d9:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    15e0:	48 31 d0             	xor    %rdx,%rax
    15e3:	48 d1 c0             	rol    %rax
    15e6:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
       
        B2B_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);       
    15ed:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    15f4:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    15fb:	48 01 c2             	add    %rax,%rdx
    15fe:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1604:	48 98                	cltq   
    1606:	48 c1 e0 04          	shl    $0x4,%rax
    160a:	48 01 e8             	add    %rbp,%rax
    160d:	48 2d c2 00 00 00    	sub    $0xc2,%rax
    1613:	0f b6 00             	movzbl (%rax),%eax
    1616:	0f b6 c0             	movzbl %al,%eax
    1619:	48 98                	cltq   
    161b:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1622:	ff 
    1623:	48 01 d0             	add    %rdx,%rax
    1626:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    162d:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    1634:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    163b:	48 31 d0             	xor    %rdx,%rax
    163e:	48 c1 c0 20          	rol    $0x20,%rax
    1642:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    1649:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    1650:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    1657:	48 01 d0             	add    %rdx,%rax
    165a:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    1661:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1668:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    166f:	48 31 d0             	xor    %rdx,%rax
    1672:	48 c1 c8 18          	ror    $0x18,%rax
    1676:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    167d:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1684:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    168b:	48 01 c2             	add    %rax,%rdx
    168e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1694:	48 98                	cltq   
    1696:	48 c1 e0 04          	shl    $0x4,%rax
    169a:	48 01 e8             	add    %rbp,%rax
    169d:	48 2d c1 00 00 00    	sub    $0xc1,%rax
    16a3:	0f b6 00             	movzbl (%rax),%eax
    16a6:	0f b6 c0             	movzbl %al,%eax
    16a9:	48 98                	cltq   
    16ab:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    16b2:	ff 
    16b3:	48 01 d0             	add    %rdx,%rax
    16b6:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    16bd:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    16c4:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    16cb:	48 31 d0             	xor    %rdx,%rax
    16ce:	48 c1 c8 10          	ror    $0x10,%rax
    16d2:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    16d9:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    16e0:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    16e7:	48 01 d0             	add    %rdx,%rax
    16ea:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    16f1:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    16f8:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    16ff:	48 31 d0             	xor    %rdx,%rax
    1702:	48 d1 c0             	rol    %rax
    1705:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    for (i = 0; i < 12; i++) { // twelve rounds
    170c:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    1713:	83 bd 2c fe ff ff 0b 	cmpl   $0xb,-0x1d4(%rbp)
    171a:	0f 8e f4 f6 ff ff    	jle    e14 <blake2b_compress+0x654>
    }       


    for( i = 0; i < 8; ++i )
    1720:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
    1727:	00 00 00 
    172a:	eb 63                	jmp    178f <blake2b_compress+0xfcf>
        ctx->h[i] ^= v[i] ^ v[i + 8];
    172c:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    1733:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
    1739:	48 63 d2             	movslq %edx,%rdx
    173c:	48 83 c2 10          	add    $0x10,%rdx
    1740:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
    1744:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    174a:	48 98                	cltq   
    174c:	48 8b 8c c5 30 fe ff 	mov    -0x1d0(%rbp,%rax,8),%rcx
    1753:	ff 
    1754:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    175a:	83 c0 08             	add    $0x8,%eax
    175d:	48 98                	cltq   
    175f:	48 8b 84 c5 30 fe ff 	mov    -0x1d0(%rbp,%rax,8),%rax
    1766:	ff 
    1767:	48 31 c8             	xor    %rcx,%rax
    176a:	48 89 d1             	mov    %rdx,%rcx
    176d:	48 31 c1             	xor    %rax,%rcx
    1770:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    1777:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
    177d:	48 63 d2             	movslq %edx,%rdx
    1780:	48 83 c2 10          	add    $0x10,%rdx
    1784:	48 89 0c d0          	mov    %rcx,(%rax,%rdx,8)
    for( i = 0; i < 8; ++i )
    1788:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    178f:	83 bd 2c fe ff ff 07 	cmpl   $0x7,-0x1d4(%rbp)
    1796:	7e 94                	jle    172c <blake2b_compress+0xf6c>

}
    1798:	90                   	nop
    1799:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    179d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    17a4:	00 00 
    17a6:	74 05                	je     17ad <blake2b_compress+0xfed>
    17a8:	e8 63 ee ff ff       	callq  610 <__stack_chk_fail@plt>
    17ad:	c9                   	leaveq 
    17ae:	c3                   	retq   

00000000000017af <blake2b_init>:


int blake2b_init(blake2b_ctx *ctx, size_t outlen, const void *key, size_t keylen) { 
    17af:	55                   	push   %rbp
    17b0:	48 89 e5             	mov    %rsp,%rbp
    17b3:	48 83 ec 30          	sub    $0x30,%rsp
    17b7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    17bb:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    17bf:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    17c3:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    size_t i;       
    if (outlen == 0 || outlen > 64 || keylen > 64)           
    17c7:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    17cc:	74 0e                	je     17dc <blake2b_init+0x2d>
    17ce:	48 83 7d e0 40       	cmpq   $0x40,-0x20(%rbp)
    17d3:	77 07                	ja     17dc <blake2b_init+0x2d>
    17d5:	48 83 7d d0 40       	cmpq   $0x40,-0x30(%rbp)
    17da:	76 0a                	jbe    17e6 <blake2b_init+0x37>
        return -1;                      // illegal parameters       
    17dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    17e1:	e9 02 01 00 00       	jmpq   18e8 <blake2b_init+0x139>
    
    for (i = 0; i < 8; i++)             // state, "param block"
    17e6:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    17ed:	00 
    17ee:	eb 2c                	jmp    181c <blake2b_init+0x6d>
        ctx->h[i] = blake2b_iv[i];       
    17f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17f4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    17fb:	00 
    17fc:	48 8d 05 9d 09 00 00 	lea    0x99d(%rip),%rax        # 21a0 <blake2b_iv>
    1803:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
    1807:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    180b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    180f:	48 83 c1 10          	add    $0x10,%rcx
    1813:	48 89 14 c8          	mov    %rdx,(%rax,%rcx,8)
    for (i = 0; i < 8; i++)             // state, "param block"
    1817:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    181c:	48 83 7d f8 07       	cmpq   $0x7,-0x8(%rbp)
    1821:	76 cd                	jbe    17f0 <blake2b_init+0x41>
    
    ctx->h[0] ^= 0x01010000 ^ (keylen << 8) ^ outlen;
    1823:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1827:	48 8b 90 80 00 00 00 	mov    0x80(%rax),%rdx
    182e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1832:	48 c1 e0 08          	shl    $0x8,%rax
    1836:	48 33 45 e0          	xor    -0x20(%rbp),%rax
    183a:	48 31 d0             	xor    %rdx,%rax
    183d:	48 35 00 00 01 01    	xor    $0x1010000,%rax
    1843:	48 89 c2             	mov    %rax,%rdx
    1846:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    184a:	48 89 90 80 00 00 00 	mov    %rdx,0x80(%rax)
    
    ctx->t[0] = 0;                      // input count low word
    1851:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1855:	48 c7 80 c0 00 00 00 	movq   $0x0,0xc0(%rax)
    185c:	00 00 00 00 
    ctx->t[1] = 0;                      // input count high word      
    1860:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1864:	48 c7 80 c8 00 00 00 	movq   $0x0,0xc8(%rax)
    186b:	00 00 00 00 
    
    ctx->c = 0;                         // pointer within buffer
    186f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1873:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    187a:	00 00 00 00 
    ctx->outlen = outlen;
    187e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1882:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1886:	48 89 90 d8 00 00 00 	mov    %rdx,0xd8(%rax)

    for (i = keylen; i < 128; i++)      // zero input block           
    188d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1891:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1895:	eb 13                	jmp    18aa <blake2b_init+0xfb>
        ctx->b[i] = 0;       
    1897:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    189b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    189f:	48 01 d0             	add    %rdx,%rax
    18a2:	c6 00 00             	movb   $0x0,(%rax)
    for (i = keylen; i < 128; i++)      // zero input block           
    18a5:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    18aa:	48 83 7d f8 7f       	cmpq   $0x7f,-0x8(%rbp)
    18af:	76 e6                	jbe    1897 <blake2b_init+0xe8>
    
    if (keylen > 0) {           
    18b1:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    18b6:	74 2b                	je     18e3 <blake2b_init+0x134>
        blake2b_update(ctx, key, keylen);           
    18b8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    18bc:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    18c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18c4:	48 89 ce             	mov    %rcx,%rsi
    18c7:	48 89 c7             	mov    %rax,%rdi
    18ca:	b8 00 00 00 00       	mov    $0x0,%eax
    18cf:	e8 16 00 00 00       	callq  18ea <blake2b_update>
        ctx->c = 128;                   // at the end       
    18d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18d8:	48 c7 80 d0 00 00 00 	movq   $0x80,0xd0(%rax)
    18df:	80 00 00 00 
    }
    return 0;   
    18e3:	b8 00 00 00 00       	mov    $0x0,%eax
}
    18e8:	c9                   	leaveq 
    18e9:	c3                   	retq   

00000000000018ea <blake2b_update>:

int blake2b_update(blake2b_ctx *ctx, const void *in, size_t inlen) {       
    18ea:	55                   	push   %rbp
    18eb:	48 89 e5             	mov    %rsp,%rbp
    18ee:	48 83 ec 30          	sub    $0x30,%rsp
    18f2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    18f6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    18fa:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    size_t i;   
    for (i = 0; i < inlen; i++) {
    18fe:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1905:	00 
    1906:	e9 c1 00 00 00       	jmpq   19cc <blake2b_update+0xe2>
        if (ctx->c == 128) {            // buffer full ?
    190b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    190f:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1916:	48 3d 80 00 00 00    	cmp    $0x80,%rax
    191c:	75 79                	jne    1997 <blake2b_update+0xad>
            ctx->t[0] += ctx->c;        // add counters
    191e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1922:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1929:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    192d:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1934:	48 01 c2             	add    %rax,%rdx
    1937:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    193b:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
            if (ctx->t[0] < ctx->c)     // carry overflow ?
    1942:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1946:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    194d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1951:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1958:	48 39 c2             	cmp    %rax,%rdx
    195b:	73 1a                	jae    1977 <blake2b_update+0x8d>
                ctx->t[1]++;            // high word
    195d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1961:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    1968:	48 8d 50 01          	lea    0x1(%rax),%rdx
    196c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1970:	48 89 90 c8 00 00 00 	mov    %rdx,0xc8(%rax)
            blake2b_compress(ctx, 0);   // compress (not last)
    1977:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    197b:	be 00 00 00 00       	mov    $0x0,%esi
    1980:	48 89 c7             	mov    %rax,%rdi
    1983:	e8 38 ee ff ff       	callq  7c0 <blake2b_compress>
            ctx->c = 0;                 // counter to zero
    1988:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    198c:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    1993:	00 00 00 00 
        }           
        ctx->b[ctx->c++] = ((const uint8_t *) in)[i];    /* ---- Spectre vulnerability ---- */   
    1997:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    199b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    199f:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    19a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19a7:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax /LD
    19ae:	48 8d 48 01          	lea    0x1(%rax),%rcx
    19b2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    19b6:	48 89 8a d0 00 00 00 	mov    %rcx,0xd0(%rdx)
    19bd:	0f b6 0e             	movzbl (%rsi),%ecx
    19c0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    19c4:	88 0c 02             	mov    %cl,(%rdx,%rax,1) /RS
    for (i = 0; i < inlen; i++) {
    19c7:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    19cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19d0:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    19d4:	0f 82 31 ff ff ff    	jb     190b <blake2b_update+0x21> TB
    }
    //printf("[update] c: %d\n",ctx->c);
    return 0;
    19da:	b8 00 00 00 00       	mov    $0x0,%eax
}  
    19df:	c9                   	leaveq 
    19e0:	c3                   	retq   

00000000000019e1 <blake2b_final>:

int blake2b_final(blake2b_ctx *ctx, void *out)   {       
    19e1:	55                   	push   %rbp
    19e2:	48 89 e5             	mov    %rsp,%rbp
    19e5:	48 83 ec 20          	sub    $0x20,%rsp
    19e9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    19ed:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    size_t i;   
    
    ctx->t[0] += ctx->c;               // mark last block offset
    19f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19f5:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    19fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a00:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1a07:	48 01 c2             	add    %rax,%rdx
    1a0a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a0e:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
    
    if (ctx->t[0] < ctx->c)             // carry overflow
    1a15:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a19:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1a20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a24:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1a2b:	48 39 c2             	cmp    %rax,%rdx
    1a2e:	73 3e                	jae    1a6e <blake2b_final+0x8d>
        ctx->t[1]++;                    // high word
    1a30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a34:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    1a3b:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1a3f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a43:	48 89 90 c8 00 00 00 	mov    %rdx,0xc8(%rax)
    
    while (ctx->c < 128)                // fill up with zeros
    1a4a:	eb 22                	jmp    1a6e <blake2b_final+0x8d>
        ctx->b[ctx->c++] = 0;           /* ---- Spectre vulnerability ---- */
    1a4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a50:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax //LD
    1a57:	48 8d 48 01          	lea    0x1(%rax),%rcx
    1a5b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1a5f:	48 89 8a d0 00 00 00 	mov    %rcx,0xd0(%rdx)
    1a66:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1a6a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1) //RS
    while (ctx->c < 128)                // fill up with zeros
    1a6e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a72:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1a79:	48 83 f8 7f          	cmp    $0x7f,%rax
    1a7d:	76 cd                	jbe    1a4c <blake2b_final+0x6b> //TB
    
    blake2b_compress(ctx, 1);           // final block flag = 1
    1a7f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a83:	be 01 00 00 00       	mov    $0x1,%esi
    1a88:	48 89 c7             	mov    %rax,%rdi
    1a8b:	e8 30 ed ff ff       	callq  7c0 <blake2b_compress>
    
    // little endian convert and store       
    for (i = 0; i < ctx->outlen; i++) {           
    1a90:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1a97:	00 
    1a98:	eb 3d                	jmp    1ad7 <blake2b_final+0xf6>
        ((uint8_t *) out)[i] = (ctx->h[i >> 3] >> (8 * (i & 7))) & 0xFF;       
    1a9a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a9e:	48 c1 e8 03          	shr    $0x3,%rax
    1aa2:	48 89 c2             	mov    %rax,%rdx
    1aa5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1aa9:	48 83 c2 10          	add    $0x10,%rdx
    1aad:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
    1ab1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1ab5:	83 e0 07             	and    $0x7,%eax
    1ab8:	c1 e0 03             	shl    $0x3,%eax
    1abb:	89 c1                	mov    %eax,%ecx
    1abd:	48 d3 ea             	shr    %cl,%rdx
    1ac0:	48 89 d1             	mov    %rdx,%rcx
    1ac3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1ac7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1acb:	48 01 d0             	add    %rdx,%rax
    1ace:	89 ca                	mov    %ecx,%edx
    1ad0:	88 10                	mov    %dl,(%rax)
    for (i = 0; i < ctx->outlen; i++) {           
    1ad2:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1ad7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1adb:	48 8b 80 d8 00 00 00 	mov    0xd8(%rax),%rax
    1ae2:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    1ae6:	72 b2                	jb     1a9a <blake2b_final+0xb9>
    }
    return 0;
    1ae8:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1aed:	c9                   	leaveq 
    1aee:	c3                   	retq   

0000000000001aef <blake2b>:

int blake2b(void *out, size_t outlen, const void *key, size_t keylen, const void *in, size_t inlen) {
    1aef:	55                   	push   %rbp
    1af0:	48 89 e5             	mov    %rsp,%rbp
    1af3:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    1afa:	48 89 bd 08 ff ff ff 	mov    %rdi,-0xf8(%rbp)
    1b01:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
    1b08:	48 89 95 f8 fe ff ff 	mov    %rdx,-0x108(%rbp)
    1b0f:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
    1b16:	4c 89 85 e8 fe ff ff 	mov    %r8,-0x118(%rbp)
    1b1d:	4c 89 8d e0 fe ff ff 	mov    %r9,-0x120(%rbp)
    1b24:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b2b:	00 00 
    1b2d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1b31:	31 c0                	xor    %eax,%eax
    blake2b_ctx ctx;
    
    if (blake2b_init(&ctx, outlen, key, keylen))
    1b33:	48 8b 8d f0 fe ff ff 	mov    -0x110(%rbp),%rcx
    1b3a:	48 8b 95 f8 fe ff ff 	mov    -0x108(%rbp),%rdx
    1b41:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
    1b48:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1b4f:	48 89 c7             	mov    %rax,%rdi
    1b52:	e8 58 fc ff ff       	callq  17af <blake2b_init>
    1b57:	85 c0                	test   %eax,%eax
    1b59:	74 07                	je     1b62 <blake2b+0x73>
        return -1;
    1b5b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1b60:	eb 3e                	jmp    1ba0 <blake2b+0xb1>

    blake2b_update(&ctx, in, inlen);
    1b62:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
    1b69:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
    1b70:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1b77:	48 89 ce             	mov    %rcx,%rsi
    1b7a:	48 89 c7             	mov    %rax,%rdi
    1b7d:	e8 68 fd ff ff       	callq  18ea <blake2b_update>

    blake2b_final(&ctx, out);
    1b82:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
    1b89:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1b90:	48 89 d6             	mov    %rdx,%rsi
    1b93:	48 89 c7             	mov    %rax,%rdi
    1b96:	e8 46 fe ff ff       	callq  19e1 <blake2b_final>
    return 0;   
    1b9b:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1ba0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1ba4:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1bab:	00 00 
    1bad:	74 05                	je     1bb4 <blake2b+0xc5>
    1baf:	e8 5c ea ff ff       	callq  610 <__stack_chk_fail@plt>
    1bb4:	c9                   	leaveq 
    1bb5:	c3                   	retq   

0000000000001bb6 <blake2b_long>:


int blake2b_long(void *pout, size_t outlen, const void *in, size_t inlen) {
    1bb6:	55                   	push   %rbp
    1bb7:	48 89 e5             	mov    %rsp,%rbp
    1bba:	48 81 ec b0 01 00 00 	sub    $0x1b0,%rsp
    1bc1:	48 89 bd 68 fe ff ff 	mov    %rdi,-0x198(%rbp)
    1bc8:	48 89 b5 60 fe ff ff 	mov    %rsi,-0x1a0(%rbp)
    1bcf:	48 89 95 58 fe ff ff 	mov    %rdx,-0x1a8(%rbp)
    1bd6:	48 89 8d 50 fe ff ff 	mov    %rcx,-0x1b0(%rbp)
    1bdd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1be4:	00 00 
    1be6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1bea:	31 c0                	xor    %eax,%eax
    uint8_t *out = (uint8_t *)pout;
    1bec:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1bf3:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    blake2b_ctx blake_state;
    uint8_t outlen_bytes[sizeof(uint32_t)] = {0};
    1bfa:	c7 85 6c ff ff ff 00 	movl   $0x0,-0x94(%rbp)
    1c01:	00 00 00 
    int ret = -1;
    1c04:	c7 85 70 fe ff ff ff 	movl   $0xffffffff,-0x190(%rbp)
    1c0b:	ff ff ff 

    if (outlen > UINT32_MAX) {
    1c0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1c13:	48 39 85 60 fe ff ff 	cmp    %rax,-0x1a0(%rbp)
    1c1a:	0f 87 46 03 00 00    	ja     1f66 <blake2b_long+0x3b0>
        goto fail;
    }

    // Ensure little-endian byte order!
    store32(outlen_bytes, (uint32_t)outlen);
    1c20:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1c27:	89 c2                	mov    %eax,%edx
    1c29:	48 8d 85 6c ff ff ff 	lea    -0x94(%rbp),%rax
    1c30:	89 d6                	mov    %edx,%esi
    1c32:	48 89 c7             	mov    %rax,%rdi
    1c35:	e8 20 eb ff ff       	callq  75a <store32>
        if (ret < 0) {                                                         \
            goto fail;                                                         \
        }                                                                      \
    } while ((void)0, 0)

    if (outlen <= 64) {
    1c3a:	48 83 bd 60 fe ff ff 	cmpq   $0x40,-0x1a0(%rbp)
    1c41:	40 
    1c42:	0f 87 c2 00 00 00    	ja     1d0a <blake2b_long+0x154>
        TRY(blake2b_init(&blake_state, outlen, NULL,0));
    1c48:	48 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%rsi
    1c4f:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1c56:	b9 00 00 00 00       	mov    $0x0,%ecx
    1c5b:	ba 00 00 00 00       	mov    $0x0,%edx
    1c60:	48 89 c7             	mov    %rax,%rdi
    1c63:	e8 47 fb ff ff       	callq  17af <blake2b_init>
    1c68:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1c6e:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1c75:	0f 88 ee 02 00 00    	js     1f69 <blake2b_long+0x3b3>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    1c7b:	48 8d 8d 6c ff ff ff 	lea    -0x94(%rbp),%rcx
    1c82:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1c89:	ba 04 00 00 00       	mov    $0x4,%edx
    1c8e:	48 89 ce             	mov    %rcx,%rsi
    1c91:	48 89 c7             	mov    %rax,%rdi
    1c94:	e8 51 fc ff ff       	callq  18ea <blake2b_update>
    1c99:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1c9f:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1ca6:	0f 88 c0 02 00 00    	js     1f6c <blake2b_long+0x3b6>
        TRY(blake2b_update(&blake_state, in, inlen));
    1cac:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1cb3:	48 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%rcx
    1cba:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1cc1:	48 89 ce             	mov    %rcx,%rsi
    1cc4:	48 89 c7             	mov    %rax,%rdi
    1cc7:	e8 1e fc ff ff       	callq  18ea <blake2b_update>
    1ccc:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1cd2:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1cd9:	0f 88 90 02 00 00    	js     1f6f <blake2b_long+0x3b9>
        TRY(blake2b_final(&blake_state, out));
    1cdf:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    1ce6:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1ced:	48 89 d6             	mov    %rdx,%rsi
    1cf0:	48 89 c7             	mov    %rax,%rdi
    1cf3:	e8 e9 fc ff ff       	callq  19e1 <blake2b_final>
    1cf8:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1cfe:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1d05:	e9 78 02 00 00       	jmpq   1f82 <blake2b_long+0x3cc>
    } else {
        uint32_t toproduce;
        uint8_t out_buffer[64];
        uint8_t in_buffer[64];
        TRY(blake2b_init(&blake_state, 64, NULL, 0));
    1d0a:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1d11:	b9 00 00 00 00       	mov    $0x0,%ecx
    1d16:	ba 00 00 00 00       	mov    $0x0,%edx
    1d1b:	be 40 00 00 00       	mov    $0x40,%esi
    1d20:	48 89 c7             	mov    %rax,%rdi
    1d23:	e8 87 fa ff ff       	callq  17af <blake2b_init>
    1d28:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1d2e:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1d35:	0f 88 37 02 00 00    	js     1f72 <blake2b_long+0x3bc>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    1d3b:	48 8d 8d 6c ff ff ff 	lea    -0x94(%rbp),%rcx
    1d42:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1d49:	ba 04 00 00 00       	mov    $0x4,%edx
    1d4e:	48 89 ce             	mov    %rcx,%rsi
    1d51:	48 89 c7             	mov    %rax,%rdi
    1d54:	e8 91 fb ff ff       	callq  18ea <blake2b_update>
    1d59:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1d5f:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1d66:	0f 88 09 02 00 00    	js     1f75 <blake2b_long+0x3bf>
        TRY(blake2b_update(&blake_state, in, inlen));
    1d6c:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1d73:	48 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%rcx
    1d7a:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1d81:	48 89 ce             	mov    %rcx,%rsi
    1d84:	48 89 c7             	mov    %rax,%rdi
    1d87:	e8 5e fb ff ff       	callq  18ea <blake2b_update>
    1d8c:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1d92:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1d99:	0f 88 d9 01 00 00    	js     1f78 <blake2b_long+0x3c2>
        TRY(blake2b_final(&blake_state, out_buffer));
    1d9f:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    1da6:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1dad:	48 89 d6             	mov    %rdx,%rsi
    1db0:	48 89 c7             	mov    %rax,%rdi
    1db3:	e8 29 fc ff ff       	callq  19e1 <blake2b_final>
    1db8:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1dbe:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1dc5:	0f 88 b0 01 00 00    	js     1f7b <blake2b_long+0x3c5>
        memcpy(out, out_buffer, 64 / 2);
    1dcb:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    1dd2:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1dd9:	ba 20 00 00 00       	mov    $0x20,%edx
    1dde:	48 89 ce             	mov    %rcx,%rsi
    1de1:	48 89 c7             	mov    %rax,%rdi
    1de4:	e8 47 e8 ff ff       	callq  630 <memcpy@plt>
        out += 64 / 2;
    1de9:	48 83 85 78 fe ff ff 	addq   $0x20,-0x188(%rbp)
    1df0:	20 
        toproduce = (uint32_t)outlen - 64 / 2;
    1df1:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1df8:	83 e8 20             	sub    $0x20,%eax
    1dfb:	89 85 74 fe ff ff    	mov    %eax,-0x18c(%rbp)

        while (toproduce > 64) {
    1e01:	e9 b1 00 00 00       	jmpq   1eb7 <blake2b_long+0x301>
            memcpy(in_buffer, out_buffer, 64);
    1e06:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1e0d:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    1e14:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1e18:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    1e1c:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1e20:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    1e24:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1e28:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    1e2c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1e30:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1e34:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1e38:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1e3c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1e40:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    1e44:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1e48:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
            TRY(blake2b(out_buffer, 64, NULL, 0, in_buffer, 64));
    1e4c:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    1e50:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1e57:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1e5d:	49 89 d0             	mov    %rdx,%r8
    1e60:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e65:	ba 00 00 00 00       	mov    $0x0,%edx
    1e6a:	be 40 00 00 00       	mov    $0x40,%esi
    1e6f:	48 89 c7             	mov    %rax,%rdi
    1e72:	e8 78 fc ff ff       	callq  1aef <blake2b>
    1e77:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1e7d:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1e84:	0f 88 f4 00 00 00    	js     1f7e <blake2b_long+0x3c8>
            memcpy(out, out_buffer, 64 / 2);
    1e8a:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    1e91:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1e98:	ba 20 00 00 00       	mov    $0x20,%edx
    1e9d:	48 89 ce             	mov    %rcx,%rsi
    1ea0:	48 89 c7             	mov    %rax,%rdi
    1ea3:	e8 88 e7 ff ff       	callq  630 <memcpy@plt>
            out += 64 / 2;
    1ea8:	48 83 85 78 fe ff ff 	addq   $0x20,-0x188(%rbp)
    1eaf:	20 
            toproduce -= 64 / 2;
    1eb0:	83 ad 74 fe ff ff 20 	subl   $0x20,-0x18c(%rbp)
        while (toproduce > 64) {
    1eb7:	83 bd 74 fe ff ff 40 	cmpl   $0x40,-0x18c(%rbp)
    1ebe:	0f 87 42 ff ff ff    	ja     1e06 <blake2b_long+0x250>
        }

        memcpy(in_buffer, out_buffer, 64);
    1ec4:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1ecb:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    1ed2:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1ed6:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    1eda:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1ede:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    1ee2:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1ee6:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    1eea:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1eee:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1ef2:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1ef6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1efa:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1efe:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    1f02:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1f06:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
        TRY(blake2b(out_buffer, toproduce, NULL, 0, in_buffer, 64));
    1f0a:	8b b5 74 fe ff ff    	mov    -0x18c(%rbp),%esi
    1f10:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    1f14:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1f1b:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1f21:	49 89 d0             	mov    %rdx,%r8
    1f24:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f29:	ba 00 00 00 00       	mov    $0x0,%edx
    1f2e:	48 89 c7             	mov    %rax,%rdi
    1f31:	e8 b9 fb ff ff       	callq  1aef <blake2b>
    1f36:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    1f3c:	83 bd 70 fe ff ff 00 	cmpl   $0x0,-0x190(%rbp)
    1f43:	78 3c                	js     1f81 <blake2b_long+0x3cb>
        memcpy(out, out_buffer, toproduce);
    1f45:	8b 95 74 fe ff ff    	mov    -0x18c(%rbp),%edx
    1f4b:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    1f52:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1f59:	48 89 ce             	mov    %rcx,%rsi
    1f5c:	48 89 c7             	mov    %rax,%rdi
    1f5f:	e8 cc e6 ff ff       	callq  630 <memcpy@plt>
    1f64:	eb 1c                	jmp    1f82 <blake2b_long+0x3cc>
        goto fail;
    1f66:	90                   	nop
    1f67:	eb 19                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b_init(&blake_state, outlen, NULL,0));
    1f69:	90                   	nop
    1f6a:	eb 16                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    1f6c:	90                   	nop
    1f6d:	eb 13                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, in, inlen));
    1f6f:	90                   	nop
    1f70:	eb 10                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b_init(&blake_state, 64, NULL, 0));
    1f72:	90                   	nop
    1f73:	eb 0d                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)));
    1f75:	90                   	nop
    1f76:	eb 0a                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b_update(&blake_state, in, inlen));
    1f78:	90                   	nop
    1f79:	eb 07                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b_final(&blake_state, out_buffer));
    1f7b:	90                   	nop
    1f7c:	eb 04                	jmp    1f82 <blake2b_long+0x3cc>
            TRY(blake2b(out_buffer, 64, NULL, 0, in_buffer, 64));
    1f7e:	90                   	nop
    1f7f:	eb 01                	jmp    1f82 <blake2b_long+0x3cc>
        TRY(blake2b(out_buffer, toproduce, NULL, 0, in_buffer, 64));
    1f81:	90                   	nop
    }
    
fail:
    //clear_internal_memory(&blake_state, sizeof(blake_state));
    return ret;
    1f82:	8b 85 70 fe ff ff    	mov    -0x190(%rbp),%eax
    
#undef TRY
}
    1f88:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1f8c:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1f93:	00 00 
    1f95:	74 05                	je     1f9c <blake2b_long+0x3e6>
    1f97:	e8 74 e6 ff ff       	callq  610 <__stack_chk_fail@plt>
    1f9c:	c9                   	leaveq 
    1f9d:	c3                   	retq   

0000000000001f9e <main>:


int main(int argc, char *argv[]){
    1f9e:	55                   	push   %rbp
    1f9f:	48 89 e5             	mov    %rsp,%rbp
    1fa2:	53                   	push   %rbx
    1fa3:	48 81 ec 18 06 00 00 	sub    $0x618,%rsp
    1faa:	89 bd ec f9 ff ff    	mov    %edi,-0x614(%rbp)
    1fb0:	48 89 b5 e0 f9 ff ff 	mov    %rsi,-0x620(%rbp)
    1fb7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1fbe:	00 00 
    1fc0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1fc4:	31 c0                	xor    %eax,%eax

    char in[1000];
    char key[512];

    uint8_t* out = (uint8_t*) calloc(0x20, sizeof(uint8_t));
    1fc6:	be 01 00 00 00       	mov    $0x1,%esi
    1fcb:	bf 20 00 00 00       	mov    $0x20,%edi
    1fd0:	e8 4b e6 ff ff       	callq  620 <calloc@plt>
    1fd5:	48 89 85 f8 f9 ff ff 	mov    %rax,-0x608(%rbp)

    //char* in = "Certificação da Componente Criptográfica: Blake2b Hash Function";
    //char* key = "PassCert";

    for (int i = 0; i < 1000; i++) {     
    1fdc:	c7 85 f0 f9 ff ff 00 	movl   $0x0,-0x610(%rbp)
    1fe3:	00 00 00 
    1fe6:	eb 32                	jmp    201a <main+0x7c>
        in[i] = argv[1][i];     
    1fe8:	48 8b 85 e0 f9 ff ff 	mov    -0x620(%rbp),%rax
    1fef:	48 83 c0 08          	add    $0x8,%rax
    1ff3:	48 8b 10             	mov    (%rax),%rdx
    1ff6:	8b 85 f0 f9 ff ff    	mov    -0x610(%rbp),%eax
    1ffc:	48 98                	cltq   
    1ffe:	48 01 d0             	add    %rdx,%rax
    2001:	0f b6 10             	movzbl (%rax),%edx
    2004:	8b 85 f0 f9 ff ff    	mov    -0x610(%rbp),%eax
    200a:	48 98                	cltq   
    200c:	88 94 05 00 fc ff ff 	mov    %dl,-0x400(%rbp,%rax,1)
    for (int i = 0; i < 1000; i++) {     
    2013:	83 85 f0 f9 ff ff 01 	addl   $0x1,-0x610(%rbp)
    201a:	81 bd f0 f9 ff ff e7 	cmpl   $0x3e7,-0x610(%rbp)
    2021:	03 00 00 
    2024:	7e c2                	jle    1fe8 <main+0x4a>
    }

    for (int i = 0; i < 512; i++) {     
    2026:	c7 85 f4 f9 ff ff 00 	movl   $0x0,-0x60c(%rbp)
    202d:	00 00 00 
    2030:	eb 32                	jmp    2064 <main+0xc6>
        key[i] = argv[2][i];     
    2032:	48 8b 85 e0 f9 ff ff 	mov    -0x620(%rbp),%rax
    2039:	48 83 c0 10          	add    $0x10,%rax
    203d:	48 8b 10             	mov    (%rax),%rdx
    2040:	8b 85 f4 f9 ff ff    	mov    -0x60c(%rbp),%eax
    2046:	48 98                	cltq   
    2048:	48 01 d0             	add    %rdx,%rax
    204b:	0f b6 10             	movzbl (%rax),%edx
    204e:	8b 85 f4 f9 ff ff    	mov    -0x60c(%rbp),%eax
    2054:	48 98                	cltq   
    2056:	88 94 05 00 fa ff ff 	mov    %dl,-0x600(%rbp,%rax,1)
    for (int i = 0; i < 512; i++) {     
    205d:	83 85 f4 f9 ff ff 01 	addl   $0x1,-0x60c(%rbp)
    2064:	81 bd f4 f9 ff ff ff 	cmpl   $0x1ff,-0x60c(%rbp)
    206b:	01 00 00 
    206e:	7e c2                	jle    2032 <main+0x94>
    }
    
    blake2b(out, 0x20, key, strlen(key), in, strlen(in));
    2070:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    2077:	48 89 c7             	mov    %rax,%rdi
    207a:	e8 81 e5 ff ff       	callq  600 <strlen@plt>
    207f:	48 89 c3             	mov    %rax,%rbx
    2082:	48 8d 85 00 fa ff ff 	lea    -0x600(%rbp),%rax
    2089:	48 89 c7             	mov    %rax,%rdi
    208c:	e8 6f e5 ff ff       	callq  600 <strlen@plt>
    2091:	48 89 c6             	mov    %rax,%rsi
    2094:	48 8d 8d 00 fc ff ff 	lea    -0x400(%rbp),%rcx
    209b:	48 8d 95 00 fa ff ff 	lea    -0x600(%rbp),%rdx
    20a2:	48 8b 85 f8 f9 ff ff 	mov    -0x608(%rbp),%rax
    20a9:	49 89 d9             	mov    %rbx,%r9
    20ac:	49 89 c8             	mov    %rcx,%r8
    20af:	48 89 f1             	mov    %rsi,%rcx
    20b2:	be 20 00 00 00       	mov    $0x20,%esi
    20b7:	48 89 c7             	mov    %rax,%rdi
    20ba:	e8 30 fa ff ff       	callq  1aef <blake2b>
    20bf:	b8 00 00 00 00       	mov    $0x0,%eax
    20c4:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    20c8:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    20cf:	00 00 
    20d1:	74 05                	je     20d8 <main+0x13a>
    20d3:	e8 38 e5 ff ff       	callq  610 <__stack_chk_fail@plt>
    20d8:	48 81 c4 18 06 00 00 	add    $0x618,%rsp
    20df:	5b                   	pop    %rbx
    20e0:	5d                   	pop    %rbp
    20e1:	c3                   	retq   
    20e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    20e9:	00 00 00 
    20ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000020f0 <__libc_csu_init>:
    20f0:	41 57                	push   %r15
    20f2:	41 56                	push   %r14
    20f4:	49 89 d7             	mov    %rdx,%r15
    20f7:	41 55                	push   %r13
    20f9:	41 54                	push   %r12
    20fb:	4c 8d 25 9e 0c 20 00 	lea    0x200c9e(%rip),%r12        # 202da0 <__frame_dummy_init_array_entry>
    2102:	55                   	push   %rbp
    2103:	48 8d 2d 9e 0c 20 00 	lea    0x200c9e(%rip),%rbp        # 202da8 <__init_array_end>
    210a:	53                   	push   %rbx
    210b:	41 89 fd             	mov    %edi,%r13d
    210e:	49 89 f6             	mov    %rsi,%r14
    2111:	4c 29 e5             	sub    %r12,%rbp
    2114:	48 83 ec 08          	sub    $0x8,%rsp
    2118:	48 c1 fd 03          	sar    $0x3,%rbp
    211c:	e8 b7 e4 ff ff       	callq  5d8 <_init>
    2121:	48 85 ed             	test   %rbp,%rbp
    2124:	74 20                	je     2146 <__libc_csu_init+0x56>
    2126:	31 db                	xor    %ebx,%ebx
    2128:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    212f:	00 
    2130:	4c 89 fa             	mov    %r15,%rdx
    2133:	4c 89 f6             	mov    %r14,%rsi
    2136:	44 89 ef             	mov    %r13d,%edi
    2139:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    213d:	48 83 c3 01          	add    $0x1,%rbx
    2141:	48 39 dd             	cmp    %rbx,%rbp
    2144:	75 ea                	jne    2130 <__libc_csu_init+0x40>
    2146:	48 83 c4 08          	add    $0x8,%rsp
    214a:	5b                   	pop    %rbx
    214b:	5d                   	pop    %rbp
    214c:	41 5c                	pop    %r12
    214e:	41 5d                	pop    %r13
    2150:	41 5e                	pop    %r14
    2152:	41 5f                	pop    %r15
    2154:	c3                   	retq   
    2155:	90                   	nop
    2156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    215d:	00 00 00 

0000000000002160 <__libc_csu_fini>:
    2160:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002164 <_fini>:
    2164:	48 83 ec 08          	sub    $0x8,%rsp
    2168:	48 83 c4 08          	add    $0x8,%rsp
    216c:	c3                   	retq   
