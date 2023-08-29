blake:     file format elf64-x86-64


Disassembly of section .init:

0000000000000580 <_init>:
 580:	48 83 ec 08          	sub    $0x8,%rsp
 584:	48 8b 05 5d 2a 20 00 	mov    0x202a5d(%rip),%rax        # 202fe8 <__gmon_start__>
 58b:	48 85 c0             	test   %rax,%rax
 58e:	74 02                	je     592 <_init+0x12>
 590:	ff d0                	callq  *%rax
 592:	48 83 c4 08          	add    $0x8,%rsp
 596:	c3                   	retq   

Disassembly of section .plt:

00000000000005a0 <.plt>:
 5a0:	ff 35 0a 2a 20 00    	pushq  0x202a0a(%rip)        # 202fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
 5a6:	ff 25 0c 2a 20 00    	jmpq   *0x202a0c(%rip)        # 202fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
 5ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000005b0 <strlen@plt>:
 5b0:	ff 25 0a 2a 20 00    	jmpq   *0x202a0a(%rip)        # 202fc0 <strlen@GLIBC_2.2.5>
 5b6:	68 00 00 00 00       	pushq  $0x0
 5bb:	e9 e0 ff ff ff       	jmpq   5a0 <.plt>

00000000000005c0 <__stack_chk_fail@plt>:
 5c0:	ff 25 02 2a 20 00    	jmpq   *0x202a02(%rip)        # 202fc8 <__stack_chk_fail@GLIBC_2.4>
 5c6:	68 01 00 00 00       	pushq  $0x1
 5cb:	e9 d0 ff ff ff       	jmpq   5a0 <.plt>

00000000000005d0 <calloc@plt>:
 5d0:	ff 25 fa 29 20 00    	jmpq   *0x2029fa(%rip)        # 202fd0 <calloc@GLIBC_2.2.5>
 5d6:	68 02 00 00 00       	pushq  $0x2
 5db:	e9 c0 ff ff ff       	jmpq   5a0 <.plt>

Disassembly of section .plt.got:

