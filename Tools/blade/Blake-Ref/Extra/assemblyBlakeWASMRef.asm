ref.so:     file format elf64-x86-64


Disassembly of section .text:

0000000000000510 <guest_func_blake2b_final>:
     510:	55                   	push   %rbp
     511:	48 89 e5             	mov    %rsp,%rbp
     514:	53                   	push   %rbx
     515:	48 83 ec 08          	sub    $0x8,%rsp
     519:	31 c0                	xor    %eax,%eax
     51b:	89 f1                	mov    %esi,%ecx
     51d:	81 c1 c0 00 00 00    	add    $0xc0,%ecx
     523:	89 f2                	mov    %esi,%edx
     525:	81 c2 c8 00 00 00    	add    $0xc8,%edx
     52b:	89 c9                	mov    %ecx,%ecx
     52d:	48 8b 1c 0f          	mov    (%rdi,%rcx,1),%rbx
     531:	89 d2                	mov    %edx,%edx
     533:	4c 8b 04 17          	mov    (%rdi,%rdx,1),%r8
     537:	4c 01 c3             	add    %r8,%rbx
     53a:	48 89 1c 0f          	mov    %rbx,(%rdi,%rcx,1)
     53e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
     545:	89 f3                	mov    %esi,%ebx
     547:	48 89 8c 1f d0 00 00 	mov    %rcx,0xd0(%rdi,%rbx,1)
     54e:	00 
     54f:	48 8b 0c 17          	mov    (%rdi,%rdx,1),%rcx
     553:	81 f9 80 00 00 00    	cmp    $0x80,%ecx
     559:	74 0e                	je     569 <guest_func_blake2b_final+0x59>
     55b:	89 f3                	mov    %esi,%ebx
     55d:	01 cb                	add    %ecx,%ebx
     55f:	89 db                	mov    %ebx,%ebx
     561:	88 04 1f             	mov    %al,(%rdi,%rbx,1)
     564:	83 c1 01             	add    $0x1,%ecx
     567:	eb ea                	jmp    553 <guest_func_blake2b_final+0x43>
     569:	89 c8                	mov    %ecx,%eax
     56b:	48 89 04 17          	mov    %rax,(%rdi,%rdx,1)
     56f:	e8 0c 00 00 00       	callq  580 <guest_func_blake2b_compress>
     574:	48 83 c4 08          	add    $0x8,%rsp
     578:	5b                   	pop    %rbx
     579:	5d                   	pop    %rbp
     57a:	c3                   	retq   
     57b:	00 00                	add    %al,(%rax)
     57d:	00 00                	add    %al,(%rax)
	...