00000000000005e0 <__cxa_finalize@plt>:
 5e0:	ff 25 12 2a 20 00    	jmpq   *0x202a12(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
 5e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000005f0 <_start>:
     5f0:	31 ed                	xor    %ebp,%ebp
     5f2:	49 89 d1             	mov    %rdx,%r9
     5f5:	5e                   	pop    %rsi
     5f6:	48 89 e2             	mov    %rsp,%rdx
     5f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     5fd:	50                   	push   %rax
     5fe:	54                   	push   %rsp
     5ff:	4c 8d 05 aa 16 00 00 	lea    0x16aa(%rip),%r8        # 1cb0 <__libc_csu_fini>
     606:	48 8d 0d 33 16 00 00 	lea    0x1633(%rip),%rcx        # 1c40 <__libc_csu_init>
     60d:	48 8d 3d dc 14 00 00 	lea    0x14dc(%rip),%rdi        # 1af0 <main>
     614:	ff 15 c6 29 20 00    	callq  *0x2029c6(%rip)        # 202fe0 <__libc_start_main@GLIBC_2.2.5>
     61a:	f4                   	hlt    
     61b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000620 <deregister_tm_clones>:
     620:	48 8d 3d e9 29 20 00 	lea    0x2029e9(%rip),%rdi        # 203010 <__TMC_END__>
     627:	55                   	push   %rbp
     628:	48 8d 05 e1 29 20 00 	lea    0x2029e1(%rip),%rax        # 203010 <__TMC_END__>
     62f:	48 39 f8             	cmp    %rdi,%rax
     632:	48 89 e5             	mov    %rsp,%rbp
     635:	74 19                	je     650 <deregister_tm_clones+0x30>
     637:	48 8b 05 9a 29 20 00 	mov    0x20299a(%rip),%rax        # 202fd8 <_ITM_deregisterTMCloneTable>
     63e:	48 85 c0             	test   %rax,%rax
     641:	74 0d                	je     650 <deregister_tm_clones+0x30>
     643:	5d                   	pop    %rbp
     644:	ff e0                	jmpq   *%rax
     646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     64d:	00 00 00 
     650:	5d                   	pop    %rbp
     651:	c3                   	retq   
     652:	0f 1f 40 00          	nopl   0x0(%rax)
     656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     65d:	00 00 00 

0000000000000660 <register_tm_clones>:
     660:	48 8d 3d a9 29 20 00 	lea    0x2029a9(%rip),%rdi        # 203010 <__TMC_END__>
     667:	48 8d 35 a2 29 20 00 	lea    0x2029a2(%rip),%rsi        # 203010 <__TMC_END__>
     66e:	55                   	push   %rbp
     66f:	48 29 fe             	sub    %rdi,%rsi
     672:	48 89 e5             	mov    %rsp,%rbp
     675:	48 c1 fe 03          	sar    $0x3,%rsi
     679:	48 89 f0             	mov    %rsi,%rax
     67c:	48 c1 e8 3f          	shr    $0x3f,%rax
     680:	48 01 c6             	add    %rax,%rsi
     683:	48 d1 fe             	sar    %rsi
     686:	74 18                	je     6a0 <register_tm_clones+0x40>
     688:	48 8b 05 61 29 20 00 	mov    0x202961(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
     68f:	48 85 c0             	test   %rax,%rax
     692:	74 0c                	je     6a0 <register_tm_clones+0x40>
     694:	5d                   	pop    %rbp
     695:	ff e0                	jmpq   *%rax
     697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     69e:	00 00 
     6a0:	5d                   	pop    %rbp
     6a1:	c3                   	retq   
     6a2:	0f 1f 40 00          	nopl   0x0(%rax)
     6a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     6ad:	00 00 00 

00000000000006b0 <__do_global_dtors_aux>:
     6b0:	80 3d 59 29 20 00 00 	cmpb   $0x0,0x202959(%rip)        # 203010 <__TMC_END__>
     6b7:	75 2f                	jne    6e8 <__do_global_dtors_aux+0x38>
     6b9:	48 83 3d 37 29 20 00 	cmpq   $0x0,0x202937(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
     6c0:	00 
     6c1:	55                   	push   %rbp
     6c2:	48 89 e5             	mov    %rsp,%rbp
     6c5:	74 0c                	je     6d3 <__do_global_dtors_aux+0x23>
     6c7:	48 8b 3d 3a 29 20 00 	mov    0x20293a(%rip),%rdi        # 203008 <__dso_handle>
     6ce:	e8 0d ff ff ff       	callq  5e0 <__cxa_finalize@plt>
     6d3:	e8 48 ff ff ff       	callq  620 <deregister_tm_clones>
     6d8:	c6 05 31 29 20 00 01 	movb   $0x1,0x202931(%rip)        # 203010 <__TMC_END__>
     6df:	5d                   	pop    %rbp
     6e0:	c3                   	retq   
     6e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     6e8:	f3 c3                	repz retq 
     6ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000006f0 <frame_dummy>:
     6f0:	55                   	push   %rbp
     6f1:	48 89 e5             	mov    %rsp,%rbp
     6f4:	5d                   	pop    %rbp
     6f5:	e9 66 ff ff ff       	jmpq   660 <register_tm_clones>

00000000000006fa <blake2b_compress>:
    0x510E527FADE682D1, 0x9B05688C2B3E6C1F,
    0x1F83D9ABFB41BD6B, 0x5BE0CD19137E2179
};


static void blake2b_compress(blake2b_ctx *ctx, int last)   {
     6fa:	55                   	push   %rbp
     6fb:	48 89 e5             	mov    %rsp,%rbp
     6fe:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
     705:	48 89 bd 18 fe ff ff 	mov    %rdi,-0x1e8(%rbp)
     70c:	89 b5 14 fe ff ff    	mov    %esi,-0x1ec(%rbp)
     712:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     719:	00 00 
     71b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     71f:	31 c0                	xor    %eax,%eax
    //printf("Start Compress. \n");
    const uint8_t sigma[12][16] = {
     721:	c6 85 30 ff ff ff 00 	movb   $0x0,-0xd0(%rbp)
     728:	c6 85 31 ff ff ff 01 	movb   $0x1,-0xcf(%rbp)
     72f:	c6 85 32 ff ff ff 02 	movb   $0x2,-0xce(%rbp)
     736:	c6 85 33 ff ff ff 03 	movb   $0x3,-0xcd(%rbp)
     73d:	c6 85 34 ff ff ff 04 	movb   $0x4,-0xcc(%rbp)
     744:	c6 85 35 ff ff ff 05 	movb   $0x5,-0xcb(%rbp)
     74b:	c6 85 36 ff ff ff 06 	movb   $0x6,-0xca(%rbp)
     752:	c6 85 37 ff ff ff 07 	movb   $0x7,-0xc9(%rbp)
     759:	c6 85 38 ff ff ff 08 	movb   $0x8,-0xc8(%rbp)
     760:	c6 85 39 ff ff ff 09 	movb   $0x9,-0xc7(%rbp)
     767:	c6 85 3a ff ff ff 0a 	movb   $0xa,-0xc6(%rbp)
     76e:	c6 85 3b ff ff ff 0b 	movb   $0xb,-0xc5(%rbp)
     775:	c6 85 3c ff ff ff 0c 	movb   $0xc,-0xc4(%rbp)
     77c:	c6 85 3d ff ff ff 0d 	movb   $0xd,-0xc3(%rbp)
     783:	c6 85 3e ff ff ff 0e 	movb   $0xe,-0xc2(%rbp)
     78a:	c6 85 3f ff ff ff 0f 	movb   $0xf,-0xc1(%rbp)
     791:	c6 85 40 ff ff ff 0e 	movb   $0xe,-0xc0(%rbp)
     798:	c6 85 41 ff ff ff 0a 	movb   $0xa,-0xbf(%rbp)
     79f:	c6 85 42 ff ff ff 04 	movb   $0x4,-0xbe(%rbp)
     7a6:	c6 85 43 ff ff ff 08 	movb   $0x8,-0xbd(%rbp)
     7ad:	c6 85 44 ff ff ff 09 	movb   $0x9,-0xbc(%rbp)
     7b4:	c6 85 45 ff ff ff 0f 	movb   $0xf,-0xbb(%rbp)
     7bb:	c6 85 46 ff ff ff 0d 	movb   $0xd,-0xba(%rbp)
     7c2:	c6 85 47 ff ff ff 06 	movb   $0x6,-0xb9(%rbp)
     7c9:	c6 85 48 ff ff ff 01 	movb   $0x1,-0xb8(%rbp)
     7d0:	c6 85 49 ff ff ff 0c 	movb   $0xc,-0xb7(%rbp)
     7d7:	c6 85 4a ff ff ff 00 	movb   $0x0,-0xb6(%rbp)
     7de:	c6 85 4b ff ff ff 02 	movb   $0x2,-0xb5(%rbp)
     7e5:	c6 85 4c ff ff ff 0b 	movb   $0xb,-0xb4(%rbp)
     7ec:	c6 85 4d ff ff ff 07 	movb   $0x7,-0xb3(%rbp)
     7f3:	c6 85 4e ff ff ff 05 	movb   $0x5,-0xb2(%rbp)
     7fa:	c6 85 4f ff ff ff 03 	movb   $0x3,-0xb1(%rbp)
     801:	c6 85 50 ff ff ff 0b 	movb   $0xb,-0xb0(%rbp)
     808:	c6 85 51 ff ff ff 08 	movb   $0x8,-0xaf(%rbp)
     80f:	c6 85 52 ff ff ff 0c 	movb   $0xc,-0xae(%rbp)
     816:	c6 85 53 ff ff ff 00 	movb   $0x0,-0xad(%rbp)
     81d:	c6 85 54 ff ff ff 05 	movb   $0x5,-0xac(%rbp)
     824:	c6 85 55 ff ff ff 02 	movb   $0x2,-0xab(%rbp)
     82b:	c6 85 56 ff ff ff 0f 	movb   $0xf,-0xaa(%rbp)
     832:	c6 85 57 ff ff ff 0d 	movb   $0xd,-0xa9(%rbp)
     839:	c6 85 58 ff ff ff 0a 	movb   $0xa,-0xa8(%rbp)
     840:	c6 85 59 ff ff ff 0e 	movb   $0xe,-0xa7(%rbp)
     847:	c6 85 5a ff ff ff 03 	movb   $0x3,-0xa6(%rbp)
     84e:	c6 85 5b ff ff ff 06 	movb   $0x6,-0xa5(%rbp)
     855:	c6 85 5c ff ff ff 07 	movb   $0x7,-0xa4(%rbp)
     85c:	c6 85 5d ff ff ff 01 	movb   $0x1,-0xa3(%rbp)
     863:	c6 85 5e ff ff ff 09 	movb   $0x9,-0xa2(%rbp)
     86a:	c6 85 5f ff ff ff 04 	movb   $0x4,-0xa1(%rbp)
     871:	c6 85 60 ff ff ff 07 	movb   $0x7,-0xa0(%rbp)
     878:	c6 85 61 ff ff ff 09 	movb   $0x9,-0x9f(%rbp)
     87f:	c6 85 62 ff ff ff 03 	movb   $0x3,-0x9e(%rbp)
     886:	c6 85 63 ff ff ff 01 	movb   $0x1,-0x9d(%rbp)
     88d:	c6 85 64 ff ff ff 0d 	movb   $0xd,-0x9c(%rbp)
     894:	c6 85 65 ff ff ff 0c 	movb   $0xc,-0x9b(%rbp)
     89b:	c6 85 66 ff ff ff 0b 	movb   $0xb,-0x9a(%rbp)
     8a2:	c6 85 67 ff ff ff 0e 	movb   $0xe,-0x99(%rbp)
     8a9:	c6 85 68 ff ff ff 02 	movb   $0x2,-0x98(%rbp)
     8b0:	c6 85 69 ff ff ff 06 	movb   $0x6,-0x97(%rbp)
     8b7:	c6 85 6a ff ff ff 05 	movb   $0x5,-0x96(%rbp)
     8be:	c6 85 6b ff ff ff 0a 	movb   $0xa,-0x95(%rbp)
     8c5:	c6 85 6c ff ff ff 04 	movb   $0x4,-0x94(%rbp)
     8cc:	c6 85 6d ff ff ff 00 	movb   $0x0,-0x93(%rbp)
     8d3:	c6 85 6e ff ff ff 0f 	movb   $0xf,-0x92(%rbp)
     8da:	c6 85 6f ff ff ff 08 	movb   $0x8,-0x91(%rbp)
     8e1:	c6 85 70 ff ff ff 09 	movb   $0x9,-0x90(%rbp)
     8e8:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%rbp)
     8ef:	c6 85 72 ff ff ff 05 	movb   $0x5,-0x8e(%rbp)
     8f6:	c6 85 73 ff ff ff 07 	movb   $0x7,-0x8d(%rbp)
     8fd:	c6 85 74 ff ff ff 02 	movb   $0x2,-0x8c(%rbp)
     904:	c6 85 75 ff ff ff 04 	movb   $0x4,-0x8b(%rbp)
     90b:	c6 85 76 ff ff ff 0a 	movb   $0xa,-0x8a(%rbp)
     912:	c6 85 77 ff ff ff 0f 	movb   $0xf,-0x89(%rbp)
     919:	c6 85 78 ff ff ff 0e 	movb   $0xe,-0x88(%rbp)
     920:	c6 85 79 ff ff ff 01 	movb   $0x1,-0x87(%rbp)
     927:	c6 85 7a ff ff ff 0b 	movb   $0xb,-0x86(%rbp)
     92e:	c6 85 7b ff ff ff 0c 	movb   $0xc,-0x85(%rbp)
     935:	c6 85 7c ff ff ff 06 	movb   $0x6,-0x84(%rbp)
     93c:	c6 85 7d ff ff ff 08 	movb   $0x8,-0x83(%rbp)
     943:	c6 85 7e ff ff ff 03 	movb   $0x3,-0x82(%rbp)
     94a:	c6 85 7f ff ff ff 0d 	movb   $0xd,-0x81(%rbp)
     951:	c6 45 80 02          	movb   $0x2,-0x80(%rbp)
     955:	c6 45 81 0c          	movb   $0xc,-0x7f(%rbp)
     959:	c6 45 82 06          	movb   $0x6,-0x7e(%rbp)
     95d:	c6 45 83 0a          	movb   $0xa,-0x7d(%rbp)
     961:	c6 45 84 00          	movb   $0x0,-0x7c(%rbp)
     965:	c6 45 85 0b          	movb   $0xb,-0x7b(%rbp)
     969:	c6 45 86 08          	movb   $0x8,-0x7a(%rbp)
     96d:	c6 45 87 03          	movb   $0x3,-0x79(%rbp)
     971:	c6 45 88 04          	movb   $0x4,-0x78(%rbp)
     975:	c6 45 89 0d          	movb   $0xd,-0x77(%rbp)
     979:	c6 45 8a 07          	movb   $0x7,-0x76(%rbp)
     97d:	c6 45 8b 05          	movb   $0x5,-0x75(%rbp)
     981:	c6 45 8c 0f          	movb   $0xf,-0x74(%rbp)
     985:	c6 45 8d 0e          	movb   $0xe,-0x73(%rbp)
     989:	c6 45 8e 01          	movb   $0x1,-0x72(%rbp)
     98d:	c6 45 8f 09          	movb   $0x9,-0x71(%rbp)
     991:	c6 45 90 0c          	movb   $0xc,-0x70(%rbp)
     995:	c6 45 91 05          	movb   $0x5,-0x6f(%rbp)
     999:	c6 45 92 01          	movb   $0x1,-0x6e(%rbp)
     99d:	c6 45 93 0f          	movb   $0xf,-0x6d(%rbp)
     9a1:	c6 45 94 0e          	movb   $0xe,-0x6c(%rbp)
     9a5:	c6 45 95 0d          	movb   $0xd,-0x6b(%rbp)
     9a9:	c6 45 96 04          	movb   $0x4,-0x6a(%rbp)
     9ad:	c6 45 97 0a          	movb   $0xa,-0x69(%rbp)
     9b1:	c6 45 98 00          	movb   $0x0,-0x68(%rbp)
     9b5:	c6 45 99 07          	movb   $0x7,-0x67(%rbp)
     9b9:	c6 45 9a 06          	movb   $0x6,-0x66(%rbp)
     9bd:	c6 45 9b 03          	movb   $0x3,-0x65(%rbp)
     9c1:	c6 45 9c 09          	movb   $0x9,-0x64(%rbp)
     9c5:	c6 45 9d 02          	movb   $0x2,-0x63(%rbp)
     9c9:	c6 45 9e 08          	movb   $0x8,-0x62(%rbp)
     9cd:	c6 45 9f 0b          	movb   $0xb,-0x61(%rbp)
     9d1:	c6 45 a0 0d          	movb   $0xd,-0x60(%rbp)
     9d5:	c6 45 a1 0b          	movb   $0xb,-0x5f(%rbp)
     9d9:	c6 45 a2 07          	movb   $0x7,-0x5e(%rbp)
     9dd:	c6 45 a3 0e          	movb   $0xe,-0x5d(%rbp)
     9e1:	c6 45 a4 0c          	movb   $0xc,-0x5c(%rbp)
     9e5:	c6 45 a5 01          	movb   $0x1,-0x5b(%rbp)
     9e9:	c6 45 a6 03          	movb   $0x3,-0x5a(%rbp)
     9ed:	c6 45 a7 09          	movb   $0x9,-0x59(%rbp)
     9f1:	c6 45 a8 05          	movb   $0x5,-0x58(%rbp)
     9f5:	c6 45 a9 00          	movb   $0x0,-0x57(%rbp)
     9f9:	c6 45 aa 0f          	movb   $0xf,-0x56(%rbp)
     9fd:	c6 45 ab 04          	movb   $0x4,-0x55(%rbp)
     a01:	c6 45 ac 08          	movb   $0x8,-0x54(%rbp)
     a05:	c6 45 ad 06          	movb   $0x6,-0x53(%rbp)
     a09:	c6 45 ae 02          	movb   $0x2,-0x52(%rbp)
     a0d:	c6 45 af 0a          	movb   $0xa,-0x51(%rbp)
     a11:	c6 45 b0 06          	movb   $0x6,-0x50(%rbp)
     a15:	c6 45 b1 0f          	movb   $0xf,-0x4f(%rbp)
     a19:	c6 45 b2 0e          	movb   $0xe,-0x4e(%rbp)
     a1d:	c6 45 b3 09          	movb   $0x9,-0x4d(%rbp)
     a21:	c6 45 b4 0b          	movb   $0xb,-0x4c(%rbp)
     a25:	c6 45 b5 03          	movb   $0x3,-0x4b(%rbp)
     a29:	c6 45 b6 00          	movb   $0x0,-0x4a(%rbp)
     a2d:	c6 45 b7 08          	movb   $0x8,-0x49(%rbp)
     a31:	c6 45 b8 0c          	movb   $0xc,-0x48(%rbp)
     a35:	c6 45 b9 02          	movb   $0x2,-0x47(%rbp)
     a39:	c6 45 ba 0d          	movb   $0xd,-0x46(%rbp)
     a3d:	c6 45 bb 07          	movb   $0x7,-0x45(%rbp)
     a41:	c6 45 bc 01          	movb   $0x1,-0x44(%rbp)
     a45:	c6 45 bd 04          	movb   $0x4,-0x43(%rbp)
     a49:	c6 45 be 0a          	movb   $0xa,-0x42(%rbp)
     a4d:	c6 45 bf 05          	movb   $0x5,-0x41(%rbp)
     a51:	c6 45 c0 0a          	movb   $0xa,-0x40(%rbp)
     a55:	c6 45 c1 02          	movb   $0x2,-0x3f(%rbp)
     a59:	c6 45 c2 08          	movb   $0x8,-0x3e(%rbp)
     a5d:	c6 45 c3 04          	movb   $0x4,-0x3d(%rbp)
     a61:	c6 45 c4 07          	movb   $0x7,-0x3c(%rbp)
     a65:	c6 45 c5 06          	movb   $0x6,-0x3b(%rbp)
     a69:	c6 45 c6 01          	movb   $0x1,-0x3a(%rbp)
     a6d:	c6 45 c7 05          	movb   $0x5,-0x39(%rbp)
     a71:	c6 45 c8 0f          	movb   $0xf,-0x38(%rbp)
     a75:	c6 45 c9 0b          	movb   $0xb,-0x37(%rbp)
     a79:	c6 45 ca 09          	movb   $0x9,-0x36(%rbp)
     a7d:	c6 45 cb 0e          	movb   $0xe,-0x35(%rbp)
     a81:	c6 45 cc 03          	movb   $0x3,-0x34(%rbp)
     a85:	c6 45 cd 0c          	movb   $0xc,-0x33(%rbp)
     a89:	c6 45 ce 0d          	movb   $0xd,-0x32(%rbp)
     a8d:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
     a91:	c6 45 d0 00          	movb   $0x0,-0x30(%rbp)
     a95:	c6 45 d1 01          	movb   $0x1,-0x2f(%rbp)
     a99:	c6 45 d2 02          	movb   $0x2,-0x2e(%rbp)
     a9d:	c6 45 d3 03          	movb   $0x3,-0x2d(%rbp)
     aa1:	c6 45 d4 04          	movb   $0x4,-0x2c(%rbp)
     aa5:	c6 45 d5 05          	movb   $0x5,-0x2b(%rbp)
     aa9:	c6 45 d6 06          	movb   $0x6,-0x2a(%rbp)
     aad:	c6 45 d7 07          	movb   $0x7,-0x29(%rbp)
     ab1:	c6 45 d8 08          	movb   $0x8,-0x28(%rbp)
     ab5:	c6 45 d9 09          	movb   $0x9,-0x27(%rbp)
     ab9:	c6 45 da 0a          	movb   $0xa,-0x26(%rbp)
     abd:	c6 45 db 0b          	movb   $0xb,-0x25(%rbp)
     ac1:	c6 45 dc 0c          	movb   $0xc,-0x24(%rbp)
     ac5:	c6 45 dd 0d          	movb   $0xd,-0x23(%rbp)
     ac9:	c6 45 de 0e          	movb   $0xe,-0x22(%rbp)
     acd:	c6 45 df 0f          	movb   $0xf,-0x21(%rbp)
     ad1:	c6 45 e0 0e          	movb   $0xe,-0x20(%rbp)
     ad5:	c6 45 e1 0a          	movb   $0xa,-0x1f(%rbp)
     ad9:	c6 45 e2 04          	movb   $0x4,-0x1e(%rbp)
     add:	c6 45 e3 08          	movb   $0x8,-0x1d(%rbp)
     ae1:	c6 45 e4 09          	movb   $0x9,-0x1c(%rbp)
     ae5:	c6 45 e5 0f          	movb   $0xf,-0x1b(%rbp)
     ae9:	c6 45 e6 0d          	movb   $0xd,-0x1a(%rbp)
     aed:	c6 45 e7 06          	movb   $0x6,-0x19(%rbp)
     af1:	c6 45 e8 01          	movb   $0x1,-0x18(%rbp)
     af5:	c6 45 e9 0c          	movb   $0xc,-0x17(%rbp)
     af9:	c6 45 ea 00          	movb   $0x0,-0x16(%rbp)
     afd:	c6 45 eb 02          	movb   $0x2,-0x15(%rbp)
     b01:	c6 45 ec 0b          	movb   $0xb,-0x14(%rbp)
     b05:	c6 45 ed 07          	movb   $0x7,-0x13(%rbp)
     b09:	c6 45 ee 05          	movb   $0x5,-0x12(%rbp)
     b0d:	c6 45 ef 03          	movb   $0x3,-0x11(%rbp)
    };

    int i;
    uint64_t v[16], m[16];

    for (i = 0; i < 8; i++) {           // init work variables
     b11:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     b18:	00 00 00 
     b1b:	eb 5e                	jmp    b7b <blake2b_compress+0x481>
        v[i] = ctx->h[i];
     b1d:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     b24:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
     b2a:	48 63 d2             	movslq %edx,%rdx
     b2d:	48 83 c2 10          	add    $0x10,%rdx
     b31:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
     b35:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     b3b:	48 98                	cltq   
     b3d:	48 89 94 c5 30 fe ff 	mov    %rdx,-0x1d0(%rbp,%rax,8)
     b44:	ff 
        v[i + 8] = blake2b_iv[i];
     b45:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     b4b:	8d 48 08             	lea    0x8(%rax),%ecx
     b4e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     b54:	48 98                	cltq   
     b56:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     b5d:	00 
     b5e:	48 8d 05 7b 11 00 00 	lea    0x117b(%rip),%rax        # 1ce0 <blake2b_iv>
     b65:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     b69:	48 63 c1             	movslq %ecx,%rax
     b6c:	48 89 94 c5 30 fe ff 	mov    %rdx,-0x1d0(%rbp,%rax,8)
     b73:	ff 
    for (i = 0; i < 8; i++) {           // init work variables
     b74:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
     b7b:	83 bd 2c fe ff ff 07 	cmpl   $0x7,-0x1d4(%rbp)
     b82:	7e 99                	jle    b1d <blake2b_compress+0x423>
    }

    v[12] ^= ctx->t[0];                 // low 64 bits of offset
     b84:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     b8b:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     b92:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
     b99:	48 31 d0             	xor    %rdx,%rax
     b9c:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    v[13] ^= ctx->t[1];                 // high 64 bits
     ba3:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
     baa:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     bb1:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
     bb8:	48 31 d0             	xor    %rdx,%rax
     bbb:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    if (last)                           // last block flag set ?
     bc2:	83 bd 14 fe ff ff 00 	cmpl   $0x0,-0x1ec(%rbp)
     bc9:	74 11                	je     bdc <blake2b_compress+0x4e2>
        v[14] = ~v[14];
     bcb:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
     bd2:	48 f7 d0             	not    %rax
     bd5:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)

    for (i = 0; i < 16; i++)            // get little-endian words
     bdc:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     be3:	00 00 00 
     be6:	e9 47 01 00 00       	jmpq   d32 <blake2b_compress+0x638>
        m[i] = B2B_GET64(&ctx->b[8 * i]);
     beb:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     bf1:	c1 e0 03             	shl    $0x3,%eax
     bf4:	48 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%rdx
     bfb:	48 98                	cltq   
     bfd:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
     c01:	0f b6 c0             	movzbl %al,%eax
     c04:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
     c0a:	c1 e2 03             	shl    $0x3,%edx
     c0d:	48 63 ca             	movslq %edx,%rcx
     c10:	48 8b 95 18 fe ff ff 	mov    -0x1e8(%rbp),%rdx
     c17:	48 01 ca             	add    %rcx,%rdx
     c1a:	48 83 c2 01          	add    $0x1,%rdx
     c1e:	0f b6 12             	movzbl (%rdx),%edx
     c21:	0f b6 d2             	movzbl %dl,%edx
     c24:	48 c1 e2 08          	shl    $0x8,%rdx
     c28:	48 31 d0             	xor    %rdx,%rax
     c2b:	48 89 c1             	mov    %rax,%rcx
     c2e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     c34:	c1 e0 03             	shl    $0x3,%eax
     c37:	48 63 d0             	movslq %eax,%rdx
     c3a:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     c41:	48 01 d0             	add    %rdx,%rax
     c44:	48 83 c0 02          	add    $0x2,%rax
     c48:	0f b6 00             	movzbl (%rax),%eax
     c4b:	0f b6 c0             	movzbl %al,%eax
     c4e:	48 c1 e0 10          	shl    $0x10,%rax
     c52:	48 31 c1             	xor    %rax,%rcx
     c55:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     c5b:	c1 e0 03             	shl    $0x3,%eax
     c5e:	48 63 d0             	movslq %eax,%rdx
     c61:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     c68:	48 01 d0             	add    %rdx,%rax
     c6b:	48 83 c0 03          	add    $0x3,%rax
     c6f:	0f b6 00             	movzbl (%rax),%eax
     c72:	0f b6 c0             	movzbl %al,%eax
     c75:	48 c1 e0 18          	shl    $0x18,%rax
     c79:	48 31 c1             	xor    %rax,%rcx
     c7c:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     c82:	c1 e0 03             	shl    $0x3,%eax
     c85:	48 63 d0             	movslq %eax,%rdx
     c88:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     c8f:	48 01 d0             	add    %rdx,%rax
     c92:	48 83 c0 04          	add    $0x4,%rax
     c96:	0f b6 00             	movzbl (%rax),%eax
     c99:	0f b6 c0             	movzbl %al,%eax
     c9c:	48 c1 e0 20          	shl    $0x20,%rax
     ca0:	48 31 c1             	xor    %rax,%rcx
     ca3:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     ca9:	c1 e0 03             	shl    $0x3,%eax
     cac:	48 63 d0             	movslq %eax,%rdx
     caf:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     cb6:	48 01 d0             	add    %rdx,%rax
     cb9:	48 83 c0 05          	add    $0x5,%rax
     cbd:	0f b6 00             	movzbl (%rax),%eax
     cc0:	0f b6 c0             	movzbl %al,%eax
     cc3:	48 c1 e0 28          	shl    $0x28,%rax
     cc7:	48 31 c1             	xor    %rax,%rcx
     cca:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     cd0:	c1 e0 03             	shl    $0x3,%eax
     cd3:	48 63 d0             	movslq %eax,%rdx
     cd6:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     cdd:	48 01 d0             	add    %rdx,%rax
     ce0:	48 83 c0 06          	add    $0x6,%rax
     ce4:	0f b6 00             	movzbl (%rax),%eax
     ce7:	0f b6 c0             	movzbl %al,%eax
     cea:	48 c1 e0 30          	shl    $0x30,%rax
     cee:	48 31 c1             	xor    %rax,%rcx
     cf1:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     cf7:	c1 e0 03             	shl    $0x3,%eax
     cfa:	48 63 d0             	movslq %eax,%rdx
     cfd:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
     d04:	48 01 d0             	add    %rdx,%rax
     d07:	48 83 c0 07          	add    $0x7,%rax
     d0b:	0f b6 00             	movzbl (%rax),%eax
     d0e:	0f b6 c0             	movzbl %al,%eax
     d11:	48 c1 e0 38          	shl    $0x38,%rax
     d15:	48 31 c1             	xor    %rax,%rcx
     d18:	48 89 ca             	mov    %rcx,%rdx
     d1b:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d21:	48 98                	cltq   
     d23:	48 89 94 c5 b0 fe ff 	mov    %rdx,-0x150(%rbp,%rax,8)
     d2a:	ff 
    for (i = 0; i < 16; i++)            // get little-endian words
     d2b:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
     d32:	83 bd 2c fe ff ff 0f 	cmpl   $0xf,-0x1d4(%rbp)
     d39:	0f 8e ac fe ff ff    	jle    beb <blake2b_compress+0x4f1>


    for (i = 0; i < 12; i++) { // twelve rounds
     d3f:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
     d46:	00 00 00 
     d49:	e9 ff 08 00 00       	jmpq   164d <blake2b_compress+0xf53>
    
        B2B_G( 0, 4,  8, 12, m[sigma[i][0]], m[sigma[i][ 1]]);
     d4e:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
     d55:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     d5c:	48 01 c2             	add    %rax,%rdx
     d5f:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     d65:	48 98                	cltq   
     d67:	48 c1 e0 04          	shl    $0x4,%rax
     d6b:	48 01 e8             	add    %rbp,%rax
     d6e:	48 2d d0 00 00 00    	sub    $0xd0,%rax
     d74:	0f b6 00             	movzbl (%rax),%eax
     d77:	0f b6 c0             	movzbl %al,%eax
     d7a:	48 98                	cltq   
     d7c:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     d83:	ff 
     d84:	48 01 d0             	add    %rdx,%rax
     d87:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
     d8e:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     d95:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
     d9c:	48 31 d0             	xor    %rdx,%rax
     d9f:	48 c1 c0 20          	rol    $0x20,%rax
     da3:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
     daa:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
     db1:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
     db8:	48 01 d0             	add    %rdx,%rax
     dbb:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
     dc2:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
     dc9:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
     dd0:	48 31 d0             	xor    %rdx,%rax
     dd3:	48 c1 c8 18          	ror    $0x18,%rax
     dd7:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
     dde:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
     de5:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     dec:	48 01 c2             	add    %rax,%rdx
     def:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     df5:	48 98                	cltq   
     df7:	48 c1 e0 04          	shl    $0x4,%rax
     dfb:	48 01 e8             	add    %rbp,%rax
     dfe:	48 2d cf 00 00 00    	sub    $0xcf,%rax
     e04:	0f b6 00             	movzbl (%rax),%eax
     e07:	0f b6 c0             	movzbl %al,%eax
     e0a:	48 98                	cltq   
     e0c:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     e13:	ff 
     e14:	48 01 d0             	add    %rdx,%rax
     e17:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
     e1e:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
     e25:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
     e2c:	48 31 d0             	xor    %rdx,%rax
     e2f:	48 c1 c8 10          	ror    $0x10,%rax
     e33:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
     e3a:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
     e41:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
     e48:	48 01 d0             	add    %rdx,%rax
     e4b:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
     e52:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
     e59:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
     e60:	48 31 d0             	xor    %rdx,%rax
     e63:	48 d1 c0             	rol    %rax
     e66:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)

        B2B_G( 1, 5,  9, 13, m[sigma[i][2]], m[sigma[i][ 3]]);
     e6d:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
     e74:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
     e7b:	48 01 c2             	add    %rax,%rdx
     e7e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     e84:	48 98                	cltq   
     e86:	48 c1 e0 04          	shl    $0x4,%rax
     e8a:	48 01 e8             	add    %rbp,%rax
     e8d:	48 2d ce 00 00 00    	sub    $0xce,%rax
     e93:	0f b6 00             	movzbl (%rax),%eax
     e96:	0f b6 c0             	movzbl %al,%eax
     e99:	48 98                	cltq   
     e9b:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     ea2:	ff 
     ea3:	48 01 d0             	add    %rdx,%rax
     ea6:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
     ead:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
     eb4:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
     ebb:	48 31 d0             	xor    %rdx,%rax
     ebe:	48 c1 c0 20          	rol    $0x20,%rax
     ec2:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
     ec9:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
     ed0:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
     ed7:	48 01 d0             	add    %rdx,%rax
     eda:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
     ee1:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
     ee8:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
     eef:	48 31 d0             	xor    %rdx,%rax
     ef2:	48 c1 c8 18          	ror    $0x18,%rax
     ef6:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
     efd:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
     f04:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
     f0b:	48 01 c2             	add    %rax,%rdx
     f0e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     f14:	48 98                	cltq   
     f16:	48 c1 e0 04          	shl    $0x4,%rax
     f1a:	48 01 e8             	add    %rbp,%rax
     f1d:	48 2d cd 00 00 00    	sub    $0xcd,%rax
     f23:	0f b6 00             	movzbl (%rax),%eax
     f26:	0f b6 c0             	movzbl %al,%eax
     f29:	48 98                	cltq   
     f2b:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     f32:	ff 
     f33:	48 01 d0             	add    %rdx,%rax
     f36:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
     f3d:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
     f44:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
     f4b:	48 31 d0             	xor    %rdx,%rax
     f4e:	48 c1 c8 10          	ror    $0x10,%rax
     f52:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
     f59:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
     f60:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
     f67:	48 01 d0             	add    %rdx,%rax
     f6a:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
     f71:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
     f78:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
     f7f:	48 31 d0             	xor    %rdx,%rax
     f82:	48 d1 c0             	rol    %rax
     f85:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    
        B2B_G( 2, 6, 10, 14, m[sigma[i][4]], m[sigma[i][ 5]]);
     f8c:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
     f93:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
     f9a:	48 01 c2             	add    %rax,%rdx
     f9d:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
     fa3:	48 98                	cltq   
     fa5:	48 c1 e0 04          	shl    $0x4,%rax
     fa9:	48 01 e8             	add    %rbp,%rax
     fac:	48 2d cc 00 00 00    	sub    $0xcc,%rax
     fb2:	0f b6 00             	movzbl (%rax),%eax
     fb5:	0f b6 c0             	movzbl %al,%eax
     fb8:	48 98                	cltq   
     fba:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
     fc1:	ff 
     fc2:	48 01 d0             	add    %rdx,%rax
     fc5:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
     fcc:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
     fd3:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
     fda:	48 31 d0             	xor    %rdx,%rax
     fdd:	48 c1 c0 20          	rol    $0x20,%rax
     fe1:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
     fe8:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
     fef:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
     ff6:	48 01 d0             	add    %rdx,%rax
     ff9:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1000:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    1007:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    100e:	48 31 d0             	xor    %rdx,%rax
    1011:	48 c1 c8 18          	ror    $0x18,%rax
    1015:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    101c:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    1023:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    102a:	48 01 c2             	add    %rax,%rdx
    102d:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1033:	48 98                	cltq   
    1035:	48 c1 e0 04          	shl    $0x4,%rax
    1039:	48 01 e8             	add    %rbp,%rax
    103c:	48 2d cb 00 00 00    	sub    $0xcb,%rax
    1042:	0f b6 00             	movzbl (%rax),%eax
    1045:	0f b6 c0             	movzbl %al,%eax
    1048:	48 98                	cltq   
    104a:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1051:	ff 
    1052:	48 01 d0             	add    %rdx,%rax
    1055:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    105c:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    1063:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    106a:	48 31 d0             	xor    %rdx,%rax
    106d:	48 c1 c8 10          	ror    $0x10,%rax
    1071:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    1078:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    107f:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    1086:	48 01 d0             	add    %rdx,%rax
    1089:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    1090:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    1097:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    109e:	48 31 d0             	xor    %rdx,%rax
    10a1:	48 d1 c0             	rol    %rax
    10a4:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
       
        B2B_G( 3, 7, 11, 15, m[sigma[i][6]], m[sigma[i][ 7]]);
    10ab:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    10b2:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    10b9:	48 01 c2             	add    %rax,%rdx
    10bc:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    10c2:	48 98                	cltq   
    10c4:	48 c1 e0 04          	shl    $0x4,%rax
    10c8:	48 01 e8             	add    %rbp,%rax
    10cb:	48 2d ca 00 00 00    	sub    $0xca,%rax
    10d1:	0f b6 00             	movzbl (%rax),%eax
    10d4:	0f b6 c0             	movzbl %al,%eax
    10d7:	48 98                	cltq   
    10d9:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    10e0:	ff 
    10e1:	48 01 d0             	add    %rdx,%rax
    10e4:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    10eb:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    10f2:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    10f9:	48 31 d0             	xor    %rdx,%rax
    10fc:	48 c1 c0 20          	rol    $0x20,%rax
    1100:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    1107:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    110e:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    1115:	48 01 d0             	add    %rdx,%rax
    1118:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    111f:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    1126:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    112d:	48 31 d0             	xor    %rdx,%rax
    1130:	48 c1 c8 18          	ror    $0x18,%rax
    1134:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
    113b:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1142:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1149:	48 01 c2             	add    %rax,%rdx
    114c:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1152:	48 98                	cltq   
    1154:	48 c1 e0 04          	shl    $0x4,%rax
    1158:	48 01 e8             	add    %rbp,%rax
    115b:	48 2d c9 00 00 00    	sub    $0xc9,%rax
    1161:	0f b6 00             	movzbl (%rax),%eax
    1164:	0f b6 c0             	movzbl %al,%eax
    1167:	48 98                	cltq   
    1169:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    1170:	ff 
    1171:	48 01 d0             	add    %rdx,%rax
    1174:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    117b:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    1182:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    1189:	48 31 d0             	xor    %rdx,%rax
    118c:	48 c1 c8 10          	ror    $0x10,%rax
    1190:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    1197:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    119e:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    11a5:	48 01 d0             	add    %rdx,%rax
    11a8:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    11af:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    11b6:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    11bd:	48 31 d0             	xor    %rdx,%rax
    11c0:	48 d1 c0             	rol    %rax
    11c3:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
        
        B2B_G( 0, 5, 10, 15, m[sigma[i][8]], m[sigma[i][ 9]]);
    11ca:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
    11d1:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    11d8:	48 01 c2             	add    %rax,%rdx
    11db:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    11e1:	48 98                	cltq   
    11e3:	48 c1 e0 04          	shl    $0x4,%rax
    11e7:	48 01 e8             	add    %rbp,%rax
    11ea:	48 2d c8 00 00 00    	sub    $0xc8,%rax
    11f0:	0f b6 00             	movzbl (%rax),%eax
    11f3:	0f b6 c0             	movzbl %al,%eax
    11f6:	48 98                	cltq   
    11f8:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    11ff:	ff 
    1200:	48 01 d0             	add    %rdx,%rax
    1203:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    120a:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    1211:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    1218:	48 31 d0             	xor    %rdx,%rax
    121b:	48 c1 c0 20          	rol    $0x20,%rax
    121f:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    1226:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    122d:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    1234:	48 01 d0             	add    %rdx,%rax
    1237:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    123e:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    1245:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    124c:	48 31 d0             	xor    %rdx,%rax
    124f:	48 c1 c8 18          	ror    $0x18,%rax
    1253:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    125a:	48 8b 95 30 fe ff ff 	mov    -0x1d0(%rbp),%rdx
    1261:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
    1268:	48 01 c2             	add    %rax,%rdx
    126b:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1271:	48 98                	cltq   
    1273:	48 c1 e0 04          	shl    $0x4,%rax
    1277:	48 01 e8             	add    %rbp,%rax
    127a:	48 2d c7 00 00 00    	sub    $0xc7,%rax
    1280:	0f b6 00             	movzbl (%rax),%eax
    1283:	0f b6 c0             	movzbl %al,%eax
    1286:	48 98                	cltq   
    1288:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    128f:	ff 
    1290:	48 01 d0             	add    %rdx,%rax
    1293:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    129a:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
    12a1:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    12a8:	48 31 d0             	xor    %rdx,%rax
    12ab:	48 c1 c8 10          	ror    $0x10,%rax
    12af:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    12b6:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
    12bd:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    12c4:	48 01 d0             	add    %rdx,%rax
    12c7:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
    12ce:	48 8b 95 58 fe ff ff 	mov    -0x1a8(%rbp),%rdx
    12d5:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    12dc:	48 31 d0             	xor    %rdx,%rax
    12df:	48 d1 c0             	rol    %rax
    12e2:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
        
        B2B_G( 1, 6, 11, 12, m[sigma[i][10]], m[sigma[i][11]]);
    12e9:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    12f0:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    12f7:	48 01 c2             	add    %rax,%rdx
    12fa:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1300:	48 98                	cltq   
    1302:	48 c1 e0 04          	shl    $0x4,%rax
    1306:	48 01 e8             	add    %rbp,%rax
    1309:	48 2d c6 00 00 00    	sub    $0xc6,%rax
    130f:	0f b6 00             	movzbl (%rax),%eax
    1312:	0f b6 c0             	movzbl %al,%eax
    1315:	48 98                	cltq   
    1317:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    131e:	ff 
    131f:	48 01 d0             	add    %rdx,%rax
    1322:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    1329:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
    1330:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    1337:	48 31 d0             	xor    %rdx,%rax
    133a:	48 c1 c0 20          	rol    $0x20,%rax
    133e:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    1345:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    134c:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
    1353:	48 01 d0             	add    %rdx,%rax
    1356:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    135d:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    1364:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    136b:	48 31 d0             	xor    %rdx,%rax
    136e:	48 c1 c8 18          	ror    $0x18,%rax
    1372:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    1379:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
    1380:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
    1387:	48 01 c2             	add    %rax,%rdx
    138a:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1390:	48 98                	cltq   
    1392:	48 c1 e0 04          	shl    $0x4,%rax
    1396:	48 01 e8             	add    %rbp,%rax
    1399:	48 2d c5 00 00 00    	sub    $0xc5,%rax
    139f:	0f b6 00             	movzbl (%rax),%eax
    13a2:	0f b6 c0             	movzbl %al,%eax
    13a5:	48 98                	cltq   
    13a7:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    13ae:	ff 
    13af:	48 01 d0             	add    %rdx,%rax
    13b2:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    13b9:	48 8b 95 90 fe ff ff 	mov    -0x170(%rbp),%rdx
    13c0:	48 8b 85 38 fe ff ff 	mov    -0x1c8(%rbp),%rax
    13c7:	48 31 d0             	xor    %rdx,%rax
    13ca:	48 c1 c8 10          	ror    $0x10,%rax
    13ce:	48 89 85 90 fe ff ff 	mov    %rax,-0x170(%rbp)
    13d5:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    13dc:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
    13e3:	48 01 d0             	add    %rdx,%rax
    13e6:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
    13ed:	48 8b 95 60 fe ff ff 	mov    -0x1a0(%rbp),%rdx
    13f4:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    13fb:	48 31 d0             	xor    %rdx,%rax
    13fe:	48 d1 c0             	rol    %rax
    1401:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
        
        B2B_G( 2, 7,  8, 13, m[sigma[i][12]], m[sigma[i][13]]);
    1408:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    140f:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    1416:	48 01 c2             	add    %rax,%rdx
    1419:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    141f:	48 98                	cltq   
    1421:	48 c1 e0 04          	shl    $0x4,%rax
    1425:	48 01 e8             	add    %rbp,%rax
    1428:	48 2d c4 00 00 00    	sub    $0xc4,%rax
    142e:	0f b6 00             	movzbl (%rax),%eax
    1431:	0f b6 c0             	movzbl %al,%eax
    1434:	48 98                	cltq   
    1436:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    143d:	ff 
    143e:	48 01 d0             	add    %rdx,%rax
    1441:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    1448:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    144f:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    1456:	48 31 d0             	xor    %rdx,%rax
    1459:	48 c1 c0 20          	rol    $0x20,%rax
    145d:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    1464:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
    146b:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    1472:	48 01 d0             	add    %rdx,%rax
    1475:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    147c:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    1483:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    148a:	48 31 d0             	xor    %rdx,%rax
    148d:	48 c1 c8 18          	ror    $0x18,%rax
    1491:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
    1498:	48 8b 95 40 fe ff ff 	mov    -0x1c0(%rbp),%rdx
    149f:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
    14a6:	48 01 c2             	add    %rax,%rdx
    14a9:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    14af:	48 98                	cltq   
    14b1:	48 c1 e0 04          	shl    $0x4,%rax
    14b5:	48 01 e8             	add    %rbp,%rax
    14b8:	48 2d c3 00 00 00    	sub    $0xc3,%rax
    14be:	0f b6 00             	movzbl (%rax),%eax
    14c1:	0f b6 c0             	movzbl %al,%eax
    14c4:	48 98                	cltq   
    14c6:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    14cd:	ff 
    14ce:	48 01 d0             	add    %rdx,%rax
    14d1:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    14d8:	48 8b 95 98 fe ff ff 	mov    -0x168(%rbp),%rdx
    14df:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    14e6:	48 31 d0             	xor    %rdx,%rax
    14e9:	48 c1 c8 10          	ror    $0x10,%rax
    14ed:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
    14f4:	48 8b 95 70 fe ff ff 	mov    -0x190(%rbp),%rdx
    14fb:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
    1502:	48 01 d0             	add    %rdx,%rax
    1505:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
    150c:	48 8b 95 68 fe ff ff 	mov    -0x198(%rbp),%rdx
    1513:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    151a:	48 31 d0             	xor    %rdx,%rax
    151d:	48 d1 c0             	rol    %rax
    1520:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
       
        B2B_G( 3, 4,  9, 14, m[sigma[i][14]], m[sigma[i][15]]);       
    1527:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    152e:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    1535:	48 01 c2             	add    %rax,%rdx
    1538:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    153e:	48 98                	cltq   
    1540:	48 c1 e0 04          	shl    $0x4,%rax
    1544:	48 01 e8             	add    %rbp,%rax
    1547:	48 2d c2 00 00 00    	sub    $0xc2,%rax
    154d:	0f b6 00             	movzbl (%rax),%eax
    1550:	0f b6 c0             	movzbl %al,%eax
    1553:	48 98                	cltq   
    1555:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    155c:	ff 
    155d:	48 01 d0             	add    %rdx,%rax
    1560:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    1567:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    156e:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    1575:	48 31 d0             	xor    %rdx,%rax
    1578:	48 c1 c0 20          	rol    $0x20,%rax
    157c:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    1583:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    158a:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    1591:	48 01 d0             	add    %rdx,%rax
    1594:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    159b:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    15a2:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    15a9:	48 31 d0             	xor    %rdx,%rax
    15ac:	48 c1 c8 18          	ror    $0x18,%rax
    15b0:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    15b7:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    15be:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
    15c5:	48 01 c2             	add    %rax,%rdx
    15c8:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    15ce:	48 98                	cltq   
    15d0:	48 c1 e0 04          	shl    $0x4,%rax
    15d4:	48 01 e8             	add    %rbp,%rax
    15d7:	48 2d c1 00 00 00    	sub    $0xc1,%rax
    15dd:	0f b6 00             	movzbl (%rax),%eax
    15e0:	0f b6 c0             	movzbl %al,%eax
    15e3:	48 98                	cltq   
    15e5:	48 8b 84 c5 b0 fe ff 	mov    -0x150(%rbp,%rax,8),%rax
    15ec:	ff 
    15ed:	48 01 d0             	add    %rdx,%rax
    15f0:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    15f7:	48 8b 95 a0 fe ff ff 	mov    -0x160(%rbp),%rdx
    15fe:	48 8b 85 48 fe ff ff 	mov    -0x1b8(%rbp),%rax
    1605:	48 31 d0             	xor    %rdx,%rax
    1608:	48 c1 c8 10          	ror    $0x10,%rax
    160c:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
    1613:	48 8b 95 78 fe ff ff 	mov    -0x188(%rbp),%rdx
    161a:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
    1621:	48 01 d0             	add    %rdx,%rax
    1624:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
    162b:	48 8b 95 50 fe ff ff 	mov    -0x1b0(%rbp),%rdx
    1632:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1639:	48 31 d0             	xor    %rdx,%rax
    163c:	48 d1 c0             	rol    %rax
    163f:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    for (i = 0; i < 12; i++) { // twelve rounds
    1646:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    164d:	83 bd 2c fe ff ff 0b 	cmpl   $0xb,-0x1d4(%rbp)
    1654:	0f 8e f4 f6 ff ff    	jle    d4e <blake2b_compress+0x654>
    }       


    for( i = 0; i < 8; ++i )
    165a:	c7 85 2c fe ff ff 00 	movl   $0x0,-0x1d4(%rbp)
    1661:	00 00 00 
    1664:	eb 63                	jmp    16c9 <blake2b_compress+0xfcf>
        ctx->h[i] ^= v[i] ^ v[i + 8];
    1666:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    166d:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
    1673:	48 63 d2             	movslq %edx,%rdx
    1676:	48 83 c2 10          	add    $0x10,%rdx
    167a:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
    167e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1684:	48 98                	cltq   
    1686:	48 8b 8c c5 30 fe ff 	mov    -0x1d0(%rbp,%rax,8),%rcx
    168d:	ff 
    168e:	8b 85 2c fe ff ff    	mov    -0x1d4(%rbp),%eax
    1694:	83 c0 08             	add    $0x8,%eax
    1697:	48 98                	cltq   
    1699:	48 8b 84 c5 30 fe ff 	mov    -0x1d0(%rbp,%rax,8),%rax
    16a0:	ff 
    16a1:	48 31 c8             	xor    %rcx,%rax
    16a4:	48 89 d1             	mov    %rdx,%rcx
    16a7:	48 31 c1             	xor    %rax,%rcx
    16aa:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    16b1:	8b 95 2c fe ff ff    	mov    -0x1d4(%rbp),%edx
    16b7:	48 63 d2             	movslq %edx,%rdx
    16ba:	48 83 c2 10          	add    $0x10,%rdx
    16be:	48 89 0c d0          	mov    %rcx,(%rax,%rdx,8)
    for( i = 0; i < 8; ++i )
    16c2:	83 85 2c fe ff ff 01 	addl   $0x1,-0x1d4(%rbp)
    16c9:	83 bd 2c fe ff ff 07 	cmpl   $0x7,-0x1d4(%rbp)
    16d0:	7e 94                	jle    1666 <blake2b_compress+0xf6c>

}
    16d2:	90                   	nop
    16d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16d7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    16de:	00 00 
    16e0:	74 05                	je     16e7 <blake2b_compress+0xfed>
    16e2:	e8 d9 ee ff ff       	callq  5c0 <__stack_chk_fail@plt>
    16e7:	c9                   	leaveq 
    16e8:	c3                   	retq   

00000000000016e9 <blake2b_init>:


int blake2b_init(blake2b_ctx *ctx, size_t outlen, const void *key, size_t keylen) { 
    16e9:	55                   	push   %rbp
    16ea:	48 89 e5             	mov    %rsp,%rbp
    16ed:	48 83 ec 30          	sub    $0x30,%rsp
    16f1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    16f5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    16f9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    16fd:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    size_t i;       
    if (outlen == 0 || outlen > 64 || keylen > 64)           
    1701:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    1706:	74 0e                	je     1716 <blake2b_init+0x2d>
    1708:	48 83 7d e0 40       	cmpq   $0x40,-0x20(%rbp)
    170d:	77 07                	ja     1716 <blake2b_init+0x2d>
    170f:	48 83 7d d0 40       	cmpq   $0x40,-0x30(%rbp)
    1714:	76 0a                	jbe    1720 <blake2b_init+0x37>
        return -1;                      // illegal parameters       
    1716:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    171b:	e9 02 01 00 00       	jmpq   1822 <blake2b_init+0x139>
    
    for (i = 0; i < 8; i++)             // state, "param block"
    1720:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    1727:	00 
    1728:	eb 2c                	jmp    1756 <blake2b_init+0x6d>
        ctx->h[i] = blake2b_iv[i];       
    172a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    172e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1735:	00 
    1736:	48 8d 05 a3 05 00 00 	lea    0x5a3(%rip),%rax        # 1ce0 <blake2b_iv>
    173d:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
    1741:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1745:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1749:	48 83 c1 10          	add    $0x10,%rcx
    174d:	48 89 14 c8          	mov    %rdx,(%rax,%rcx,8)
    for (i = 0; i < 8; i++)             // state, "param block"
    1751:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1756:	48 83 7d f8 07       	cmpq   $0x7,-0x8(%rbp)
    175b:	76 cd                	jbe    172a <blake2b_init+0x41>
    
    ctx->h[0] ^= 0x01010000 ^ (keylen << 8) ^ outlen;
    175d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1761:	48 8b 90 80 00 00 00 	mov    0x80(%rax),%rdx
    1768:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    176c:	48 c1 e0 08          	shl    $0x8,%rax
    1770:	48 33 45 e0          	xor    -0x20(%rbp),%rax
    1774:	48 31 d0             	xor    %rdx,%rax
    1777:	48 35 00 00 01 01    	xor    $0x1010000,%rax
    177d:	48 89 c2             	mov    %rax,%rdx
    1780:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1784:	48 89 90 80 00 00 00 	mov    %rdx,0x80(%rax)
    
    ctx->t[0] = 0;                      // input count low word
    178b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    178f:	48 c7 80 c0 00 00 00 	movq   $0x0,0xc0(%rax)
    1796:	00 00 00 00 
    ctx->t[1] = 0;                      // input count high word      
    179a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    179e:	48 c7 80 c8 00 00 00 	movq   $0x0,0xc8(%rax)
    17a5:	00 00 00 00 
    
    ctx->c = 0;                         // pointer within buffer
    17a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17ad:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    17b4:	00 00 00 00 
    ctx->outlen = outlen;
    17b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17bc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    17c0:	48 89 90 d8 00 00 00 	mov    %rdx,0xd8(%rax)

    for (i = keylen; i < 128; i++)      // zero input block           
    17c7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    17cb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    17cf:	eb 13                	jmp    17e4 <blake2b_init+0xfb>
        ctx->b[i] = 0;       
    17d1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    17d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    17d9:	48 01 d0             	add    %rdx,%rax
    17dc:	c6 00 00             	movb   $0x0,(%rax)
    for (i = keylen; i < 128; i++)      // zero input block           
    17df:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    17e4:	48 83 7d f8 7f       	cmpq   $0x7f,-0x8(%rbp)
    17e9:	76 e6                	jbe    17d1 <blake2b_init+0xe8>
    
    if (keylen > 0) {           
    17eb:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    17f0:	74 2b                	je     181d <blake2b_init+0x134>
        blake2b_update(ctx, key, keylen);           
    17f2:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    17f6:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    17fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17fe:	48 89 ce             	mov    %rcx,%rsi
    1801:	48 89 c7             	mov    %rax,%rdi
    1804:	b8 00 00 00 00       	mov    $0x0,%eax
    1809:	e8 16 00 00 00       	callq  1824 <blake2b_update>
        ctx->c = 128;                   // at the end       
    180e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1812:	48 c7 80 d0 00 00 00 	movq   $0x80,0xd0(%rax)
    1819:	80 00 00 00 
    }
    return 0;   
    181d:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1822:	c9                   	leaveq 
    1823:	c3                   	retq   

0000000000001824 <blake2b_update>:

int blake2b_update(blake2b_ctx *ctx, const void *in, size_t inlen) {       
    1824:	55                   	push   %rbp
    1825:	48 89 e5             	mov    %rsp,%rbp
    1828:	48 83 ec 30          	sub    $0x30,%rsp
    182c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1830:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1834:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    size_t i;   
    for (i = 0; i < inlen; i++) {
    1838:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    183f:	00 
    1840:	e9 c1 00 00 00       	jmpq   1906 <blake2b_update+0xe2>
        if (ctx->c == 128) {            // buffer full ?
    1845:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1849:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1850:	48 3d 80 00 00 00    	cmp    $0x80,%rax
    1856:	75 79                	jne    18d1 <blake2b_update+0xad>
            ctx->t[0] += ctx->c;        // add counters
    1858:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    185c:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1863:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1867:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    186e:	48 01 c2             	add    %rax,%rdx
    1871:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1875:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
            if (ctx->t[0] < ctx->c)     // carry overflow ?
    187c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1880:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1887:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    188b:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1892:	48 39 c2             	cmp    %rax,%rdx
    1895:	73 1a                	jae    18b1 <blake2b_update+0x8d>
                ctx->t[1]++;            // high word
    1897:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    189b:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    18a2:	48 8d 50 01          	lea    0x1(%rax),%rdx
    18a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18aa:	48 89 90 c8 00 00 00 	mov    %rdx,0xc8(%rax)
            blake2b_compress(ctx, 0);   // compress (not last)
    18b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18b5:	be 00 00 00 00       	mov    $0x0,%esi
    18ba:	48 89 c7             	mov    %rax,%rdi
    18bd:	e8 38 ee ff ff       	callq  6fa <blake2b_compress>
            ctx->c = 0;                 // counter to zero
    18c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18c6:	48 c7 80 d0 00 00 00 	movq   $0x0,0xd0(%rax)
    18cd:	00 00 00 00 
        }           
        ctx->b[ctx->c++] = ((const uint8_t *) in)[i];    /* ---- Spectre vulnerability ---- */   
    18d1:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    18d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18d9:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    18dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18e1:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    18e8:	48 8d 48 01          	lea    0x1(%rax),%rcx
    18ec:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    18f0:	48 89 8a d0 00 00 00 	mov    %rcx,0xd0(%rdx)
    18f7:	0f b6 0e             	movzbl (%rsi),%ecx
    18fa:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    18fe:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
    for (i = 0; i < inlen; i++) {
    1901:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1906:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    190a:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    190e:	0f 82 31 ff ff ff    	jb     1845 <blake2b_update+0x21>
    }
    //printf("[update] c: %d\n",ctx->c);
    return 0;
    1914:	b8 00 00 00 00       	mov    $0x0,%eax
}  
    1919:	c9                   	leaveq 
    191a:	c3                   	retq   

000000000000191b <blake2b_final>:

int blake2b_final(blake2b_ctx *ctx, void *out)   {       
    191b:	55                   	push   %rbp
    191c:	48 89 e5             	mov    %rsp,%rbp
    191f:	48 83 ec 20          	sub    $0x20,%rsp
    1923:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1927:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    size_t i;   
    
    ctx->t[0] += ctx->c;               // mark last block offset
    192b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    192f:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    1936:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    193a:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1941:	48 01 c2             	add    %rax,%rdx
    1944:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1948:	48 89 90 c0 00 00 00 	mov    %rdx,0xc0(%rax)
    
    if (ctx->t[0] < ctx->c)             // carry overflow
    194f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1953:	48 8b 90 c0 00 00 00 	mov    0xc0(%rax),%rdx
    195a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    195e:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1965:	48 39 c2             	cmp    %rax,%rdx
    1968:	73 3e                	jae    19a8 <blake2b_final+0x8d>
        ctx->t[1]++;                    // high word
    196a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    196e:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    1975:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1979:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    197d:	48 89 90 c8 00 00 00 	mov    %rdx,0xc8(%rax)
    
    while (ctx->c < 128)                // fill up with zeros
    1984:	eb 22                	jmp    19a8 <blake2b_final+0x8d>
        ctx->b[ctx->c++] = 0;           /* ---- Spectre vulnerability ---- */
    1986:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    198a:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    1991:	48 8d 48 01          	lea    0x1(%rax),%rcx
    1995:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1999:	48 89 8a d0 00 00 00 	mov    %rcx,0xd0(%rdx)
    19a0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    19a4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    while (ctx->c < 128)                // fill up with zeros
    19a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19ac:	48 8b 80 d0 00 00 00 	mov    0xd0(%rax),%rax
    19b3:	48 83 f8 7f          	cmp    $0x7f,%rax
    19b7:	76 cd                	jbe    1986 <blake2b_final+0x6b>
    
    blake2b_compress(ctx, 1);           // final block flag = 1
    19b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19bd:	be 01 00 00 00       	mov    $0x1,%esi
    19c2:	48 89 c7             	mov    %rax,%rdi
    19c5:	e8 30 ed ff ff       	callq  6fa <blake2b_compress>
    
    // little endian convert and store       
    for (i = 0; i < ctx->outlen; i++) {           
    19ca:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    19d1:	00 
    19d2:	eb 3d                	jmp    1a11 <blake2b_final+0xf6>
        ((uint8_t *) out)[i] = (ctx->h[i >> 3] >> (8 * (i & 7))) & 0xFF;       
    19d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19d8:	48 c1 e8 03          	shr    $0x3,%rax
    19dc:	48 89 c2             	mov    %rax,%rdx
    19df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19e3:	48 83 c2 10          	add    $0x10,%rdx
    19e7:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
    19eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19ef:	83 e0 07             	and    $0x7,%eax
    19f2:	c1 e0 03             	shl    $0x3,%eax
    19f5:	89 c1                	mov    %eax,%ecx
    19f7:	48 d3 ea             	shr    %cl,%rdx
    19fa:	48 89 d1             	mov    %rdx,%rcx
    19fd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1a01:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a05:	48 01 d0             	add    %rdx,%rax
    1a08:	89 ca                	mov    %ecx,%edx
    1a0a:	88 10                	mov    %dl,(%rax)
    for (i = 0; i < ctx->outlen; i++) {           
    1a0c:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1a11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a15:	48 8b 80 d8 00 00 00 	mov    0xd8(%rax),%rax
    1a1c:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    1a20:	72 b2                	jb     19d4 <blake2b_final+0xb9>
    }
    return 0;
    1a22:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1a27:	c9                   	leaveq 
    1a28:	c3                   	retq   

0000000000001a29 <blake2b>:

int blake2b(void *out, size_t outlen, const void *key, size_t keylen, const void *in, size_t inlen) {
    1a29:	55                   	push   %rbp
    1a2a:	48 89 e5             	mov    %rsp,%rbp
    1a2d:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    1a34:	48 89 bd 08 ff ff ff 	mov    %rdi,-0xf8(%rbp)
    1a3b:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
    1a42:	48 89 95 f8 fe ff ff 	mov    %rdx,-0x108(%rbp)
    1a49:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
    1a50:	4c 89 85 e8 fe ff ff 	mov    %r8,-0x118(%rbp)
    1a57:	4c 89 8d e0 fe ff ff 	mov    %r9,-0x120(%rbp)
    1a5e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a65:	00 00 
    1a67:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1a6b:	31 c0                	xor    %eax,%eax
    blake2b_ctx ctx;
    
    if (blake2b_init(&ctx, outlen, key, keylen))
    1a6d:	48 8b 8d f0 fe ff ff 	mov    -0x110(%rbp),%rcx
    1a74:	48 8b 95 f8 fe ff ff 	mov    -0x108(%rbp),%rdx
    1a7b:	48 8b b5 00 ff ff ff 	mov    -0x100(%rbp),%rsi
    1a82:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1a89:	48 89 c7             	mov    %rax,%rdi
    1a8c:	e8 58 fc ff ff       	callq  16e9 <blake2b_init>
    1a91:	85 c0                	test   %eax,%eax
    1a93:	74 07                	je     1a9c <blake2b+0x73>
        return -1;
    1a95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1a9a:	eb 3e                	jmp    1ada <blake2b+0xb1>

    blake2b_update(&ctx, in, inlen);
    1a9c:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
    1aa3:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
    1aaa:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1ab1:	48 89 ce             	mov    %rcx,%rsi
    1ab4:	48 89 c7             	mov    %rax,%rdi
    1ab7:	e8 68 fd ff ff       	callq  1824 <blake2b_update>

    blake2b_final(&ctx, out);
    1abc:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
    1ac3:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1aca:	48 89 d6             	mov    %rdx,%rsi
    1acd:	48 89 c7             	mov    %rax,%rdi
    1ad0:	e8 46 fe ff ff       	callq  191b <blake2b_final>
    return 0;   
    1ad5:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1ada:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1ade:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1ae5:	00 00 
    1ae7:	74 05                	je     1aee <blake2b+0xc5>
    1ae9:	e8 d2 ea ff ff       	callq  5c0 <__stack_chk_fail@plt>
    1aee:	c9                   	leaveq 
    1aef:	c3                   	retq   

0000000000001af0 <main>:

int main(int argc, char *argv[]){
    1af0:	55                   	push   %rbp
    1af1:	48 89 e5             	mov    %rsp,%rbp
    1af4:	53                   	push   %rbx
    1af5:	48 81 ec 18 06 00 00 	sub    $0x618,%rsp
    1afc:	89 bd ec f9 ff ff    	mov    %edi,-0x614(%rbp)
    1b02:	48 89 b5 e0 f9 ff ff 	mov    %rsi,-0x620(%rbp)
    1b09:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b10:	00 00 
    1b12:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1b16:	31 c0                	xor    %eax,%eax

    char in[1000];
    char key[512];

    uint8_t* out = (uint8_t*) calloc(0x20, sizeof(uint8_t));
    1b18:	be 01 00 00 00       	mov    $0x1,%esi
    1b1d:	bf 20 00 00 00       	mov    $0x20,%edi
    1b22:	e8 a9 ea ff ff       	callq  5d0 <calloc@plt>
    1b27:	48 89 85 f8 f9 ff ff 	mov    %rax,-0x608(%rbp)

    //char* in = "Certificação da Componente Criptográfica: Blake2b Hash Function";
    //char* key = "PassCert";

    for (int i = 0; i < 1000; i++) {     
    1b2e:	c7 85 f0 f9 ff ff 00 	movl   $0x0,-0x610(%rbp)
    1b35:	00 00 00 
    1b38:	eb 32                	jmp    1b6c <main+0x7c>
        in[i] = argv[1][i];     
    1b3a:	48 8b 85 e0 f9 ff ff 	mov    -0x620(%rbp),%rax
    1b41:	48 83 c0 08          	add    $0x8,%rax
    1b45:	48 8b 10             	mov    (%rax),%rdx
    1b48:	8b 85 f0 f9 ff ff    	mov    -0x610(%rbp),%eax
    1b4e:	48 98                	cltq   
    1b50:	48 01 d0             	add    %rdx,%rax
    1b53:	0f b6 10             	movzbl (%rax),%edx
    1b56:	8b 85 f0 f9 ff ff    	mov    -0x610(%rbp),%eax
    1b5c:	48 98                	cltq   
    1b5e:	88 94 05 00 fc ff ff 	mov    %dl,-0x400(%rbp,%rax,1)
    for (int i = 0; i < 1000; i++) {     
    1b65:	83 85 f0 f9 ff ff 01 	addl   $0x1,-0x610(%rbp)
    1b6c:	81 bd f0 f9 ff ff e7 	cmpl   $0x3e7,-0x610(%rbp)
    1b73:	03 00 00 
    1b76:	7e c2                	jle    1b3a <main+0x4a>
    }

    for (int i = 0; i < 512; i++) {     
    1b78:	c7 85 f4 f9 ff ff 00 	movl   $0x0,-0x60c(%rbp)
    1b7f:	00 00 00 
    1b82:	eb 32                	jmp    1bb6 <main+0xc6>
        key[i] = argv[2][i];     
    1b84:	48 8b 85 e0 f9 ff ff 	mov    -0x620(%rbp),%rax
    1b8b:	48 83 c0 10          	add    $0x10,%rax
    1b8f:	48 8b 10             	mov    (%rax),%rdx
    1b92:	8b 85 f4 f9 ff ff    	mov    -0x60c(%rbp),%eax
    1b98:	48 98                	cltq   
    1b9a:	48 01 d0             	add    %rdx,%rax
    1b9d:	0f b6 10             	movzbl (%rax),%edx
    1ba0:	8b 85 f4 f9 ff ff    	mov    -0x60c(%rbp),%eax
    1ba6:	48 98                	cltq   
    1ba8:	88 94 05 00 fa ff ff 	mov    %dl,-0x600(%rbp,%rax,1)
    for (int i = 0; i < 512; i++) {     
    1baf:	83 85 f4 f9 ff ff 01 	addl   $0x1,-0x60c(%rbp)
    1bb6:	81 bd f4 f9 ff ff ff 	cmpl   $0x1ff,-0x60c(%rbp)
    1bbd:	01 00 00 
    1bc0:	7e c2                	jle    1b84 <main+0x94>
    }
    
    blake2b(out, 0x20, key, strlen(key), in, strlen(in));
    1bc2:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    1bc9:	48 89 c7             	mov    %rax,%rdi
    1bcc:	e8 df e9 ff ff       	callq  5b0 <strlen@plt>
    1bd1:	48 89 c3             	mov    %rax,%rbx
    1bd4:	48 8d 85 00 fa ff ff 	lea    -0x600(%rbp),%rax
    1bdb:	48 89 c7             	mov    %rax,%rdi
    1bde:	e8 cd e9 ff ff       	callq  5b0 <strlen@plt>
    1be3:	48 89 c6             	mov    %rax,%rsi
    1be6:	48 8d 8d 00 fc ff ff 	lea    -0x400(%rbp),%rcx
    1bed:	48 8d 95 00 fa ff ff 	lea    -0x600(%rbp),%rdx
    1bf4:	48 8b 85 f8 f9 ff ff 	mov    -0x608(%rbp),%rax
    1bfb:	49 89 d9             	mov    %rbx,%r9
    1bfe:	49 89 c8             	mov    %rcx,%r8
    1c01:	48 89 f1             	mov    %rsi,%rcx
    1c04:	be 20 00 00 00       	mov    $0x20,%esi
    1c09:	48 89 c7             	mov    %rax,%rdi
    1c0c:	e8 18 fe ff ff       	callq  1a29 <blake2b>
    1c11:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1c16:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    1c1a:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    1c21:	00 00 
    1c23:	74 05                	je     1c2a <main+0x13a>
    1c25:	e8 96 e9 ff ff       	callq  5c0 <__stack_chk_fail@plt>
    1c2a:	48 81 c4 18 06 00 00 	add    $0x618,%rsp
    1c31:	5b                   	pop    %rbx
    1c32:	5d                   	pop    %rbp
    1c33:	c3                   	retq   
    1c34:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1c3b:	00 00 00 
    1c3e:	66 90                	xchg   %ax,%ax

0000000000001c40 <__libc_csu_init>:
    1c40:	41 57                	push   %r15
    1c42:	41 56                	push   %r14
    1c44:	49 89 d7             	mov    %rdx,%r15
    1c47:	41 55                	push   %r13
    1c49:	41 54                	push   %r12
    1c4b:	4c 8d 25 56 11 20 00 	lea    0x201156(%rip),%r12        # 202da8 <__frame_dummy_init_array_entry>
    1c52:	55                   	push   %rbp
    1c53:	48 8d 2d 56 11 20 00 	lea    0x201156(%rip),%rbp        # 202db0 <__init_array_end>
    1c5a:	53                   	push   %rbx
    1c5b:	41 89 fd             	mov    %edi,%r13d
    1c5e:	49 89 f6             	mov    %rsi,%r14
    1c61:	4c 29 e5             	sub    %r12,%rbp
    1c64:	48 83 ec 08          	sub    $0x8,%rsp
    1c68:	48 c1 fd 03          	sar    $0x3,%rbp
    1c6c:	e8 0f e9 ff ff       	callq  580 <_init>
    1c71:	48 85 ed             	test   %rbp,%rbp
    1c74:	74 20                	je     1c96 <__libc_csu_init+0x56>
    1c76:	31 db                	xor    %ebx,%ebx
    1c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c7f:	00 
    1c80:	4c 89 fa             	mov    %r15,%rdx
    1c83:	4c 89 f6             	mov    %r14,%rsi
    1c86:	44 89 ef             	mov    %r13d,%edi
    1c89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1c8d:	48 83 c3 01          	add    $0x1,%rbx
    1c91:	48 39 dd             	cmp    %rbx,%rbp
    1c94:	75 ea                	jne    1c80 <__libc_csu_init+0x40>
    1c96:	48 83 c4 08          	add    $0x8,%rsp
    1c9a:	5b                   	pop    %rbx
    1c9b:	5d                   	pop    %rbp
    1c9c:	41 5c                	pop    %r12
    1c9e:	41 5d                	pop    %r13
    1ca0:	41 5e                	pop    %r14
    1ca2:	41 5f                	pop    %r15
    1ca4:	c3                   	retq   
    1ca5:	90                   	nop
    1ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1cad:	00 00 00 

0000000000001cb0 <__libc_csu_fini>:
    1cb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001cb4 <_fini>:
    1cb4:	48 83 ec 08          	sub    $0x8,%rsp
    1cb8:	48 83 c4 08          	add    $0x8,%rsp
    1cbc:	c3                   	retq  