0000000000000580 <guest_func_blake2b_compress>:
     580:	55                   	push   %rbp
     581:	48 89 e5             	mov    %rsp,%rbp
     584:	53                   	push   %rbx
     585:	41 54                	push   %r12
     587:	41 55                	push   %r13
     589:	41 56                	push   %r14
     58b:	41 57                	push   %r15
     58d:	48 81 ec f8 07 00 00 	sub    $0x7f8,%rsp
     594:	48 89 bc 24 e8 07 00 	mov    %rdi,0x7e8(%rsp)
     59b:	00 
     59c:	89 b4 24 f4 07 00 00 	mov    %esi,0x7f4(%rsp)
     5a3:	41 89 f7             	mov    %esi,%r15d
     5a6:	41 81 c7 80 00 00 00 	add    $0x80,%r15d
     5ad:	41 89 f6             	mov    %esi,%r14d
     5b0:	41 81 c6 88 00 00 00 	add    $0x88,%r14d
     5b7:	41 89 f5             	mov    %esi,%r13d
     5ba:	41 81 c5 90 00 00 00 	add    $0x90,%r13d
     5c1:	41 89 f4             	mov    %esi,%r12d
     5c4:	41 81 c4 98 00 00 00 	add    $0x98,%r12d
     5cb:	41 89 f3             	mov    %esi,%r11d
     5ce:	41 81 c3 a0 00 00 00 	add    $0xa0,%r11d
     5d5:	41 89 f2             	mov    %esi,%r10d
     5d8:	41 81 c2 a8 00 00 00 	add    $0xa8,%r10d
     5df:	41 89 f1             	mov    %esi,%r9d
     5e2:	41 81 c1 b0 00 00 00 	add    $0xb0,%r9d
     5e9:	41 89 f0             	mov    %esi,%r8d
     5ec:	41 81 c0 b8 00 00 00 	add    $0xb8,%r8d
     5f3:	44 89 84 24 f0 07 00 	mov    %r8d,0x7f0(%rsp)
     5fa:	00 
     5fb:	44 89 f8             	mov    %r15d,%eax
     5fe:	48 89 84 24 e0 07 00 	mov    %rax,0x7e0(%rsp)
     605:	00 
     606:	49 89 ff             	mov    %rdi,%r15
     609:	49 89 c0             	mov    %rax,%r8
     60c:	4b 8b 04 07          	mov    (%r15,%r8,1),%rax
     610:	48 89 84 24 d8 07 00 	mov    %rax,0x7d8(%rsp)
     617:	00 
     618:	44 89 f0             	mov    %r14d,%eax
     61b:	48 89 84 24 d0 07 00 	mov    %rax,0x7d0(%rsp)
     622:	00 
     623:	49 89 c6             	mov    %rax,%r14
     626:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     62a:	48 89 84 24 c8 07 00 	mov    %rax,0x7c8(%rsp)
     631:	00 
     632:	44 89 e8             	mov    %r13d,%eax
     635:	48 89 84 24 c0 07 00 	mov    %rax,0x7c0(%rsp)
     63c:	00 
     63d:	49 89 c6             	mov    %rax,%r14
     640:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     644:	48 89 84 24 b8 07 00 	mov    %rax,0x7b8(%rsp)
     64b:	00 
     64c:	44 89 e0             	mov    %r12d,%eax
     64f:	48 89 84 24 b0 07 00 	mov    %rax,0x7b0(%rsp)
     656:	00 
     657:	49 89 c6             	mov    %rax,%r14
     65a:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     65e:	48 89 84 24 a8 07 00 	mov    %rax,0x7a8(%rsp)
     665:	00 
     666:	44 89 d8             	mov    %r11d,%eax
     669:	48 89 84 24 a0 07 00 	mov    %rax,0x7a0(%rsp)
     670:	00 
     671:	49 89 c6             	mov    %rax,%r14
     674:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     678:	48 89 84 24 98 07 00 	mov    %rax,0x798(%rsp)
     67f:	00 
     680:	44 89 d0             	mov    %r10d,%eax
     683:	48 89 84 24 90 07 00 	mov    %rax,0x790(%rsp)
     68a:	00 
     68b:	49 89 c6             	mov    %rax,%r14
     68e:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     692:	48 89 84 24 88 07 00 	mov    %rax,0x788(%rsp)
     699:	00 
     69a:	44 89 c8             	mov    %r9d,%eax
     69d:	48 89 84 24 80 07 00 	mov    %rax,0x780(%rsp)
     6a4:	00 
     6a5:	49 89 c6             	mov    %rax,%r14
     6a8:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     6ac:	48 89 84 24 78 07 00 	mov    %rax,0x778(%rsp)
     6b3:	00 
     6b4:	44 8b bc 24 f0 07 00 	mov    0x7f0(%rsp),%r15d
     6bb:	00 
     6bc:	44 89 f8             	mov    %r15d,%eax
     6bf:	48 89 84 24 70 07 00 	mov    %rax,0x770(%rsp)
     6c6:	00 
     6c7:	49 89 ff             	mov    %rdi,%r15
     6ca:	49 89 c6             	mov    %rax,%r14
     6cd:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     6d1:	48 89 84 24 68 07 00 	mov    %rax,0x768(%rsp)
     6d8:	00 
     6d9:	48 b8 08 c9 bc f3 67 	movabs $0x6a09e667f3bcc908,%rax
     6e0:	e6 09 6a 
     6e3:	48 89 84 24 60 07 00 	mov    %rax,0x760(%rsp)
     6ea:	00 
     6eb:	48 b8 3b a7 ca 84 85 	movabs $0xbb67ae8584caa73b,%rax
     6f2:	ae 67 bb 
     6f5:	48 89 84 24 58 07 00 	mov    %rax,0x758(%rsp)
     6fc:	00 
     6fd:	48 b8 2b f8 94 fe 72 	movabs $0x3c6ef372fe94f82b,%rax
     704:	f3 6e 3c 
     707:	48 89 84 24 50 07 00 	mov    %rax,0x750(%rsp)
     70e:	00 
     70f:	48 b8 f1 36 1d 5f 3a 	movabs $0xa54ff53a5f1d36f1,%rax
     716:	f5 4f a5 
     719:	48 89 84 24 48 07 00 	mov    %rax,0x748(%rsp)
     720:	00 
     721:	48 b8 d1 82 e6 ad 7f 	movabs $0x510e527fade682d1,%rax
     728:	52 0e 51 
     72b:	48 89 84 24 40 07 00 	mov    %rax,0x740(%rsp)
     732:	00 
     733:	48 b8 1f 6c 3e 2b 8c 	movabs $0x9b05688c2b3e6c1f,%rax
     73a:	68 05 9b 
     73d:	48 89 84 24 38 07 00 	mov    %rax,0x738(%rsp)
     744:	00 
     745:	48 b8 6b bd 41 fb ab 	movabs $0x1f83d9abfb41bd6b,%rax
     74c:	d9 83 1f 
     74f:	48 89 84 24 30 07 00 	mov    %rax,0x730(%rsp)
     756:	00 
     757:	48 b8 79 21 7e 13 19 	movabs $0x5be0cd19137e2179,%rax
     75e:	cd e0 5b 
     761:	48 89 84 24 28 07 00 	mov    %rax,0x728(%rsp)
     768:	00 
     769:	41 89 f7             	mov    %esi,%r15d
     76c:	44 89 f8             	mov    %r15d,%eax
     76f:	48 89 84 24 00 07 00 	mov    %rax,0x700(%rsp)
     776:	00 
     777:	49 89 ff             	mov    %rdi,%r15
     77a:	49 89 c6             	mov    %rax,%r14
     77d:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
     781:	48 89 84 24 20 07 00 	mov    %rax,0x720(%rsp)
     788:	00 
     789:	4b 8b 44 37 08       	mov    0x8(%r15,%r14,1),%rax
     78e:	48 89 84 24 18 07 00 	mov    %rax,0x718(%rsp)
     795:	00 
     796:	4b 8b 44 37 10       	mov    0x10(%r15,%r14,1),%rax
     79b:	48 89 84 24 10 07 00 	mov    %rax,0x710(%rsp)
     7a2:	00 
     7a3:	4b 8b 44 37 18       	mov    0x18(%r15,%r14,1),%rax
     7a8:	48 89 84 24 08 07 00 	mov    %rax,0x708(%rsp)
     7af:	00 
     7b0:	4b 8b 44 37 20       	mov    0x20(%r15,%r14,1),%rax
     7b5:	48 89 84 24 f8 06 00 	mov    %rax,0x6f8(%rsp)
     7bc:	00 
     7bd:	4b 8b 44 37 28       	mov    0x28(%r15,%r14,1),%rax
     7c2:	48 89 84 24 f0 06 00 	mov    %rax,0x6f0(%rsp)
     7c9:	00 
     7ca:	4b 8b 44 37 30       	mov    0x30(%r15,%r14,1),%rax
     7cf:	48 89 84 24 e8 06 00 	mov    %rax,0x6e8(%rsp)
     7d6:	00 
     7d7:	4b 8b 44 37 38       	mov    0x38(%r15,%r14,1),%rax
     7dc:	48 89 84 24 e0 06 00 	mov    %rax,0x6e0(%rsp)
     7e3:	00 
     7e4:	4b 8b 44 37 40       	mov    0x40(%r15,%r14,1),%rax
     7e9:	48 89 84 24 d8 06 00 	mov    %rax,0x6d8(%rsp)
     7f0:	00 
     7f1:	4b 8b 44 37 48       	mov    0x48(%r15,%r14,1),%rax
     7f6:	48 89 84 24 d0 06 00 	mov    %rax,0x6d0(%rsp)
     7fd:	00 
     7fe:	4b 8b 44 37 50       	mov    0x50(%r15,%r14,1),%rax
     803:	48 89 84 24 c8 06 00 	mov    %rax,0x6c8(%rsp)
     80a:	00 
     80b:	4b 8b 44 37 58       	mov    0x58(%r15,%r14,1),%rax
     810:	48 89 84 24 c0 06 00 	mov    %rax,0x6c0(%rsp)
     817:	00 
     818:	4b 8b 44 37 60       	mov    0x60(%r15,%r14,1),%rax
     81d:	48 89 84 24 b8 06 00 	mov    %rax,0x6b8(%rsp)
     824:	00 
     825:	4b 8b 44 37 68       	mov    0x68(%r15,%r14,1),%rax
     82a:	48 89 84 24 b0 06 00 	mov    %rax,0x6b0(%rsp)
     831:	00 
     832:	4b 8b 44 37 70       	mov    0x70(%r15,%r14,1),%rax
     837:	48 89 84 24 a8 06 00 	mov    %rax,0x6a8(%rsp)
     83e:	00 
     83f:	4b 8b 44 37 78       	mov    0x78(%r15,%r14,1),%rax
     844:	48 89 84 24 a0 06 00 	mov    %rax,0x6a0(%rsp)
     84b:	00 
     84c:	4b 8b 84 37 c0 00 00 	mov    0xc0(%r15,%r14,1),%rax
     853:	00 
     854:	4c 8b bc 24 40 07 00 	mov    0x740(%rsp),%r15
     85b:	00 
     85c:	4c 31 f8             	xor    %r15,%rax
     85f:	49 89 ff             	mov    %rdi,%r15
     862:	4b 8b 8c 37 d0 00 00 	mov    0xd0(%r15,%r14,1),%rcx
     869:	00 
     86a:	4c 8b bc 24 30 07 00 	mov    0x730(%rsp),%r15
     871:	00 
     872:	4c 31 f9             	xor    %r15,%rcx
     875:	4c 8b bc 24 98 07 00 	mov    0x798(%rsp),%r15
     87c:	00 
     87d:	4c 8b b4 24 20 07 00 	mov    0x720(%rsp),%r14
     884:	00 
     885:	4d 01 f7             	add    %r14,%r15
     888:	4c 8b b4 24 d8 07 00 	mov    0x7d8(%rsp),%r14
     88f:	00 
     890:	4d 01 fe             	add    %r15,%r14
     893:	4c 31 f0             	xor    %r14,%rax
     896:	48 c1 c8 20          	ror    $0x20,%rax
     89a:	48 89 c2             	mov    %rax,%rdx
     89d:	4c 8b bc 24 60 07 00 	mov    0x760(%rsp),%r15
     8a4:	00 
     8a5:	4c 01 fa             	add    %r15,%rdx
     8a8:	4c 8b bc 24 98 07 00 	mov    0x798(%rsp),%r15
     8af:	00 
     8b0:	49 31 d7             	xor    %rdx,%r15
     8b3:	49 c1 cf 18          	ror    $0x18,%r15
     8b7:	4c 89 fb             	mov    %r15,%rbx
     8ba:	4c 8b ac 24 18 07 00 	mov    0x718(%rsp),%r13
     8c1:	00 
     8c2:	4c 01 eb             	add    %r13,%rbx
     8c5:	49 01 de             	add    %rbx,%r14
     8c8:	4c 89 b4 24 98 06 00 	mov    %r14,0x698(%rsp)
     8cf:	00 
     8d0:	4c 31 f0             	xor    %r14,%rax
     8d3:	48 c1 c8 10          	ror    $0x10,%rax
     8d7:	48 89 84 24 90 06 00 	mov    %rax,0x690(%rsp)
     8de:	00 
     8df:	49 89 c6             	mov    %rax,%r14
     8e2:	4c 01 f2             	add    %r14,%rdx
     8e5:	48 89 94 24 88 06 00 	mov    %rdx,0x688(%rsp)
     8ec:	00 
     8ed:	49 89 d6             	mov    %rdx,%r14
     8f0:	4d 31 f7             	xor    %r14,%r15
     8f3:	49 c1 cf 3f          	ror    $0x3f,%r15
     8f7:	4c 89 bc 24 80 06 00 	mov    %r15,0x680(%rsp)
     8fe:	00 
     8ff:	4c 8b bc 24 88 07 00 	mov    0x788(%rsp),%r15
     906:	00 
     907:	4c 8b b4 24 10 07 00 	mov    0x710(%rsp),%r14
     90e:	00 
     90f:	4d 01 f7             	add    %r14,%r15
     912:	4c 8b b4 24 c8 07 00 	mov    0x7c8(%rsp),%r14
     919:	00 
     91a:	4d 01 fe             	add    %r15,%r14
     91d:	4c 89 f0             	mov    %r14,%rax
     920:	4c 8b bc 24 38 07 00 	mov    0x738(%rsp),%r15
     927:	00 
     928:	4c 31 f8             	xor    %r15,%rax
     92b:	48 c1 c8 20          	ror    $0x20,%rax
     92f:	48 89 c2             	mov    %rax,%rdx
     932:	4c 8b bc 24 58 07 00 	mov    0x758(%rsp),%r15
     939:	00 
     93a:	4c 01 fa             	add    %r15,%rdx
     93d:	4c 8b bc 24 88 07 00 	mov    0x788(%rsp),%r15
     944:	00 
     945:	49 31 d7             	xor    %rdx,%r15
     948:	49 c1 cf 18          	ror    $0x18,%r15
     94c:	4c 89 fb             	mov    %r15,%rbx
     94f:	4c 8b ac 24 08 07 00 	mov    0x708(%rsp),%r13
     956:	00 
     957:	4c 01 eb             	add    %r13,%rbx
     95a:	49 01 de             	add    %rbx,%r14
     95d:	4c 89 b4 24 78 06 00 	mov    %r14,0x678(%rsp)
     964:	00 
     965:	4c 31 f0             	xor    %r14,%rax
     968:	48 c1 c8 10          	ror    $0x10,%rax
     96c:	48 89 84 24 70 06 00 	mov    %rax,0x670(%rsp)
     973:	00 
     974:	49 89 c6             	mov    %rax,%r14
     977:	4c 01 f2             	add    %r14,%rdx
     97a:	48 89 94 24 68 06 00 	mov    %rdx,0x668(%rsp)
     981:	00 
     982:	49 89 d6             	mov    %rdx,%r14
     985:	4d 31 f7             	xor    %r14,%r15
     988:	49 c1 cf 3f          	ror    $0x3f,%r15
     98c:	4c 8b b4 24 78 07 00 	mov    0x778(%rsp),%r14
     993:	00 
     994:	4c 8b ac 24 f8 06 00 	mov    0x6f8(%rsp),%r13
     99b:	00 
     99c:	4d 01 ee             	add    %r13,%r14
     99f:	4c 8b ac 24 b8 07 00 	mov    0x7b8(%rsp),%r13
     9a6:	00 
     9a7:	4d 01 f5             	add    %r14,%r13
     9aa:	4c 31 e9             	xor    %r13,%rcx
     9ad:	48 c1 c9 20          	ror    $0x20,%rcx
     9b1:	48 89 c8             	mov    %rcx,%rax
     9b4:	4c 8b b4 24 50 07 00 	mov    0x750(%rsp),%r14
     9bb:	00 
     9bc:	4c 01 f0             	add    %r14,%rax
     9bf:	4c 8b b4 24 78 07 00 	mov    0x778(%rsp),%r14
     9c6:	00 
     9c7:	49 31 c6             	xor    %rax,%r14
     9ca:	49 c1 ce 18          	ror    $0x18,%r14
     9ce:	4c 89 f2             	mov    %r14,%rdx
     9d1:	4c 8b a4 24 f0 06 00 	mov    0x6f0(%rsp),%r12
     9d8:	00 
     9d9:	4c 01 e2             	add    %r12,%rdx
     9dc:	49 01 d5             	add    %rdx,%r13
     9df:	4c 31 e9             	xor    %r13,%rcx
     9e2:	48 c1 c9 10          	ror    $0x10,%rcx
     9e6:	48 89 8c 24 60 06 00 	mov    %rcx,0x660(%rsp)
     9ed:	00 
     9ee:	49 89 cc             	mov    %rcx,%r12
     9f1:	4c 01 e0             	add    %r12,%rax
     9f4:	49 31 c6             	xor    %rax,%r14
     9f7:	49 c1 ce 3f          	ror    $0x3f,%r14
     9fb:	4c 8b a4 24 68 07 00 	mov    0x768(%rsp),%r12
     a02:	00 
     a03:	4c 8b 9c 24 e8 06 00 	mov    0x6e8(%rsp),%r11
     a0a:	00 
     a0b:	4d 01 dc             	add    %r11,%r12
     a0e:	4c 8b 9c 24 a8 07 00 	mov    0x7a8(%rsp),%r11
     a15:	00 
     a16:	4d 01 e3             	add    %r12,%r11
     a19:	4c 89 d9             	mov    %r11,%rcx
     a1c:	4c 8b a4 24 28 07 00 	mov    0x728(%rsp),%r12
     a23:	00 
     a24:	4c 31 e1             	xor    %r12,%rcx
     a27:	48 c1 c9 20          	ror    $0x20,%rcx
     a2b:	48 89 ca             	mov    %rcx,%rdx
     a2e:	4c 8b a4 24 48 07 00 	mov    0x748(%rsp),%r12
     a35:	00 
     a36:	4c 01 e2             	add    %r12,%rdx
     a39:	4c 8b a4 24 68 07 00 	mov    0x768(%rsp),%r12
     a40:	00 
     a41:	49 31 d4             	xor    %rdx,%r12
     a44:	49 c1 cc 18          	ror    $0x18,%r12
     a48:	4c 89 e3             	mov    %r12,%rbx
     a4b:	4c 8b 94 24 e0 06 00 	mov    0x6e0(%rsp),%r10
     a52:	00 
     a53:	4c 01 d3             	add    %r10,%rbx
     a56:	49 01 db             	add    %rbx,%r11
     a59:	4c 89 9c 24 58 06 00 	mov    %r11,0x658(%rsp)
     a60:	00 
     a61:	4c 31 d9             	xor    %r11,%rcx
     a64:	48 c1 c9 10          	ror    $0x10,%rcx
     a68:	48 01 ca             	add    %rcx,%rdx
     a6b:	49 31 d4             	xor    %rdx,%r12
     a6e:	49 c1 cc 3f          	ror    $0x3f,%r12
     a72:	4c 89 fb             	mov    %r15,%rbx
     a75:	4c 8b 9c 24 d8 06 00 	mov    0x6d8(%rsp),%r11
     a7c:	00 
     a7d:	4c 01 db             	add    %r11,%rbx
     a80:	4c 8b 9c 24 98 06 00 	mov    0x698(%rsp),%r11
     a87:	00 
     a88:	49 01 db             	add    %rbx,%r11
     a8b:	4c 31 d9             	xor    %r11,%rcx
     a8e:	48 c1 c9 20          	ror    $0x20,%rcx
     a92:	48 01 c8             	add    %rcx,%rax
     a95:	49 31 c7             	xor    %rax,%r15
     a98:	49 c1 cf 18          	ror    $0x18,%r15
     a9c:	4c 89 fb             	mov    %r15,%rbx
     a9f:	4c 8b 94 24 d0 06 00 	mov    0x6d0(%rsp),%r10
     aa6:	00 
     aa7:	4c 01 d3             	add    %r10,%rbx
     aaa:	49 01 db             	add    %rbx,%r11
     aad:	4c 89 9c 24 50 06 00 	mov    %r11,0x650(%rsp)
     ab4:	00 
     ab5:	4c 31 d9             	xor    %r11,%rcx
     ab8:	48 c1 c9 10          	ror    $0x10,%rcx
     abc:	48 89 8c 24 48 06 00 	mov    %rcx,0x648(%rsp)
     ac3:	00 
     ac4:	49 89 cb             	mov    %rcx,%r11
     ac7:	4c 01 d8             	add    %r11,%rax
     aca:	48 89 84 24 40 06 00 	mov    %rax,0x640(%rsp)
     ad1:	00 
     ad2:	49 89 c3             	mov    %rax,%r11
     ad5:	4d 31 df             	xor    %r11,%r15
     ad8:	49 c1 cf 3f          	ror    $0x3f,%r15
     adc:	4c 89 bc 24 38 06 00 	mov    %r15,0x638(%rsp)
     ae3:	00 
     ae4:	4c 89 f0             	mov    %r14,%rax
     ae7:	4c 8b bc 24 c8 06 00 	mov    0x6c8(%rsp),%r15
     aee:	00 
     aef:	4c 01 f8             	add    %r15,%rax
     af2:	4c 8b bc 24 78 06 00 	mov    0x678(%rsp),%r15
     af9:	00 
     afa:	49 01 c7             	add    %rax,%r15
     afd:	4c 8b 9c 24 90 06 00 	mov    0x690(%rsp),%r11
     b04:	00 
     b05:	4d 31 fb             	xor    %r15,%r11
     b08:	49 c1 cb 20          	ror    $0x20,%r11
     b0c:	4c 01 da             	add    %r11,%rdx
     b0f:	49 31 d6             	xor    %rdx,%r14
     b12:	49 c1 ce 18          	ror    $0x18,%r14
     b16:	4c 89 f0             	mov    %r14,%rax
     b19:	4c 8b 94 24 c0 06 00 	mov    0x6c0(%rsp),%r10
     b20:	00 
     b21:	4c 01 d0             	add    %r10,%rax
     b24:	49 01 c7             	add    %rax,%r15
     b27:	4c 89 bc 24 30 06 00 	mov    %r15,0x630(%rsp)
     b2e:	00 
     b2f:	4d 31 fb             	xor    %r15,%r11
     b32:	49 c1 cb 10          	ror    $0x10,%r11
     b36:	4c 01 da             	add    %r11,%rdx
     b39:	48 89 94 24 28 06 00 	mov    %rdx,0x628(%rsp)
     b40:	00 
     b41:	49 89 d7             	mov    %rdx,%r15
     b44:	4d 31 fe             	xor    %r15,%r14
     b47:	49 c1 ce 3f          	ror    $0x3f,%r14
     b4b:	4c 89 b4 24 20 06 00 	mov    %r14,0x620(%rsp)
     b52:	00 
     b53:	4c 89 e0             	mov    %r12,%rax
     b56:	4c 8b bc 24 b8 06 00 	mov    0x6b8(%rsp),%r15
     b5d:	00 
     b5e:	4c 01 f8             	add    %r15,%rax
     b61:	49 01 c5             	add    %rax,%r13
     b64:	4c 8b bc 24 70 06 00 	mov    0x670(%rsp),%r15
     b6b:	00 
     b6c:	4d 31 ef             	xor    %r13,%r15
     b6f:	49 c1 cf 20          	ror    $0x20,%r15
     b73:	4c 8b b4 24 88 06 00 	mov    0x688(%rsp),%r14
     b7a:	00 
     b7b:	4d 01 fe             	add    %r15,%r14
     b7e:	4d 31 f4             	xor    %r14,%r12
     b81:	49 c1 cc 18          	ror    $0x18,%r12
     b85:	4c 89 e0             	mov    %r12,%rax
     b88:	4c 8b 94 24 b0 06 00 	mov    0x6b0(%rsp),%r10
     b8f:	00 
     b90:	4c 01 d0             	add    %r10,%rax
     b93:	49 01 c5             	add    %rax,%r13
     b96:	4d 31 ef             	xor    %r13,%r15
     b99:	49 c1 cf 10          	ror    $0x10,%r15
     b9d:	4d 01 fe             	add    %r15,%r14
     ba0:	4d 31 f4             	xor    %r14,%r12
     ba3:	49 c1 cc 3f          	ror    $0x3f,%r12
     ba7:	4c 89 a4 24 18 06 00 	mov    %r12,0x618(%rsp)
     bae:	00 
     baf:	4c 8b a4 24 80 06 00 	mov    0x680(%rsp),%r12
     bb6:	00 
     bb7:	4c 8b 94 24 a8 06 00 	mov    0x6a8(%rsp),%r10
     bbe:	00 
     bbf:	4d 01 d4             	add    %r10,%r12
     bc2:	4c 8b 94 24 58 06 00 	mov    0x658(%rsp),%r10
     bc9:	00 
     bca:	4d 01 e2             	add    %r12,%r10
     bcd:	4c 8b a4 24 60 06 00 	mov    0x660(%rsp),%r12
     bd4:	00 
     bd5:	4d 31 d4             	xor    %r10,%r12
     bd8:	49 c1 cc 20          	ror    $0x20,%r12
     bdc:	4c 8b 8c 24 68 06 00 	mov    0x668(%rsp),%r9
     be3:	00 
     be4:	4d 01 e1             	add    %r12,%r9
     be7:	4c 8b 84 24 80 06 00 	mov    0x680(%rsp),%r8
     bee:	00 
     bef:	4d 31 c8             	xor    %r9,%r8
     bf2:	49 c1 c8 18          	ror    $0x18,%r8
     bf6:	4c 89 c0             	mov    %r8,%rax
     bf9:	48 8b bc 24 a0 06 00 	mov    0x6a0(%rsp),%rdi
     c00:	00 
     c01:	48 01 f8             	add    %rdi,%rax
     c04:	49 01 c2             	add    %rax,%r10
     c07:	4c 89 94 24 10 06 00 	mov    %r10,0x610(%rsp)
     c0e:	00 
     c0f:	4d 31 d4             	xor    %r10,%r12
     c12:	49 c1 cc 10          	ror    $0x10,%r12
     c16:	4d 01 e1             	add    %r12,%r9
     c19:	4d 31 c8             	xor    %r9,%r8
     c1c:	49 c1 c8 3f          	ror    $0x3f,%r8
     c20:	4c 89 c0             	mov    %r8,%rax
     c23:	4c 8b 94 24 a8 06 00 	mov    0x6a8(%rsp),%r10
     c2a:	00 
     c2b:	4c 01 d0             	add    %r10,%rax
     c2e:	4c 8b 94 24 50 06 00 	mov    0x650(%rsp),%r10
     c35:	00 
     c36:	49 01 c2             	add    %rax,%r10
     c39:	4d 31 d3             	xor    %r10,%r11
     c3c:	49 c1 cb 20          	ror    $0x20,%r11
     c40:	4d 01 de             	add    %r11,%r14
     c43:	4d 31 f0             	xor    %r14,%r8
     c46:	49 c1 c8 18          	ror    $0x18,%r8
     c4a:	4c 89 c0             	mov    %r8,%rax
     c4d:	48 8b bc 24 c8 06 00 	mov    0x6c8(%rsp),%rdi
     c54:	00 
     c55:	48 01 f8             	add    %rdi,%rax
     c58:	49 01 c2             	add    %rax,%r10
     c5b:	4c 89 94 24 08 06 00 	mov    %r10,0x608(%rsp)
     c62:	00 
     c63:	4d 31 d3             	xor    %r10,%r11
     c66:	49 c1 cb 10          	ror    $0x10,%r11
     c6a:	4c 89 9c 24 00 06 00 	mov    %r11,0x600(%rsp)
     c71:	00 
     c72:	4d 01 de             	add    %r11,%r14
     c75:	4c 89 b4 24 f8 05 00 	mov    %r14,0x5f8(%rsp)
     c7c:	00 
     c7d:	4d 31 f0             	xor    %r14,%r8
     c80:	49 c1 c8 3f          	ror    $0x3f,%r8
     c84:	4c 89 84 24 f0 05 00 	mov    %r8,0x5f0(%rsp)
     c8b:	00 
     c8c:	4c 8b b4 24 38 06 00 	mov    0x638(%rsp),%r14
     c93:	00 
     c94:	4c 8b 9c 24 f8 06 00 	mov    0x6f8(%rsp),%r11
     c9b:	00 
     c9c:	4d 01 de             	add    %r11,%r14
     c9f:	4c 8b 9c 24 30 06 00 	mov    0x630(%rsp),%r11
     ca6:	00 
     ca7:	4d 01 f3             	add    %r14,%r11
     caa:	4d 31 df             	xor    %r11,%r15
     cad:	49 c1 cf 20          	ror    $0x20,%r15
     cb1:	4d 01 f9             	add    %r15,%r9
     cb4:	4c 8b b4 24 38 06 00 	mov    0x638(%rsp),%r14
     cbb:	00 
     cbc:	4d 31 ce             	xor    %r9,%r14
     cbf:	49 c1 ce 18          	ror    $0x18,%r14
     cc3:	4c 89 f0             	mov    %r14,%rax
     cc6:	4c 8b 94 24 d8 06 00 	mov    0x6d8(%rsp),%r10
     ccd:	00 
     cce:	4c 01 d0             	add    %r10,%rax
     cd1:	49 01 c3             	add    %rax,%r11
     cd4:	4c 89 9c 24 e8 05 00 	mov    %r11,0x5e8(%rsp)
     cdb:	00 
     cdc:	4d 31 df             	xor    %r11,%r15
     cdf:	49 c1 cf 10          	ror    $0x10,%r15
     ce3:	4c 89 bc 24 e0 05 00 	mov    %r15,0x5e0(%rsp)
     cea:	00 
     ceb:	4d 01 f9             	add    %r15,%r9
     cee:	4c 89 8c 24 d8 05 00 	mov    %r9,0x5d8(%rsp)
     cf5:	00 
     cf6:	4d 89 cf             	mov    %r9,%r15
     cf9:	4d 31 fe             	xor    %r15,%r14
     cfc:	49 c1 ce 3f          	ror    $0x3f,%r14
     d00:	4c 8b bc 24 20 06 00 	mov    0x620(%rsp),%r15
     d07:	00 
     d08:	4c 8b 9c 24 d0 06 00 	mov    0x6d0(%rsp),%r11
     d0f:	00 
     d10:	4d 01 df             	add    %r11,%r15
     d13:	4d 01 fd             	add    %r15,%r13
     d16:	4d 31 ec             	xor    %r13,%r12
     d19:	49 c1 cc 20          	ror    $0x20,%r12
     d1d:	4c 8b bc 24 40 06 00 	mov    0x640(%rsp),%r15
     d24:	00 
     d25:	4d 01 e7             	add    %r12,%r15
     d28:	4c 8b 9c 24 20 06 00 	mov    0x620(%rsp),%r11
     d2f:	00 
     d30:	4d 31 fb             	xor    %r15,%r11
     d33:	49 c1 cb 18          	ror    $0x18,%r11
     d37:	4c 89 d8             	mov    %r11,%rax
     d3a:	4c 8b 94 24 a0 06 00 	mov    0x6a0(%rsp),%r10
     d41:	00 
     d42:	4c 01 d0             	add    %r10,%rax
     d45:	49 01 c5             	add    %rax,%r13
     d48:	4d 31 ec             	xor    %r13,%r12
     d4b:	49 c1 cc 10          	ror    $0x10,%r12
     d4f:	4c 89 a4 24 d0 05 00 	mov    %r12,0x5d0(%rsp)
     d56:	00 
     d57:	4d 01 e7             	add    %r12,%r15
     d5a:	4d 31 fb             	xor    %r15,%r11
     d5d:	49 c1 cb 3f          	ror    $0x3f,%r11
     d61:	4c 8b a4 24 18 06 00 	mov    0x618(%rsp),%r12
     d68:	00 
     d69:	4c 8b 94 24 b0 06 00 	mov    0x6b0(%rsp),%r10
     d70:	00 
     d71:	4d 01 d4             	add    %r10,%r12
     d74:	4c 8b 94 24 10 06 00 	mov    0x610(%rsp),%r10
     d7b:	00 
     d7c:	4d 01 e2             	add    %r12,%r10
     d7f:	49 89 cc             	mov    %rcx,%r12
     d82:	4d 31 d4             	xor    %r10,%r12
     d85:	49 c1 cc 20          	ror    $0x20,%r12
     d89:	49 89 d1             	mov    %rdx,%r9
     d8c:	4d 01 e1             	add    %r12,%r9
     d8f:	4c 8b 84 24 18 06 00 	mov    0x618(%rsp),%r8
     d96:	00 
     d97:	4d 31 c8             	xor    %r9,%r8
     d9a:	49 c1 c8 18          	ror    $0x18,%r8
     d9e:	4c 89 c0             	mov    %r8,%rax
     da1:	48 8b bc 24 e8 06 00 	mov    0x6e8(%rsp),%rdi
     da8:	00 
     da9:	48 01 f8             	add    %rdi,%rax
     dac:	49 01 c2             	add    %rax,%r10
     daf:	4c 89 94 24 c8 05 00 	mov    %r10,0x5c8(%rsp)
     db6:	00 
     db7:	4d 31 d4             	xor    %r10,%r12
     dba:	49 c1 cc 10          	ror    $0x10,%r12
     dbe:	4d 01 e1             	add    %r12,%r9
     dc1:	4d 31 c8             	xor    %r9,%r8
     dc4:	49 c1 c8 3f          	ror    $0x3f,%r8
     dc8:	4c 89 f0             	mov    %r14,%rax
     dcb:	4c 8b 94 24 18 07 00 	mov    0x718(%rsp),%r10
     dd2:	00 
     dd3:	4c 01 d0             	add    %r10,%rax
     dd6:	4c 8b 94 24 08 06 00 	mov    0x608(%rsp),%r10
     ddd:	00 
     dde:	49 01 c2             	add    %rax,%r10
     de1:	4d 31 d4             	xor    %r10,%r12
     de4:	49 c1 cc 20          	ror    $0x20,%r12
     de8:	4d 01 e7             	add    %r12,%r15
     deb:	4d 31 fe             	xor    %r15,%r14
     dee:	49 c1 ce 18          	ror    $0x18,%r14
     df2:	4c 89 f0             	mov    %r14,%rax
     df5:	48 8b bc 24 b8 06 00 	mov    0x6b8(%rsp),%rdi
     dfc:	00 
     dfd:	48 01 f8             	add    %rdi,%rax
     e00:	49 01 c2             	add    %rax,%r10
     e03:	4c 89 94 24 c0 05 00 	mov    %r10,0x5c0(%rsp)
     e0a:	00 
     e0b:	4d 31 d4             	xor    %r10,%r12
     e0e:	49 c1 cc 10          	ror    $0x10,%r12
     e12:	4c 89 a4 24 b8 05 00 	mov    %r12,0x5b8(%rsp)
     e19:	00 
     e1a:	4d 01 e7             	add    %r12,%r15
     e1d:	4c 89 bc 24 b0 05 00 	mov    %r15,0x5b0(%rsp)
     e24:	00 
     e25:	4d 31 fe             	xor    %r15,%r14
     e28:	49 c1 ce 3f          	ror    $0x3f,%r14
     e2c:	4c 89 b4 24 a8 05 00 	mov    %r14,0x5a8(%rsp)
     e33:	00 
     e34:	4c 89 d8             	mov    %r11,%rax
     e37:	4c 8b bc 24 20 07 00 	mov    0x720(%rsp),%r15
     e3e:	00 
     e3f:	4c 01 f8             	add    %r15,%rax
     e42:	4c 8b bc 24 e8 05 00 	mov    0x5e8(%rsp),%r15
     e49:	00 
     e4a:	49 01 c7             	add    %rax,%r15
     e4d:	4c 8b b4 24 00 06 00 	mov    0x600(%rsp),%r14
     e54:	00 
     e55:	4d 31 fe             	xor    %r15,%r14
     e58:	49 c1 ce 20          	ror    $0x20,%r14
     e5c:	4d 01 f1             	add    %r14,%r9
     e5f:	4d 31 cb             	xor    %r9,%r11
     e62:	49 c1 cb 18          	ror    $0x18,%r11
     e66:	4c 89 d8             	mov    %r11,%rax
     e69:	4c 8b a4 24 10 07 00 	mov    0x710(%rsp),%r12
     e70:	00 
     e71:	4c 01 e0             	add    %r12,%rax
     e74:	49 01 c7             	add    %rax,%r15
     e77:	4c 89 bc 24 a0 05 00 	mov    %r15,0x5a0(%rsp)
     e7e:	00 
     e7f:	4d 31 fe             	xor    %r15,%r14
     e82:	49 c1 ce 10          	ror    $0x10,%r14
     e86:	4d 01 f1             	add    %r14,%r9
     e89:	4c 89 8c 24 98 05 00 	mov    %r9,0x598(%rsp)
     e90:	00 
     e91:	4d 89 cf             	mov    %r9,%r15
     e94:	4d 31 fb             	xor    %r15,%r11
     e97:	49 c1 cb 3f          	ror    $0x3f,%r11
     e9b:	4c 89 9c 24 90 05 00 	mov    %r11,0x590(%rsp)
     ea2:	00 
     ea3:	4c 89 c0             	mov    %r8,%rax
     ea6:	4c 8b bc 24 c0 06 00 	mov    0x6c0(%rsp),%r15
     ead:	00 
     eae:	4c 01 f8             	add    %r15,%rax
     eb1:	49 01 c5             	add    %rax,%r13
     eb4:	4c 8b bc 24 e0 05 00 	mov    0x5e0(%rsp),%r15
     ebb:	00 
     ebc:	4d 31 ef             	xor    %r13,%r15
     ebf:	49 c1 cf 20          	ror    $0x20,%r15
     ec3:	4c 8b a4 24 f8 05 00 	mov    0x5f8(%rsp),%r12
     eca:	00 
     ecb:	4d 01 fc             	add    %r15,%r12
     ece:	4d 31 e0             	xor    %r12,%r8
     ed1:	49 c1 c8 18          	ror    $0x18,%r8
     ed5:	4c 89 c0             	mov    %r8,%rax
     ed8:	4c 8b 9c 24 e0 06 00 	mov    0x6e0(%rsp),%r11
     edf:	00 
     ee0:	4c 01 d8             	add    %r11,%rax
     ee3:	49 01 c5             	add    %rax,%r13
     ee6:	4d 31 ef             	xor    %r13,%r15
     ee9:	49 c1 cf 10          	ror    $0x10,%r15
     eed:	4d 01 fc             	add    %r15,%r12
     ef0:	4d 31 e0             	xor    %r12,%r8
     ef3:	49 c1 c8 3f          	ror    $0x3f,%r8
     ef7:	4c 89 84 24 88 05 00 	mov    %r8,0x588(%rsp)
     efe:	00 
     eff:	4c 8b 9c 24 f0 05 00 	mov    0x5f0(%rsp),%r11
     f06:	00 
     f07:	4c 8b 94 24 f0 06 00 	mov    0x6f0(%rsp),%r10
     f0e:	00 
     f0f:	4d 01 d3             	add    %r10,%r11
     f12:	4c 8b 94 24 c8 05 00 	mov    0x5c8(%rsp),%r10
     f19:	00 
     f1a:	4d 01 da             	add    %r11,%r10
     f1d:	4c 8b 9c 24 d0 05 00 	mov    0x5d0(%rsp),%r11
     f24:	00 
     f25:	4d 31 d3             	xor    %r10,%r11
     f28:	49 c1 cb 20          	ror    $0x20,%r11
     f2c:	4c 8b 8c 24 d8 05 00 	mov    0x5d8(%rsp),%r9
     f33:	00 
     f34:	4d 01 d9             	add    %r11,%r9
     f37:	4c 8b 84 24 f0 05 00 	mov    0x5f0(%rsp),%r8
     f3e:	00 
     f3f:	4d 31 c8             	xor    %r9,%r8
     f42:	49 c1 c8 18          	ror    $0x18,%r8
     f46:	4c 89 c0             	mov    %r8,%rax
     f49:	48 8b bc 24 08 07 00 	mov    0x708(%rsp),%rdi
     f50:	00 
     f51:	48 01 f8             	add    %rdi,%rax
     f54:	49 01 c2             	add    %rax,%r10
     f57:	4c 89 94 24 80 05 00 	mov    %r10,0x580(%rsp)
     f5e:	00 
     f5f:	4d 31 d3             	xor    %r10,%r11
     f62:	49 c1 cb 10          	ror    $0x10,%r11
     f66:	4d 01 d9             	add    %r11,%r9
     f69:	4d 31 c8             	xor    %r9,%r8
     f6c:	49 c1 c8 3f          	ror    $0x3f,%r8
     f70:	4c 89 c0             	mov    %r8,%rax
     f73:	4c 8b 94 24 c0 06 00 	mov    0x6c0(%rsp),%r10
     f7a:	00 
     f7b:	4c 01 d0             	add    %r10,%rax
     f7e:	4c 8b 94 24 c0 05 00 	mov    0x5c0(%rsp),%r10
     f85:	00 
     f86:	49 01 c2             	add    %rax,%r10
     f89:	4d 31 d6             	xor    %r10,%r14
     f8c:	49 c1 ce 20          	ror    $0x20,%r14
     f90:	4d 01 f4             	add    %r14,%r12
     f93:	4d 31 e0             	xor    %r12,%r8
     f96:	49 c1 c8 18          	ror    $0x18,%r8
     f9a:	4c 89 c0             	mov    %r8,%rax
     f9d:	48 8b bc 24 d8 06 00 	mov    0x6d8(%rsp),%rdi
     fa4:	00 
     fa5:	48 01 f8             	add    %rdi,%rax
     fa8:	49 01 c2             	add    %rax,%r10
     fab:	4c 89 94 24 78 05 00 	mov    %r10,0x578(%rsp)
     fb2:	00 
     fb3:	4d 31 d6             	xor    %r10,%r14
     fb6:	49 c1 ce 10          	ror    $0x10,%r14
     fba:	4c 89 b4 24 70 05 00 	mov    %r14,0x570(%rsp)
     fc1:	00 
     fc2:	4d 01 f4             	add    %r14,%r12
     fc5:	4c 89 a4 24 68 05 00 	mov    %r12,0x568(%rsp)
     fcc:	00 
     fcd:	4d 89 e6             	mov    %r12,%r14
     fd0:	4d 31 f0             	xor    %r14,%r8
     fd3:	49 c1 c8 3f          	ror    $0x3f,%r8
     fd7:	4c 89 84 24 60 05 00 	mov    %r8,0x560(%rsp)
     fde:	00 
     fdf:	4c 8b b4 24 a8 05 00 	mov    0x5a8(%rsp),%r14
     fe6:	00 
     fe7:	4c 8b a4 24 b8 06 00 	mov    0x6b8(%rsp),%r12
     fee:	00 
     fef:	4d 01 e6             	add    %r12,%r14
     ff2:	4c 8b a4 24 a0 05 00 	mov    0x5a0(%rsp),%r12
     ff9:	00 
     ffa:	4d 01 f4             	add    %r14,%r12
     ffd:	4d 31 e7             	xor    %r12,%r15
    1000:	49 c1 cf 20          	ror    $0x20,%r15
    1004:	4d 01 f9             	add    %r15,%r9
    1007:	4c 8b b4 24 a8 05 00 	mov    0x5a8(%rsp),%r14
    100e:	00 
    100f:	4d 31 ce             	xor    %r9,%r14
    1012:	49 c1 ce 18          	ror    $0x18,%r14
    1016:	4c 89 f0             	mov    %r14,%rax
    1019:	4c 8b 94 24 20 07 00 	mov    0x720(%rsp),%r10
    1020:	00 
    1021:	4c 01 d0             	add    %r10,%rax
    1024:	49 01 c4             	add    %rax,%r12
    1027:	4c 89 a4 24 58 05 00 	mov    %r12,0x558(%rsp)
    102e:	00 
    102f:	4d 31 e7             	xor    %r12,%r15
    1032:	49 c1 cf 10          	ror    $0x10,%r15
    1036:	4c 89 bc 24 50 05 00 	mov    %r15,0x550(%rsp)
    103d:	00 
    103e:	4d 01 f9             	add    %r15,%r9
    1041:	4c 89 8c 24 48 05 00 	mov    %r9,0x548(%rsp)
    1048:	00 
    1049:	4d 89 cf             	mov    %r9,%r15
    104c:	4d 31 fe             	xor    %r15,%r14
    104f:	49 c1 ce 3f          	ror    $0x3f,%r14
    1053:	4c 8b bc 24 90 05 00 	mov    0x590(%rsp),%r15
    105a:	00 
    105b:	4c 8b a4 24 f0 06 00 	mov    0x6f0(%rsp),%r12
    1062:	00 
    1063:	4d 01 e7             	add    %r12,%r15
    1066:	4d 01 fd             	add    %r15,%r13
    1069:	4d 31 eb             	xor    %r13,%r11
    106c:	49 c1 cb 20          	ror    $0x20,%r11
    1070:	4c 8b bc 24 b0 05 00 	mov    0x5b0(%rsp),%r15
    1077:	00 
    1078:	4d 01 df             	add    %r11,%r15
    107b:	4c 8b a4 24 90 05 00 	mov    0x590(%rsp),%r12
    1082:	00 
    1083:	4d 31 fc             	xor    %r15,%r12
    1086:	49 c1 cc 18          	ror    $0x18,%r12
    108a:	4c 89 e0             	mov    %r12,%rax
    108d:	4c 8b 94 24 10 07 00 	mov    0x710(%rsp),%r10
    1094:	00 
    1095:	4c 01 d0             	add    %r10,%rax
    1098:	49 01 c5             	add    %rax,%r13
    109b:	4d 31 eb             	xor    %r13,%r11
    109e:	49 c1 cb 10          	ror    $0x10,%r11
    10a2:	4c 89 9c 24 40 05 00 	mov    %r11,0x540(%rsp)
    10a9:	00 
    10aa:	4d 01 df             	add    %r11,%r15
    10ad:	4d 31 fc             	xor    %r15,%r12
    10b0:	49 c1 cc 3f          	ror    $0x3f,%r12
    10b4:	4c 8b 9c 24 88 05 00 	mov    0x588(%rsp),%r11
    10bb:	00 
    10bc:	4c 8b 94 24 a0 06 00 	mov    0x6a0(%rsp),%r10
    10c3:	00 
    10c4:	4d 01 d3             	add    %r10,%r11
    10c7:	4c 8b 94 24 80 05 00 	mov    0x580(%rsp),%r10
    10ce:	00 
    10cf:	4d 01 da             	add    %r11,%r10
    10d2:	4c 8b 9c 24 b8 05 00 	mov    0x5b8(%rsp),%r11
    10d9:	00 
    10da:	4d 31 d3             	xor    %r10,%r11
    10dd:	49 c1 cb 20          	ror    $0x20,%r11
    10e1:	4c 8b 8c 24 98 05 00 	mov    0x598(%rsp),%r9
    10e8:	00 
    10e9:	4d 01 d9             	add    %r11,%r9
    10ec:	4c 8b 84 24 88 05 00 	mov    0x588(%rsp),%r8
    10f3:	00 
    10f4:	4d 31 c8             	xor    %r9,%r8
    10f7:	49 c1 c8 18          	ror    $0x18,%r8
    10fb:	4c 89 c0             	mov    %r8,%rax
    10fe:	48 8b bc 24 b0 06 00 	mov    0x6b0(%rsp),%rdi
    1105:	00 
    1106:	48 01 f8             	add    %rdi,%rax
    1109:	49 01 c2             	add    %rax,%r10
    110c:	4c 89 94 24 38 05 00 	mov    %r10,0x538(%rsp)
    1113:	00 
    1114:	4d 31 d3             	xor    %r10,%r11
    1117:	49 c1 cb 10          	ror    $0x10,%r11
    111b:	4d 01 d9             	add    %r11,%r9
    111e:	4d 31 c8             	xor    %r9,%r8
    1121:	49 c1 c8 3f          	ror    $0x3f,%r8
    1125:	4c 89 f0             	mov    %r14,%rax
    1128:	4c 8b 94 24 c8 06 00 	mov    0x6c8(%rsp),%r10
    112f:	00 
    1130:	4c 01 d0             	add    %r10,%rax
    1133:	4c 8b 94 24 78 05 00 	mov    0x578(%rsp),%r10
    113a:	00 
    113b:	49 01 c2             	add    %rax,%r10
    113e:	4d 31 d3             	xor    %r10,%r11
    1141:	49 c1 cb 20          	ror    $0x20,%r11
    1145:	4d 01 df             	add    %r11,%r15
    1148:	4d 31 fe             	xor    %r15,%r14
    114b:	49 c1 ce 18          	ror    $0x18,%r14
    114f:	4c 89 f0             	mov    %r14,%rax
    1152:	48 8b bc 24 a8 06 00 	mov    0x6a8(%rsp),%rdi
    1159:	00 
    115a:	48 01 f8             	add    %rdi,%rax
    115d:	49 01 c2             	add    %rax,%r10
    1160:	4c 89 94 24 30 05 00 	mov    %r10,0x530(%rsp)
    1167:	00 
    1168:	4d 31 d3             	xor    %r10,%r11
    116b:	49 c1 cb 10          	ror    $0x10,%r11
    116f:	4c 89 9c 24 28 05 00 	mov    %r11,0x528(%rsp)
    1176:	00 
    1177:	4d 01 df             	add    %r11,%r15
    117a:	4c 89 bc 24 20 05 00 	mov    %r15,0x520(%rsp)
    1181:	00 
    1182:	4d 31 fe             	xor    %r15,%r14
    1185:	49 c1 ce 3f          	ror    $0x3f,%r14
    1189:	4c 89 b4 24 18 05 00 	mov    %r14,0x518(%rsp)
    1190:	00 
    1191:	4c 89 e0             	mov    %r12,%rax
    1194:	4c 8b bc 24 08 07 00 	mov    0x708(%rsp),%r15
    119b:	00 
    119c:	4c 01 f8             	add    %r15,%rax
    119f:	4c 8b bc 24 58 05 00 	mov    0x558(%rsp),%r15
    11a6:	00 
    11a7:	49 01 c7             	add    %rax,%r15
    11aa:	4c 8b b4 24 70 05 00 	mov    0x570(%rsp),%r14
    11b1:	00 
    11b2:	4d 31 fe             	xor    %r15,%r14
    11b5:	49 c1 ce 20          	ror    $0x20,%r14
    11b9:	4d 01 f1             	add    %r14,%r9
    11bc:	4d 31 cc             	xor    %r9,%r12
    11bf:	49 c1 cc 18          	ror    $0x18,%r12
    11c3:	4c 89 e0             	mov    %r12,%rax
    11c6:	4c 8b 9c 24 e8 06 00 	mov    0x6e8(%rsp),%r11
    11cd:	00 
    11ce:	4c 01 d8             	add    %r11,%rax
    11d1:	49 01 c7             	add    %rax,%r15
    11d4:	4c 89 bc 24 10 05 00 	mov    %r15,0x510(%rsp)
    11db:	00 
    11dc:	4d 31 fe             	xor    %r15,%r14
    11df:	49 c1 ce 10          	ror    $0x10,%r14
    11e3:	4d 01 f1             	add    %r14,%r9
    11e6:	4c 89 8c 24 08 05 00 	mov    %r9,0x508(%rsp)
    11ed:	00 
    11ee:	4d 89 cf             	mov    %r9,%r15
    11f1:	4d 31 fc             	xor    %r15,%r12
    11f4:	49 c1 cc 3f          	ror    $0x3f,%r12
    11f8:	4c 89 a4 24 00 05 00 	mov    %r12,0x500(%rsp)
    11ff:	00 
    1200:	4c 89 c0             	mov    %r8,%rax
    1203:	4c 8b bc 24 e0 06 00 	mov    0x6e0(%rsp),%r15
    120a:	00 
    120b:	4c 01 f8             	add    %r15,%rax
    120e:	49 01 c5             	add    %rax,%r13
    1211:	4c 8b bc 24 50 05 00 	mov    0x550(%rsp),%r15
    1218:	00 
    1219:	4d 31 ef             	xor    %r13,%r15
    121c:	49 c1 cf 20          	ror    $0x20,%r15
    1220:	4c 8b a4 24 68 05 00 	mov    0x568(%rsp),%r12
    1227:	00 
    1228:	4d 01 fc             	add    %r15,%r12
    122b:	4d 31 e0             	xor    %r12,%r8
    122e:	49 c1 c8 18          	ror    $0x18,%r8
    1232:	4c 89 c0             	mov    %r8,%rax
    1235:	4c 8b 9c 24 18 07 00 	mov    0x718(%rsp),%r11
    123c:	00 
    123d:	4c 01 d8             	add    %r11,%rax
    1240:	49 01 c5             	add    %rax,%r13
    1243:	4d 31 ef             	xor    %r13,%r15
    1246:	49 c1 cf 10          	ror    $0x10,%r15
    124a:	4d 01 fc             	add    %r15,%r12
    124d:	4d 31 e0             	xor    %r12,%r8
    1250:	49 c1 c8 3f          	ror    $0x3f,%r8
    1254:	4c 89 84 24 f8 04 00 	mov    %r8,0x4f8(%rsp)
    125b:	00 
    125c:	4c 8b 9c 24 60 05 00 	mov    0x560(%rsp),%r11
    1263:	00 
    1264:	4c 8b 94 24 d0 06 00 	mov    0x6d0(%rsp),%r10
    126b:	00 
    126c:	4d 01 d3             	add    %r10,%r11
    126f:	4c 8b 94 24 38 05 00 	mov    0x538(%rsp),%r10
    1276:	00 
    1277:	4d 01 da             	add    %r11,%r10
    127a:	4c 8b 9c 24 40 05 00 	mov    0x540(%rsp),%r11
    1281:	00 
    1282:	4d 31 d3             	xor    %r10,%r11
    1285:	49 c1 cb 20          	ror    $0x20,%r11
    1289:	4c 8b 8c 24 48 05 00 	mov    0x548(%rsp),%r9
    1290:	00 
    1291:	4d 01 d9             	add    %r11,%r9
    1294:	4c 8b 84 24 60 05 00 	mov    0x560(%rsp),%r8
    129b:	00 
    129c:	4d 31 c8             	xor    %r9,%r8
    129f:	49 c1 c8 18          	ror    $0x18,%r8
    12a3:	4c 89 c0             	mov    %r8,%rax
    12a6:	48 8b bc 24 f8 06 00 	mov    0x6f8(%rsp),%rdi
    12ad:	00 
    12ae:	48 01 f8             	add    %rdi,%rax
    12b1:	49 01 c2             	add    %rax,%r10
    12b4:	4c 89 94 24 f0 04 00 	mov    %r10,0x4f0(%rsp)
    12bb:	00 
    12bc:	4d 31 d3             	xor    %r10,%r11
    12bf:	49 c1 cb 10          	ror    $0x10,%r11
    12c3:	4d 01 d9             	add    %r11,%r9
    12c6:	4d 31 c8             	xor    %r9,%r8
    12c9:	49 c1 c8 3f          	ror    $0x3f,%r8
    12cd:	4c 89 c0             	mov    %r8,%rax
    12d0:	4c 8b 94 24 e0 06 00 	mov    0x6e0(%rsp),%r10
    12d7:	00 
    12d8:	4c 01 d0             	add    %r10,%rax
    12db:	4c 8b 94 24 30 05 00 	mov    0x530(%rsp),%r10
    12e2:	00 
    12e3:	49 01 c2             	add    %rax,%r10
    12e6:	4d 31 d6             	xor    %r10,%r14
    12e9:	49 c1 ce 20          	ror    $0x20,%r14
    12ed:	4d 01 f4             	add    %r14,%r12
    12f0:	4d 31 e0             	xor    %r12,%r8
    12f3:	49 c1 c8 18          	ror    $0x18,%r8
    12f7:	4c 89 c0             	mov    %r8,%rax
    12fa:	48 8b bc 24 d0 06 00 	mov    0x6d0(%rsp),%rdi
    1301:	00 
    1302:	48 01 f8             	add    %rdi,%rax
    1305:	49 01 c2             	add    %rax,%r10
    1308:	4c 89 94 24 e8 04 00 	mov    %r10,0x4e8(%rsp)
    130f:	00 
    1310:	4d 31 d6             	xor    %r10,%r14
    1313:	49 c1 ce 10          	ror    $0x10,%r14
    1317:	4c 89 b4 24 e0 04 00 	mov    %r14,0x4e0(%rsp)
    131e:	00 
    131f:	4d 01 f4             	add    %r14,%r12
    1322:	4c 89 a4 24 d8 04 00 	mov    %r12,0x4d8(%rsp)
    1329:	00 
    132a:	4d 89 e6             	mov    %r12,%r14
    132d:	4d 31 f0             	xor    %r14,%r8
    1330:	49 c1 c8 3f          	ror    $0x3f,%r8
    1334:	4c 89 84 24 d0 04 00 	mov    %r8,0x4d0(%rsp)
    133b:	00 
    133c:	4c 8b b4 24 18 05 00 	mov    0x518(%rsp),%r14
    1343:	00 
    1344:	4c 8b a4 24 08 07 00 	mov    0x708(%rsp),%r12
    134b:	00 
    134c:	4d 01 e6             	add    %r12,%r14
    134f:	4c 8b a4 24 10 05 00 	mov    0x510(%rsp),%r12
    1356:	00 
    1357:	4d 01 f4             	add    %r14,%r12
    135a:	4d 31 e7             	xor    %r12,%r15
    135d:	49 c1 cf 20          	ror    $0x20,%r15
    1361:	4d 01 f9             	add    %r15,%r9
    1364:	4c 8b b4 24 18 05 00 	mov    0x518(%rsp),%r14
    136b:	00 
    136c:	4d 31 ce             	xor    %r9,%r14
    136f:	49 c1 ce 18          	ror    $0x18,%r14
    1373:	4c 89 f0             	mov    %r14,%rax
    1376:	4c 8b 94 24 18 07 00 	mov    0x718(%rsp),%r10
    137d:	00 
    137e:	4c 01 d0             	add    %r10,%rax
    1381:	49 01 c4             	add    %rax,%r12
    1384:	4c 89 a4 24 c8 04 00 	mov    %r12,0x4c8(%rsp)
    138b:	00 
    138c:	4d 31 e7             	xor    %r12,%r15
    138f:	49 c1 cf 10          	ror    $0x10,%r15
    1393:	4c 89 bc 24 c0 04 00 	mov    %r15,0x4c0(%rsp)
    139a:	00 
    139b:	4d 01 f9             	add    %r15,%r9
    139e:	4c 89 8c 24 b8 04 00 	mov    %r9,0x4b8(%rsp)
    13a5:	00 
    13a6:	4d 89 cf             	mov    %r9,%r15
    13a9:	4d 31 fe             	xor    %r15,%r14
    13ac:	49 c1 ce 3f          	ror    $0x3f,%r14
    13b0:	4c 8b bc 24 00 05 00 	mov    0x500(%rsp),%r15
    13b7:	00 
    13b8:	4c 8b a4 24 b0 06 00 	mov    0x6b0(%rsp),%r12
    13bf:	00 
    13c0:	4d 01 e7             	add    %r12,%r15
    13c3:	4d 01 fd             	add    %r15,%r13
    13c6:	4d 31 eb             	xor    %r13,%r11
    13c9:	49 c1 cb 20          	ror    $0x20,%r11
    13cd:	4c 8b bc 24 20 05 00 	mov    0x520(%rsp),%r15
    13d4:	00 
    13d5:	4d 01 df             	add    %r11,%r15
    13d8:	4c 8b a4 24 00 05 00 	mov    0x500(%rsp),%r12
    13df:	00 
    13e0:	4d 31 fc             	xor    %r15,%r12
    13e3:	49 c1 cc 18          	ror    $0x18,%r12
    13e7:	4c 89 e0             	mov    %r12,%rax
    13ea:	4c 8b 94 24 b8 06 00 	mov    0x6b8(%rsp),%r10
    13f1:	00 
    13f2:	4c 01 d0             	add    %r10,%rax
    13f5:	49 01 c5             	add    %rax,%r13
    13f8:	4d 31 eb             	xor    %r13,%r11
    13fb:	49 c1 cb 10          	ror    $0x10,%r11
    13ff:	4c 89 9c 24 b0 04 00 	mov    %r11,0x4b0(%rsp)
    1406:	00 
    1407:	4d 01 df             	add    %r11,%r15
    140a:	4d 31 fc             	xor    %r15,%r12
    140d:	49 c1 cc 3f          	ror    $0x3f,%r12
    1411:	4c 8b 9c 24 f8 04 00 	mov    0x4f8(%rsp),%r11
    1418:	00 
    1419:	4c 8b 94 24 c0 06 00 	mov    0x6c0(%rsp),%r10
    1420:	00 
    1421:	4d 01 d3             	add    %r10,%r11
    1424:	4c 8b 94 24 f0 04 00 	mov    0x4f0(%rsp),%r10
    142b:	00 
    142c:	4d 01 da             	add    %r11,%r10
    142f:	4c 8b 9c 24 28 05 00 	mov    0x528(%rsp),%r11
    1436:	00 
    1437:	4d 31 d3             	xor    %r10,%r11
    143a:	49 c1 cb 20          	ror    $0x20,%r11
    143e:	4c 8b 8c 24 08 05 00 	mov    0x508(%rsp),%r9
    1445:	00 
    1446:	4d 01 d9             	add    %r11,%r9
    1449:	4c 8b 84 24 f8 04 00 	mov    0x4f8(%rsp),%r8
    1450:	00 
    1451:	4d 31 c8             	xor    %r9,%r8
    1454:	49 c1 c8 18          	ror    $0x18,%r8
    1458:	4c 89 c0             	mov    %r8,%rax
    145b:	48 8b bc 24 a8 06 00 	mov    0x6a8(%rsp),%rdi
    1462:	00 
    1463:	48 01 f8             	add    %rdi,%rax
    1466:	49 01 c2             	add    %rax,%r10
    1469:	4c 89 94 24 a8 04 00 	mov    %r10,0x4a8(%rsp)
    1470:	00 
    1471:	4d 31 d3             	xor    %r10,%r11
    1474:	49 c1 cb 10          	ror    $0x10,%r11
    1478:	4d 01 d9             	add    %r11,%r9
    147b:	4d 31 c8             	xor    %r9,%r8
    147e:	49 c1 c8 3f          	ror    $0x3f,%r8
    1482:	4c 89 f0             	mov    %r14,%rax
    1485:	4c 8b 94 24 10 07 00 	mov    0x710(%rsp),%r10
    148c:	00 
    148d:	4c 01 d0             	add    %r10,%rax
    1490:	4c 8b 94 24 e8 04 00 	mov    0x4e8(%rsp),%r10
    1497:	00 
    1498:	49 01 c2             	add    %rax,%r10
    149b:	4d 31 d3             	xor    %r10,%r11
    149e:	49 c1 cb 20          	ror    $0x20,%r11
    14a2:	4d 01 df             	add    %r11,%r15
    14a5:	4d 31 fe             	xor    %r15,%r14
    14a8:	49 c1 ce 18          	ror    $0x18,%r14
    14ac:	4c 89 f0             	mov    %r14,%rax
    14af:	48 8b bc 24 e8 06 00 	mov    0x6e8(%rsp),%rdi
    14b6:	00 
    14b7:	48 01 f8             	add    %rdi,%rax
    14ba:	49 01 c2             	add    %rax,%r10
    14bd:	4c 89 94 24 a0 04 00 	mov    %r10,0x4a0(%rsp)
    14c4:	00 
    14c5:	4d 31 d3             	xor    %r10,%r11
    14c8:	49 c1 cb 10          	ror    $0x10,%r11
    14cc:	4c 89 9c 24 98 04 00 	mov    %r11,0x498(%rsp)
    14d3:	00 
    14d4:	4d 01 df             	add    %r11,%r15
    14d7:	4c 89 bc 24 90 04 00 	mov    %r15,0x490(%rsp)
    14de:	00 
    14df:	4d 31 fe             	xor    %r15,%r14
    14e2:	49 c1 ce 3f          	ror    $0x3f,%r14
    14e6:	4c 89 b4 24 88 04 00 	mov    %r14,0x488(%rsp)
    14ed:	00 
    14ee:	4c 89 e0             	mov    %r12,%rax
    14f1:	4c 8b bc 24 f0 06 00 	mov    0x6f0(%rsp),%r15
    14f8:	00 
    14f9:	4c 01 f8             	add    %r15,%rax
    14fc:	4c 8b bc 24 c8 04 00 	mov    0x4c8(%rsp),%r15
    1503:	00 
    1504:	49 01 c7             	add    %rax,%r15
    1507:	4c 8b b4 24 e0 04 00 	mov    0x4e0(%rsp),%r14
    150e:	00 
    150f:	4d 31 fe             	xor    %r15,%r14
    1512:	49 c1 ce 20          	ror    $0x20,%r14
    1516:	4d 01 f1             	add    %r14,%r9
    1519:	4d 31 cc             	xor    %r9,%r12
    151c:	49 c1 cc 18          	ror    $0x18,%r12
    1520:	4c 89 e0             	mov    %r12,%rax
    1523:	4c 8b 9c 24 c8 06 00 	mov    0x6c8(%rsp),%r11
    152a:	00 
    152b:	4c 01 d8             	add    %r11,%rax
    152e:	49 01 c7             	add    %rax,%r15
    1531:	4c 89 bc 24 80 04 00 	mov    %r15,0x480(%rsp)
    1538:	00 
    1539:	4d 31 fe             	xor    %r15,%r14
    153c:	49 c1 ce 10          	ror    $0x10,%r14
    1540:	4d 01 f1             	add    %r14,%r9
    1543:	4c 89 8c 24 78 04 00 	mov    %r9,0x478(%rsp)
    154a:	00 
    154b:	4d 89 cf             	mov    %r9,%r15
    154e:	4d 31 fc             	xor    %r15,%r12
    1551:	49 c1 cc 3f          	ror    $0x3f,%r12
    1555:	4c 89 a4 24 70 04 00 	mov    %r12,0x470(%rsp)
    155c:	00 
    155d:	4c 89 c0             	mov    %r8,%rax
    1560:	4c 8b bc 24 f8 06 00 	mov    0x6f8(%rsp),%r15
    1567:	00 
    1568:	4c 01 f8             	add    %r15,%rax
    156b:	49 01 c5             	add    %rax,%r13
    156e:	4c 8b bc 24 c0 04 00 	mov    0x4c0(%rsp),%r15
    1575:	00 
    1576:	4d 31 ef             	xor    %r13,%r15
    1579:	49 c1 cf 20          	ror    $0x20,%r15
    157d:	4c 8b a4 24 d8 04 00 	mov    0x4d8(%rsp),%r12
    1584:	00 
    1585:	4d 01 fc             	add    %r15,%r12
    1588:	4d 31 e0             	xor    %r12,%r8
    158b:	49 c1 c8 18          	ror    $0x18,%r8
    158f:	4c 89 c0             	mov    %r8,%rax
    1592:	4c 8b 9c 24 20 07 00 	mov    0x720(%rsp),%r11
    1599:	00 
    159a:	4c 01 d8             	add    %r11,%rax
    159d:	49 01 c5             	add    %rax,%r13
    15a0:	4d 31 ef             	xor    %r13,%r15
    15a3:	49 c1 cf 10          	ror    $0x10,%r15
    15a7:	4d 01 fc             	add    %r15,%r12
    15aa:	4d 31 e0             	xor    %r12,%r8
    15ad:	49 c1 c8 3f          	ror    $0x3f,%r8
    15b1:	4c 89 84 24 68 04 00 	mov    %r8,0x468(%rsp)
    15b8:	00 
    15b9:	4c 8b 9c 24 d0 04 00 	mov    0x4d0(%rsp),%r11
    15c0:	00 
    15c1:	4c 8b 94 24 a0 06 00 	mov    0x6a0(%rsp),%r10
    15c8:	00 
    15c9:	4d 01 d3             	add    %r10,%r11
    15cc:	4c 8b 94 24 a8 04 00 	mov    0x4a8(%rsp),%r10
    15d3:	00 
    15d4:	4d 01 da             	add    %r11,%r10
    15d7:	4c 8b 9c 24 b0 04 00 	mov    0x4b0(%rsp),%r11
    15de:	00 
    15df:	4d 31 d3             	xor    %r10,%r11
    15e2:	49 c1 cb 20          	ror    $0x20,%r11
    15e6:	4c 8b 8c 24 b8 04 00 	mov    0x4b8(%rsp),%r9
    15ed:	00 
    15ee:	4d 01 d9             	add    %r11,%r9
    15f1:	4c 8b 84 24 d0 04 00 	mov    0x4d0(%rsp),%r8
    15f8:	00 
    15f9:	4d 31 c8             	xor    %r9,%r8
    15fc:	49 c1 c8 18          	ror    $0x18,%r8
    1600:	4c 89 c0             	mov    %r8,%rax
    1603:	48 8b bc 24 d8 06 00 	mov    0x6d8(%rsp),%rdi
    160a:	00 
    160b:	48 01 f8             	add    %rdi,%rax
    160e:	49 01 c2             	add    %rax,%r10
    1611:	4c 89 94 24 60 04 00 	mov    %r10,0x460(%rsp)
    1618:	00 
    1619:	4d 31 d3             	xor    %r10,%r11
    161c:	49 c1 cb 10          	ror    $0x10,%r11
    1620:	4d 01 d9             	add    %r11,%r9
    1623:	4d 31 c8             	xor    %r9,%r8
    1626:	49 c1 c8 3f          	ror    $0x3f,%r8
    162a:	4c 89 c0             	mov    %r8,%rax
    162d:	4c 8b 94 24 d0 06 00 	mov    0x6d0(%rsp),%r10
    1634:	00 
    1635:	4c 01 d0             	add    %r10,%rax
    1638:	4c 8b 94 24 a0 04 00 	mov    0x4a0(%rsp),%r10
    163f:	00 
    1640:	49 01 c2             	add    %rax,%r10
    1643:	4d 31 d6             	xor    %r10,%r14
    1646:	49 c1 ce 20          	ror    $0x20,%r14
    164a:	4d 01 f4             	add    %r14,%r12
    164d:	4d 31 e0             	xor    %r12,%r8
    1650:	49 c1 c8 18          	ror    $0x18,%r8
    1654:	4c 89 c0             	mov    %r8,%rax
    1657:	48 8b bc 24 20 07 00 	mov    0x720(%rsp),%rdi
    165e:	00 
    165f:	48 01 f8             	add    %rdi,%rax
    1662:	49 01 c2             	add    %rax,%r10
    1665:	4c 89 94 24 58 04 00 	mov    %r10,0x458(%rsp)
    166c:	00 
    166d:	4d 31 d6             	xor    %r10,%r14
    1670:	49 c1 ce 10          	ror    $0x10,%r14
    1674:	4c 89 b4 24 50 04 00 	mov    %r14,0x450(%rsp)
    167b:	00 
    167c:	4d 01 f4             	add    %r14,%r12
    167f:	4c 89 a4 24 48 04 00 	mov    %r12,0x448(%rsp)
    1686:	00 
    1687:	4d 89 e6             	mov    %r12,%r14
    168a:	4d 31 f0             	xor    %r14,%r8
    168d:	49 c1 c8 3f          	ror    $0x3f,%r8
    1691:	4c 89 84 24 40 04 00 	mov    %r8,0x440(%rsp)
    1698:	00 
    1699:	4c 8b b4 24 88 04 00 	mov    0x488(%rsp),%r14
    16a0:	00 
    16a1:	4c 8b a4 24 f0 06 00 	mov    0x6f0(%rsp),%r12
    16a8:	00 
    16a9:	4d 01 e6             	add    %r12,%r14
    16ac:	4c 8b a4 24 80 04 00 	mov    0x480(%rsp),%r12
    16b3:	00 
    16b4:	4d 01 f4             	add    %r14,%r12
    16b7:	4d 31 e7             	xor    %r12,%r15
    16ba:	49 c1 cf 20          	ror    $0x20,%r15
    16be:	4d 01 f9             	add    %r15,%r9
    16c1:	4c 8b b4 24 88 04 00 	mov    0x488(%rsp),%r14
    16c8:	00 
    16c9:	4d 31 ce             	xor    %r9,%r14
    16cc:	49 c1 ce 18          	ror    $0x18,%r14
    16d0:	4c 89 f0             	mov    %r14,%rax
    16d3:	4c 8b 94 24 e0 06 00 	mov    0x6e0(%rsp),%r10
    16da:	00 
    16db:	4c 01 d0             	add    %r10,%rax
    16de:	49 01 c4             	add    %rax,%r12
    16e1:	4c 89 a4 24 38 04 00 	mov    %r12,0x438(%rsp)
    16e8:	00 
    16e9:	4d 31 e7             	xor    %r12,%r15
    16ec:	49 c1 cf 10          	ror    $0x10,%r15
    16f0:	4c 89 bc 24 30 04 00 	mov    %r15,0x430(%rsp)
    16f7:	00 
    16f8:	4d 01 f9             	add    %r15,%r9
    16fb:	4c 89 8c 24 28 04 00 	mov    %r9,0x428(%rsp)
    1702:	00 
    1703:	4d 89 cf             	mov    %r9,%r15
    1706:	4d 31 fe             	xor    %r15,%r14
    1709:	49 c1 ce 3f          	ror    $0x3f,%r14
    170d:	4c 8b bc 24 70 04 00 	mov    0x470(%rsp),%r15
    1714:	00 
    1715:	4c 8b a4 24 10 07 00 	mov    0x710(%rsp),%r12
    171c:	00 
    171d:	4d 01 e7             	add    %r12,%r15
    1720:	4d 01 fd             	add    %r15,%r13
    1723:	4d 31 eb             	xor    %r13,%r11
    1726:	49 c1 cb 20          	ror    $0x20,%r11
    172a:	4c 8b bc 24 90 04 00 	mov    0x490(%rsp),%r15
    1731:	00 
    1732:	4d 01 df             	add    %r11,%r15
    1735:	4c 8b a4 24 70 04 00 	mov    0x470(%rsp),%r12
    173c:	00 
    173d:	4d 31 fc             	xor    %r15,%r12
    1740:	49 c1 cc 18          	ror    $0x18,%r12
    1744:	4c 89 e0             	mov    %r12,%rax
    1747:	4c 8b 94 24 f8 06 00 	mov    0x6f8(%rsp),%r10
    174e:	00 
    174f:	4c 01 d0             	add    %r10,%rax
    1752:	49 01 c5             	add    %rax,%r13
    1755:	4d 31 eb             	xor    %r13,%r11
    1758:	49 c1 cb 10          	ror    $0x10,%r11
    175c:	4c 89 9c 24 20 04 00 	mov    %r11,0x420(%rsp)
    1763:	00 
    1764:	4d 01 df             	add    %r11,%r15
    1767:	4d 31 fc             	xor    %r15,%r12
    176a:	49 c1 cc 3f          	ror    $0x3f,%r12
    176e:	4c 8b 9c 24 68 04 00 	mov    0x468(%rsp),%r11
    1775:	00 
    1776:	4c 8b 94 24 c8 06 00 	mov    0x6c8(%rsp),%r10
    177d:	00 
    177e:	4d 01 d3             	add    %r10,%r11
    1781:	4c 8b 94 24 60 04 00 	mov    0x460(%rsp),%r10
    1788:	00 
    1789:	4d 01 da             	add    %r11,%r10
    178c:	4c 8b 9c 24 98 04 00 	mov    0x498(%rsp),%r11
    1793:	00 
    1794:	4d 31 d3             	xor    %r10,%r11
    1797:	49 c1 cb 20          	ror    $0x20,%r11
    179b:	4c 8b 8c 24 78 04 00 	mov    0x478(%rsp),%r9
    17a2:	00 
    17a3:	4d 01 d9             	add    %r11,%r9
    17a6:	4c 8b 84 24 68 04 00 	mov    0x468(%rsp),%r8
    17ad:	00 
    17ae:	4d 31 c8             	xor    %r9,%r8
    17b1:	49 c1 c8 18          	ror    $0x18,%r8
    17b5:	4c 89 c0             	mov    %r8,%rax
    17b8:	48 8b bc 24 a0 06 00 	mov    0x6a0(%rsp),%rdi
    17bf:	00 
    17c0:	48 01 f8             	add    %rdi,%rax
    17c3:	49 01 c2             	add    %rax,%r10
    17c6:	4c 89 94 24 18 04 00 	mov    %r10,0x418(%rsp)
    17cd:	00 
    17ce:	4d 31 d3             	xor    %r10,%r11
    17d1:	49 c1 cb 10          	ror    $0x10,%r11
    17d5:	4d 01 d9             	add    %r11,%r9
    17d8:	4d 31 c8             	xor    %r9,%r8
    17db:	49 c1 c8 3f          	ror    $0x3f,%r8
    17df:	4c 89 f0             	mov    %r14,%rax
    17e2:	4c 8b 94 24 a8 06 00 	mov    0x6a8(%rsp),%r10
    17e9:	00 
    17ea:	4c 01 d0             	add    %r10,%rax
    17ed:	4c 8b 94 24 58 04 00 	mov    0x458(%rsp),%r10
    17f4:	00 
    17f5:	49 01 c2             	add    %rax,%r10
    17f8:	4d 31 d3             	xor    %r10,%r11
    17fb:	49 c1 cb 20          	ror    $0x20,%r11
    17ff:	4d 01 df             	add    %r11,%r15
    1802:	4d 31 fe             	xor    %r15,%r14
    1805:	49 c1 ce 18          	ror    $0x18,%r14
    1809:	4c 89 f0             	mov    %r14,%rax
    180c:	48 8b bc 24 18 07 00 	mov    0x718(%rsp),%rdi
    1813:	00 
    1814:	48 01 f8             	add    %rdi,%rax
    1817:	49 01 c2             	add    %rax,%r10
    181a:	4c 89 94 24 10 04 00 	mov    %r10,0x410(%rsp)
    1821:	00 
    1822:	4d 31 d3             	xor    %r10,%r11
    1825:	49 c1 cb 10          	ror    $0x10,%r11
    1829:	4c 89 9c 24 08 04 00 	mov    %r11,0x408(%rsp)
    1830:	00 
    1831:	4d 01 df             	add    %r11,%r15
    1834:	4c 89 bc 24 00 04 00 	mov    %r15,0x400(%rsp)
    183b:	00 
    183c:	4d 31 fe             	xor    %r15,%r14
    183f:	49 c1 ce 3f          	ror    $0x3f,%r14
    1843:	4c 89 b4 24 f8 03 00 	mov    %r14,0x3f8(%rsp)
    184a:	00 
    184b:	4c 89 e0             	mov    %r12,%rax
    184e:	4c 8b bc 24 c0 06 00 	mov    0x6c0(%rsp),%r15
    1855:	00 
    1856:	4c 01 f8             	add    %r15,%rax
    1859:	4c 8b bc 24 38 04 00 	mov    0x438(%rsp),%r15
    1860:	00 
    1861:	49 01 c7             	add    %rax,%r15
    1864:	4c 8b b4 24 50 04 00 	mov    0x450(%rsp),%r14
    186b:	00 
    186c:	4d 31 fe             	xor    %r15,%r14
    186f:	49 c1 ce 20          	ror    $0x20,%r14
    1873:	4d 01 f1             	add    %r14,%r9
    1876:	4d 31 cc             	xor    %r9,%r12
    1879:	49 c1 cc 18          	ror    $0x18,%r12
    187d:	4c 89 e0             	mov    %r12,%rax
    1880:	4c 8b 9c 24 b8 06 00 	mov    0x6b8(%rsp),%r11
    1887:	00 
    1888:	4c 01 d8             	add    %r11,%rax
    188b:	49 01 c7             	add    %rax,%r15
    188e:	4c 89 bc 24 f0 03 00 	mov    %r15,0x3f0(%rsp)
    1895:	00 
    1896:	4d 31 fe             	xor    %r15,%r14
    1899:	49 c1 ce 10          	ror    $0x10,%r14
    189d:	4d 01 f1             	add    %r14,%r9
    18a0:	4c 89 8c 24 e8 03 00 	mov    %r9,0x3e8(%rsp)
    18a7:	00 
    18a8:	4d 89 cf             	mov    %r9,%r15
    18ab:	4d 31 fc             	xor    %r15,%r12
    18ae:	49 c1 cc 3f          	ror    $0x3f,%r12
    18b2:	4c 89 a4 24 e0 03 00 	mov    %r12,0x3e0(%rsp)
    18b9:	00 
    18ba:	4c 89 c0             	mov    %r8,%rax
    18bd:	4c 8b bc 24 e8 06 00 	mov    0x6e8(%rsp),%r15
    18c4:	00 
    18c5:	4c 01 f8             	add    %r15,%rax
    18c8:	49 01 c5             	add    %rax,%r13
    18cb:	4c 8b bc 24 30 04 00 	mov    0x430(%rsp),%r15
    18d2:	00 
    18d3:	4d 31 ef             	xor    %r13,%r15
    18d6:	49 c1 cf 20          	ror    $0x20,%r15
    18da:	4c 8b a4 24 48 04 00 	mov    0x448(%rsp),%r12
    18e1:	00 
    18e2:	4d 01 fc             	add    %r15,%r12
    18e5:	4d 31 e0             	xor    %r12,%r8
    18e8:	49 c1 c8 18          	ror    $0x18,%r8
    18ec:	4c 89 c0             	mov    %r8,%rax
    18ef:	4c 8b 9c 24 d8 06 00 	mov    0x6d8(%rsp),%r11
    18f6:	00 
    18f7:	4c 01 d8             	add    %r11,%rax
    18fa:	49 01 c5             	add    %rax,%r13
    18fd:	4d 31 ef             	xor    %r13,%r15
    1900:	49 c1 cf 10          	ror    $0x10,%r15
    1904:	4d 01 fc             	add    %r15,%r12
    1907:	4d 31 e0             	xor    %r12,%r8
    190a:	49 c1 c8 3f          	ror    $0x3f,%r8
    190e:	4c 89 84 24 d8 03 00 	mov    %r8,0x3d8(%rsp)
    1915:	00 
    1916:	4c 8b 9c 24 40 04 00 	mov    0x440(%rsp),%r11
    191d:	00 
    191e:	4c 8b 94 24 08 07 00 	mov    0x708(%rsp),%r10
    1925:	00 
    1926:	4d 01 d3             	add    %r10,%r11
    1929:	4c 8b 94 24 18 04 00 	mov    0x418(%rsp),%r10
    1930:	00 
    1931:	4d 01 da             	add    %r11,%r10
    1934:	4c 8b 9c 24 20 04 00 	mov    0x420(%rsp),%r11
    193b:	00 
    193c:	4d 31 d3             	xor    %r10,%r11
    193f:	49 c1 cb 20          	ror    $0x20,%r11
    1943:	4c 8b 8c 24 28 04 00 	mov    0x428(%rsp),%r9
    194a:	00 
    194b:	4d 01 d9             	add    %r11,%r9
    194e:	4c 8b 84 24 40 04 00 	mov    0x440(%rsp),%r8
    1955:	00 
    1956:	4d 31 c8             	xor    %r9,%r8
    1959:	49 c1 c8 18          	ror    $0x18,%r8
    195d:	4c 89 c0             	mov    %r8,%rax
    1960:	48 8b bc 24 b0 06 00 	mov    0x6b0(%rsp),%rdi
    1967:	00 
    1968:	48 01 f8             	add    %rdi,%rax
    196b:	49 01 c2             	add    %rax,%r10
    196e:	4c 89 94 24 d0 03 00 	mov    %r10,0x3d0(%rsp)
    1975:	00 
    1976:	4d 31 d3             	xor    %r10,%r11
    1979:	49 c1 cb 10          	ror    $0x10,%r11
    197d:	4d 01 d9             	add    %r11,%r9
    1980:	4d 31 c8             	xor    %r9,%r8
    1983:	49 c1 c8 3f          	ror    $0x3f,%r8
    1987:	4c 89 c0             	mov    %r8,%rax
    198a:	4c 8b 94 24 10 07 00 	mov    0x710(%rsp),%r10
    1991:	00 
    1992:	4c 01 d0             	add    %r10,%rax
    1995:	4c 8b 94 24 10 04 00 	mov    0x410(%rsp),%r10
    199c:	00 
    199d:	49 01 c2             	add    %rax,%r10
    19a0:	4d 31 d6             	xor    %r10,%r14
    19a3:	49 c1 ce 20          	ror    $0x20,%r14
    19a7:	4d 01 f4             	add    %r14,%r12
    19aa:	4d 31 e0             	xor    %r12,%r8
    19ad:	49 c1 c8 18          	ror    $0x18,%r8
    19b1:	4c 89 c0             	mov    %r8,%rax
    19b4:	48 8b bc 24 b8 06 00 	mov    0x6b8(%rsp),%rdi
    19bb:	00 
    19bc:	48 01 f8             	add    %rdi,%rax
    19bf:	49 01 c2             	add    %rax,%r10
    19c2:	4c 89 94 24 c8 03 00 	mov    %r10,0x3c8(%rsp)
    19c9:	00 
    19ca:	4d 31 d6             	xor    %r10,%r14
    19cd:	49 c1 ce 10          	ror    $0x10,%r14
    19d1:	4c 89 b4 24 c0 03 00 	mov    %r14,0x3c0(%rsp)
    19d8:	00 
    19d9:	4d 01 f4             	add    %r14,%r12
    19dc:	4c 89 a4 24 b8 03 00 	mov    %r12,0x3b8(%rsp)
    19e3:	00 
    19e4:	4d 89 e6             	mov    %r12,%r14
    19e7:	4d 31 f0             	xor    %r14,%r8
    19ea:	49 c1 c8 3f          	ror    $0x3f,%r8
    19ee:	4c 89 84 24 b0 03 00 	mov    %r8,0x3b0(%rsp)
    19f5:	00 
    19f6:	4c 8b b4 24 f8 03 00 	mov    0x3f8(%rsp),%r14
    19fd:	00 
    19fe:	4c 8b a4 24 e8 06 00 	mov    0x6e8(%rsp),%r12
    1a05:	00 
    1a06:	4d 01 e6             	add    %r12,%r14
    1a09:	4c 8b a4 24 f0 03 00 	mov    0x3f0(%rsp),%r12
    1a10:	00 
    1a11:	4d 01 f4             	add    %r14,%r12
    1a14:	4d 31 e7             	xor    %r12,%r15
    1a17:	49 c1 cf 20          	ror    $0x20,%r15
    1a1b:	4d 01 f9             	add    %r15,%r9
    1a1e:	4c 8b b4 24 f8 03 00 	mov    0x3f8(%rsp),%r14
    1a25:	00 
    1a26:	4d 31 ce             	xor    %r9,%r14
    1a29:	49 c1 ce 18          	ror    $0x18,%r14
    1a2d:	4c 89 f0             	mov    %r14,%rax
    1a30:	4c 8b 94 24 c8 06 00 	mov    0x6c8(%rsp),%r10
    1a37:	00 
    1a38:	4c 01 d0             	add    %r10,%rax
    1a3b:	49 01 c4             	add    %rax,%r12
    1a3e:	4c 89 a4 24 a8 03 00 	mov    %r12,0x3a8(%rsp)
    1a45:	00 
    1a46:	4d 31 e7             	xor    %r12,%r15
    1a49:	49 c1 cf 10          	ror    $0x10,%r15
    1a4d:	4c 89 bc 24 a0 03 00 	mov    %r15,0x3a0(%rsp)
    1a54:	00 
    1a55:	4d 01 f9             	add    %r15,%r9
    1a58:	4c 89 8c 24 98 03 00 	mov    %r9,0x398(%rsp)
    1a5f:	00 
    1a60:	4d 89 cf             	mov    %r9,%r15
    1a63:	4d 31 fe             	xor    %r15,%r14
    1a66:	49 c1 ce 3f          	ror    $0x3f,%r14
    1a6a:	4c 8b bc 24 e0 03 00 	mov    0x3e0(%rsp),%r15
    1a71:	00 
    1a72:	4c 8b a4 24 20 07 00 	mov    0x720(%rsp),%r12
    1a79:	00 
    1a7a:	4d 01 e7             	add    %r12,%r15
    1a7d:	4d 01 fd             	add    %r15,%r13
    1a80:	4d 31 eb             	xor    %r13,%r11
    1a83:	49 c1 cb 20          	ror    $0x20,%r11
    1a87:	4c 8b bc 24 00 04 00 	mov    0x400(%rsp),%r15
    1a8e:	00 
    1a8f:	4d 01 df             	add    %r11,%r15
    1a92:	4c 8b a4 24 e0 03 00 	mov    0x3e0(%rsp),%r12
    1a99:	00 
    1a9a:	4d 31 fc             	xor    %r15,%r12
    1a9d:	49 c1 cc 18          	ror    $0x18,%r12
    1aa1:	4c 89 e0             	mov    %r12,%rax
    1aa4:	4c 8b 94 24 c0 06 00 	mov    0x6c0(%rsp),%r10
    1aab:	00 
    1aac:	4c 01 d0             	add    %r10,%rax
    1aaf:	49 01 c5             	add    %rax,%r13
    1ab2:	4d 31 eb             	xor    %r13,%r11
    1ab5:	49 c1 cb 10          	ror    $0x10,%r11
    1ab9:	4c 89 9c 24 90 03 00 	mov    %r11,0x390(%rsp)
    1ac0:	00 
    1ac1:	4d 01 df             	add    %r11,%r15
    1ac4:	4d 31 fc             	xor    %r15,%r12
    1ac7:	49 c1 cc 3f          	ror    $0x3f,%r12
    1acb:	4c 8b 9c 24 d8 03 00 	mov    0x3d8(%rsp),%r11
    1ad2:	00 
    1ad3:	4c 8b 94 24 d8 06 00 	mov    0x6d8(%rsp),%r10
    1ada:	00 
    1adb:	4d 01 d3             	add    %r10,%r11
    1ade:	4c 8b 94 24 d0 03 00 	mov    0x3d0(%rsp),%r10
    1ae5:	00 
    1ae6:	4d 01 da             	add    %r11,%r10
    1ae9:	4c 8b 9c 24 08 04 00 	mov    0x408(%rsp),%r11
    1af0:	00 
    1af1:	4d 31 d3             	xor    %r10,%r11
    1af4:	49 c1 cb 20          	ror    $0x20,%r11
    1af8:	4c 8b 8c 24 e8 03 00 	mov    0x3e8(%rsp),%r9
    1aff:	00 
    1b00:	4d 01 d9             	add    %r11,%r9
    1b03:	4c 8b 84 24 d8 03 00 	mov    0x3d8(%rsp),%r8
    1b0a:	00 
    1b0b:	4d 31 c8             	xor    %r9,%r8
    1b0e:	49 c1 c8 18          	ror    $0x18,%r8
    1b12:	4c 89 c0             	mov    %r8,%rax
    1b15:	48 8b bc 24 08 07 00 	mov    0x708(%rsp),%rdi
    1b1c:	00 
    1b1d:	48 01 f8             	add    %rdi,%rax
    1b20:	49 01 c2             	add    %rax,%r10
    1b23:	4c 89 94 24 88 03 00 	mov    %r10,0x388(%rsp)
    1b2a:	00 
    1b2b:	4d 31 d3             	xor    %r10,%r11
    1b2e:	49 c1 cb 10          	ror    $0x10,%r11
    1b32:	4d 01 d9             	add    %r11,%r9
    1b35:	4d 31 c8             	xor    %r9,%r8
    1b38:	49 c1 c8 3f          	ror    $0x3f,%r8
    1b3c:	4c 89 f0             	mov    %r14,%rax
    1b3f:	4c 8b 94 24 f8 06 00 	mov    0x6f8(%rsp),%r10
    1b46:	00 
    1b47:	4c 01 d0             	add    %r10,%rax
    1b4a:	4c 8b 94 24 c8 03 00 	mov    0x3c8(%rsp),%r10
    1b51:	00 
    1b52:	49 01 c2             	add    %rax,%r10
    1b55:	4d 31 d3             	xor    %r10,%r11
    1b58:	49 c1 cb 20          	ror    $0x20,%r11
    1b5c:	4d 01 df             	add    %r11,%r15
    1b5f:	4d 31 fe             	xor    %r15,%r14
    1b62:	49 c1 ce 18          	ror    $0x18,%r14
    1b66:	4c 89 f0             	mov    %r14,%rax
    1b69:	48 8b bc 24 b0 06 00 	mov    0x6b0(%rsp),%rdi
    1b70:	00 
    1b71:	48 01 f8             	add    %rdi,%rax
    1b74:	49 01 c2             	add    %rax,%r10
    1b77:	4c 89 94 24 80 03 00 	mov    %r10,0x380(%rsp)
    1b7e:	00 
    1b7f:	4d 31 d3             	xor    %r10,%r11
    1b82:	49 c1 cb 10          	ror    $0x10,%r11
    1b86:	4c 89 9c 24 78 03 00 	mov    %r11,0x378(%rsp)
    1b8d:	00 
    1b8e:	4d 01 df             	add    %r11,%r15
    1b91:	4c 89 bc 24 70 03 00 	mov    %r15,0x370(%rsp)
    1b98:	00 
    1b99:	4d 31 fe             	xor    %r15,%r14
    1b9c:	49 c1 ce 3f          	ror    $0x3f,%r14
    1ba0:	4c 89 b4 24 68 03 00 	mov    %r14,0x368(%rsp)
    1ba7:	00 
    1ba8:	4c 89 e0             	mov    %r12,%rax
    1bab:	4c 8b bc 24 e0 06 00 	mov    0x6e0(%rsp),%r15
    1bb2:	00 
    1bb3:	4c 01 f8             	add    %r15,%rax
    1bb6:	4c 8b bc 24 a8 03 00 	mov    0x3a8(%rsp),%r15
    1bbd:	00 
    1bbe:	49 01 c7             	add    %rax,%r15
    1bc1:	4c 8b b4 24 c0 03 00 	mov    0x3c0(%rsp),%r14
    1bc8:	00 
    1bc9:	4d 31 fe             	xor    %r15,%r14
    1bcc:	49 c1 ce 20          	ror    $0x20,%r14
    1bd0:	4d 01 f1             	add    %r14,%r9
    1bd3:	4d 31 cc             	xor    %r9,%r12
    1bd6:	49 c1 cc 18          	ror    $0x18,%r12
    1bda:	4c 89 e0             	mov    %r12,%rax
    1bdd:	4c 8b 9c 24 f0 06 00 	mov    0x6f0(%rsp),%r11
    1be4:	00 
    1be5:	4c 01 d8             	add    %r11,%rax
    1be8:	49 01 c7             	add    %rax,%r15
    1beb:	4c 89 bc 24 60 03 00 	mov    %r15,0x360(%rsp)
    1bf2:	00 
    1bf3:	4d 31 fe             	xor    %r15,%r14
    1bf6:	49 c1 ce 10          	ror    $0x10,%r14
    1bfa:	4d 01 f1             	add    %r14,%r9
    1bfd:	4c 89 8c 24 58 03 00 	mov    %r9,0x358(%rsp)
    1c04:	00 
    1c05:	4d 89 cf             	mov    %r9,%r15
    1c08:	4d 31 fc             	xor    %r15,%r12
    1c0b:	49 c1 cc 3f          	ror    $0x3f,%r12
    1c0f:	4c 89 a4 24 50 03 00 	mov    %r12,0x350(%rsp)
    1c16:	00 
    1c17:	4c 89 c0             	mov    %r8,%rax
    1c1a:	4c 8b bc 24 a0 06 00 	mov    0x6a0(%rsp),%r15
    1c21:	00 
    1c22:	4c 01 f8             	add    %r15,%rax
    1c25:	49 01 c5             	add    %rax,%r13
    1c28:	4c 8b bc 24 a0 03 00 	mov    0x3a0(%rsp),%r15
    1c2f:	00 
    1c30:	4d 31 ef             	xor    %r13,%r15
    1c33:	49 c1 cf 20          	ror    $0x20,%r15
    1c37:	4c 8b a4 24 b8 03 00 	mov    0x3b8(%rsp),%r12
    1c3e:	00 
    1c3f:	4d 01 fc             	add    %r15,%r12
    1c42:	4d 31 e0             	xor    %r12,%r8
    1c45:	49 c1 c8 18          	ror    $0x18,%r8
    1c49:	4c 89 c0             	mov    %r8,%rax
    1c4c:	4c 8b 9c 24 a8 06 00 	mov    0x6a8(%rsp),%r11
    1c53:	00 
    1c54:	4c 01 d8             	add    %r11,%rax
    1c57:	49 01 c5             	add    %rax,%r13
    1c5a:	4d 31 ef             	xor    %r13,%r15
    1c5d:	49 c1 cf 10          	ror    $0x10,%r15
    1c61:	4d 01 fc             	add    %r15,%r12
    1c64:	4d 31 e0             	xor    %r12,%r8
    1c67:	49 c1 c8 3f          	ror    $0x3f,%r8
    1c6b:	4c 89 84 24 48 03 00 	mov    %r8,0x348(%rsp)
    1c72:	00 
    1c73:	4c 8b 9c 24 b0 03 00 	mov    0x3b0(%rsp),%r11
    1c7a:	00 
    1c7b:	4c 8b 94 24 18 07 00 	mov    0x718(%rsp),%r10
    1c82:	00 
    1c83:	4d 01 d3             	add    %r10,%r11
    1c86:	4c 8b 94 24 88 03 00 	mov    0x388(%rsp),%r10
    1c8d:	00 
    1c8e:	4d 01 da             	add    %r11,%r10
    1c91:	4c 8b 9c 24 90 03 00 	mov    0x390(%rsp),%r11
    1c98:	00 
    1c99:	4d 31 d3             	xor    %r10,%r11
    1c9c:	49 c1 cb 20          	ror    $0x20,%r11
    1ca0:	4c 8b 8c 24 98 03 00 	mov    0x398(%rsp),%r9
    1ca7:	00 
    1ca8:	4d 01 d9             	add    %r11,%r9
    1cab:	4c 8b 84 24 b0 03 00 	mov    0x3b0(%rsp),%r8
    1cb2:	00 
    1cb3:	4d 31 c8             	xor    %r9,%r8
    1cb6:	49 c1 c8 18          	ror    $0x18,%r8
    1cba:	4c 89 c0             	mov    %r8,%rax
    1cbd:	48 8b bc 24 d0 06 00 	mov    0x6d0(%rsp),%rdi
    1cc4:	00 
    1cc5:	48 01 f8             	add    %rdi,%rax
    1cc8:	49 01 c2             	add    %rax,%r10
    1ccb:	4c 89 94 24 40 03 00 	mov    %r10,0x340(%rsp)
    1cd2:	00 
    1cd3:	4d 31 d3             	xor    %r10,%r11
    1cd6:	49 c1 cb 10          	ror    $0x10,%r11
    1cda:	4d 01 d9             	add    %r11,%r9
    1cdd:	4d 31 c8             	xor    %r9,%r8
    1ce0:	49 c1 c8 3f          	ror    $0x3f,%r8
    1ce4:	4c 89 c0             	mov    %r8,%rax
    1ce7:	4c 8b 94 24 b8 06 00 	mov    0x6b8(%rsp),%r10
    1cee:	00 
    1cef:	4c 01 d0             	add    %r10,%rax
    1cf2:	4c 8b 94 24 80 03 00 	mov    0x380(%rsp),%r10
    1cf9:	00 
    1cfa:	49 01 c2             	add    %rax,%r10
    1cfd:	4d 31 d6             	xor    %r10,%r14
    1d00:	49 c1 ce 20          	ror    $0x20,%r14
    1d04:	4d 01 f4             	add    %r14,%r12
    1d07:	4d 31 e0             	xor    %r12,%r8
    1d0a:	49 c1 c8 18          	ror    $0x18,%r8
    1d0e:	4c 89 c0             	mov    %r8,%rax
    1d11:	48 8b bc 24 f0 06 00 	mov    0x6f0(%rsp),%rdi
    1d18:	00 
    1d19:	48 01 f8             	add    %rdi,%rax
    1d1c:	49 01 c2             	add    %rax,%r10
    1d1f:	4c 89 94 24 38 03 00 	mov    %r10,0x338(%rsp)
    1d26:	00 
    1d27:	4d 31 d6             	xor    %r10,%r14
    1d2a:	49 c1 ce 10          	ror    $0x10,%r14
    1d2e:	4c 89 b4 24 30 03 00 	mov    %r14,0x330(%rsp)
    1d35:	00 
    1d36:	4d 01 f4             	add    %r14,%r12
    1d39:	4c 89 a4 24 28 03 00 	mov    %r12,0x328(%rsp)
    1d40:	00 
    1d41:	4d 89 e6             	mov    %r12,%r14
    1d44:	4d 31 f0             	xor    %r14,%r8
    1d47:	49 c1 c8 3f          	ror    $0x3f,%r8
    1d4b:	4c 89 84 24 20 03 00 	mov    %r8,0x320(%rsp)
    1d52:	00 
    1d53:	4c 8b b4 24 68 03 00 	mov    0x368(%rsp),%r14
    1d5a:	00 
    1d5b:	4c 8b a4 24 18 07 00 	mov    0x718(%rsp),%r12
    1d62:	00 
    1d63:	4d 01 e6             	add    %r12,%r14
    1d66:	4c 8b a4 24 60 03 00 	mov    0x360(%rsp),%r12
    1d6d:	00 
    1d6e:	4d 01 f4             	add    %r14,%r12
    1d71:	4d 31 e7             	xor    %r12,%r15
    1d74:	49 c1 cf 20          	ror    $0x20,%r15
    1d78:	4d 01 f9             	add    %r15,%r9
    1d7b:	4c 8b b4 24 68 03 00 	mov    0x368(%rsp),%r14
    1d82:	00 
    1d83:	4d 31 ce             	xor    %r9,%r14
    1d86:	49 c1 ce 18          	ror    $0x18,%r14
    1d8a:	4c 89 f0             	mov    %r14,%rax
    1d8d:	4c 8b 94 24 a0 06 00 	mov    0x6a0(%rsp),%r10
    1d94:	00 
    1d95:	4c 01 d0             	add    %r10,%rax
    1d98:	49 01 c4             	add    %rax,%r12
    1d9b:	4c 89 a4 24 18 03 00 	mov    %r12,0x318(%rsp)
    1da2:	00 
    1da3:	4d 31 e7             	xor    %r12,%r15
    1da6:	49 c1 cf 10          	ror    $0x10,%r15
    1daa:	4c 89 bc 24 10 03 00 	mov    %r15,0x310(%rsp)
    1db1:	00 
    1db2:	4d 01 f9             	add    %r15,%r9
    1db5:	4c 89 8c 24 08 03 00 	mov    %r9,0x308(%rsp)
    1dbc:	00 
    1dbd:	4d 89 cf             	mov    %r9,%r15
    1dc0:	4d 31 fe             	xor    %r15,%r14
    1dc3:	49 c1 ce 3f          	ror    $0x3f,%r14
    1dc7:	4c 8b bc 24 50 03 00 	mov    0x350(%rsp),%r15
    1dce:	00 
    1dcf:	4c 8b a4 24 a8 06 00 	mov    0x6a8(%rsp),%r12
    1dd6:	00 
    1dd7:	4d 01 e7             	add    %r12,%r15
    1dda:	4d 01 fd             	add    %r15,%r13
    1ddd:	4d 31 eb             	xor    %r13,%r11
    1de0:	49 c1 cb 20          	ror    $0x20,%r11
    1de4:	4c 8b bc 24 70 03 00 	mov    0x370(%rsp),%r15
    1deb:	00 
    1dec:	4d 01 df             	add    %r11,%r15
    1def:	4c 8b a4 24 50 03 00 	mov    0x350(%rsp),%r12
    1df6:	00 
    1df7:	4d 31 fc             	xor    %r15,%r12
    1dfa:	49 c1 cc 18          	ror    $0x18,%r12
    1dfe:	4c 89 e0             	mov    %r12,%rax
    1e01:	4c 8b 94 24 b0 06 00 	mov    0x6b0(%rsp),%r10
    1e08:	00 
    1e09:	4c 01 d0             	add    %r10,%rax
    1e0c:	49 01 c5             	add    %rax,%r13
    1e0f:	4d 31 eb             	xor    %r13,%r11
    1e12:	49 c1 cb 10          	ror    $0x10,%r11
    1e16:	4c 89 9c 24 00 03 00 	mov    %r11,0x300(%rsp)
    1e1d:	00 
    1e1e:	4d 01 df             	add    %r11,%r15
    1e21:	4d 31 fc             	xor    %r15,%r12
    1e24:	49 c1 cc 3f          	ror    $0x3f,%r12
    1e28:	4c 8b 9c 24 48 03 00 	mov    0x348(%rsp),%r11
    1e2f:	00 
    1e30:	4c 8b 94 24 f8 06 00 	mov    0x6f8(%rsp),%r10
    1e37:	00 
    1e38:	4d 01 d3             	add    %r10,%r11
    1e3b:	4c 8b 94 24 40 03 00 	mov    0x340(%rsp),%r10
    1e42:	00 
    1e43:	4d 01 da             	add    %r11,%r10
    1e46:	4c 8b 9c 24 78 03 00 	mov    0x378(%rsp),%r11
    1e4d:	00 
    1e4e:	4d 31 d3             	xor    %r10,%r11
    1e51:	49 c1 cb 20          	ror    $0x20,%r11
    1e55:	4c 8b 8c 24 58 03 00 	mov    0x358(%rsp),%r9
    1e5c:	00 
    1e5d:	4d 01 d9             	add    %r11,%r9
    1e60:	4c 8b 84 24 48 03 00 	mov    0x348(%rsp),%r8
    1e67:	00 
    1e68:	4d 31 c8             	xor    %r9,%r8
    1e6b:	49 c1 c8 18          	ror    $0x18,%r8
    1e6f:	4c 89 c0             	mov    %r8,%rax
    1e72:	48 8b bc 24 c8 06 00 	mov    0x6c8(%rsp),%rdi
    1e79:	00 
    1e7a:	48 01 f8             	add    %rdi,%rax
    1e7d:	49 01 c2             	add    %rax,%r10
    1e80:	4c 89 94 24 f8 02 00 	mov    %r10,0x2f8(%rsp)
    1e87:	00 
    1e88:	4d 31 d3             	xor    %r10,%r11
    1e8b:	49 c1 cb 10          	ror    $0x10,%r11
    1e8f:	4d 01 d9             	add    %r11,%r9
    1e92:	4d 31 c8             	xor    %r9,%r8
    1e95:	49 c1 c8 3f          	ror    $0x3f,%r8
    1e99:	4c 89 f0             	mov    %r14,%rax
    1e9c:	4c 8b 94 24 20 07 00 	mov    0x720(%rsp),%r10
    1ea3:	00 
    1ea4:	4c 01 d0             	add    %r10,%rax
    1ea7:	4c 8b 94 24 38 03 00 	mov    0x338(%rsp),%r10
    1eae:	00 
    1eaf:	49 01 c2             	add    %rax,%r10
    1eb2:	4d 31 d3             	xor    %r10,%r11
    1eb5:	49 c1 cb 20          	ror    $0x20,%r11
    1eb9:	4d 01 df             	add    %r11,%r15
    1ebc:	4d 31 fe             	xor    %r15,%r14
    1ebf:	49 c1 ce 18          	ror    $0x18,%r14
    1ec3:	4c 89 f0             	mov    %r14,%rax
    1ec6:	48 8b bc 24 e0 06 00 	mov    0x6e0(%rsp),%rdi
    1ecd:	00 
    1ece:	48 01 f8             	add    %rdi,%rax
    1ed1:	49 01 c2             	add    %rax,%r10
    1ed4:	4c 89 94 24 f0 02 00 	mov    %r10,0x2f0(%rsp)
    1edb:	00 
    1edc:	4d 31 d3             	xor    %r10,%r11
    1edf:	49 c1 cb 10          	ror    $0x10,%r11
    1ee3:	4c 89 9c 24 e8 02 00 	mov    %r11,0x2e8(%rsp)
    1eea:	00 
    1eeb:	4d 01 df             	add    %r11,%r15
    1eee:	4c 89 bc 24 e0 02 00 	mov    %r15,0x2e0(%rsp)
    1ef5:	00 
    1ef6:	4d 31 fe             	xor    %r15,%r14
    1ef9:	49 c1 ce 3f          	ror    $0x3f,%r14
    1efd:	4c 89 b4 24 d8 02 00 	mov    %r14,0x2d8(%rsp)
    1f04:	00 
    1f05:	4c 89 e0             	mov    %r12,%rax
    1f08:	4c 8b bc 24 e8 06 00 	mov    0x6e8(%rsp),%r15
    1f0f:	00 
    1f10:	4c 01 f8             	add    %r15,%rax
    1f13:	4c 8b bc 24 18 03 00 	mov    0x318(%rsp),%r15
    1f1a:	00 
    1f1b:	49 01 c7             	add    %rax,%r15
    1f1e:	4c 8b b4 24 30 03 00 	mov    0x330(%rsp),%r14
    1f25:	00 
    1f26:	4d 31 fe             	xor    %r15,%r14
    1f29:	49 c1 ce 20          	ror    $0x20,%r14
    1f2d:	4d 01 f1             	add    %r14,%r9
    1f30:	4d 31 cc             	xor    %r9,%r12
    1f33:	49 c1 cc 18          	ror    $0x18,%r12
    1f37:	4c 89 e0             	mov    %r12,%rax
    1f3a:	4c 8b 9c 24 08 07 00 	mov    0x708(%rsp),%r11
    1f41:	00 
    1f42:	4c 01 d8             	add    %r11,%rax
    1f45:	49 01 c7             	add    %rax,%r15
    1f48:	4c 89 bc 24 d0 02 00 	mov    %r15,0x2d0(%rsp)
    1f4f:	00 
    1f50:	4d 31 fe             	xor    %r15,%r14
    1f53:	49 c1 ce 10          	ror    $0x10,%r14
    1f57:	4d 01 f1             	add    %r14,%r9
    1f5a:	4c 89 8c 24 c8 02 00 	mov    %r9,0x2c8(%rsp)
    1f61:	00 
    1f62:	4d 89 cf             	mov    %r9,%r15
    1f65:	4d 31 fc             	xor    %r15,%r12
    1f68:	49 c1 cc 3f          	ror    $0x3f,%r12
    1f6c:	4c 89 a4 24 c0 02 00 	mov    %r12,0x2c0(%rsp)
    1f73:	00 
    1f74:	4c 89 c0             	mov    %r8,%rax
    1f77:	4c 8b bc 24 d0 06 00 	mov    0x6d0(%rsp),%r15
    1f7e:	00 
    1f7f:	4c 01 f8             	add    %r15,%rax
    1f82:	49 01 c5             	add    %rax,%r13
    1f85:	4c 8b bc 24 10 03 00 	mov    0x310(%rsp),%r15
    1f8c:	00 
    1f8d:	4d 31 ef             	xor    %r13,%r15
    1f90:	49 c1 cf 20          	ror    $0x20,%r15
    1f94:	4c 8b a4 24 28 03 00 	mov    0x328(%rsp),%r12
    1f9b:	00 
    1f9c:	4d 01 fc             	add    %r15,%r12
    1f9f:	4d 31 e0             	xor    %r12,%r8
    1fa2:	49 c1 c8 18          	ror    $0x18,%r8
    1fa6:	4c 89 c0             	mov    %r8,%rax
    1fa9:	4c 8b 9c 24 10 07 00 	mov    0x710(%rsp),%r11
    1fb0:	00 
    1fb1:	4c 01 d8             	add    %r11,%rax
    1fb4:	49 01 c5             	add    %rax,%r13
    1fb7:	4d 31 ef             	xor    %r13,%r15
    1fba:	49 c1 cf 10          	ror    $0x10,%r15
    1fbe:	4d 01 fc             	add    %r15,%r12
    1fc1:	4d 31 e0             	xor    %r12,%r8
    1fc4:	49 c1 c8 3f          	ror    $0x3f,%r8
    1fc8:	4c 89 84 24 b8 02 00 	mov    %r8,0x2b8(%rsp)
    1fcf:	00 
    1fd0:	4c 8b 9c 24 20 03 00 	mov    0x320(%rsp),%r11
    1fd7:	00 
    1fd8:	4c 8b 94 24 d8 06 00 	mov    0x6d8(%rsp),%r10
    1fdf:	00 
    1fe0:	4d 01 d3             	add    %r10,%r11
    1fe3:	4c 8b 94 24 f8 02 00 	mov    0x2f8(%rsp),%r10
    1fea:	00 
    1feb:	4d 01 da             	add    %r11,%r10
    1fee:	4c 8b 9c 24 00 03 00 	mov    0x300(%rsp),%r11
    1ff5:	00 
    1ff6:	4d 31 d3             	xor    %r10,%r11
    1ff9:	49 c1 cb 20          	ror    $0x20,%r11
    1ffd:	4c 8b 8c 24 08 03 00 	mov    0x308(%rsp),%r9
    2004:	00 
    2005:	4d 01 d9             	add    %r11,%r9
    2008:	4c 8b 84 24 20 03 00 	mov    0x320(%rsp),%r8
    200f:	00 
    2010:	4d 31 c8             	xor    %r9,%r8
    2013:	49 c1 c8 18          	ror    $0x18,%r8
    2017:	4c 89 c0             	mov    %r8,%rax
    201a:	48 8b bc 24 c0 06 00 	mov    0x6c0(%rsp),%rdi
    2021:	00 
    2022:	48 01 f8             	add    %rdi,%rax
    2025:	49 01 c2             	add    %rax,%r10
    2028:	4c 89 94 24 b0 02 00 	mov    %r10,0x2b0(%rsp)
    202f:	00 
    2030:	4d 31 d3             	xor    %r10,%r11
    2033:	49 c1 cb 10          	ror    $0x10,%r11
    2037:	4d 01 d9             	add    %r11,%r9
    203a:	4d 31 c8             	xor    %r9,%r8
    203d:	49 c1 c8 3f          	ror    $0x3f,%r8
    2041:	4c 89 c0             	mov    %r8,%rax
    2044:	4c 8b 94 24 b0 06 00 	mov    0x6b0(%rsp),%r10
    204b:	00 
    204c:	4c 01 d0             	add    %r10,%rax
    204f:	4c 8b 94 24 f0 02 00 	mov    0x2f0(%rsp),%r10
    2056:	00 
    2057:	49 01 c2             	add    %rax,%r10
    205a:	4d 31 d6             	xor    %r10,%r14
    205d:	49 c1 ce 20          	ror    $0x20,%r14
    2061:	4d 01 f4             	add    %r14,%r12
    2064:	4d 31 e0             	xor    %r12,%r8
    2067:	49 c1 c8 18          	ror    $0x18,%r8
    206b:	4c 89 c0             	mov    %r8,%rax
    206e:	48 01 f8             	add    %rdi,%rax
    2071:	49 01 c2             	add    %rax,%r10
    2074:	4c 89 94 24 a8 02 00 	mov    %r10,0x2a8(%rsp)
    207b:	00 
    207c:	4d 31 d6             	xor    %r10,%r14
    207f:	49 c1 ce 10          	ror    $0x10,%r14
    2083:	4c 89 b4 24 a0 02 00 	mov    %r14,0x2a0(%rsp)
    208a:	00 
    208b:	4d 01 f4             	add    %r14,%r12
    208e:	4c 89 a4 24 98 02 00 	mov    %r12,0x298(%rsp)
    2095:	00 
    2096:	4d 89 e6             	mov    %r12,%r14
    2099:	4d 31 f0             	xor    %r14,%r8
    209c:	49 c1 c8 3f          	ror    $0x3f,%r8
    20a0:	4c 89 84 24 90 02 00 	mov    %r8,0x290(%rsp)
    20a7:	00 
    20a8:	4c 8b b4 24 d8 02 00 	mov    0x2d8(%rsp),%r14
    20af:	00 
    20b0:	4c 8b a4 24 e0 06 00 	mov    0x6e0(%rsp),%r12
    20b7:	00 
    20b8:	4d 01 e6             	add    %r12,%r14
    20bb:	4c 8b a4 24 d0 02 00 	mov    0x2d0(%rsp),%r12
    20c2:	00 
    20c3:	4d 01 f4             	add    %r14,%r12
    20c6:	4d 31 e7             	xor    %r12,%r15
    20c9:	49 c1 cf 20          	ror    $0x20,%r15
    20cd:	4d 01 f9             	add    %r15,%r9
    20d0:	4c 8b b4 24 d8 02 00 	mov    0x2d8(%rsp),%r14
    20d7:	00 
    20d8:	4d 31 ce             	xor    %r9,%r14
    20db:	49 c1 ce 18          	ror    $0x18,%r14
    20df:	4c 89 f0             	mov    %r14,%rax
    20e2:	4c 8b 94 24 a8 06 00 	mov    0x6a8(%rsp),%r10
    20e9:	00 
    20ea:	4c 01 d0             	add    %r10,%rax
    20ed:	49 01 c4             	add    %rax,%r12
    20f0:	4c 89 a4 24 88 02 00 	mov    %r12,0x288(%rsp)
    20f7:	00 
    20f8:	4d 31 e7             	xor    %r12,%r15
    20fb:	49 c1 cf 10          	ror    $0x10,%r15
    20ff:	4c 89 bc 24 80 02 00 	mov    %r15,0x280(%rsp)
    2106:	00 
    2107:	4d 01 f9             	add    %r15,%r9
    210a:	4c 89 8c 24 78 02 00 	mov    %r9,0x278(%rsp)
    2111:	00 
    2112:	4d 89 cf             	mov    %r9,%r15
    2115:	4d 31 fe             	xor    %r15,%r14
    2118:	49 c1 ce 3f          	ror    $0x3f,%r14
    211c:	4c 8b bc 24 c0 02 00 	mov    0x2c0(%rsp),%r15
    2123:	00 
    2124:	4c 8b a4 24 b8 06 00 	mov    0x6b8(%rsp),%r12
    212b:	00 
    212c:	4d 01 e7             	add    %r12,%r15
    212f:	4d 01 fd             	add    %r15,%r13
    2132:	4d 31 eb             	xor    %r13,%r11
    2135:	49 c1 cb 20          	ror    $0x20,%r11
    2139:	4c 8b bc 24 e0 02 00 	mov    0x2e0(%rsp),%r15
    2140:	00 
    2141:	4d 01 df             	add    %r11,%r15
    2144:	4c 8b a4 24 c0 02 00 	mov    0x2c0(%rsp),%r12
    214b:	00 
    214c:	4d 31 fc             	xor    %r15,%r12
    214f:	49 c1 cc 18          	ror    $0x18,%r12
    2153:	4c 89 e0             	mov    %r12,%rax
    2156:	4c 8b 94 24 18 07 00 	mov    0x718(%rsp),%r10
    215d:	00 
    215e:	4c 01 d0             	add    %r10,%rax
    2161:	49 01 c5             	add    %rax,%r13
    2164:	4d 31 eb             	xor    %r13,%r11
    2167:	49 c1 cb 10          	ror    $0x10,%r11
    216b:	4c 89 9c 24 70 02 00 	mov    %r11,0x270(%rsp)
    2172:	00 
    2173:	4d 01 df             	add    %r11,%r15
    2176:	4d 31 fc             	xor    %r15,%r12
    2179:	49 c1 cc 3f          	ror    $0x3f,%r12
    217d:	4c 8b 9c 24 b8 02 00 	mov    0x2b8(%rsp),%r11
    2184:	00 
    2185:	4c 8b 94 24 08 07 00 	mov    0x708(%rsp),%r10
    218c:	00 
    218d:	4d 01 d3             	add    %r10,%r11
    2190:	4c 8b 94 24 b0 02 00 	mov    0x2b0(%rsp),%r10
    2197:	00 
    2198:	4d 01 da             	add    %r11,%r10
    219b:	4c 8b 9c 24 e8 02 00 	mov    0x2e8(%rsp),%r11
    21a2:	00 
    21a3:	4d 31 d3             	xor    %r10,%r11
    21a6:	49 c1 cb 20          	ror    $0x20,%r11
    21aa:	4c 8b 8c 24 c8 02 00 	mov    0x2c8(%rsp),%r9
    21b1:	00 
    21b2:	4d 01 d9             	add    %r11,%r9
    21b5:	4c 8b 84 24 b8 02 00 	mov    0x2b8(%rsp),%r8
    21bc:	00 
    21bd:	4d 31 c8             	xor    %r9,%r8
    21c0:	49 c1 c8 18          	ror    $0x18,%r8
    21c4:	4c 89 c0             	mov    %r8,%rax
    21c7:	48 8b bc 24 d0 06 00 	mov    0x6d0(%rsp),%rdi
    21ce:	00 
    21cf:	48 01 f8             	add    %rdi,%rax
    21d2:	49 01 c2             	add    %rax,%r10
    21d5:	4c 89 94 24 68 02 00 	mov    %r10,0x268(%rsp)
    21dc:	00 
    21dd:	4d 31 d3             	xor    %r10,%r11
    21e0:	49 c1 cb 10          	ror    $0x10,%r11
    21e4:	4d 01 d9             	add    %r11,%r9
    21e7:	4d 31 c8             	xor    %r9,%r8
    21ea:	49 c1 c8 3f          	ror    $0x3f,%r8
    21ee:	4c 89 f0             	mov    %r14,%rax
    21f1:	4c 8b 94 24 f0 06 00 	mov    0x6f0(%rsp),%r10
    21f8:	00 
    21f9:	4c 01 d0             	add    %r10,%rax
    21fc:	4c 8b 94 24 a8 02 00 	mov    0x2a8(%rsp),%r10
    2203:	00 
    2204:	49 01 c2             	add    %rax,%r10
    2207:	4d 31 d3             	xor    %r10,%r11
    220a:	49 c1 cb 20          	ror    $0x20,%r11
    220e:	4d 01 df             	add    %r11,%r15
    2211:	4d 31 fe             	xor    %r15,%r14
    2214:	49 c1 ce 18          	ror    $0x18,%r14
    2218:	4c 89 f0             	mov    %r14,%rax
    221b:	48 8b bc 24 20 07 00 	mov    0x720(%rsp),%rdi
    2222:	00 
    2223:	48 01 f8             	add    %rdi,%rax
    2226:	49 01 c2             	add    %rax,%r10
    2229:	4c 89 94 24 60 02 00 	mov    %r10,0x260(%rsp)
    2230:	00 
    2231:	4d 31 d3             	xor    %r10,%r11
    2234:	49 c1 cb 10          	ror    $0x10,%r11
    2238:	4c 89 9c 24 58 02 00 	mov    %r11,0x258(%rsp)
    223f:	00 
    2240:	4d 01 df             	add    %r11,%r15
    2243:	4c 89 bc 24 50 02 00 	mov    %r15,0x250(%rsp)
    224a:	00 
    224b:	4d 31 fe             	xor    %r15,%r14
    224e:	49 c1 ce 3f          	ror    $0x3f,%r14
    2252:	4c 89 b4 24 48 02 00 	mov    %r14,0x248(%rsp)
    2259:	00 
    225a:	4c 89 e0             	mov    %r12,%rax
    225d:	4c 8b bc 24 a0 06 00 	mov    0x6a0(%rsp),%r15
    2264:	00 
    2265:	4c 01 f8             	add    %r15,%rax
    2268:	4c 8b bc 24 88 02 00 	mov    0x288(%rsp),%r15
    226f:	00 
    2270:	49 01 c7             	add    %rax,%r15
    2273:	4c 8b b4 24 a0 02 00 	mov    0x2a0(%rsp),%r14
    227a:	00 
    227b:	4d 31 fe             	xor    %r15,%r14
    227e:	49 c1 ce 20          	ror    $0x20,%r14
    2282:	4d 01 f1             	add    %r14,%r9
    2285:	4d 31 cc             	xor    %r9,%r12
    2288:	49 c1 cc 18          	ror    $0x18,%r12
    228c:	4c 89 e0             	mov    %r12,%rax
    228f:	4c 8b 9c 24 f8 06 00 	mov    0x6f8(%rsp),%r11
    2296:	00 
    2297:	4c 01 d8             	add    %r11,%rax
    229a:	49 01 c7             	add    %rax,%r15
    229d:	4c 89 bc 24 40 02 00 	mov    %r15,0x240(%rsp)
    22a4:	00 
    22a5:	4d 31 fe             	xor    %r15,%r14
    22a8:	49 c1 ce 10          	ror    $0x10,%r14
    22ac:	4d 01 f1             	add    %r14,%r9
    22af:	4c 89 8c 24 38 02 00 	mov    %r9,0x238(%rsp)
    22b6:	00 
    22b7:	4d 89 cf             	mov    %r9,%r15
    22ba:	4d 31 fc             	xor    %r15,%r12
    22bd:	49 c1 cc 3f          	ror    $0x3f,%r12
    22c1:	4c 89 a4 24 30 02 00 	mov    %r12,0x230(%rsp)
    22c8:	00 
    22c9:	4c 89 c0             	mov    %r8,%rax
    22cc:	4c 8b bc 24 d8 06 00 	mov    0x6d8(%rsp),%r15
    22d3:	00 
    22d4:	4c 01 f8             	add    %r15,%rax
    22d7:	49 01 c5             	add    %rax,%r13
    22da:	4c 8b bc 24 80 02 00 	mov    0x280(%rsp),%r15
    22e1:	00 
    22e2:	4d 31 ef             	xor    %r13,%r15
    22e5:	49 c1 cf 20          	ror    $0x20,%r15
    22e9:	4c 8b a4 24 98 02 00 	mov    0x298(%rsp),%r12
    22f0:	00 
    22f1:	4d 01 fc             	add    %r15,%r12
    22f4:	4d 31 e0             	xor    %r12,%r8
    22f7:	49 c1 c8 18          	ror    $0x18,%r8
    22fb:	4c 89 c0             	mov    %r8,%rax
    22fe:	4c 8b 9c 24 e8 06 00 	mov    0x6e8(%rsp),%r11
    2305:	00 
    2306:	4c 01 d8             	add    %r11,%rax
    2309:	49 01 c5             	add    %rax,%r13
    230c:	4d 31 ef             	xor    %r13,%r15
    230f:	49 c1 cf 10          	ror    $0x10,%r15
    2313:	4d 01 fc             	add    %r15,%r12
    2316:	4d 31 e0             	xor    %r12,%r8
    2319:	49 c1 c8 3f          	ror    $0x3f,%r8
    231d:	4c 89 84 24 28 02 00 	mov    %r8,0x228(%rsp)
    2324:	00 
    2325:	4c 8b 9c 24 90 02 00 	mov    0x290(%rsp),%r11
    232c:	00 
    232d:	4c 8b 94 24 10 07 00 	mov    0x710(%rsp),%r10
    2334:	00 
    2335:	4d 01 d3             	add    %r10,%r11
    2338:	4c 8b 94 24 68 02 00 	mov    0x268(%rsp),%r10
    233f:	00 
    2340:	4d 01 da             	add    %r11,%r10
    2343:	4c 8b 9c 24 70 02 00 	mov    0x270(%rsp),%r11
    234a:	00 
    234b:	4d 31 d3             	xor    %r10,%r11
    234e:	49 c1 cb 20          	ror    $0x20,%r11
    2352:	4c 8b 8c 24 78 02 00 	mov    0x278(%rsp),%r9
    2359:	00 
    235a:	4d 01 d9             	add    %r11,%r9
    235d:	4c 8b 84 24 90 02 00 	mov    0x290(%rsp),%r8
    2364:	00 
    2365:	4d 31 c8             	xor    %r9,%r8
    2368:	49 c1 c8 18          	ror    $0x18,%r8
    236c:	4c 89 c0             	mov    %r8,%rax
    236f:	48 8b bc 24 c8 06 00 	mov    0x6c8(%rsp),%rdi
    2376:	00 
    2377:	48 01 f8             	add    %rdi,%rax
    237a:	49 01 c2             	add    %rax,%r10
    237d:	4c 89 94 24 20 02 00 	mov    %r10,0x220(%rsp)
    2384:	00 
    2385:	4d 31 d3             	xor    %r10,%r11
    2388:	49 c1 cb 10          	ror    $0x10,%r11
    238c:	4d 01 d9             	add    %r11,%r9
    238f:	4d 31 c8             	xor    %r9,%r8
    2392:	49 c1 c8 3f          	ror    $0x3f,%r8
    2396:	4c 89 c0             	mov    %r8,%rax
    2399:	4c 8b 94 24 e8 06 00 	mov    0x6e8(%rsp),%r10
    23a0:	00 
    23a1:	4c 01 d0             	add    %r10,%rax
    23a4:	4c 8b 94 24 60 02 00 	mov    0x260(%rsp),%r10
    23ab:	00 
    23ac:	49 01 c2             	add    %rax,%r10
    23af:	4d 31 d6             	xor    %r10,%r14
    23b2:	49 c1 ce 20          	ror    $0x20,%r14
    23b6:	4d 01 f4             	add    %r14,%r12
    23b9:	4d 31 e0             	xor    %r12,%r8
    23bc:	49 c1 c8 18          	ror    $0x18,%r8
    23c0:	4c 89 c0             	mov    %r8,%rax
    23c3:	48 8b bc 24 a0 06 00 	mov    0x6a0(%rsp),%rdi
    23ca:	00 
    23cb:	48 01 f8             	add    %rdi,%rax
    23ce:	49 01 c2             	add    %rax,%r10
    23d1:	4c 89 94 24 18 02 00 	mov    %r10,0x218(%rsp)
    23d8:	00 
    23d9:	4d 31 d6             	xor    %r10,%r14
    23dc:	49 c1 ce 10          	ror    $0x10,%r14
    23e0:	4c 89 b4 24 10 02 00 	mov    %r14,0x210(%rsp)
    23e7:	00 
    23e8:	4d 01 f4             	add    %r14,%r12
    23eb:	4c 89 a4 24 08 02 00 	mov    %r12,0x208(%rsp)
    23f2:	00 
    23f3:	4d 89 e6             	mov    %r12,%r14
    23f6:	4d 31 f0             	xor    %r14,%r8
    23f9:	49 c1 c8 3f          	ror    $0x3f,%r8
    23fd:	4c 89 84 24 00 02 00 	mov    %r8,0x200(%rsp)
    2404:	00 
    2405:	4c 8b b4 24 48 02 00 	mov    0x248(%rsp),%r14
    240c:	00 
    240d:	4c 8b a4 24 a8 06 00 	mov    0x6a8(%rsp),%r12
    2414:	00 
    2415:	4d 01 e6             	add    %r12,%r14
    2418:	4c 8b a4 24 40 02 00 	mov    0x240(%rsp),%r12
    241f:	00 
    2420:	4d 01 f4             	add    %r14,%r12
    2423:	4d 31 e7             	xor    %r12,%r15
    2426:	49 c1 cf 20          	ror    $0x20,%r15
    242a:	4d 01 f9             	add    %r15,%r9
    242d:	4c 8b b4 24 48 02 00 	mov    0x248(%rsp),%r14
    2434:	00 
    2435:	4d 31 ce             	xor    %r9,%r14
    2438:	49 c1 ce 18          	ror    $0x18,%r14
    243c:	4c 89 f0             	mov    %r14,%rax
    243f:	4c 8b 94 24 d0 06 00 	mov    0x6d0(%rsp),%r10
    2446:	00 
    2447:	4c 01 d0             	add    %r10,%rax
    244a:	49 01 c4             	add    %rax,%r12
    244d:	4c 89 a4 24 f8 01 00 	mov    %r12,0x1f8(%rsp)
    2454:	00 
    2455:	4d 31 e7             	xor    %r12,%r15
    2458:	49 c1 cf 10          	ror    $0x10,%r15
    245c:	4c 89 bc 24 f0 01 00 	mov    %r15,0x1f0(%rsp)
    2463:	00 
    2464:	4d 01 f9             	add    %r15,%r9
    2467:	4c 89 8c 24 e8 01 00 	mov    %r9,0x1e8(%rsp)
    246e:	00 
    246f:	4d 89 cf             	mov    %r9,%r15
    2472:	4d 31 fe             	xor    %r15,%r14
    2475:	49 c1 ce 3f          	ror    $0x3f,%r14
    2479:	4c 8b bc 24 30 02 00 	mov    0x230(%rsp),%r15
    2480:	00 
    2481:	4c 8b a4 24 c0 06 00 	mov    0x6c0(%rsp),%r12
    2488:	00 
    2489:	4d 01 e7             	add    %r12,%r15
    248c:	4d 01 fd             	add    %r15,%r13
    248f:	4d 31 eb             	xor    %r13,%r11
    2492:	49 c1 cb 20          	ror    $0x20,%r11
    2496:	4c 8b bc 24 50 02 00 	mov    0x250(%rsp),%r15
    249d:	00 
    249e:	4d 01 df             	add    %r11,%r15
    24a1:	4c 8b a4 24 30 02 00 	mov    0x230(%rsp),%r12
    24a8:	00 
    24a9:	4d 31 fc             	xor    %r15,%r12
    24ac:	49 c1 cc 18          	ror    $0x18,%r12
    24b0:	4c 89 e0             	mov    %r12,%rax
    24b3:	4c 8b 94 24 08 07 00 	mov    0x708(%rsp),%r10
    24ba:	00 
    24bb:	4c 01 d0             	add    %r10,%rax
    24be:	49 01 c5             	add    %rax,%r13
    24c1:	4d 31 eb             	xor    %r13,%r11
    24c4:	49 c1 cb 10          	ror    $0x10,%r11
    24c8:	4c 89 9c 24 e0 01 00 	mov    %r11,0x1e0(%rsp)
    24cf:	00 
    24d0:	4d 01 df             	add    %r11,%r15
    24d3:	4d 31 fc             	xor    %r15,%r12
    24d6:	49 c1 cc 3f          	ror    $0x3f,%r12
    24da:	4c 8b 9c 24 28 02 00 	mov    0x228(%rsp),%r11
    24e1:	00 
    24e2:	4c 8b 94 24 20 07 00 	mov    0x720(%rsp),%r10
    24e9:	00 
    24ea:	4d 01 d3             	add    %r10,%r11
    24ed:	4c 8b 94 24 20 02 00 	mov    0x220(%rsp),%r10
    24f4:	00 
    24f5:	4d 01 da             	add    %r11,%r10
    24f8:	4c 8b 9c 24 58 02 00 	mov    0x258(%rsp),%r11
    24ff:	00 
    2500:	4d 31 d3             	xor    %r10,%r11
    2503:	49 c1 cb 20          	ror    $0x20,%r11
    2507:	4c 8b 8c 24 38 02 00 	mov    0x238(%rsp),%r9
    250e:	00 
    250f:	4d 01 d9             	add    %r11,%r9
    2512:	4c 8b 84 24 28 02 00 	mov    0x228(%rsp),%r8
    2519:	00 
    251a:	4d 31 c8             	xor    %r9,%r8
    251d:	49 c1 c8 18          	ror    $0x18,%r8
    2521:	4c 89 c0             	mov    %r8,%rax
    2524:	48 8b bc 24 d8 06 00 	mov    0x6d8(%rsp),%rdi
    252b:	00 
    252c:	48 01 f8             	add    %rdi,%rax
    252f:	49 01 c2             	add    %rax,%r10
    2532:	4c 89 94 24 d8 01 00 	mov    %r10,0x1d8(%rsp)
    2539:	00 
    253a:	4d 31 d3             	xor    %r10,%r11
    253d:	49 c1 cb 10          	ror    $0x10,%r11
    2541:	4d 01 d9             	add    %r11,%r9
    2544:	4d 31 c8             	xor    %r9,%r8
    2547:	49 c1 c8 3f          	ror    $0x3f,%r8
    254b:	4c 89 f0             	mov    %r14,%rax
    254e:	4c 8b 94 24 b8 06 00 	mov    0x6b8(%rsp),%r10
    2555:	00 
    2556:	4c 01 d0             	add    %r10,%rax
    2559:	4c 8b 94 24 18 02 00 	mov    0x218(%rsp),%r10
    2560:	00 
    2561:	49 01 c2             	add    %rax,%r10
    2564:	4d 31 d3             	xor    %r10,%r11
    2567:	49 c1 cb 20          	ror    $0x20,%r11
    256b:	4d 01 df             	add    %r11,%r15
    256e:	4d 31 fe             	xor    %r15,%r14
    2571:	49 c1 ce 18          	ror    $0x18,%r14
    2575:	4c 89 f0             	mov    %r14,%rax
    2578:	48 8b bc 24 10 07 00 	mov    0x710(%rsp),%rdi
    257f:	00 
    2580:	48 01 f8             	add    %rdi,%rax
    2583:	49 01 c2             	add    %rax,%r10
    2586:	4c 89 94 24 d0 01 00 	mov    %r10,0x1d0(%rsp)
    258d:	00 
    258e:	4d 31 d3             	xor    %r10,%r11
    2591:	49 c1 cb 10          	ror    $0x10,%r11
    2595:	4c 89 9c 24 c8 01 00 	mov    %r11,0x1c8(%rsp)
    259c:	00 
    259d:	4d 01 df             	add    %r11,%r15
    25a0:	4c 89 bc 24 c0 01 00 	mov    %r15,0x1c0(%rsp)
    25a7:	00 
    25a8:	4d 31 fe             	xor    %r15,%r14
    25ab:	49 c1 ce 3f          	ror    $0x3f,%r14
    25af:	4c 89 b4 24 b8 01 00 	mov    %r14,0x1b8(%rsp)
    25b6:	00 
    25b7:	4c 89 e0             	mov    %r12,%rax
    25ba:	4c 8b bc 24 b0 06 00 	mov    0x6b0(%rsp),%r15
    25c1:	00 
    25c2:	4c 01 f8             	add    %r15,%rax
    25c5:	4c 8b bc 24 f8 01 00 	mov    0x1f8(%rsp),%r15
    25cc:	00 
    25cd:	49 01 c7             	add    %rax,%r15
    25d0:	4c 8b b4 24 10 02 00 	mov    0x210(%rsp),%r14
    25d7:	00 
    25d8:	4d 31 fe             	xor    %r15,%r14
    25db:	49 c1 ce 20          	ror    $0x20,%r14
    25df:	4d 01 f1             	add    %r14,%r9
    25e2:	4d 31 cc             	xor    %r9,%r12
    25e5:	49 c1 cc 18          	ror    $0x18,%r12
    25e9:	4c 89 e0             	mov    %r12,%rax
    25ec:	4c 8b 9c 24 e0 06 00 	mov    0x6e0(%rsp),%r11
    25f3:	00 
    25f4:	4c 01 d8             	add    %r11,%rax
    25f7:	49 01 c7             	add    %rax,%r15
    25fa:	4c 89 bc 24 b0 01 00 	mov    %r15,0x1b0(%rsp)
    2601:	00 
    2602:	4d 31 fe             	xor    %r15,%r14
    2605:	49 c1 ce 10          	ror    $0x10,%r14
    2609:	4d 01 f1             	add    %r14,%r9
    260c:	4c 89 8c 24 a8 01 00 	mov    %r9,0x1a8(%rsp)
    2613:	00 
    2614:	4d 89 cf             	mov    %r9,%r15
    2617:	4d 31 fc             	xor    %r15,%r12
    261a:	49 c1 cc 3f          	ror    $0x3f,%r12
    261e:	4c 89 a4 24 a0 01 00 	mov    %r12,0x1a0(%rsp)
    2625:	00 
    2626:	4c 89 c0             	mov    %r8,%rax
    2629:	4c 8b bc 24 18 07 00 	mov    0x718(%rsp),%r15
    2630:	00 
    2631:	4c 01 f8             	add    %r15,%rax
    2634:	49 01 c5             	add    %rax,%r13
    2637:	4c 8b bc 24 f0 01 00 	mov    0x1f0(%rsp),%r15
    263e:	00 
    263f:	4d 31 ef             	xor    %r13,%r15
    2642:	49 c1 cf 20          	ror    $0x20,%r15
    2646:	4c 8b a4 24 08 02 00 	mov    0x208(%rsp),%r12
    264d:	00 
    264e:	4d 01 fc             	add    %r15,%r12
    2651:	4d 31 e0             	xor    %r12,%r8
    2654:	49 c1 c8 18          	ror    $0x18,%r8
    2658:	4c 89 c0             	mov    %r8,%rax
    265b:	4c 8b 9c 24 f8 06 00 	mov    0x6f8(%rsp),%r11
    2662:	00 
    2663:	4c 01 d8             	add    %r11,%rax
    2666:	49 01 c5             	add    %rax,%r13
    2669:	4d 31 ef             	xor    %r13,%r15
    266c:	49 c1 cf 10          	ror    $0x10,%r15
    2670:	4d 01 fc             	add    %r15,%r12
    2673:	4d 31 e0             	xor    %r12,%r8
    2676:	49 c1 c8 3f          	ror    $0x3f,%r8
    267a:	4c 89 84 24 98 01 00 	mov    %r8,0x198(%rsp)
    2681:	00 
    2682:	4c 8b 9c 24 00 02 00 	mov    0x200(%rsp),%r11
    2689:	00 
    268a:	4c 8b 94 24 c8 06 00 	mov    0x6c8(%rsp),%r10
    2691:	00 
    2692:	4d 01 d3             	add    %r10,%r11
    2695:	4c 8b 94 24 d8 01 00 	mov    0x1d8(%rsp),%r10
    269c:	00 
    269d:	4d 01 da             	add    %r11,%r10
    26a0:	4c 8b 9c 24 e0 01 00 	mov    0x1e0(%rsp),%r11
    26a7:	00 
    26a8:	4d 31 d3             	xor    %r10,%r11
    26ab:	49 c1 cb 20          	ror    $0x20,%r11
    26af:	4c 8b 8c 24 e8 01 00 	mov    0x1e8(%rsp),%r9
    26b6:	00 
    26b7:	4d 01 d9             	add    %r11,%r9
    26ba:	4c 8b 84 24 00 02 00 	mov    0x200(%rsp),%r8
    26c1:	00 
    26c2:	4d 31 c8             	xor    %r9,%r8
    26c5:	49 c1 c8 18          	ror    $0x18,%r8
    26c9:	4c 89 c0             	mov    %r8,%rax
    26cc:	48 8b bc 24 f0 06 00 	mov    0x6f0(%rsp),%rdi
    26d3:	00 
    26d4:	48 01 f8             	add    %rdi,%rax
    26d7:	49 01 c2             	add    %rax,%r10
    26da:	4c 89 94 24 90 01 00 	mov    %r10,0x190(%rsp)
    26e1:	00 
    26e2:	4d 31 d3             	xor    %r10,%r11
    26e5:	49 c1 cb 10          	ror    $0x10,%r11
    26e9:	4d 01 d9             	add    %r11,%r9
    26ec:	4d 31 c8             	xor    %r9,%r8
    26ef:	49 c1 c8 3f          	ror    $0x3f,%r8
    26f3:	4c 89 c0             	mov    %r8,%rax
    26f6:	4c 8b 94 24 c8 06 00 	mov    0x6c8(%rsp),%r10
    26fd:	00 
    26fe:	4c 01 d0             	add    %r10,%rax
    2701:	4c 8b 94 24 d0 01 00 	mov    0x1d0(%rsp),%r10
    2708:	00 
    2709:	49 01 c2             	add    %rax,%r10
    270c:	4d 31 d6             	xor    %r10,%r14
    270f:	49 c1 ce 20          	ror    $0x20,%r14
    2713:	4d 01 f4             	add    %r14,%r12
    2716:	4d 31 e0             	xor    %r12,%r8
    2719:	49 c1 c8 18          	ror    $0x18,%r8
    271d:	4c 89 c0             	mov    %r8,%rax
    2720:	48 8b bc 24 10 07 00 	mov    0x710(%rsp),%rdi
    2727:	00 
    2728:	48 01 f8             	add    %rdi,%rax
    272b:	49 01 c2             	add    %rax,%r10
    272e:	4c 89 94 24 88 01 00 	mov    %r10,0x188(%rsp)
    2735:	00 
    2736:	4d 31 d6             	xor    %r10,%r14
    2739:	49 c1 ce 10          	ror    $0x10,%r14
    273d:	4c 89 b4 24 80 01 00 	mov    %r14,0x180(%rsp)
    2744:	00 
    2745:	4d 01 f4             	add    %r14,%r12
    2748:	4c 89 a4 24 78 01 00 	mov    %r12,0x178(%rsp)
    274f:	00 
    2750:	4d 89 e6             	mov    %r12,%r14
    2753:	4d 31 f0             	xor    %r14,%r8
    2756:	49 c1 c8 3f          	ror    $0x3f,%r8
    275a:	4c 89 84 24 70 01 00 	mov    %r8,0x170(%rsp)
    2761:	00 
    2762:	4c 8b b4 24 b8 01 00 	mov    0x1b8(%rsp),%r14
    2769:	00 
    276a:	4c 8b a4 24 d8 06 00 	mov    0x6d8(%rsp),%r12
    2771:	00 
    2772:	4d 01 e6             	add    %r12,%r14
    2775:	4c 8b a4 24 b0 01 00 	mov    0x1b0(%rsp),%r12
    277c:	00 
    277d:	4d 01 f4             	add    %r14,%r12
    2780:	4d 31 e7             	xor    %r12,%r15
    2783:	49 c1 cf 20          	ror    $0x20,%r15
    2787:	4d 01 f9             	add    %r15,%r9
    278a:	4c 8b b4 24 b8 01 00 	mov    0x1b8(%rsp),%r14
    2791:	00 
    2792:	4d 31 ce             	xor    %r9,%r14
    2795:	49 c1 ce 18          	ror    $0x18,%r14
    2799:	4c 89 f0             	mov    %r14,%rax
    279c:	4c 8b 94 24 f8 06 00 	mov    0x6f8(%rsp),%r10
    27a3:	00 
    27a4:	4c 01 d0             	add    %r10,%rax
    27a7:	49 01 c4             	add    %rax,%r12
    27aa:	4c 89 a4 24 68 01 00 	mov    %r12,0x168(%rsp)
    27b1:	00 
    27b2:	4d 31 e7             	xor    %r12,%r15
    27b5:	49 c1 cf 10          	ror    $0x10,%r15
    27b9:	4c 89 bc 24 60 01 00 	mov    %r15,0x160(%rsp)
    27c0:	00 
    27c1:	4d 01 f9             	add    %r15,%r9
    27c4:	4c 89 8c 24 58 01 00 	mov    %r9,0x158(%rsp)
    27cb:	00 
    27cc:	4d 89 cf             	mov    %r9,%r15
    27cf:	4d 31 fe             	xor    %r15,%r14
    27d2:	49 c1 ce 3f          	ror    $0x3f,%r14
    27d6:	4c 8b bc 24 a0 01 00 	mov    0x1a0(%rsp),%r15
    27dd:	00 
    27de:	4c 8b a4 24 e0 06 00 	mov    0x6e0(%rsp),%r12
    27e5:	00 
    27e6:	4d 01 e7             	add    %r12,%r15
    27e9:	4d 01 fd             	add    %r15,%r13
    27ec:	4d 31 eb             	xor    %r13,%r11
    27ef:	49 c1 cb 20          	ror    $0x20,%r11
    27f3:	4c 8b bc 24 c0 01 00 	mov    0x1c0(%rsp),%r15
    27fa:	00 
    27fb:	4d 01 df             	add    %r11,%r15
    27fe:	4c 8b a4 24 a0 01 00 	mov    0x1a0(%rsp),%r12
    2805:	00 
    2806:	4d 31 fc             	xor    %r15,%r12
    2809:	49 c1 cc 18          	ror    $0x18,%r12
    280d:	4c 89 e0             	mov    %r12,%rax
    2810:	4c 8b 94 24 e8 06 00 	mov    0x6e8(%rsp),%r10
    2817:	00 
    2818:	4c 01 d0             	add    %r10,%rax
    281b:	49 01 c5             	add    %rax,%r13
    281e:	4d 31 eb             	xor    %r13,%r11
    2821:	49 c1 cb 10          	ror    $0x10,%r11
    2825:	4c 89 9c 24 50 01 00 	mov    %r11,0x150(%rsp)
    282c:	00 
    282d:	4d 01 df             	add    %r11,%r15
    2830:	4d 31 fc             	xor    %r15,%r12
    2833:	49 c1 cc 3f          	ror    $0x3f,%r12
    2837:	4c 8b 9c 24 98 01 00 	mov    0x198(%rsp),%r11
    283e:	00 
    283f:	4c 8b 94 24 18 07 00 	mov    0x718(%rsp),%r10
    2846:	00 
    2847:	4d 01 d3             	add    %r10,%r11
    284a:	4c 8b 94 24 90 01 00 	mov    0x190(%rsp),%r10
    2851:	00 
    2852:	4d 01 da             	add    %r11,%r10
    2855:	4c 8b 9c 24 c8 01 00 	mov    0x1c8(%rsp),%r11
    285c:	00 
    285d:	4d 31 d3             	xor    %r10,%r11
    2860:	49 c1 cb 20          	ror    $0x20,%r11
    2864:	4c 8b 8c 24 a8 01 00 	mov    0x1a8(%rsp),%r9
    286b:	00 
    286c:	4d 01 d9             	add    %r11,%r9
    286f:	4c 8b 84 24 98 01 00 	mov    0x198(%rsp),%r8
    2876:	00 
    2877:	4d 31 c8             	xor    %r9,%r8
    287a:	49 c1 c8 18          	ror    $0x18,%r8
    287e:	4c 89 c0             	mov    %r8,%rax
    2881:	48 8b bc 24 f0 06 00 	mov    0x6f0(%rsp),%rdi
    2888:	00 
    2889:	48 01 f8             	add    %rdi,%rax
    288c:	49 01 c2             	add    %rax,%r10
    288f:	4c 89 94 24 48 01 00 	mov    %r10,0x148(%rsp)
    2896:	00 
    2897:	4d 31 d3             	xor    %r10,%r11
    289a:	49 c1 cb 10          	ror    $0x10,%r11
    289e:	4d 01 d9             	add    %r11,%r9
    28a1:	4d 31 c8             	xor    %r9,%r8
    28a4:	49 c1 c8 3f          	ror    $0x3f,%r8
    28a8:	4c 89 f0             	mov    %r14,%rax
    28ab:	4c 8b 94 24 a0 06 00 	mov    0x6a0(%rsp),%r10
    28b2:	00 
    28b3:	4c 01 d0             	add    %r10,%rax
    28b6:	4c 8b 94 24 88 01 00 	mov    0x188(%rsp),%r10
    28bd:	00 
    28be:	49 01 c2             	add    %rax,%r10
    28c1:	4d 31 d3             	xor    %r10,%r11
    28c4:	49 c1 cb 20          	ror    $0x20,%r11
    28c8:	4d 01 df             	add    %r11,%r15
    28cb:	4d 31 fe             	xor    %r15,%r14
    28ce:	49 c1 ce 18          	ror    $0x18,%r14
    28d2:	4c 89 f0             	mov    %r14,%rax
    28d5:	48 8b bc 24 c0 06 00 	mov    0x6c0(%rsp),%rdi
    28dc:	00 
    28dd:	48 01 f8             	add    %rdi,%rax
    28e0:	49 01 c2             	add    %rax,%r10
    28e3:	4c 89 94 24 40 01 00 	mov    %r10,0x140(%rsp)
    28ea:	00 
    28eb:	4d 31 d3             	xor    %r10,%r11
    28ee:	49 c1 cb 10          	ror    $0x10,%r11
    28f2:	4c 89 9c 24 38 01 00 	mov    %r11,0x138(%rsp)
    28f9:	00 
    28fa:	4d 01 df             	add    %r11,%r15
    28fd:	4c 89 bc 24 30 01 00 	mov    %r15,0x130(%rsp)
    2904:	00 
    2905:	4d 31 fe             	xor    %r15,%r14
    2908:	49 c1 ce 3f          	ror    $0x3f,%r14
    290c:	4c 89 b4 24 28 01 00 	mov    %r14,0x128(%rsp)
    2913:	00 
    2914:	4c 89 e0             	mov    %r12,%rax
    2917:	4c 8b bc 24 d0 06 00 	mov    0x6d0(%rsp),%r15
    291e:	00 
    291f:	4c 01 f8             	add    %r15,%rax
    2922:	4c 8b bc 24 68 01 00 	mov    0x168(%rsp),%r15
    2929:	00 
    292a:	49 01 c7             	add    %rax,%r15
    292d:	4c 8b b4 24 80 01 00 	mov    0x180(%rsp),%r14
    2934:	00 
    2935:	4d 31 fe             	xor    %r15,%r14
    2938:	49 c1 ce 20          	ror    $0x20,%r14
    293c:	4d 01 f1             	add    %r14,%r9
    293f:	4d 31 cc             	xor    %r9,%r12
    2942:	49 c1 cc 18          	ror    $0x18,%r12
    2946:	4c 89 e0             	mov    %r12,%rax
    2949:	4c 8b 9c 24 a8 06 00 	mov    0x6a8(%rsp),%r11
    2950:	00 
    2951:	4c 01 d8             	add    %r11,%rax
    2954:	49 01 c7             	add    %rax,%r15
    2957:	4c 89 bc 24 20 01 00 	mov    %r15,0x120(%rsp)
    295e:	00 
    295f:	4d 31 fe             	xor    %r15,%r14
    2962:	49 c1 ce 10          	ror    $0x10,%r14
    2966:	4d 01 f1             	add    %r14,%r9
    2969:	4c 89 8c 24 18 01 00 	mov    %r9,0x118(%rsp)
    2970:	00 
    2971:	4d 89 cf             	mov    %r9,%r15
    2974:	4d 31 fc             	xor    %r15,%r12
    2977:	49 c1 cc 3f          	ror    $0x3f,%r12
    297b:	4c 89 a4 24 10 01 00 	mov    %r12,0x110(%rsp)
    2982:	00 
    2983:	4c 89 c0             	mov    %r8,%rax
    2986:	4c 8b bc 24 08 07 00 	mov    0x708(%rsp),%r15
    298d:	00 
    298e:	4c 01 f8             	add    %r15,%rax
    2991:	49 01 c5             	add    %rax,%r13
    2994:	4c 8b bc 24 60 01 00 	mov    0x160(%rsp),%r15
    299b:	00 
    299c:	4d 31 ef             	xor    %r13,%r15
    299f:	49 c1 cf 20          	ror    $0x20,%r15
    29a3:	4c 8b a4 24 78 01 00 	mov    0x178(%rsp),%r12
    29aa:	00 
    29ab:	4d 01 fc             	add    %r15,%r12
    29ae:	4d 31 e0             	xor    %r12,%r8
    29b1:	49 c1 c8 18          	ror    $0x18,%r8
    29b5:	4c 89 c0             	mov    %r8,%rax
    29b8:	4c 8b 9c 24 b8 06 00 	mov    0x6b8(%rsp),%r11
    29bf:	00 
    29c0:	4c 01 d8             	add    %r11,%rax
    29c3:	49 01 c5             	add    %rax,%r13
    29c6:	4d 31 ef             	xor    %r13,%r15
    29c9:	49 c1 cf 10          	ror    $0x10,%r15
    29cd:	4d 01 fc             	add    %r15,%r12
    29d0:	4d 31 e0             	xor    %r12,%r8
    29d3:	49 c1 c8 3f          	ror    $0x3f,%r8
    29d7:	4c 89 84 24 08 01 00 	mov    %r8,0x108(%rsp)
    29de:	00 
    29df:	4c 8b 9c 24 70 01 00 	mov    0x170(%rsp),%r11
    29e6:	00 
    29e7:	4c 8b 94 24 b0 06 00 	mov    0x6b0(%rsp),%r10
    29ee:	00 
    29ef:	4d 01 d3             	add    %r10,%r11
    29f2:	4c 8b 94 24 48 01 00 	mov    0x148(%rsp),%r10
    29f9:	00 
    29fa:	4d 01 da             	add    %r11,%r10
    29fd:	4c 8b 9c 24 50 01 00 	mov    0x150(%rsp),%r11
    2a04:	00 
    2a05:	4d 31 d3             	xor    %r10,%r11
    2a08:	49 c1 cb 20          	ror    $0x20,%r11
    2a0c:	4c 8b 8c 24 58 01 00 	mov    0x158(%rsp),%r9
    2a13:	00 
    2a14:	4d 01 d9             	add    %r11,%r9
    2a17:	4c 8b 84 24 70 01 00 	mov    0x170(%rsp),%r8
    2a1e:	00 
    2a1f:	4d 31 c8             	xor    %r9,%r8
    2a22:	49 c1 c8 18          	ror    $0x18,%r8
    2a26:	4c 89 c0             	mov    %r8,%rax
    2a29:	48 8b bc 24 20 07 00 	mov    0x720(%rsp),%rdi
    2a30:	00 
    2a31:	48 01 f8             	add    %rdi,%rax
    2a34:	49 01 c2             	add    %rax,%r10
    2a37:	4c 89 94 24 00 01 00 	mov    %r10,0x100(%rsp)
    2a3e:	00 
    2a3f:	4d 31 d3             	xor    %r10,%r11
    2a42:	49 c1 cb 10          	ror    $0x10,%r11
    2a46:	4d 01 d9             	add    %r11,%r9
    2a49:	4d 31 c8             	xor    %r9,%r8
    2a4c:	49 c1 c8 3f          	ror    $0x3f,%r8
    2a50:	4c 89 c0             	mov    %r8,%rax
    2a53:	49 89 fa             	mov    %rdi,%r10
    2a56:	4c 01 d0             	add    %r10,%rax
    2a59:	4c 8b 94 24 40 01 00 	mov    0x140(%rsp),%r10
    2a60:	00 
    2a61:	49 01 c2             	add    %rax,%r10
    2a64:	4d 31 d6             	xor    %r10,%r14
    2a67:	49 c1 ce 20          	ror    $0x20,%r14
    2a6b:	4d 01 f4             	add    %r14,%r12
    2a6e:	4d 31 e0             	xor    %r12,%r8
    2a71:	49 c1 c8 18          	ror    $0x18,%r8
    2a75:	4c 89 c0             	mov    %r8,%rax
    2a78:	48 8b bc 24 18 07 00 	mov    0x718(%rsp),%rdi
    2a7f:	00 
    2a80:	48 01 f8             	add    %rdi,%rax
    2a83:	49 01 c2             	add    %rax,%r10
    2a86:	4c 89 94 24 f8 00 00 	mov    %r10,0xf8(%rsp)
    2a8d:	00 
    2a8e:	4d 31 d6             	xor    %r10,%r14
    2a91:	49 c1 ce 10          	ror    $0x10,%r14
    2a95:	4c 89 b4 24 f0 00 00 	mov    %r14,0xf0(%rsp)
    2a9c:	00 
    2a9d:	4d 01 f4             	add    %r14,%r12
    2aa0:	4c 89 a4 24 e8 00 00 	mov    %r12,0xe8(%rsp)
    2aa7:	00 
    2aa8:	4d 89 e6             	mov    %r12,%r14
    2aab:	4d 31 f0             	xor    %r14,%r8
    2aae:	49 c1 c8 3f          	ror    $0x3f,%r8
    2ab2:	4c 89 84 24 e0 00 00 	mov    %r8,0xe0(%rsp)
    2ab9:	00 
    2aba:	4c 8b b4 24 28 01 00 	mov    0x128(%rsp),%r14
    2ac1:	00 
    2ac2:	4c 8b a4 24 10 07 00 	mov    0x710(%rsp),%r12
    2ac9:	00 
    2aca:	4d 01 e6             	add    %r12,%r14
    2acd:	4c 8b a4 24 20 01 00 	mov    0x120(%rsp),%r12
    2ad4:	00 
    2ad5:	4d 01 f4             	add    %r14,%r12
    2ad8:	4d 31 e7             	xor    %r12,%r15
    2adb:	49 c1 cf 20          	ror    $0x20,%r15
    2adf:	4d 01 f9             	add    %r15,%r9
    2ae2:	4c 8b b4 24 28 01 00 	mov    0x128(%rsp),%r14
    2ae9:	00 
    2aea:	4d 31 ce             	xor    %r9,%r14
    2aed:	49 c1 ce 18          	ror    $0x18,%r14
    2af1:	4c 89 f0             	mov    %r14,%rax
    2af4:	4c 8b 94 24 08 07 00 	mov    0x708(%rsp),%r10
    2afb:	00 
    2afc:	4c 01 d0             	add    %r10,%rax
    2aff:	49 01 c4             	add    %rax,%r12
    2b02:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
    2b09:	00 
    2b0a:	4d 31 e7             	xor    %r12,%r15
    2b0d:	49 c1 cf 10          	ror    $0x10,%r15
    2b11:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
    2b18:	00 
    2b19:	4d 01 f9             	add    %r15,%r9
    2b1c:	4c 89 8c 24 c8 00 00 	mov    %r9,0xc8(%rsp)
    2b23:	00 
    2b24:	4d 89 cf             	mov    %r9,%r15
    2b27:	4d 31 fe             	xor    %r15,%r14
    2b2a:	49 c1 ce 3f          	ror    $0x3f,%r14
    2b2e:	4c 8b bc 24 10 01 00 	mov    0x110(%rsp),%r15
    2b35:	00 
    2b36:	4c 8b a4 24 f8 06 00 	mov    0x6f8(%rsp),%r12
    2b3d:	00 
    2b3e:	4d 01 e7             	add    %r12,%r15
    2b41:	4d 01 fd             	add    %r15,%r13
    2b44:	4d 31 eb             	xor    %r13,%r11
    2b47:	49 c1 cb 20          	ror    $0x20,%r11
    2b4b:	4c 8b bc 24 30 01 00 	mov    0x130(%rsp),%r15
    2b52:	00 
    2b53:	4d 01 df             	add    %r11,%r15
    2b56:	4c 8b a4 24 10 01 00 	mov    0x110(%rsp),%r12
    2b5d:	00 
    2b5e:	4d 31 fc             	xor    %r15,%r12
    2b61:	49 c1 cc 18          	ror    $0x18,%r12
    2b65:	4c 89 e0             	mov    %r12,%rax
    2b68:	4c 8b 94 24 f0 06 00 	mov    0x6f0(%rsp),%r10
    2b6f:	00 
    2b70:	4c 01 d0             	add    %r10,%rax
    2b73:	49 01 c5             	add    %rax,%r13
    2b76:	4d 31 eb             	xor    %r13,%r11
    2b79:	49 c1 cb 10          	ror    $0x10,%r11
    2b7d:	4c 89 9c 24 c0 00 00 	mov    %r11,0xc0(%rsp)
    2b84:	00 
    2b85:	4d 01 df             	add    %r11,%r15
    2b88:	4d 31 fc             	xor    %r15,%r12
    2b8b:	49 c1 cc 3f          	ror    $0x3f,%r12
    2b8f:	4c 8b 9c 24 08 01 00 	mov    0x108(%rsp),%r11
    2b96:	00 
    2b97:	4c 8b 94 24 e8 06 00 	mov    0x6e8(%rsp),%r10
    2b9e:	00 
    2b9f:	4d 01 d3             	add    %r10,%r11
    2ba2:	4c 8b 94 24 00 01 00 	mov    0x100(%rsp),%r10
    2ba9:	00 
    2baa:	4d 01 da             	add    %r11,%r10
    2bad:	4c 8b 9c 24 38 01 00 	mov    0x138(%rsp),%r11
    2bb4:	00 
    2bb5:	4d 31 d3             	xor    %r10,%r11
    2bb8:	49 c1 cb 20          	ror    $0x20,%r11
    2bbc:	4c 8b 8c 24 18 01 00 	mov    0x118(%rsp),%r9
    2bc3:	00 
    2bc4:	4d 01 d9             	add    %r11,%r9
    2bc7:	4c 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8
    2bce:	00 
    2bcf:	4d 31 c8             	xor    %r9,%r8
    2bd2:	49 c1 c8 18          	ror    $0x18,%r8
    2bd6:	4c 89 c0             	mov    %r8,%rax
    2bd9:	48 8b bc 24 e0 06 00 	mov    0x6e0(%rsp),%rdi
    2be0:	00 
    2be1:	48 01 f8             	add    %rdi,%rax
    2be4:	49 01 c2             	add    %rax,%r10
    2be7:	4c 89 94 24 b8 00 00 	mov    %r10,0xb8(%rsp)
    2bee:	00 
    2bef:	4d 31 d3             	xor    %r10,%r11
    2bf2:	49 c1 cb 10          	ror    $0x10,%r11
    2bf6:	4d 01 d9             	add    %r11,%r9
    2bf9:	4d 31 c8             	xor    %r9,%r8
    2bfc:	49 c1 c8 3f          	ror    $0x3f,%r8
    2c00:	4c 89 f0             	mov    %r14,%rax
    2c03:	4c 8b 94 24 d8 06 00 	mov    0x6d8(%rsp),%r10
    2c0a:	00 
    2c0b:	4c 01 d0             	add    %r10,%rax
    2c0e:	4c 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%r10
    2c15:	00 
    2c16:	49 01 c2             	add    %rax,%r10
    2c19:	4d 31 d3             	xor    %r10,%r11
    2c1c:	49 c1 cb 20          	ror    $0x20,%r11
    2c20:	4d 01 df             	add    %r11,%r15
    2c23:	4d 31 fe             	xor    %r15,%r14
    2c26:	49 c1 ce 18          	ror    $0x18,%r14
    2c2a:	4c 89 f0             	mov    %r14,%rax
    2c2d:	48 8b bc 24 d0 06 00 	mov    0x6d0(%rsp),%rdi
    2c34:	00 
    2c35:	48 01 f8             	add    %rdi,%rax
    2c38:	49 01 c2             	add    %rax,%r10
    2c3b:	4c 89 94 24 b0 00 00 	mov    %r10,0xb0(%rsp)
    2c42:	00 
    2c43:	4d 31 d3             	xor    %r10,%r11
    2c46:	49 c1 cb 10          	ror    $0x10,%r11
    2c4a:	4c 89 9c 24 a8 00 00 	mov    %r11,0xa8(%rsp)
    2c51:	00 
    2c52:	4d 01 df             	add    %r11,%r15
    2c55:	4c 89 bc 24 a0 00 00 	mov    %r15,0xa0(%rsp)
    2c5c:	00 
    2c5d:	4d 31 fe             	xor    %r15,%r14
    2c60:	49 c1 ce 3f          	ror    $0x3f,%r14
    2c64:	4c 89 b4 24 98 00 00 	mov    %r14,0x98(%rsp)
    2c6b:	00 
    2c6c:	4c 89 e0             	mov    %r12,%rax
    2c6f:	4c 8b bc 24 c8 06 00 	mov    0x6c8(%rsp),%r15
    2c76:	00 
    2c77:	4c 01 f8             	add    %r15,%rax
    2c7a:	4c 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%r15
    2c81:	00 
    2c82:	49 01 c7             	add    %rax,%r15
    2c85:	4c 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%r14
    2c8c:	00 
    2c8d:	4d 31 fe             	xor    %r15,%r14
    2c90:	49 c1 ce 20          	ror    $0x20,%r14
    2c94:	4d 01 f1             	add    %r14,%r9
    2c97:	4d 31 cc             	xor    %r9,%r12
    2c9a:	49 c1 cc 18          	ror    $0x18,%r12
    2c9e:	4c 89 e0             	mov    %r12,%rax
    2ca1:	4c 8b 9c 24 c0 06 00 	mov    0x6c0(%rsp),%r11
    2ca8:	00 
    2ca9:	4c 01 d8             	add    %r11,%rax
    2cac:	49 01 c7             	add    %rax,%r15
    2caf:	4c 89 bc 24 90 00 00 	mov    %r15,0x90(%rsp)
    2cb6:	00 
    2cb7:	4d 31 fe             	xor    %r15,%r14
    2cba:	49 c1 ce 10          	ror    $0x10,%r14
    2cbe:	4d 01 f1             	add    %r14,%r9
    2cc1:	4c 89 8c 24 88 00 00 	mov    %r9,0x88(%rsp)
    2cc8:	00 
    2cc9:	4d 89 cf             	mov    %r9,%r15
    2ccc:	4d 31 fc             	xor    %r15,%r12
    2ccf:	49 c1 cc 3f          	ror    $0x3f,%r12
    2cd3:	4c 89 a4 24 80 00 00 	mov    %r12,0x80(%rsp)
    2cda:	00 
    2cdb:	4c 89 c0             	mov    %r8,%rax
    2cde:	4c 8b bc 24 b8 06 00 	mov    0x6b8(%rsp),%r15
    2ce5:	00 
    2ce6:	4c 01 f8             	add    %r15,%rax
    2ce9:	49 01 c5             	add    %rax,%r13
    2cec:	4c 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%r15
    2cf3:	00 
    2cf4:	4d 31 ef             	xor    %r13,%r15
    2cf7:	49 c1 cf 20          	ror    $0x20,%r15
    2cfb:	4c 8b a4 24 e8 00 00 	mov    0xe8(%rsp),%r12
    2d02:	00 
    2d03:	4d 01 fc             	add    %r15,%r12
    2d06:	4d 31 e0             	xor    %r12,%r8
    2d09:	49 c1 c8 18          	ror    $0x18,%r8
    2d0d:	4c 89 c0             	mov    %r8,%rax
    2d10:	4c 8b 9c 24 b0 06 00 	mov    0x6b0(%rsp),%r11
    2d17:	00 
    2d18:	4c 01 d8             	add    %r11,%rax
    2d1b:	49 01 c5             	add    %rax,%r13
    2d1e:	4d 31 ef             	xor    %r13,%r15
    2d21:	49 c1 cf 10          	ror    $0x10,%r15
    2d25:	4d 01 fc             	add    %r15,%r12
    2d28:	4d 31 e0             	xor    %r12,%r8
    2d2b:	49 c1 c8 3f          	ror    $0x3f,%r8
    2d2f:	4c 89 84 24 78 00 00 	mov    %r8,0x78(%rsp)
    2d36:	00 
    2d37:	4c 8b 9c 24 e0 00 00 	mov    0xe0(%rsp),%r11
    2d3e:	00 
    2d3f:	4c 8b 94 24 a8 06 00 	mov    0x6a8(%rsp),%r10
    2d46:	00 
    2d47:	4d 01 d3             	add    %r10,%r11
    2d4a:	4c 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%r10
    2d51:	00 
    2d52:	4d 01 da             	add    %r11,%r10
    2d55:	4c 8b 9c 24 c0 00 00 	mov    0xc0(%rsp),%r11
    2d5c:	00 
    2d5d:	4d 31 d3             	xor    %r10,%r11
    2d60:	49 c1 cb 20          	ror    $0x20,%r11
    2d64:	4c 8b 8c 24 c8 00 00 	mov    0xc8(%rsp),%r9
    2d6b:	00 
    2d6c:	4d 01 d9             	add    %r11,%r9
    2d6f:	4c 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%r8
    2d76:	00 
    2d77:	4d 31 c8             	xor    %r9,%r8
    2d7a:	49 c1 c8 18          	ror    $0x18,%r8
    2d7e:	4c 89 c0             	mov    %r8,%rax
    2d81:	48 8b bc 24 a0 06 00 	mov    0x6a0(%rsp),%rdi
    2d88:	00 
    2d89:	48 01 f8             	add    %rdi,%rax
    2d8c:	49 01 c2             	add    %rax,%r10
    2d8f:	4c 89 94 24 70 00 00 	mov    %r10,0x70(%rsp)
    2d96:	00 
    2d97:	4d 31 d3             	xor    %r10,%r11
    2d9a:	49 c1 cb 10          	ror    $0x10,%r11
    2d9e:	4d 01 d9             	add    %r11,%r9
    2da1:	4d 31 c8             	xor    %r9,%r8
    2da4:	49 c1 c8 3f          	ror    $0x3f,%r8
    2da8:	4c 89 c0             	mov    %r8,%rax
    2dab:	4c 8b 94 24 a8 06 00 	mov    0x6a8(%rsp),%r10
    2db2:	00 
    2db3:	4c 01 d0             	add    %r10,%rax
    2db6:	4c 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%r10
    2dbd:	00 
    2dbe:	49 01 c2             	add    %rax,%r10
    2dc1:	4d 31 d6             	xor    %r10,%r14
    2dc4:	49 c1 ce 20          	ror    $0x20,%r14
    2dc8:	4d 01 f4             	add    %r14,%r12
    2dcb:	4d 31 e0             	xor    %r12,%r8
    2dce:	49 c1 c8 18          	ror    $0x18,%r8
    2dd2:	4c 89 c0             	mov    %r8,%rax
    2dd5:	48 8b bc 24 c8 06 00 	mov    0x6c8(%rsp),%rdi
    2ddc:	00 
    2ddd:	48 01 f8             	add    %rdi,%rax
    2de0:	49 01 c2             	add    %rax,%r10
    2de3:	4c 89 94 24 68 00 00 	mov    %r10,0x68(%rsp)
    2dea:	00 
    2deb:	4d 31 d6             	xor    %r10,%r14
    2dee:	49 c1 ce 10          	ror    $0x10,%r14
    2df2:	4c 89 b4 24 60 00 00 	mov    %r14,0x60(%rsp)
    2df9:	00 
    2dfa:	4d 01 f4             	add    %r14,%r12
    2dfd:	4c 89 a4 24 58 00 00 	mov    %r12,0x58(%rsp)
    2e04:	00 
    2e05:	4d 89 e6             	mov    %r12,%r14
    2e08:	4d 31 f0             	xor    %r14,%r8
    2e0b:	49 c1 c8 3f          	ror    $0x3f,%r8
    2e0f:	4c 89 84 24 50 00 00 	mov    %r8,0x50(%rsp)
    2e16:	00 
    2e17:	4c 8b b4 24 98 00 00 	mov    0x98(%rsp),%r14
    2e1e:	00 
    2e1f:	4c 8b a4 24 f8 06 00 	mov    0x6f8(%rsp),%r12
    2e26:	00 
    2e27:	4d 01 e6             	add    %r12,%r14
    2e2a:	4c 8b a4 24 90 00 00 	mov    0x90(%rsp),%r12
    2e31:	00 
    2e32:	4d 01 f4             	add    %r14,%r12
    2e35:	4d 31 e7             	xor    %r12,%r15
    2e38:	49 c1 cf 20          	ror    $0x20,%r15
    2e3c:	4d 01 f9             	add    %r15,%r9
    2e3f:	4c 8b b4 24 98 00 00 	mov    0x98(%rsp),%r14
    2e46:	00 
    2e47:	4d 31 ce             	xor    %r9,%r14
    2e4a:	49 c1 ce 18          	ror    $0x18,%r14
    2e4e:	4c 89 f0             	mov    %r14,%rax
    2e51:	4c 8b 94 24 d8 06 00 	mov    0x6d8(%rsp),%r10
    2e58:	00 
    2e59:	4c 01 d0             	add    %r10,%rax
    2e5c:	49 01 c4             	add    %rax,%r12
    2e5f:	4c 89 a4 24 48 00 00 	mov    %r12,0x48(%rsp)
    2e66:	00 
    2e67:	4d 31 e7             	xor    %r12,%r15
    2e6a:	49 c1 cf 10          	ror    $0x10,%r15
    2e6e:	4c 89 bc 24 40 00 00 	mov    %r15,0x40(%rsp)
    2e75:	00 
    2e76:	4d 01 f9             	add    %r15,%r9
    2e79:	4c 89 8c 24 38 00 00 	mov    %r9,0x38(%rsp)
    2e80:	00 
    2e81:	4d 89 cf             	mov    %r9,%r15
    2e84:	4d 31 fe             	xor    %r15,%r14
    2e87:	49 c1 ce 3f          	ror    $0x3f,%r14
    2e8b:	4c 8b bc 24 80 00 00 	mov    0x80(%rsp),%r15
    2e92:	00 
    2e93:	4c 8b a4 24 d0 06 00 	mov    0x6d0(%rsp),%r12
    2e9a:	00 
    2e9b:	4d 01 e7             	add    %r12,%r15
    2e9e:	4d 01 fd             	add    %r15,%r13
    2ea1:	4d 31 eb             	xor    %r13,%r11
    2ea4:	49 c1 cb 20          	ror    $0x20,%r11
    2ea8:	4c 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%r15
    2eaf:	00 
    2eb0:	4d 01 df             	add    %r11,%r15
    2eb3:	4c 8b a4 24 80 00 00 	mov    0x80(%rsp),%r12
    2eba:	00 
    2ebb:	4d 31 fc             	xor    %r15,%r12
    2ebe:	49 c1 cc 18          	ror    $0x18,%r12
    2ec2:	4c 89 e0             	mov    %r12,%rax
    2ec5:	4c 8b 94 24 a0 06 00 	mov    0x6a0(%rsp),%r10
    2ecc:	00 
    2ecd:	4c 01 d0             	add    %r10,%rax
    2ed0:	49 01 c5             	add    %rax,%r13
    2ed3:	4d 31 eb             	xor    %r13,%r11
    2ed6:	49 c1 cb 10          	ror    $0x10,%r11
    2eda:	4c 89 9c 24 30 00 00 	mov    %r11,0x30(%rsp)
    2ee1:	00 
    2ee2:	4d 01 df             	add    %r11,%r15
    2ee5:	4d 31 fc             	xor    %r15,%r12
    2ee8:	49 c1 cc 3f          	ror    $0x3f,%r12
    2eec:	4c 8b 9c 24 78 00 00 	mov    0x78(%rsp),%r11
    2ef3:	00 
    2ef4:	4c 8b 94 24 b0 06 00 	mov    0x6b0(%rsp),%r10
    2efb:	00 
    2efc:	4d 01 d3             	add    %r10,%r11
    2eff:	4c 8b 94 24 70 00 00 	mov    0x70(%rsp),%r10
    2f06:	00 
    2f07:	4d 01 da             	add    %r11,%r10
    2f0a:	4c 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%r11
    2f11:	00 
    2f12:	4d 31 d3             	xor    %r10,%r11
    2f15:	49 c1 cb 20          	ror    $0x20,%r11
    2f19:	4c 8b 8c 24 88 00 00 	mov    0x88(%rsp),%r9
    2f20:	00 
    2f21:	4d 01 d9             	add    %r11,%r9
    2f24:	4c 8b 84 24 78 00 00 	mov    0x78(%rsp),%r8
    2f2b:	00 
    2f2c:	4d 31 c8             	xor    %r9,%r8
    2f2f:	49 c1 c8 18          	ror    $0x18,%r8
    2f33:	4c 89 c0             	mov    %r8,%rax
    2f36:	48 8b bc 24 e8 06 00 	mov    0x6e8(%rsp),%rdi
    2f3d:	00 
    2f3e:	48 01 f8             	add    %rdi,%rax
    2f41:	49 01 c2             	add    %rax,%r10
    2f44:	4c 89 94 24 28 00 00 	mov    %r10,0x28(%rsp)
    2f4b:	00 
    2f4c:	4d 31 d3             	xor    %r10,%r11
    2f4f:	49 c1 cb 10          	ror    $0x10,%r11
    2f53:	4d 01 d9             	add    %r11,%r9
    2f56:	4d 31 c8             	xor    %r9,%r8
    2f59:	49 c1 c8 3f          	ror    $0x3f,%r8
    2f5d:	4c 89 f0             	mov    %r14,%rax
    2f60:	4c 8b 94 24 18 07 00 	mov    0x718(%rsp),%r10
    2f67:	00 
    2f68:	4c 01 d0             	add    %r10,%rax
    2f6b:	4c 8b 94 24 68 00 00 	mov    0x68(%rsp),%r10
    2f72:	00 
    2f73:	49 01 c2             	add    %rax,%r10
    2f76:	4d 31 d3             	xor    %r10,%r11
    2f79:	49 c1 cb 20          	ror    $0x20,%r11
    2f7d:	4d 01 df             	add    %r11,%r15
    2f80:	4d 31 fe             	xor    %r15,%r14
    2f83:	49 c1 ce 18          	ror    $0x18,%r14
    2f87:	4c 89 f0             	mov    %r14,%rax
    2f8a:	48 8b bc 24 b8 06 00 	mov    0x6b8(%rsp),%rdi
    2f91:	00 
    2f92:	48 01 f8             	add    %rdi,%rax
    2f95:	49 01 c2             	add    %rax,%r10
    2f98:	4c 89 94 24 20 00 00 	mov    %r10,0x20(%rsp)
    2f9f:	00 
    2fa0:	4d 31 d3             	xor    %r10,%r11
    2fa3:	49 c1 cb 10          	ror    $0x10,%r11
    2fa7:	4c 89 9c 24 18 00 00 	mov    %r11,0x18(%rsp)
    2fae:	00 
    2faf:	4d 01 df             	add    %r11,%r15
    2fb2:	4c 89 bc 24 10 00 00 	mov    %r15,0x10(%rsp)
    2fb9:	00 
    2fba:	4d 31 fe             	xor    %r15,%r14
    2fbd:	49 c1 ce 3f          	ror    $0x3f,%r14
    2fc1:	4c 89 b4 24 08 00 00 	mov    %r14,0x8(%rsp)
    2fc8:	00 
    2fc9:	4c 89 e0             	mov    %r12,%rax
    2fcc:	4c 8b bc 24 20 07 00 	mov    0x720(%rsp),%r15
    2fd3:	00 
    2fd4:	4c 01 f8             	add    %r15,%rax
    2fd7:	4c 8b bc 24 48 00 00 	mov    0x48(%rsp),%r15
    2fde:	00 
    2fdf:	49 01 c7             	add    %rax,%r15
    2fe2:	4c 8b b4 24 60 00 00 	mov    0x60(%rsp),%r14
    2fe9:	00 
    2fea:	4d 31 fe             	xor    %r15,%r14
    2fed:	49 c1 ce 20          	ror    $0x20,%r14
    2ff1:	4d 01 f1             	add    %r14,%r9
    2ff4:	4d 31 cc             	xor    %r9,%r12
    2ff7:	49 c1 cc 18          	ror    $0x18,%r12
    2ffb:	4c 89 e0             	mov    %r12,%rax
    2ffe:	4c 8b 9c 24 10 07 00 	mov    0x710(%rsp),%r11
    3005:	00 
    3006:	4c 01 d8             	add    %r11,%rax
    3009:	49 01 c7             	add    %rax,%r15
    300c:	4d 31 fe             	xor    %r15,%r14
    300f:	49 c1 ce 10          	ror    $0x10,%r14
    3013:	4d 01 f1             	add    %r14,%r9
    3016:	4d 31 cc             	xor    %r9,%r12
    3019:	49 c1 cc 3f          	ror    $0x3f,%r12
    301d:	4c 89 c0             	mov    %r8,%rax
    3020:	4c 8b 9c 24 c0 06 00 	mov    0x6c0(%rsp),%r11
    3027:	00 
    3028:	4c 01 d8             	add    %r11,%rax
    302b:	49 01 c5             	add    %rax,%r13
    302e:	4c 8b 9c 24 40 00 00 	mov    0x40(%rsp),%r11
    3035:	00 
    3036:	4d 31 eb             	xor    %r13,%r11
    3039:	49 c1 cb 20          	ror    $0x20,%r11
    303d:	4c 8b 94 24 58 00 00 	mov    0x58(%rsp),%r10
    3044:	00 
    3045:	4d 01 da             	add    %r11,%r10
    3048:	4d 31 d0             	xor    %r10,%r8
    304b:	49 c1 c8 18          	ror    $0x18,%r8
    304f:	4c 89 c0             	mov    %r8,%rax
    3052:	48 8b bc 24 e0 06 00 	mov    0x6e0(%rsp),%rdi
    3059:	00 
    305a:	48 01 f8             	add    %rdi,%rax
    305d:	49 01 c5             	add    %rax,%r13
    3060:	4d 31 eb             	xor    %r13,%r11
    3063:	49 c1 cb 10          	ror    $0x10,%r11
    3067:	4d 01 da             	add    %r11,%r10
    306a:	4d 31 d0             	xor    %r10,%r8
    306d:	49 c1 c8 3f          	ror    $0x3f,%r8
    3071:	48 8b bc 24 50 00 00 	mov    0x50(%rsp),%rdi
    3078:	00 
    3079:	48 8b b4 24 f0 06 00 	mov    0x6f0(%rsp),%rsi
    3080:	00 
    3081:	48 01 f7             	add    %rsi,%rdi
    3084:	48 8b b4 24 28 00 00 	mov    0x28(%rsp),%rsi
    308b:	00 
    308c:	48 01 fe             	add    %rdi,%rsi
    308f:	48 8b bc 24 30 00 00 	mov    0x30(%rsp),%rdi
    3096:	00 
    3097:	48 31 f7             	xor    %rsi,%rdi
    309a:	48 c1 cf 20          	ror    $0x20,%rdi
    309e:	48 8b 9c 24 38 00 00 	mov    0x38(%rsp),%rbx
    30a5:	00 
    30a6:	48 01 fb             	add    %rdi,%rbx
    30a9:	48 8b 94 24 50 00 00 	mov    0x50(%rsp),%rdx
    30b0:	00 
    30b1:	48 31 da             	xor    %rbx,%rdx
    30b4:	48 c1 ca 18          	ror    $0x18,%rdx
    30b8:	48 89 d0             	mov    %rdx,%rax
    30bb:	48 8b 8c 24 08 07 00 	mov    0x708(%rsp),%rcx
    30c2:	00 
    30c3:	48 01 c8             	add    %rcx,%rax
    30c6:	48 01 c6             	add    %rax,%rsi
    30c9:	48 31 f7             	xor    %rsi,%rdi
    30cc:	48 c1 cf 10          	ror    $0x10,%rdi
    30d0:	48 01 fb             	add    %rdi,%rbx
    30d3:	48 31 da             	xor    %rbx,%rdx
    30d6:	48 c1 ca 3f          	ror    $0x3f,%rdx
    30da:	48 8b 8c 24 e8 07 00 	mov    0x7e8(%rsp),%rcx
    30e1:	00 
    30e2:	48 8b 84 24 e0 07 00 	mov    0x7e0(%rsp),%rax
    30e9:	00 
    30ea:	48 8b 04 01          	mov    (%rcx,%rax,1),%rax
    30ee:	48 8b 8c 24 20 00 00 	mov    0x20(%rsp),%rcx
    30f5:	00 
    30f6:	4c 31 d1             	xor    %r10,%rcx
    30f9:	48 31 c8             	xor    %rcx,%rax
    30fc:	4c 8b 94 24 e8 07 00 	mov    0x7e8(%rsp),%r10
    3103:	00 
    3104:	48 8b 8c 24 e0 07 00 	mov    0x7e0(%rsp),%rcx
    310b:	00 
    310c:	49 89 04 0a          	mov    %rax,(%r10,%rcx,1)
    3110:	48 8b 8c 24 d0 07 00 	mov    0x7d0(%rsp),%rcx
    3117:	00 
    3118:	49 8b 04 0a          	mov    (%r10,%rcx,1),%rax
    311c:	49 31 df             	xor    %rbx,%r15
    311f:	4c 31 f8             	xor    %r15,%rax
    3122:	4d 89 d7             	mov    %r10,%r15
    3125:	49 89 ca             	mov    %rcx,%r10
    3128:	4b 89 04 17          	mov    %rax,(%r15,%r10,1)
    312c:	4c 8b 94 24 c0 07 00 	mov    0x7c0(%rsp),%r10
    3133:	00 
    3134:	4b 8b 04 17          	mov    (%r15,%r10,1),%rax
    3138:	4c 8b bc 24 10 00 00 	mov    0x10(%rsp),%r15
    313f:	00 
    3140:	4d 31 fd             	xor    %r15,%r13
    3143:	4c 31 e8             	xor    %r13,%rax
    3146:	4c 8b bc 24 e8 07 00 	mov    0x7e8(%rsp),%r15
    314d:	00 
    314e:	4d 89 d5             	mov    %r10,%r13
    3151:	4b 89 04 2f          	mov    %rax,(%r15,%r13,1)
    3155:	4c 8b ac 24 b0 07 00 	mov    0x7b0(%rsp),%r13
    315c:	00 
    315d:	4b 8b 04 2f          	mov    (%r15,%r13,1),%rax
    3161:	4c 31 ce             	xor    %r9,%rsi
    3164:	48 31 f0             	xor    %rsi,%rax
    3167:	4b 89 04 2f          	mov    %rax,(%r15,%r13,1)
    316b:	4c 8b ac 24 a0 07 00 	mov    0x7a0(%rsp),%r13
    3172:	00 
    3173:	4b 8b 04 2f          	mov    (%r15,%r13,1),%rax
    3177:	4c 31 f2             	xor    %r14,%rdx
    317a:	48 31 d0             	xor    %rdx,%rax
    317d:	4d 89 ee             	mov    %r13,%r14
    3180:	4b 89 04 37          	mov    %rax,(%r15,%r14,1)
    3184:	4c 8b b4 24 90 07 00 	mov    0x790(%rsp),%r14
    318b:	00 
    318c:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
    3190:	4c 8b bc 24 08 00 00 	mov    0x8(%rsp),%r15
    3197:	00 
    3198:	4d 31 df             	xor    %r11,%r15
    319b:	4c 31 f8             	xor    %r15,%rax
    319e:	4c 8b bc 24 e8 07 00 	mov    0x7e8(%rsp),%r15
    31a5:	00 
    31a6:	4b 89 04 37          	mov    %rax,(%r15,%r14,1)
    31aa:	4c 8b b4 24 80 07 00 	mov    0x780(%rsp),%r14
    31b1:	00 
    31b2:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
    31b6:	49 31 fc             	xor    %rdi,%r12
    31b9:	4c 31 e0             	xor    %r12,%rax
    31bc:	4b 89 04 37          	mov    %rax,(%r15,%r14,1)
    31c0:	4c 8b b4 24 70 07 00 	mov    0x770(%rsp),%r14
    31c7:	00 
    31c8:	4b 8b 04 37          	mov    (%r15,%r14,1),%rax
    31cc:	4c 8b bc 24 18 00 00 	mov    0x18(%rsp),%r15
    31d3:	00 
    31d4:	4d 31 f8             	xor    %r15,%r8
    31d7:	4c 31 c0             	xor    %r8,%rax
    31da:	4c 8b bc 24 e8 07 00 	mov    0x7e8(%rsp),%r15
    31e1:	00 
    31e2:	4b 89 04 37          	mov    %rax,(%r15,%r14,1)
    31e6:	48 81 c4 f8 07 00 00 	add    $0x7f8,%rsp
    31ed:	41 5f                	pop    %r15
    31ef:	41 5e                	pop    %r14
    31f1:	41 5d                	pop    %r13
    31f3:	41 5c                	pop    %r12
    31f5:	5b                   	pop    %rbx
    31f6:	5d                   	pop    %rbp
    31f7:	c3                   	retq   
	...

0000000000003200 <guest_func_blake2b_update>:
    3200:	55                   	push   %rbp
    3201:	48 89 e5             	mov    %rsp,%rbp
    3204:	41 55                	push   %r13
    3206:	41 56                	push   %r14
    3208:	41 57                	push   %r15
    320a:	48 83 ec 28          	sub    $0x28,%rsp
    320e:	48 89 bc 24 10 00 00 	mov    %rdi,0x10(%rsp)
    3215:	00 
    3216:	89 b4 24 18 00 00 00 	mov    %esi,0x18(%rsp)
    321d:	89 94 24 1c 00 00 00 	mov    %edx,0x1c(%rsp)
    3224:	89 8c 24 24 00 00 00 	mov    %ecx,0x24(%rsp)
    322b:	31 c0                	xor    %eax,%eax
    322d:	89 84 24 20 00 00 00 	mov    %eax,0x20(%rsp)
    3234:	41 89 f7             	mov    %esi,%r15d
    3237:	41 81 c7 c0 00 00 00 	add    $0xc0,%r15d
    323e:	41 89 f6             	mov    %esi,%r14d
    3241:	41 81 c6 c8 00 00 00 	add    $0xc8,%r14d
    3248:	44 89 f0             	mov    %r14d,%eax
    324b:	48 89 84 24 08 00 00 	mov    %rax,0x8(%rsp)
    3252:	00 
    3253:	49 89 fe             	mov    %rdi,%r14
    3256:	49 89 c5             	mov    %rax,%r13
    3259:	4b 8b 04 2e          	mov    (%r14,%r13,1),%rax
    325d:	44 89 f9             	mov    %r15d,%ecx
    3260:	48 89 8c 24 00 00 00 	mov    %rcx,0x0(%rsp)
    3267:	00 
    3268:	44 8b bc 24 1c 00 00 	mov    0x1c(%rsp),%r15d
    326f:	00 
    3270:	44 8b b4 24 24 00 00 	mov    0x24(%rsp),%r14d
    3277:	00 
    3278:	45 39 f7             	cmp    %r14d,%r15d
    327b:	0f 84 8c 00 00 00    	je     330d <guest_func_blake2b_update+0x10d>
    3281:	81 f8 80 00 00 00    	cmp    $0x80,%eax
    3287:	75 3b                	jne    32c4 <guest_func_blake2b_update+0xc4>
    3289:	4c 8b bc 24 10 00 00 	mov    0x10(%rsp),%r15
    3290:	00 
    3291:	4c 8b b4 24 00 00 00 	mov    0x0(%rsp),%r14
    3298:	00 
    3299:	4b 8b 0c 37          	mov    (%r15,%r14,1),%rcx
    329d:	89 c0                	mov    %eax,%eax
    329f:	48 01 c1             	add    %rax,%rcx
    32a2:	4b 89 0c 37          	mov    %rcx,(%r15,%r14,1)
    32a6:	44 8b b4 24 18 00 00 	mov    0x18(%rsp),%r14d
    32ad:	00 
    32ae:	4c 89 ff             	mov    %r15,%rdi
    32b1:	44 89 f6             	mov    %r14d,%esi
    32b4:	e8 c7 d2 ff ff       	callq  580 <guest_func_blake2b_compress>
    32b9:	44 8b bc 24 20 00 00 	mov    0x20(%rsp),%r15d
    32c0:	00 
    32c1:	44 89 f8             	mov    %r15d,%eax
    32c4:	44 8b bc 24 18 00 00 	mov    0x18(%rsp),%r15d
    32cb:	00 
    32cc:	41 01 c7             	add    %eax,%r15d
    32cf:	44 8b b4 24 1c 00 00 	mov    0x1c(%rsp),%r14d
    32d6:	00 
    32d7:	44 89 f1             	mov    %r14d,%ecx
    32da:	4c 8b b4 24 10 00 00 	mov    0x10(%rsp),%r14
    32e1:	00 
    32e2:	41 0f b6 0c 0e       	movzbl (%r14,%rcx,1),%ecx
    32e7:	44 89 fa             	mov    %r15d,%edx
    32ea:	4d 89 f7             	mov    %r14,%r15
    32ed:	41 88 0c 17          	mov    %cl,(%r15,%rdx,1)
    32f1:	83 c0 01             	add    $0x1,%eax
    32f4:	44 8b bc 24 1c 00 00 	mov    0x1c(%rsp),%r15d
    32fb:	00 
    32fc:	41 83 c7 01          	add    $0x1,%r15d
    3300:	44 89 bc 24 1c 00 00 	mov    %r15d,0x1c(%rsp)
    3307:	00 
    3308:	e9 5b ff ff ff       	jmpq   3268 <guest_func_blake2b_update+0x68>
    330d:	89 c0                	mov    %eax,%eax
    330f:	4c 8b bc 24 10 00 00 	mov    0x10(%rsp),%r15
    3316:	00 
    3317:	4c 8b b4 24 08 00 00 	mov    0x8(%rsp),%r14
    331e:	00 
    331f:	4b 89 04 37          	mov    %rax,(%r15,%r14,1)
    3323:	48 83 c4 28          	add    $0x28,%rsp
    3327:	41 5f                	pop    %r15
    3329:	41 5e                	pop    %r14
    332b:	41 5d                	pop    %r13
    332d:	5d                   	pop    %rbp
    332e:	c3                   	retq   
	...

0000000000003330 <guest_func_blake2b_init>:
    3330:	55                   	push   %rbp
    3331:	48 89 e5             	mov    %rsp,%rbp
    3334:	53                   	push   %rbx
    3335:	31 c0                	xor    %eax,%eax
    3337:	89 f1                	mov    %esi,%ecx
    3339:	48 89 04 0f          	mov    %rax,(%rdi,%rcx,1)
    333d:	48 89 44 0f 08       	mov    %rax,0x8(%rdi,%rcx,1)
    3342:	48 89 44 0f 10       	mov    %rax,0x10(%rdi,%rcx,1)
    3347:	48 89 44 0f 18       	mov    %rax,0x18(%rdi,%rcx,1)
    334c:	48 89 44 0f 20       	mov    %rax,0x20(%rdi,%rcx,1)
    3351:	48 89 44 0f 28       	mov    %rax,0x28(%rdi,%rcx,1)
    3356:	48 89 44 0f 30       	mov    %rax,0x30(%rdi,%rcx,1)
    335b:	48 89 44 0f 38       	mov    %rax,0x38(%rdi,%rcx,1)
    3360:	48 89 44 0f 40       	mov    %rax,0x40(%rdi,%rcx,1)
    3365:	48 89 44 0f 48       	mov    %rax,0x48(%rdi,%rcx,1)
    336a:	48 89 44 0f 50       	mov    %rax,0x50(%rdi,%rcx,1)
    336f:	48 89 44 0f 58       	mov    %rax,0x58(%rdi,%rcx,1)
    3374:	48 89 44 0f 60       	mov    %rax,0x60(%rdi,%rcx,1)
    3379:	48 89 44 0f 68       	mov    %rax,0x68(%rdi,%rcx,1)
    337e:	48 89 44 0f 70       	mov    %rax,0x70(%rdi,%rcx,1)
    3383:	48 89 44 0f 78       	mov    %rax,0x78(%rdi,%rcx,1)
    3388:	48 ba 08 c9 bc f3 67 	movabs $0x6a09e667f3bcc908,%rdx
    338f:	e6 09 6a 
    3392:	31 db                	xor    %ebx,%ebx
    3394:	89 db                	mov    %ebx,%ebx
    3396:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    339a:	48 31 d3             	xor    %rdx,%rbx
    339d:	48 89 9c 0f 80 00 00 	mov    %rbx,0x80(%rdi,%rcx,1)
    33a4:	00 
    33a5:	48 ba 3b a7 ca 84 85 	movabs $0xbb67ae8584caa73b,%rdx
    33ac:	ae 67 bb 
    33af:	bb 08 00 00 00       	mov    $0x8,%ebx
    33b4:	89 db                	mov    %ebx,%ebx
    33b6:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    33ba:	48 31 d3             	xor    %rdx,%rbx
    33bd:	48 89 9c 0f 88 00 00 	mov    %rbx,0x88(%rdi,%rcx,1)
    33c4:	00 
    33c5:	48 ba 2b f8 94 fe 72 	movabs $0x3c6ef372fe94f82b,%rdx
    33cc:	f3 6e 3c 
    33cf:	bb 10 00 00 00       	mov    $0x10,%ebx
    33d4:	89 db                	mov    %ebx,%ebx
    33d6:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    33da:	48 31 d3             	xor    %rdx,%rbx
    33dd:	48 89 9c 0f 90 00 00 	mov    %rbx,0x90(%rdi,%rcx,1)
    33e4:	00 
    33e5:	48 ba f1 36 1d 5f 3a 	movabs $0xa54ff53a5f1d36f1,%rdx
    33ec:	f5 4f a5 
    33ef:	bb 18 00 00 00       	mov    $0x18,%ebx
    33f4:	89 db                	mov    %ebx,%ebx
    33f6:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    33fa:	48 31 d3             	xor    %rdx,%rbx
    33fd:	48 89 9c 0f 98 00 00 	mov    %rbx,0x98(%rdi,%rcx,1)
    3404:	00 
    3405:	48 ba d1 82 e6 ad 7f 	movabs $0x510e527fade682d1,%rdx
    340c:	52 0e 51 
    340f:	bb 20 00 00 00       	mov    $0x20,%ebx
    3414:	89 db                	mov    %ebx,%ebx
    3416:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    341a:	48 31 d3             	xor    %rdx,%rbx
    341d:	48 89 9c 0f a0 00 00 	mov    %rbx,0xa0(%rdi,%rcx,1)
    3424:	00 
    3425:	48 ba 1f 6c 3e 2b 8c 	movabs $0x9b05688c2b3e6c1f,%rdx
    342c:	68 05 9b 
    342f:	bb 28 00 00 00       	mov    $0x28,%ebx
    3434:	89 db                	mov    %ebx,%ebx
    3436:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    343a:	48 31 d3             	xor    %rdx,%rbx
    343d:	48 89 9c 0f a8 00 00 	mov    %rbx,0xa8(%rdi,%rcx,1)
    3444:	00 
    3445:	48 ba 6b bd 41 fb ab 	movabs $0x1f83d9abfb41bd6b,%rdx
    344c:	d9 83 1f 
    344f:	bb 30 00 00 00       	mov    $0x30,%ebx
    3454:	89 db                	mov    %ebx,%ebx
    3456:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    345a:	48 31 d3             	xor    %rdx,%rbx
    345d:	48 89 9c 0f b0 00 00 	mov    %rbx,0xb0(%rdi,%rcx,1)
    3464:	00 
    3465:	48 ba 79 21 7e 13 19 	movabs $0x5be0cd19137e2179,%rdx
    346c:	cd e0 5b 
    346f:	bb 38 00 00 00       	mov    $0x38,%ebx
    3474:	89 db                	mov    %ebx,%ebx
    3476:	48 8b 1c 1f          	mov    (%rdi,%rbx,1),%rbx
    347a:	48 31 d3             	xor    %rdx,%rbx
    347d:	48 89 9c 0f b8 00 00 	mov    %rbx,0xb8(%rdi,%rcx,1)
    3484:	00 
    3485:	48 89 84 0f c0 00 00 	mov    %rax,0xc0(%rdi,%rcx,1)
    348c:	00 
    348d:	48 89 84 0f c8 00 00 	mov    %rax,0xc8(%rdi,%rcx,1)
    3494:	00 
    3495:	48 89 84 0f d0 00 00 	mov    %rax,0xd0(%rdi,%rcx,1)
    349c:	00 
    349d:	5b                   	pop    %rbx
    349e:	5d                   	pop    %rbp
    349f:	c3                   	retq   

00000000000034a0 <lucet_probestack>:
    34a0:	49 89 c3             	mov    %rax,%r11
    34a3:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    34aa:	48 85 64 24 08       	test   %rsp,0x8(%rsp)
    34af:	49 81 eb 00 10 00 00 	sub    $0x1000,%r11
    34b6:	49 81 fb 00 10 00 00 	cmp    $0x1000,%r11
    34bd:	77 e4                	ja     34a3 <lucet_probestack+0x3>
    34bf:	4c 29 dc             	sub    %r11,%rsp
    34c2:	48 85 64 24 08       	test   %rsp,0x8(%rsp)
    34c7:	48 01 c4             	add    %rax,%rsp
    34ca:	c3                   	retq 