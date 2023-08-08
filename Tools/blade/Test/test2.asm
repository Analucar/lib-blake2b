
test:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0x243>
 248:	78 38                	js     282 <_init-0x236>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 03                	add    %al,(%rbx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 02                	add    %al,(%rdx)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 00                	add    %al,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 ee                	add    %ch,%dh
 285:	fc                   	cld    
 286:	37                   	(bad)  
 287:	b4 97                	mov    $0x97,%ah
 289:	d4                   	(bad)  
 28a:	1f                   	(bad)  
 28b:	19 25 7e eb 98 3a    	sbb    %esp,0x3a98eb7e(%rip)        # 3a98ee0f <_end+0x3a76ddaf>
 291:	86 58 39             	xchg   %bl,0x39(%rax)
 294:	ef                   	out    %eax,(%dx)
 295:	5e                   	pop    %rsi
 296:	be                   	.byte 0xbe
 297:	cd                   	.byte 0xcd

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	01 00                	add    %eax,(%rax)
 29a:	00 00                	add    %al,(%rax)
 29c:	01 00                	add    %eax,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000002b8 <.dynsym>:
	...
 2d0:	38 00                	cmp    %al,(%rax)
 2d2:	00 00                	add    %al,(%rax)
 2d4:	20 00                	and    %al,(%rax)
	...
 2e6:	00 00                	add    %al,(%rax)
 2e8:	1a 00                	sbb    (%rax),%al
 2ea:	00 00                	add    %al,(%rax)
 2ec:	12 00                	adc    (%rax),%al
	...
 2fe:	00 00                	add    %al,(%rax)
 300:	54                   	push   %rsp
 301:	00 00                	add    %al,(%rax)
 303:	00 20                	add    %ah,(%rax)
	...
 315:	00 00                	add    %al,(%rax)
 317:	00 63 00             	add    %ah,0x0(%rbx)
 31a:	00 00                	add    %al,(%rax)
 31c:	20 00                	and    %al,(%rax)
	...
 32e:	00 00                	add    %al,(%rax)
 330:	0b 00                	or     (%rax),%eax
 332:	00 00                	add    %al,(%rax)
 334:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000348 <.dynstr>:
 348:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 34c:	63 2e                	movslq (%rsi),%ebp
 34e:	73 6f                	jae    3bf <_init-0xf9>
 350:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
 355:	63 78 61             	movslq 0x61(%rax),%edi
 358:	5f                   	pop    %rdi
 359:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 35f:	7a 65                	jp     3c6 <_init-0xf2>
 361:	00 5f 5f             	add    %bl,0x5f(%rdi)
 364:	6c                   	insb   (%dx),%es:(%rdi)
 365:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 36c:	72 74                	jb     3e2 <_init-0xd6>
 36e:	5f                   	pop    %rdi
 36f:	6d                   	insl   (%dx),%es:(%rdi)
 370:	61                   	(bad)  
 371:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 378:	43 5f                	rex.XB pop %r15
 37a:	32 2e                	xor    (%rsi),%ch
 37c:	32 2e                	xor    (%rsi),%ch
 37e:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 383:	4d 5f                	rex.WRB pop %r15
 385:	64 65 72 65          	fs gs jb 3ee <_init-0xca>
 389:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 390:	4d 
 391:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 393:	6f                   	outsl  %ds:(%rsi),(%dx)
 394:	6e                   	outsb  %ds:(%rsi),(%dx)
 395:	65 54                	gs push %rsp
 397:	61                   	(bad)  
 398:	62                   	(bad)  
 399:	6c                   	insb   (%dx),%es:(%rdi)
 39a:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 39e:	67 6d                	insl   (%dx),%es:(%edi)
 3a0:	6f                   	outsl  %ds:(%rsi),(%dx)
 3a1:	6e                   	outsb  %ds:(%rsi),(%dx)
 3a2:	5f                   	pop    %rdi
 3a3:	73 74                	jae    419 <_init-0x9f>
 3a5:	61                   	(bad)  
 3a6:	72 74                	jb     41c <_init-0x9c>
 3a8:	5f                   	pop    %rdi
 3a9:	5f                   	pop    %rdi
 3aa:	00 5f 49             	add    %bl,0x49(%rdi)
 3ad:	54                   	push   %rsp
 3ae:	4d 5f                	rex.WRB pop %r15
 3b0:	72 65                	jb     417 <_init-0xa1>
 3b2:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 3b9:	4d 
 3ba:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 3bc:	6f                   	outsl  %ds:(%rsi),(%dx)
 3bd:	6e                   	outsb  %ds:(%rsi),(%dx)
 3be:	65 54                	gs push %rsp
 3c0:	61                   	(bad)  
 3c1:	62                   	.byte 0x62
 3c2:	6c                   	insb   (%dx),%es:(%rdi)
 3c3:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000003c6 <.gnu.version>:
 3c6:	00 00                	add    %al,(%rax)
 3c8:	00 00                	add    %al,(%rax)
 3ca:	02 00                	add    (%rax),%al
 3cc:	00 00                	add    %al,(%rax)
 3ce:	00 00                	add    %al,(%rax)
 3d0:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000003d8 <.gnu.version_r>:
 3d8:	01 00                	add    %eax,(%rax)
 3da:	01 00                	add    %eax,(%rax)
 3dc:	01 00                	add    %eax,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	10 00                	adc    %al,(%rax)
 3e2:	00 00                	add    %al,(%rax)
 3e4:	00 00                	add    %al,(%rax)
 3e6:	00 00                	add    %al,(%rax)
 3e8:	75 1a                	jne    404 <_init-0xb4>
 3ea:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 3f0:	2c 00                	sub    $0x0,%al
 3f2:	00 00                	add    %al,(%rax)
 3f4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000003f8 <.rela.dyn>:
 3f8:	f0 0d 20 00 00 00    	lock or $0x20,%eax
 3fe:	00 00                	add    %al,(%rax)
 400:	08 00                	or     %al,(%rax)
 402:	00 00                	add    %al,(%rax)
 404:	00 00                	add    %al,(%rax)
 406:	00 00                	add    %al,(%rax)
 408:	f0 05 00 00 00 00    	lock add $0x0,%eax
 40e:	00 00                	add    %al,(%rax)
 410:	f8                   	clc    
 411:	0d 20 00 00 00       	or     $0x20,%eax
 416:	00 00                	add    %al,(%rax)
 418:	08 00                	or     %al,(%rax)
 41a:	00 00                	add    %al,(%rax)
 41c:	00 00                	add    %al,(%rax)
 41e:	00 00                	add    %al,(%rax)
 420:	b0 05                	mov    $0x5,%al
 422:	00 00                	add    %al,(%rax)
 424:	00 00                	add    %al,(%rax)
 426:	00 00                	add    %al,(%rax)
 428:	08 10                	or     %dl,(%rax)
 42a:	20 00                	and    %al,(%rax)
 42c:	00 00                	add    %al,(%rax)
 42e:	00 00                	add    %al,(%rax)
 430:	08 00                	or     %al,(%rax)
 432:	00 00                	add    %al,(%rax)
 434:	00 00                	add    %al,(%rax)
 436:	00 00                	add    %al,(%rax)
 438:	08 10                	or     %dl,(%rax)
 43a:	20 00                	and    %al,(%rax)
 43c:	00 00                	add    %al,(%rax)
 43e:	00 00                	add    %al,(%rax)
 440:	d8 0f                	fmuls  (%rdi)
 442:	20 00                	and    %al,(%rax)
 444:	00 00                	add    %al,(%rax)
 446:	00 00                	add    %al,(%rax)
 448:	06                   	(bad)  
 449:	00 00                	add    %al,(%rax)
 44b:	00 01                	add    %al,(%rcx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 e0                	add    %ah,%al
 459:	0f 20 00             	mov    %cr0,%rax
 45c:	00 00                	add    %al,(%rax)
 45e:	00 00                	add    %al,(%rax)
 460:	06                   	(bad)  
 461:	00 00                	add    %al,(%rax)
 463:	00 02                	add    %al,(%rdx)
	...
 46d:	00 00                	add    %al,(%rax)
 46f:	00 e8                	add    %ch,%al
 471:	0f 20 00             	mov    %cr0,%rax
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	06                   	(bad)  
 479:	00 00                	add    %al,(%rax)
 47b:	00 03                	add    %al,(%rbx)
	...
 485:	00 00                	add    %al,(%rax)
 487:	00 f0                	add    %dh,%al
 489:	0f 20 00             	mov    %cr0,%rax
 48c:	00 00                	add    %al,(%rax)
 48e:	00 00                	add    %al,(%rax)
 490:	06                   	(bad)  
 491:	00 00                	add    %al,(%rax)
 493:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 49e:	00 00                	add    %al,(%rax)
 4a0:	f8                   	clc    
 4a1:	0f 20 00             	mov    %cr0,%rax
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 00                	add    %al,(%rax)
 4a8:	06                   	(bad)  
 4a9:	00 00                	add    %al,(%rax)
 4ab:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4b1 <_init-0x7>
 4b1:	00 00                	add    %al,(%rax)
 4b3:	00 00                	add    %al,(%rax)
 4b5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

00000000000004b8 <_init>:
 4b8:	48 83 ec 08          	sub    $0x8,%rsp
 4bc:	48 8b 05 25 0b 20 00 	mov    0x200b25(%rip),%rax        # 200fe8 <__gmon_start__>
 4c3:	48 85 c0             	test   %rax,%rax
 4c6:	74 02                	je     4ca <_init+0x12>
 4c8:	ff d0                	callq  *%rax
 4ca:	48 83 c4 08          	add    $0x8,%rsp
 4ce:	c3                   	retq   

Disassembly of section .plt:

00000000000004d0 <.plt>:
 4d0:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
 4d6:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 200fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
 4dc:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

00000000000004e0 <__cxa_finalize@plt>:
 4e0:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 4e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000004f0 <_start>:
 4f0:	31 ed                	xor    %ebp,%ebp
 4f2:	49 89 d1             	mov    %rdx,%r9
 4f5:	5e                   	pop    %rsi
 4f6:	48 89 e2             	mov    %rsp,%rdx
 4f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 4fd:	50                   	push   %rax
 4fe:	54                   	push   %rsp
 4ff:	4c 8d 05 da 01 00 00 	lea    0x1da(%rip),%r8        # 6e0 <__libc_csu_fini>
 506:	48 8d 0d 63 01 00 00 	lea    0x163(%rip),%rcx        # 670 <__libc_csu_init>
 50d:	48 8d 3d 31 01 00 00 	lea    0x131(%rip),%rdi        # 645 <main>
 514:	ff 15 c6 0a 20 00    	callq  *0x200ac6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 51a:	f4                   	hlt    
 51b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000520 <deregister_tm_clones>:
 520:	48 8d 3d f1 0a 20 00 	lea    0x200af1(%rip),%rdi        # 201018 <__TMC_END__>
 527:	55                   	push   %rbp
 528:	48 8d 05 e9 0a 20 00 	lea    0x200ae9(%rip),%rax        # 201018 <__TMC_END__>
 52f:	48 39 f8             	cmp    %rdi,%rax
 532:	48 89 e5             	mov    %rsp,%rbp
 535:	74 19                	je     550 <deregister_tm_clones+0x30>
 537:	48 8b 05 9a 0a 20 00 	mov    0x200a9a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 53e:	48 85 c0             	test   %rax,%rax
 541:	74 0d                	je     550 <deregister_tm_clones+0x30>
 543:	5d                   	pop    %rbp
 544:	ff e0                	jmpq   *%rax
 546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 54d:	00 00 00 
 550:	5d                   	pop    %rbp
 551:	c3                   	retq   
 552:	0f 1f 40 00          	nopl   0x0(%rax)
 556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 55d:	00 00 00 

0000000000000560 <register_tm_clones>:
 560:	48 8d 3d b1 0a 20 00 	lea    0x200ab1(%rip),%rdi        # 201018 <__TMC_END__>
 567:	48 8d 35 aa 0a 20 00 	lea    0x200aaa(%rip),%rsi        # 201018 <__TMC_END__>
 56e:	55                   	push   %rbp
 56f:	48 29 fe             	sub    %rdi,%rsi
 572:	48 89 e5             	mov    %rsp,%rbp
 575:	48 c1 fe 03          	sar    $0x3,%rsi
 579:	48 89 f0             	mov    %rsi,%rax
 57c:	48 c1 e8 3f          	shr    $0x3f,%rax
 580:	48 01 c6             	add    %rax,%rsi
 583:	48 d1 fe             	sar    %rsi
 586:	74 18                	je     5a0 <register_tm_clones+0x40>
 588:	48 8b 05 61 0a 20 00 	mov    0x200a61(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 58f:	48 85 c0             	test   %rax,%rax
 592:	74 0c                	je     5a0 <register_tm_clones+0x40>
 594:	5d                   	pop    %rbp
 595:	ff e0                	jmpq   *%rax
 597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 59e:	00 00 
 5a0:	5d                   	pop    %rbp
 5a1:	c3                   	retq   
 5a2:	0f 1f 40 00          	nopl   0x0(%rax)
 5a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ad:	00 00 00 

00000000000005b0 <__do_global_dtors_aux>:
 5b0:	80 3d 69 0a 20 00 00 	cmpb   $0x0,0x200a69(%rip)        # 201020 <completed.7698>
 5b7:	75 2f                	jne    5e8 <__do_global_dtors_aux+0x38>
 5b9:	48 83 3d 37 0a 20 00 	cmpq   $0x0,0x200a37(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5c0:	00 
 5c1:	55                   	push   %rbp
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	74 0c                	je     5d3 <__do_global_dtors_aux+0x23>
 5c7:	48 8b 3d 3a 0a 20 00 	mov    0x200a3a(%rip),%rdi        # 201008 <__dso_handle>
 5ce:	e8 0d ff ff ff       	callq  4e0 <__cxa_finalize@plt>
 5d3:	e8 48 ff ff ff       	callq  520 <deregister_tm_clones>
 5d8:	c6 05 41 0a 20 00 01 	movb   $0x1,0x200a41(%rip)        # 201020 <completed.7698>
 5df:	5d                   	pop    %rbp
 5e0:	c3                   	retq   
 5e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 5e8:	f3 c3                	repz retq 
 5ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000005f0 <frame_dummy>:
 5f0:	55                   	push   %rbp
 5f1:	48 89 e5             	mov    %rsp,%rbp
 5f4:	5d                   	pop    %rbp
 5f5:	e9 66 ff ff ff       	jmpq   560 <register_tm_clones>

00000000000005fa <victim_fun>:
uint8_t array1[16];
uint8_t array2[256 * 512];
uint8_t temp = 0;


void victim_fun(int idx) {
 5fa:	55                   	push   %rbp
 5fb:	48 89 e5             	mov    %rsp,%rbp
 5fe:	89 7d fc             	mov    %edi,-0x4(%rbp)
    if (idx < array1_size) {                  
 601:	8b 55 fc             	mov    -0x4(%rbp),%edx
 604:	8b 05 06 0a 20 00    	mov    0x200a06(%rip),%eax        # 201010 <array1_size>
 60a:	39 c2                	cmp    %eax,%edx
 60c:	73 34                	jae    642 <victim_fun+0x48>
        temp &= array2[array1[idx] * 512];
 60e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 611:	48 63 d0             	movslq %eax,%rdx
 614:	48 8d 05 25 0a 20 00 	lea    0x200a25(%rip),%rax        # 201040 <array1>
 61b:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
 61f:	0f b6 c0             	movzbl %al,%eax
 622:	c1 e0 09             	shl    $0x9,%eax
 625:	48 63 d0             	movslq %eax,%rdx
 628:	48 8d 05 31 0a 20 00 	lea    0x200a31(%rip),%rax        # 201060 <array2>
 62f:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
 633:	0f b6 05 e7 09 20 00 	movzbl 0x2009e7(%rip),%eax        # 201021 <temp>
 63a:	21 d0                	and    %edx,%eax
 63c:	88 05 df 09 20 00    	mov    %al,0x2009df(%rip)        # 201021 <temp>
    }
}
 642:	90                   	nop
 643:	5d                   	pop    %rbp
 644:	c3                   	retq   

0000000000000645 <main>:

int main(int argn, char* args[]) {
 645:	55                   	push   %rbp
 646:	48 89 e5             	mov    %rsp,%rbp
 649:	48 83 ec 10          	sub    $0x10,%rsp
 64d:	89 7d fc             	mov    %edi,-0x4(%rbp)
 650:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)

    victim_fun(argn);
 654:	8b 45 fc             	mov    -0x4(%rbp),%eax
 657:	89 c7                	mov    %eax,%edi
 659:	e8 9c ff ff ff       	callq  5fa <victim_fun>
    return 0;
 65e:	b8 00 00 00 00       	mov    $0x0,%eax
 663:	c9                   	leaveq 
 664:	c3                   	retq   
 665:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 66c:	00 00 00 
 66f:	90                   	nop

0000000000000670 <__libc_csu_init>:
 670:	41 57                	push   %r15
 672:	41 56                	push   %r14
 674:	49 89 d7             	mov    %rdx,%r15
 677:	41 55                	push   %r13
 679:	41 54                	push   %r12
 67b:	4c 8d 25 6e 07 20 00 	lea    0x20076e(%rip),%r12        # 200df0 <__frame_dummy_init_array_entry>
 682:	55                   	push   %rbp
 683:	48 8d 2d 6e 07 20 00 	lea    0x20076e(%rip),%rbp        # 200df8 <__init_array_end>
 68a:	53                   	push   %rbx
 68b:	41 89 fd             	mov    %edi,%r13d
 68e:	49 89 f6             	mov    %rsi,%r14
 691:	4c 29 e5             	sub    %r12,%rbp
 694:	48 83 ec 08          	sub    $0x8,%rsp
 698:	48 c1 fd 03          	sar    $0x3,%rbp
 69c:	e8 17 fe ff ff       	callq  4b8 <_init>
 6a1:	48 85 ed             	test   %rbp,%rbp
 6a4:	74 20                	je     6c6 <__libc_csu_init+0x56>
 6a6:	31 db                	xor    %ebx,%ebx
 6a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 6af:	00 
 6b0:	4c 89 fa             	mov    %r15,%rdx
 6b3:	4c 89 f6             	mov    %r14,%rsi
 6b6:	44 89 ef             	mov    %r13d,%edi
 6b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 6bd:	48 83 c3 01          	add    $0x1,%rbx
 6c1:	48 39 dd             	cmp    %rbx,%rbp
 6c4:	75 ea                	jne    6b0 <__libc_csu_init+0x40>
 6c6:	48 83 c4 08          	add    $0x8,%rsp
 6ca:	5b                   	pop    %rbx
 6cb:	5d                   	pop    %rbp
 6cc:	41 5c                	pop    %r12
 6ce:	41 5d                	pop    %r13
 6d0:	41 5e                	pop    %r14
 6d2:	41 5f                	pop    %r15
 6d4:	c3                   	retq   
 6d5:	90                   	nop
 6d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6dd:	00 00 00 

00000000000006e0 <__libc_csu_fini>:
 6e0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000006e4 <_fini>:
 6e4:	48 83 ec 08          	sub    $0x8,%rsp
 6e8:	48 83 c4 08          	add    $0x8,%rsp
 6ec:	c3                   	retq   

Disassembly of section .rodata:

00000000000006f0 <_IO_stdin_used>:
 6f0:	01 00                	add    %eax,(%rax)
 6f2:	02 00                	add    (%rax),%al

Disassembly of section .eh_frame_hdr:

00000000000006f4 <__GNU_EH_FRAME_HDR>:
 6f4:	01 1b                	add    %ebx,(%rbx)
 6f6:	03 3b                	add    (%rbx),%edi
 6f8:	40 00 00             	add    %al,(%rax)
 6fb:	00 07                	add    %al,(%rdi)
 6fd:	00 00                	add    %al,(%rax)
 6ff:	00 dc                	add    %bl,%ah
 701:	fd                   	std    
 702:	ff                   	(bad)  
 703:	ff 8c 00 00 00 ec fd 	decl   -0x2140000(%rax,%rax,1)
 70a:	ff                   	(bad)  
 70b:	ff b4 00 00 00 fc fd 	pushq  -0x2040000(%rax,%rax,1)
 712:	ff                   	(bad)  
 713:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
 717:	00 06                	add    %al,(%rsi)
 719:	ff                   	(bad)  
 71a:	ff                   	(bad)  
 71b:	ff cc                	dec    %esp
 71d:	00 00                	add    %al,(%rax)
 71f:	00 51 ff             	add    %dl,-0x1(%rcx)
 722:	ff                   	(bad)  
 723:	ff                   	(bad)  
 724:	ec                   	in     (%dx),%al
 725:	00 00                	add    %al,(%rax)
 727:	00 7c ff ff          	add    %bh,-0x1(%rdi,%rdi,8)
 72b:	ff 0c 01             	decl   (%rcx,%rax,1)
 72e:	00 00                	add    %al,(%rax)
 730:	ec                   	in     (%dx),%al
 731:	ff                   	(bad)  
 732:	ff                   	(bad)  
 733:	ff 54 01 00          	callq  *0x0(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

0000000000000738 <__FRAME_END__-0x124>:
 738:	14 00                	adc    $0x0,%al
 73a:	00 00                	add    %al,(%rax)
 73c:	00 00                	add    %al,(%rax)
 73e:	00 00                	add    %al,(%rax)
 740:	01 7a 52             	add    %edi,0x52(%rdx)
 743:	00 01                	add    %al,(%rcx)
 745:	78 10                	js     757 <__GNU_EH_FRAME_HDR+0x63>
 747:	01 1b                	add    %ebx,(%rbx)
 749:	0c 07                	or     $0x7,%al
 74b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
 751:	00 00                	add    %al,(%rax)
 753:	00 1c 00             	add    %bl,(%rax,%rax,1)
 756:	00 00                	add    %al,(%rax)
 758:	98                   	cwtl   
 759:	fd                   	std    
 75a:	ff                   	(bad)  
 75b:	ff 2b                	ljmp   *(%rbx)
	...
 765:	00 00                	add    %al,(%rax)
 767:	00 14 00             	add    %dl,(%rax,%rax,1)
 76a:	00 00                	add    %al,(%rax)
 76c:	00 00                	add    %al,(%rax)
 76e:	00 00                	add    %al,(%rax)
 770:	01 7a 52             	add    %edi,0x52(%rdx)
 773:	00 01                	add    %al,(%rcx)
 775:	78 10                	js     787 <__GNU_EH_FRAME_HDR+0x93>
 777:	01 1b                	add    %ebx,(%rbx)
 779:	0c 07                	or     $0x7,%al
 77b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
 781:	00 00                	add    %al,(%rax)
 783:	00 1c 00             	add    %bl,(%rax,%rax,1)
 786:	00 00                	add    %al,(%rax)
 788:	48 fd                	rex.W std 
 78a:	ff                   	(bad)  
 78b:	ff 10                	callq  *(%rax)
 78d:	00 00                	add    %al,(%rax)
 78f:	00 00                	add    %al,(%rax)
 791:	0e                   	(bad)  
 792:	10 46 0e             	adc    %al,0xe(%rsi)
 795:	18 4a 0f             	sbb    %cl,0xf(%rdx)
 798:	0b 77 08             	or     0x8(%rdi),%esi
 79b:	80 00 3f             	addb   $0x3f,(%rax)
 79e:	1a 3b                	sbb    (%rbx),%bh
 7a0:	2a 33                	sub    (%rbx),%dh
 7a2:	24 22                	and    $0x22,%al
 7a4:	00 00                	add    %al,(%rax)
 7a6:	00 00                	add    %al,(%rax)
 7a8:	14 00                	adc    $0x0,%al
 7aa:	00 00                	add    %al,(%rax)
 7ac:	44 00 00             	add    %r8b,(%rax)
 7af:	00 30                	add    %dh,(%rax)
 7b1:	fd                   	std    
 7b2:	ff                   	(bad)  
 7b3:	ff 08                	decl   (%rax)
	...
 7bd:	00 00                	add    %al,(%rax)
 7bf:	00 1c 00             	add    %bl,(%rax,%rax,1)
 7c2:	00 00                	add    %al,(%rax)
 7c4:	5c                   	pop    %rsp
 7c5:	00 00                	add    %al,(%rax)
 7c7:	00 32                	add    %dh,(%rdx)
 7c9:	fe                   	(bad)  
 7ca:	ff                   	(bad)  
 7cb:	ff 4b 00             	decl   0x0(%rbx)
 7ce:	00 00                	add    %al,(%rax)
 7d0:	00 41 0e             	add    %al,0xe(%rcx)
 7d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 7d9:	02 46 0c             	add    0xc(%rsi),%al
 7dc:	07                   	(bad)  
 7dd:	08 00                	or     %al,(%rax)
 7df:	00 1c 00             	add    %bl,(%rax,%rax,1)
 7e2:	00 00                	add    %al,(%rax)
 7e4:	7c 00                	jl     7e6 <__GNU_EH_FRAME_HDR+0xf2>
 7e6:	00 00                	add    %al,(%rax)
 7e8:	5d                   	pop    %rbp
 7e9:	fe                   	(bad)  
 7ea:	ff                   	(bad)  
 7eb:	ff 20                	jmpq   *(%rax)
 7ed:	00 00                	add    %al,(%rax)
 7ef:	00 00                	add    %al,(%rax)
 7f1:	41 0e                	rex.B (bad) 
 7f3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 7f9:	5b                   	pop    %rbx
 7fa:	0c 07                	or     $0x7,%al
 7fc:	08 00                	or     %al,(%rax)
 7fe:	00 00                	add    %al,(%rax)
 800:	44 00 00             	add    %r8b,(%rax)
 803:	00 9c 00 00 00 68 fe 	add    %bl,-0x1980000(%rax,%rax,1)
 80a:	ff                   	(bad)  
 80b:	ff 65 00             	jmpq   *0x0(%rbp)
 80e:	00 00                	add    %al,(%rax)
 810:	00 42 0e             	add    %al,0xe(%rdx)
 813:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
 819:	8e 03                	mov    (%rbx),%es
 81b:	45 0e                	rex.RB (bad) 
 81d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
 823:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86301671 <_end+0xffffffff860e0611>
 829:	06                   	(bad)  
 82a:	48 0e                	rex.W (bad) 
 82c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
 832:	72 0e                	jb     842 <__GNU_EH_FRAME_HDR+0x14e>
 834:	38 41 0e             	cmp    %al,0xe(%rcx)
 837:	30 41 0e             	xor    %al,0xe(%rcx)
 83a:	28 42 0e             	sub    %al,0xe(%rdx)
 83d:	20 42 0e             	and    %al,0xe(%rdx)
 840:	18 42 0e             	sbb    %al,0xe(%rdx)
 843:	10 42 0e             	adc    %al,0xe(%rdx)
 846:	08 00                	or     %al,(%rax)
 848:	10 00                	adc    %al,(%rax)
 84a:	00 00                	add    %al,(%rax)
 84c:	e4 00                	in     $0x0,%al
 84e:	00 00                	add    %al,(%rax)
 850:	90                   	nop
 851:	fe                   	(bad)  
 852:	ff                   	(bad)  
 853:	ff 02                	incl   (%rdx)
 855:	00 00                	add    %al,(%rax)
 857:	00 00                	add    %al,(%rax)
 859:	00 00                	add    %al,(%rax)
	...

000000000000085c <__FRAME_END__>:
 85c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000200df0 <__frame_dummy_init_array_entry>:
  200df0:	f0 05 00 00 00 00    	lock add $0x0,%eax
	...

Disassembly of section .fini_array:

0000000000200df8 <__do_global_dtors_aux_fini_array_entry>:
  200df8:	b0 05                	mov    $0x5,%al
  200dfa:	00 00                	add    %al,(%rax)
  200dfc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000200e00 <_DYNAMIC>:
  200e00:	01 00                	add    %eax,(%rax)
  200e02:	00 00                	add    %al,(%rax)
  200e04:	00 00                	add    %al,(%rax)
  200e06:	00 00                	add    %al,(%rax)
  200e08:	01 00                	add    %eax,(%rax)
  200e0a:	00 00                	add    %al,(%rax)
  200e0c:	00 00                	add    %al,(%rax)
  200e0e:	00 00                	add    %al,(%rax)
  200e10:	0c 00                	or     $0x0,%al
  200e12:	00 00                	add    %al,(%rax)
  200e14:	00 00                	add    %al,(%rax)
  200e16:	00 00                	add    %al,(%rax)
  200e18:	b8 04 00 00 00       	mov    $0x4,%eax
  200e1d:	00 00                	add    %al,(%rax)
  200e1f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 200e25 <_DYNAMIC+0x25>
  200e25:	00 00                	add    %al,(%rax)
  200e27:	00 e4                	add    %ah,%ah
  200e29:	06                   	(bad)  
  200e2a:	00 00                	add    %al,(%rax)
  200e2c:	00 00                	add    %al,(%rax)
  200e2e:	00 00                	add    %al,(%rax)
  200e30:	19 00                	sbb    %eax,(%rax)
  200e32:	00 00                	add    %al,(%rax)
  200e34:	00 00                	add    %al,(%rax)
  200e36:	00 00                	add    %al,(%rax)
  200e38:	f0 0d 20 00 00 00    	lock or $0x20,%eax
  200e3e:	00 00                	add    %al,(%rax)
  200e40:	1b 00                	sbb    (%rax),%eax
  200e42:	00 00                	add    %al,(%rax)
  200e44:	00 00                	add    %al,(%rax)
  200e46:	00 00                	add    %al,(%rax)
  200e48:	08 00                	or     %al,(%rax)
  200e4a:	00 00                	add    %al,(%rax)
  200e4c:	00 00                	add    %al,(%rax)
  200e4e:	00 00                	add    %al,(%rax)
  200e50:	1a 00                	sbb    (%rax),%al
  200e52:	00 00                	add    %al,(%rax)
  200e54:	00 00                	add    %al,(%rax)
  200e56:	00 00                	add    %al,(%rax)
  200e58:	f8                   	clc    
  200e59:	0d 20 00 00 00       	or     $0x20,%eax
  200e5e:	00 00                	add    %al,(%rax)
  200e60:	1c 00                	sbb    $0x0,%al
  200e62:	00 00                	add    %al,(%rax)
  200e64:	00 00                	add    %al,(%rax)
  200e66:	00 00                	add    %al,(%rax)
  200e68:	08 00                	or     %al,(%rax)
  200e6a:	00 00                	add    %al,(%rax)
  200e6c:	00 00                	add    %al,(%rax)
  200e6e:	00 00                	add    %al,(%rax)
  200e70:	f5                   	cmc    
  200e71:	fe                   	(bad)  
  200e72:	ff 6f 00             	ljmp   *0x0(%rdi)
  200e75:	00 00                	add    %al,(%rax)
  200e77:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  200e7d:	00 00                	add    %al,(%rax)
  200e7f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 200e85 <_DYNAMIC+0x85>
  200e85:	00 00                	add    %al,(%rax)
  200e87:	00 48 03             	add    %cl,0x3(%rax)
  200e8a:	00 00                	add    %al,(%rax)
  200e8c:	00 00                	add    %al,(%rax)
  200e8e:	00 00                	add    %al,(%rax)
  200e90:	06                   	(bad)  
  200e91:	00 00                	add    %al,(%rax)
  200e93:	00 00                	add    %al,(%rax)
  200e95:	00 00                	add    %al,(%rax)
  200e97:	00 b8 02 00 00 00    	add    %bh,0x2(%rax)
  200e9d:	00 00                	add    %al,(%rax)
  200e9f:	00 0a                	add    %cl,(%rdx)
  200ea1:	00 00                	add    %al,(%rax)
  200ea3:	00 00                	add    %al,(%rax)
  200ea5:	00 00                	add    %al,(%rax)
  200ea7:	00 7d 00             	add    %bh,0x0(%rbp)
  200eaa:	00 00                	add    %al,(%rax)
  200eac:	00 00                	add    %al,(%rax)
  200eae:	00 00                	add    %al,(%rax)
  200eb0:	0b 00                	or     (%rax),%eax
  200eb2:	00 00                	add    %al,(%rax)
  200eb4:	00 00                	add    %al,(%rax)
  200eb6:	00 00                	add    %al,(%rax)
  200eb8:	18 00                	sbb    %al,(%rax)
  200eba:	00 00                	add    %al,(%rax)
  200ebc:	00 00                	add    %al,(%rax)
  200ebe:	00 00                	add    %al,(%rax)
  200ec0:	15 00 00 00 00       	adc    $0x0,%eax
	...
  200ecd:	00 00                	add    %al,(%rax)
  200ecf:	00 03                	add    %al,(%rbx)
  200ed1:	00 00                	add    %al,(%rax)
  200ed3:	00 00                	add    %al,(%rax)
  200ed5:	00 00                	add    %al,(%rax)
  200ed7:	00 c0                	add    %al,%al
  200ed9:	0f 20 00             	mov    %cr0,%rax
  200edc:	00 00                	add    %al,(%rax)
  200ede:	00 00                	add    %al,(%rax)
  200ee0:	07                   	(bad)  
  200ee1:	00 00                	add    %al,(%rax)
  200ee3:	00 00                	add    %al,(%rax)
  200ee5:	00 00                	add    %al,(%rax)
  200ee7:	00 f8                	add    %bh,%al
  200ee9:	03 00                	add    (%rax),%eax
  200eeb:	00 00                	add    %al,(%rax)
  200eed:	00 00                	add    %al,(%rax)
  200eef:	00 08                	add    %cl,(%rax)
  200ef1:	00 00                	add    %al,(%rax)
  200ef3:	00 00                	add    %al,(%rax)
  200ef5:	00 00                	add    %al,(%rax)
  200ef7:	00 c0                	add    %al,%al
  200ef9:	00 00                	add    %al,(%rax)
  200efb:	00 00                	add    %al,(%rax)
  200efd:	00 00                	add    %al,(%rax)
  200eff:	00 09                	add    %cl,(%rcx)
  200f01:	00 00                	add    %al,(%rax)
  200f03:	00 00                	add    %al,(%rax)
  200f05:	00 00                	add    %al,(%rax)
  200f07:	00 18                	add    %bl,(%rax)
  200f09:	00 00                	add    %al,(%rax)
  200f0b:	00 00                	add    %al,(%rax)
  200f0d:	00 00                	add    %al,(%rax)
  200f0f:	00 1e                	add    %bl,(%rsi)
  200f11:	00 00                	add    %al,(%rax)
  200f13:	00 00                	add    %al,(%rax)
  200f15:	00 00                	add    %al,(%rax)
  200f17:	00 08                	add    %cl,(%rax)
  200f19:	00 00                	add    %al,(%rax)
  200f1b:	00 00                	add    %al,(%rax)
  200f1d:	00 00                	add    %al,(%rax)
  200f1f:	00 fb                	add    %bh,%bl
  200f21:	ff                   	(bad)  
  200f22:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f25:	00 00                	add    %al,(%rax)
  200f27:	00 01                	add    %al,(%rcx)
  200f29:	00 00                	add    %al,(%rax)
  200f2b:	08 00                	or     %al,(%rax)
  200f2d:	00 00                	add    %al,(%rax)
  200f2f:	00 fe                	add    %bh,%dh
  200f31:	ff                   	(bad)  
  200f32:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f35:	00 00                	add    %al,(%rax)
  200f37:	00 d8                	add    %bl,%al
  200f39:	03 00                	add    (%rax),%eax
  200f3b:	00 00                	add    %al,(%rax)
  200f3d:	00 00                	add    %al,(%rax)
  200f3f:	00 ff                	add    %bh,%bh
  200f41:	ff                   	(bad)  
  200f42:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f45:	00 00                	add    %al,(%rax)
  200f47:	00 01                	add    %al,(%rcx)
  200f49:	00 00                	add    %al,(%rax)
  200f4b:	00 00                	add    %al,(%rax)
  200f4d:	00 00                	add    %al,(%rax)
  200f4f:	00 f0                	add    %dh,%al
  200f51:	ff                   	(bad)  
  200f52:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f55:	00 00                	add    %al,(%rax)
  200f57:	00 c6                	add    %al,%dh
  200f59:	03 00                	add    (%rax),%eax
  200f5b:	00 00                	add    %al,(%rax)
  200f5d:	00 00                	add    %al,(%rax)
  200f5f:	00 f9                	add    %bh,%cl
  200f61:	ff                   	(bad)  
  200f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f65:	00 00                	add    %al,(%rax)
  200f67:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000200fc0 <_GLOBAL_OFFSET_TABLE_>:
  200fc0:	00 0e                	add    %cl,(%rsi)
  200fc2:	20 00                	and    %al,(%rax)
	...

Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
  201008:	08 10                	or     %dl,(%rax)
  20100a:	20 00                	and    %al,(%rax)
  20100c:	00 00                	add    %al,(%rax)
	...

0000000000201010 <array1_size>:
unsigned int array1_size = 16;
  201010:	10 00                	adc    %al,(%rax)
	...

Disassembly of section .bss:

0000000000201020 <completed.7698>:
	...

0000000000201021 <temp>:
	...

0000000000201040 <array1>:
	...

0000000000201060 <array2>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x440>
   a:	74 75                	je     81 <_init-0x437>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 35 2e 30 2d 33    	cs xor $0x332d302e,%eax
  14:	75 62                	jne    78 <_init-0x440>
  16:	75 6e                	jne    86 <_init-0x432>
  18:	74 75                	je     8f <_init-0x429>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  22:	20 37                	and    %dh,(%rdi)
  24:	2e                   	cs
  25:	35                   	.byte 0x35
  26:	2e 30 00             	xor    %al,%cs:(%rax)

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	fa                   	cli    
  11:	05 00 00 00 00       	add    $0x0,%eax
  16:	00 00                	add    %al,(%rax)
  18:	6b 00 00             	imul   $0x0,(%rax),%eax
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	68 01 00 00 04       	pushq  $0x4000001
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 08                	add    %cl,(%rax)
   b:	01 3b                	add    %edi,(%rbx)
   d:	00 00                	add    %al,(%rax)
   f:	00 0c f1             	add    %cl,(%rcx,%rsi,8)
  12:	00 00                	add    %al,(%rax)
  14:	00 a9 00 00 00 fa    	add    %ch,-0x6000000(%rcx)
  1a:	05 00 00 00 00       	add    $0x0,%eax
  1f:	00 00                	add    %al,(%rax)
  21:	6b 00 00             	imul   $0x0,(%rax),%eax
	...
  2c:	00 02                	add    %al,(%rdx)
  2e:	01 08                	add    %ecx,(%rax)
  30:	82                   	(bad)  
  31:	00 00                	add    %al,(%rax)
  33:	00 02                	add    %al,(%rdx)
  35:	02 07                	add    (%rdi),%al
  37:	de 00                	fiadds (%rax)
  39:	00 00                	add    %al,(%rax)
  3b:	02 04 07             	add    (%rdi,%rax,1),%al
  3e:	24 00                	and    $0x0,%al
  40:	00 00                	add    %al,(%rax)
  42:	02 08                	add    (%rax),%cl
  44:	07                   	(bad)  
  45:	1f                   	(bad)  
  46:	00 00                	add    %al,(%rax)
  48:	00 02                	add    %al,(%rdx)
  4a:	01 06                	add    %eax,(%rsi)
  4c:	84 00                	test   %al,(%rax)
  4e:	00 00                	add    %al,(%rax)
  50:	03 31                	add    (%rcx),%esi
  52:	00 00                	add    %al,(%rax)
  54:	00 02                	add    %al,(%rdx)
  56:	25 2d 00 00 00       	and    $0x2d,%eax
  5b:	02 02                	add    (%rdx),%al
  5d:	05 03 01 00 00       	add    $0x103,%eax
  62:	04 04                	add    $0x4,%al
  64:	05 69 6e 74 00       	add    $0x746e69,%eax
  69:	02 08                	add    (%rax),%cl
  6b:	05 95 00 00 00       	add    $0x95,%eax
  70:	05 08 76 00 00       	add    $0x7608,%eax
  75:	00 02                	add    %al,(%rdx)
  77:	01 06                	add    %eax,(%rsi)
  79:	8b 00                	mov    (%rax),%eax
  7b:	00 00                	add    %al,(%rax)
  7d:	03 33                	add    (%rbx),%esi
  7f:	00 00                	add    %al,(%rax)
  81:	00 03                	add    %al,(%rbx)
  83:	18 50 00             	sbb    %dl,0x0(%rax)
  86:	00 00                	add    %al,(%rax)
  88:	06                   	(bad)  
  89:	0e                   	(bad)  
  8a:	00 00                	add    %al,(%rax)
  8c:	00 01                	add    %al,(%rcx)
  8e:	03 3b                	add    (%rbx),%edi
  90:	00 00                	add    %al,(%rax)
  92:	00 09                	add    %cl,(%rcx)
  94:	03 10                	add    (%rax),%edx
  96:	10 20                	adc    %ah,(%rax)
  98:	00 00                	add    %al,(%rax)
  9a:	00 00                	add    %al,(%rax)
  9c:	00 07                	add    %al,(%rdi)
  9e:	7d 00                	jge    a0 <_init-0x418>
  a0:	00 00                	add    %al,(%rax)
  a2:	ad                   	lods   %ds:(%rsi),%eax
  a3:	00 00                	add    %al,(%rax)
  a5:	00 08                	add    %cl,(%rax)
  a7:	42 00 00             	rex.X add %al,(%rax)
  aa:	00 0f                	add    %cl,(%rdi)
  ac:	00 06                	add    %al,(%rsi)
  ae:	00 00                	add    %al,(%rax)
  b0:	00 00                	add    %al,(%rax)
  b2:	01 04 9d 00 00 00 09 	add    %eax,0x9000000(,%rbx,4)
  b9:	03 40 10             	add    0x10(%rax),%eax
  bc:	20 00                	and    %al,(%rax)
  be:	00 00                	add    %al,(%rax)
  c0:	00 00                	add    %al,(%rax)
  c2:	07                   	(bad)  
  c3:	7d 00                	jge    c5 <_init-0x3f3>
  c5:	00 00                	add    %al,(%rax)
  c7:	d5                   	(bad)  
  c8:	00 00                	add    %al,(%rax)
  ca:	00 09                	add    %cl,(%rcx)
  cc:	42 00 00             	rex.X add %al,(%rax)
  cf:	00 ff                	add    %bh,%bh
  d1:	ff 01                	incl   (%rcx)
  d3:	00 00                	add    %al,(%rax)
  d5:	06                   	(bad)  
  d6:	07                   	(bad)  
  d7:	00 00                	add    %al,(%rax)
  d9:	00 01                	add    %al,(%rcx)
  db:	05 c2 00 00 00       	add    $0xc2,%eax
  e0:	09 03                	or     %eax,(%rbx)
  e2:	60                   	(bad)  
  e3:	10 20                	adc    %ah,(%rax)
  e5:	00 00                	add    %al,(%rax)
  e7:	00 00                	add    %al,(%rax)
  e9:	00 06                	add    %al,(%rsi)
  eb:	1a 00                	sbb    (%rax),%al
  ed:	00 00                	add    %al,(%rax)
  ef:	01 06                	add    %eax,(%rsi)
  f1:	7d 00                	jge    f3 <_init-0x3c5>
  f3:	00 00                	add    %al,(%rax)
  f5:	09 03                	or     %eax,(%rbx)
  f7:	21 10                	and    %edx,(%rax)
  f9:	20 00                	and    %al,(%rax)
  fb:	00 00                	add    %al,(%rax)
  fd:	00 00                	add    %al,(%rax)
  ff:	0a 90 00 00 00 01    	or     0x1000000(%rax),%dl
 105:	0f 62 00             	punpckldq (%rax),%mm0
 108:	00 00                	add    %al,(%rax)
 10a:	45 06                	rex.RB (bad) 
 10c:	00 00                	add    %al,(%rax)
 10e:	00 00                	add    %al,(%rax)
 110:	00 00                	add    %al,(%rax)
 112:	20 00                	and    %al,(%rax)
 114:	00 00                	add    %al,(%rax)
 116:	00 00                	add    %al,(%rax)
 118:	00 00                	add    %al,(%rax)
 11a:	01 9c 3d 01 00 00 0b 	add    %ebx,0xb000001(%rbp,%rdi,1)
 121:	fe 00                	incb   (%rax)
 123:	00 00                	add    %al,(%rax)
 125:	01 0f                	add    %ecx,(%rdi)
 127:	62                   	(bad)  
 128:	00 00                	add    %al,(%rax)
 12a:	00 02                	add    %al,(%rdx)
 12c:	91                   	xchg   %eax,%ecx
 12d:	6c                   	insb   (%dx),%es:(%rdi)
 12e:	0b 0d 01 00 00 01    	or     0x1000001(%rip),%ecx        # 1000135 <_end+0xddf0d5>
 134:	0f 3d                	(bad)  
 136:	01 00                	add    %eax,(%rax)
 138:	00 02                	add    %al,(%rdx)
 13a:	91                   	xchg   %eax,%ecx
 13b:	60                   	(bad)  
 13c:	00 05 08 70 00 00    	add    %al,0x7008(%rip)        # 714a <__FRAME_END__+0x68ee>
 142:	00 0c 9e             	add    %cl,(%rsi,%rbx,4)
 145:	00 00                	add    %al,(%rax)
 147:	00 01                	add    %al,(%rcx)
 149:	09 fa                	or     %edi,%edx
 14b:	05 00 00 00 00       	add    $0x0,%eax
 150:	00 00                	add    %al,(%rax)
 152:	4b 00 00             	rex.WXB add %al,(%r8)
 155:	00 00                	add    %al,(%rax)
 157:	00 00                	add    %al,(%rax)
 159:	00 01                	add    %al,(%rcx)
 15b:	9c                   	pushfq 
 15c:	0d 69 64 78 00       	or     $0x786469,%eax
 161:	01 09                	add    %ecx,(%rcx)
 163:	62                   	(bad)  
 164:	00 00                	add    %al,(%rax)
 166:	00 02                	add    %al,(%rdx)
 168:	91                   	xchg   %eax,%ecx
 169:	6c                   	insb   (%dx),%es:(%rdi)
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2e902b6>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	11 01                	adc    %eax,(%rcx)
   d:	12 07                	adc    (%rdi),%al
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 24 00             	add    (%rax,%rax,1),%ah
  16:	0b 0b                	or     (%rbx),%ecx
  18:	3e 0b 03             	or     %ds:(%rbx),%eax
  1b:	0e                   	(bad)  
  1c:	00 00                	add    %al,(%rax)
  1e:	03 16                	add    (%rsi),%edx
  20:	00 03                	add    %al,(%rbx)
  22:	0e                   	(bad)  
  23:	3a 0b                	cmp    (%rbx),%cl
  25:	3b 0b                	cmp    (%rbx),%ecx
  27:	49 13 00             	adc    (%r8),%rax
  2a:	00 04 24             	add    %al,(%rsp)
  2d:	00 0b                	add    %cl,(%rbx)
  2f:	0b 3e                	or     (%rsi),%edi
  31:	0b 03                	or     (%rbx),%eax
  33:	08 00                	or     %al,(%rax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xae8efea>
  3b:	49 13 00             	adc    (%r8),%rax
  3e:	00 06                	add    %al,(%rsi)
  40:	34 00                	xor    $0x0,%al
  42:	03 0e                	add    (%rsi),%ecx
  44:	3a 0b                	cmp    (%rbx),%cl
  46:	3b 0b                	cmp    (%rbx),%ecx
  48:	49 13 3f             	adc    (%r15),%rdi
  4b:	19 02                	sbb    %eax,(%rdx)
  4d:	18 00                	sbb    %al,(%rax)
  4f:	00 07                	add    %al,(%rdi)
  51:	01 01                	add    %eax,(%rcx)
  53:	49 13 01             	adc    (%r9),%rax
  56:	13 00                	adc    (%rax),%eax
  58:	00 08                	add    %cl,(%rax)
  5a:	21 00                	and    %eax,(%rax)
  5c:	49 13 2f             	adc    (%r15),%rbp
  5f:	0b 00                	or     (%rax),%eax
  61:	00 09                	add    %cl,(%rcx)
  63:	21 00                	and    %eax,(%rax)
  65:	49 13 2f             	adc    (%r15),%rbp
  68:	06                   	(bad)  
  69:	00 00                	add    %al,(%rax)
  6b:	0a 2e                	or     (%rsi),%ch
  6d:	01 3f                	add    %edi,(%rdi)
  6f:	19 03                	sbb    %eax,(%rbx)
  71:	0e                   	(bad)  
  72:	3a 0b                	cmp    (%rbx),%cl
  74:	3b 0b                	cmp    (%rbx),%ecx
  76:	27                   	(bad)  
  77:	19 49 13             	sbb    %ecx,0x13(%rcx)
  7a:	11 01                	adc    %eax,(%rcx)
  7c:	12 07                	adc    (%rdi),%al
  7e:	40 18 96 42 19 01 13 	sbb    %dl,0x13011942(%rsi)
  85:	00 00                	add    %al,(%rax)
  87:	0b 05 00 03 0e 3a    	or     0x3a0e0300(%rip),%eax        # 3a0e038d <_end+0x39ebf32d>
  8d:	0b 3b                	or     (%rbx),%edi
  8f:	0b 49 13             	or     0x13(%rcx),%ecx
  92:	02 18                	add    (%rax),%bl
  94:	00 00                	add    %al,(%rax)
  96:	0c 2e                	or     $0x2e,%al
  98:	01 3f                	add    %edi,(%rdi)
  9a:	19 03                	sbb    %eax,(%rbx)
  9c:	0e                   	(bad)  
  9d:	3a 0b                	cmp    (%rbx),%cl
  9f:	3b 0b                	cmp    (%rbx),%ecx
  a1:	27                   	(bad)  
  a2:	19 11                	sbb    %edx,(%rcx)
  a4:	01 12                	add    %edx,(%rdx)
  a6:	07                   	(bad)  
  a7:	40 18 97 42 19 00 00 	sbb    %dl,0x1942(%rdi)
  ae:	0d 05 00 03 08       	or     $0x8030005,%eax
  b3:	3a 0b                	cmp    (%rbx),%cl
  b5:	3b 0b                	cmp    (%rbx),%ecx
  b7:	49 13 02             	adc    (%r10),%rax
  ba:	18 00                	sbb    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	83 00 00             	addl   $0x0,(%rax)
   3:	00 02                	add    %al,(%rdx)
   5:	00 63 00             	add    %ah,0x0(%rbx)
   8:	00 00                	add    %al,(%rax)
   a:	01 01                	add    %eax,(%rcx)
   c:	fb                   	sti    
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0x427>
  1e:	72 2f                	jb     4f <_init-0x469>
  20:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  27:	2f                   	(bad)  
  28:	78 38                	js     62 <_init-0x456>
  2a:	36 5f                	ss pop %rdi
  2c:	36 34 2d             	ss xor $0x2d,%al
  2f:	6c                   	insb   (%dx),%es:(%rdi)
  30:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  37:	75 2f                	jne    68 <_init-0x450>
  39:	62                   	(bad)  
  3a:	69 74 73 00 00 74 65 	imul   $0x73657400,0x0(%rbx,%rsi,2),%esi
  41:	73 
  42:	74 2d                	je     71 <_init-0x447>
  44:	62                   	(bad)  
  45:	6c                   	insb   (%dx),%es:(%rdi)
  46:	61                   	(bad)  
  47:	64 65 2e 63 00       	fs gs movslq %cs:(%rax),%eax
  4c:	00 00                	add    %al,(%rax)
  4e:	00 74 79 70          	add    %dh,0x70(%rcx,%rdi,2)
  52:	65 73 2e             	gs jae 83 <_init-0x435>
  55:	68 00 01 00 00       	pushq  $0x100
  5a:	73 74                	jae    d0 <_init-0x3e8>
  5c:	64 69 6e 74 2d 75 69 	imul   $0x6e69752d,%fs:0x74(%rsi),%ebp
  63:	6e 
  64:	74 6e                	je     d4 <_init-0x3e4>
  66:	2e 68 00 01 00 00    	cs pushq $0x100
  6c:	00 00                	add    %al,(%rax)
  6e:	09 02                	or     %eax,(%rdx)
  70:	fa                   	cli    
  71:	05 00 00 00 00       	add    $0x0,%eax
  76:	00 00                	add    %al,(%rax)
  78:	1a 75 c9             	sbb    -0x37(%rbp),%dh
  7b:	02 34 14             	add    (%rsp,%rdx,1),%dh
  7e:	3e e6 9f             	ds out %al,$0x9f
  81:	59                   	pop    %rcx
  82:	02 02                	add    (%rdx),%al
  84:	00 01                	add    %al,(%rcx)
  86:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	61                   	(bad)  
   1:	72 72                	jb     75 <_init-0x443>
   3:	61                   	(bad)  
   4:	79 31                	jns    37 <_init-0x481>
   6:	00 61 72             	add    %ah,0x72(%rcx)
   9:	72 61                	jb     6c <_init-0x44c>
   b:	79 32                	jns    3f <_init-0x479>
   d:	00 61 72             	add    %ah,0x72(%rcx)
  10:	72 61                	jb     73 <_init-0x445>
  12:	79 31                	jns    45 <_init-0x473>
  14:	5f                   	pop    %rdi
  15:	73 69                	jae    80 <_init-0x438>
  17:	7a 65                	jp     7e <_init-0x43a>
  19:	00 74 65 6d          	add    %dh,0x6d(%rbp,%riz,2)
  1d:	70 00                	jo     1f <_init-0x499>
  1f:	6c                   	insb   (%dx),%es:(%rdi)
  20:	6f                   	outsl  %ds:(%rsi),(%dx)
  21:	6e                   	outsb  %ds:(%rsi),(%dx)
  22:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  26:	73 69                	jae    91 <_init-0x427>
  28:	67 6e                	outsb  %ds:(%esi),(%dx)
  2a:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  2f:	74 00                	je     31 <_init-0x487>
  31:	5f                   	pop    %rdi
  32:	5f                   	pop    %rdi
  33:	75 69                	jne    9e <_init-0x41a>
  35:	6e                   	outsb  %ds:(%rsi),(%dx)
  36:	74 38                	je     70 <_init-0x448>
  38:	5f                   	pop    %rdi
  39:	74 00                	je     3b <_init-0x47d>
  3b:	47                   	rex.RXB
  3c:	4e 55                	rex.WRX push %rbp
  3e:	20 43 31             	and    %al,0x31(%rbx)
  41:	31 20                	xor    %esp,(%rax)
  43:	37                   	(bad)  
  44:	2e 35 2e 30 20 2d    	cs xor $0x2d20302e,%eax
  4a:	6d                   	insl   (%dx),%es:(%rdi)
  4b:	74 75                	je     c2 <_init-0x3f6>
  4d:	6e                   	outsb  %ds:(%rsi),(%dx)
  4e:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  54:	72 69                	jb     bf <_init-0x3f9>
  56:	63 20                	movslq (%rax),%esp
  58:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  5d:	68 3d 78 38 36       	pushq  $0x3638783d
  62:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  67:	67 20 2d 66 73 74 61 	and    %ch,0x61747366(%eip)        # 617473d4 <_end+0x61526374>
  6e:	63 6b 2d             	movslq 0x2d(%rbx),%ebp
  71:	70 72                	jo     e5 <_init-0x3d3>
  73:	6f                   	outsl  %ds:(%rsi),(%dx)
  74:	74 65                	je     db <_init-0x3dd>
  76:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
  7a:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
  7f:	6e                   	outsb  %ds:(%rsi),(%dx)
  80:	67 00 75 6e          	add    %dh,0x6e(%ebp)
  84:	73 69                	jae    ef <_init-0x3c9>
  86:	67 6e                	outsb  %ds:(%esi),(%dx)
  88:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  8d:	61                   	(bad)  
  8e:	72 00                	jb     90 <_init-0x428>
  90:	6d                   	insl   (%dx),%es:(%rdi)
  91:	61                   	(bad)  
  92:	69 6e 00 6c 6f 6e 67 	imul   $0x676e6f6c,0x0(%rsi),%ebp
  99:	20 69 6e             	and    %ch,0x6e(%rcx)
  9c:	74 00                	je     9e <_init-0x41a>
  9e:	76 69                	jbe    109 <_init-0x3af>
  a0:	63 74 69 6d          	movslq 0x6d(%rcx,%rbp,2),%esi
  a4:	5f                   	pop    %rdi
  a5:	66 75 6e             	data16 jne 116 <_init-0x3a2>
  a8:	00 2f                	add    %ch,(%rdi)
  aa:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  af:	6c                   	insb   (%dx),%es:(%rdi)
  b0:	75 69                	jne    11b <_init-0x39d>
  b2:	73 61                	jae    115 <_init-0x3a3>
  b4:	2f                   	(bad)  
  b5:	75 6d                	jne    124 <_init-0x394>
  b7:	69 6e 68 6f 2f 54 45 	imul   $0x45542f6f,0x68(%rsi),%ebp
  be:	53                   	push   %rbx
  bf:	45 2f                	rex.RB (bad) 
  c1:	6c                   	insb   (%dx),%es:(%rdi)
  c2:	69 62 2d 62 6c 61 6b 	imul   $0x6b616c62,0x2d(%rdx),%esp
  c9:	65 32 62 2f          	xor    %gs:0x2f(%rdx),%ah
  cd:	54                   	push   %rsp
  ce:	6f                   	outsl  %ds:(%rsi),(%dx)
  cf:	6f                   	outsl  %ds:(%rsi),(%dx)
  d0:	6c                   	insb   (%dx),%es:(%rdi)
  d1:	73 2f                	jae    102 <_init-0x3b6>
  d3:	62                   	(bad)  
  d4:	6c                   	insb   (%dx),%es:(%rdi)
  d5:	61                   	(bad)  
  d6:	64 65 2f             	fs gs (bad) 
  d9:	54                   	push   %rsp
  da:	65 73 74             	gs jae 151 <_init-0x367>
  dd:	00 73 68             	add    %dh,0x68(%rbx)
  e0:	6f                   	outsl  %ds:(%rsi),(%dx)
  e1:	72 74                	jb     157 <_init-0x361>
  e3:	20 75 6e             	and    %dh,0x6e(%rbp)
  e6:	73 69                	jae    151 <_init-0x367>
  e8:	67 6e                	outsb  %ds:(%esi),(%dx)
  ea:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  ef:	74 00                	je     f1 <_init-0x3c7>
  f1:	74 65                	je     158 <_init-0x360>
  f3:	73 74                	jae    169 <_init-0x34f>
  f5:	2d 62 6c 61 64       	sub    $0x64616c62,%eax
  fa:	65 2e 63 00          	gs movslq %cs:(%rax),%eax
  fe:	61                   	(bad)  
  ff:	72 67                	jb     168 <_init-0x350>
 101:	6e                   	outsb  %ds:(%rsi),(%dx)
 102:	00 73 68             	add    %dh,0x68(%rbx)
 105:	6f                   	outsl  %ds:(%rsi),(%dx)
 106:	72 74                	jb     17c <_init-0x33c>
 108:	20 69 6e             	and    %ch,0x6e(%rcx)
 10b:	74 00                	je     10d <_init-0x3ab>
 10d:	61                   	(bad)  
 10e:	72 67                	jb     177 <_init-0x341>
 110:	73 00                	jae    112 <_init-0x3a6>
Contents of the .eh_frame section:


00000000 0000000000000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -8
  Return address column: 16
  Augmentation data:     1b
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_offset: r16 (rip) at cfa-8
  DW_CFA_undefined: r16 (rip)

00000018 0000000000000014 0000001c FDE cie=00000000 pc=00000000000004f0..000000000000051b
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000030 0000000000000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -8
  Return address column: 16
  Augmentation data:     1b
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_offset: r16 (rip) at cfa-8
  DW_CFA_nop
  DW_CFA_nop

00000048 0000000000000024 0000001c FDE cie=00000030 pc=00000000000004d0..00000000000004e0
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 6 to 00000000000004d6
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 10 to 00000000000004e0
  DW_CFA_def_cfa_expression (DW_OP_breg7 (rsp): 8; DW_OP_breg16 (rip): 0; DW_OP_lit15; DW_OP_and; DW_OP_lit11; DW_OP_ge; DW_OP_lit3; DW_OP_shl; DW_OP_plus)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000070 0000000000000014 00000044 FDE cie=00000030 pc=00000000000004e0..00000000000004e8
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000088 000000000000001c 0000005c FDE cie=00000030 pc=00000000000005fa..0000000000000645
  DW_CFA_advance_loc: 1 to 00000000000005fb
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 3 to 00000000000005fe
  DW_CFA_def_cfa_register: r6 (rbp)
  DW_CFA_advance_loc1: 70 to 0000000000000644
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_nop
  DW_CFA_nop

000000a8 000000000000001c 0000007c FDE cie=00000030 pc=0000000000000645..0000000000000665
  DW_CFA_advance_loc: 1 to 0000000000000646
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 3 to 0000000000000649
  DW_CFA_def_cfa_register: r6 (rbp)
  DW_CFA_advance_loc: 27 to 0000000000000664
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000000c8 0000000000000044 0000009c FDE cie=00000030 pc=0000000000000670..00000000000006d5
  DW_CFA_advance_loc: 2 to 0000000000000672
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r15 (r15) at cfa-16
  DW_CFA_advance_loc: 2 to 0000000000000674
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r14 (r14) at cfa-24
  DW_CFA_advance_loc: 5 to 0000000000000679
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r13 (r13) at cfa-32
  DW_CFA_advance_loc: 2 to 000000000000067b
  DW_CFA_def_cfa_offset: 40
  DW_CFA_offset: r12 (r12) at cfa-40
  DW_CFA_advance_loc: 8 to 0000000000000683
  DW_CFA_def_cfa_offset: 48
  DW_CFA_offset: r6 (rbp) at cfa-48
  DW_CFA_advance_loc: 8 to 000000000000068b
  DW_CFA_def_cfa_offset: 56
  DW_CFA_offset: r3 (rbx) at cfa-56
  DW_CFA_advance_loc: 13 to 0000000000000698
  DW_CFA_def_cfa_offset: 64
  DW_CFA_advance_loc: 50 to 00000000000006ca
  DW_CFA_def_cfa_offset: 56
  DW_CFA_advance_loc: 1 to 00000000000006cb
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc: 1 to 00000000000006cc
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 2 to 00000000000006ce
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 2 to 00000000000006d0
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 2 to 00000000000006d2
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 00000000000006d4
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop

00000110 0000000000000010 000000e4 FDE cie=00000030 pc=00000000000006e0..00000000000006e2
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000124 ZERO terminator


Contents of the .debug_aranges section:

  Length:                   44
  Version:                  2
  Offset into .debug_info:  0x0
  Pointer Size:             8
  Segment Size:             0

    Address            Length
    00000000000005fa 000000000000006b 
    0000000000000000 0000000000000000 

Contents of the .debug_info section:

  Compilation Unit @ offset 0x0:
   Length:        0x168 (32-bit)
   Version:       4
   Abbrev Offset: 0x0
   Pointer Size:  8
 <0><b>: Abbrev Number: 1 (DW_TAG_compile_unit)
    <c>   DW_AT_producer    : (indirect string, offset: 0x3b): GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -fstack-protector-strong
    <10>   DW_AT_language    : 12	(ANSI C99)
    <11>   DW_AT_name        : (indirect string, offset: 0xf1): test-blade.c
    <15>   DW_AT_comp_dir    : (indirect string, offset: 0xa9): /home/luisa/uminho/TESE/lib-blake2b/Tools/blade/Test
    <19>   DW_AT_low_pc      : 0x5fa
    <21>   DW_AT_high_pc     : 0x6b
    <29>   DW_AT_stmt_list   : 0x0
 <1><2d>: Abbrev Number: 2 (DW_TAG_base_type)
    <2e>   DW_AT_byte_size   : 1
    <2f>   DW_AT_encoding    : 8	(unsigned char)
    <30>   DW_AT_name        : (indirect string, offset: 0x82): unsigned char
 <1><34>: Abbrev Number: 2 (DW_TAG_base_type)
    <35>   DW_AT_byte_size   : 2
    <36>   DW_AT_encoding    : 7	(unsigned)
    <37>   DW_AT_name        : (indirect string, offset: 0xde): short unsigned int
 <1><3b>: Abbrev Number: 2 (DW_TAG_base_type)
    <3c>   DW_AT_byte_size   : 4
    <3d>   DW_AT_encoding    : 7	(unsigned)
    <3e>   DW_AT_name        : (indirect string, offset: 0x24): unsigned int
 <1><42>: Abbrev Number: 2 (DW_TAG_base_type)
    <43>   DW_AT_byte_size   : 8
    <44>   DW_AT_encoding    : 7	(unsigned)
    <45>   DW_AT_name        : (indirect string, offset: 0x1f): long unsigned int
 <1><49>: Abbrev Number: 2 (DW_TAG_base_type)
    <4a>   DW_AT_byte_size   : 1
    <4b>   DW_AT_encoding    : 6	(signed char)
    <4c>   DW_AT_name        : (indirect string, offset: 0x84): signed char
 <1><50>: Abbrev Number: 3 (DW_TAG_typedef)
    <51>   DW_AT_name        : (indirect string, offset: 0x31): __uint8_t
    <55>   DW_AT_decl_file   : 2
    <56>   DW_AT_decl_line   : 37
    <57>   DW_AT_type        : <0x2d>
 <1><5b>: Abbrev Number: 2 (DW_TAG_base_type)
    <5c>   DW_AT_byte_size   : 2
    <5d>   DW_AT_encoding    : 5	(signed)
    <5e>   DW_AT_name        : (indirect string, offset: 0x103): short int
 <1><62>: Abbrev Number: 4 (DW_TAG_base_type)
    <63>   DW_AT_byte_size   : 4
    <64>   DW_AT_encoding    : 5	(signed)
    <65>   DW_AT_name        : int
 <1><69>: Abbrev Number: 2 (DW_TAG_base_type)
    <6a>   DW_AT_byte_size   : 8
    <6b>   DW_AT_encoding    : 5	(signed)
    <6c>   DW_AT_name        : (indirect string, offset: 0x95): long int
 <1><70>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <71>   DW_AT_byte_size   : 8
    <72>   DW_AT_type        : <0x76>
 <1><76>: Abbrev Number: 2 (DW_TAG_base_type)
    <77>   DW_AT_byte_size   : 1
    <78>   DW_AT_encoding    : 6	(signed char)
    <79>   DW_AT_name        : (indirect string, offset: 0x8b): char
 <1><7d>: Abbrev Number: 3 (DW_TAG_typedef)
    <7e>   DW_AT_name        : (indirect string, offset: 0x33): uint8_t
    <82>   DW_AT_decl_file   : 3
    <83>   DW_AT_decl_line   : 24
    <84>   DW_AT_type        : <0x50>
 <1><88>: Abbrev Number: 6 (DW_TAG_variable)
    <89>   DW_AT_name        : (indirect string, offset: 0xe): array1_size
    <8d>   DW_AT_decl_file   : 1
    <8e>   DW_AT_decl_line   : 3
    <8f>   DW_AT_type        : <0x3b>
    <93>   DW_AT_external    : 1
    <93>   DW_AT_location    : 9 byte block: 3 10 10 20 0 0 0 0 0 	(DW_OP_addr: 201010)
 <1><9d>: Abbrev Number: 7 (DW_TAG_array_type)
    <9e>   DW_AT_type        : <0x7d>
    <a2>   DW_AT_sibling     : <0xad>
 <2><a6>: Abbrev Number: 8 (DW_TAG_subrange_type)
    <a7>   DW_AT_type        : <0x42>
    <ab>   DW_AT_upper_bound : 15
 <2><ac>: Abbrev Number: 0
 <1><ad>: Abbrev Number: 6 (DW_TAG_variable)
    <ae>   DW_AT_name        : (indirect string, offset: 0x0): array1
    <b2>   DW_AT_decl_file   : 1
    <b3>   DW_AT_decl_line   : 4
    <b4>   DW_AT_type        : <0x9d>
    <b8>   DW_AT_external    : 1
    <b8>   DW_AT_location    : 9 byte block: 3 40 10 20 0 0 0 0 0 	(DW_OP_addr: 201040)
 <1><c2>: Abbrev Number: 7 (DW_TAG_array_type)
    <c3>   DW_AT_type        : <0x7d>
    <c7>   DW_AT_sibling     : <0xd5>
 <2><cb>: Abbrev Number: 9 (DW_TAG_subrange_type)
    <cc>   DW_AT_type        : <0x42>
    <d0>   DW_AT_upper_bound : 0x1ffff
 <2><d4>: Abbrev Number: 0
 <1><d5>: Abbrev Number: 6 (DW_TAG_variable)
    <d6>   DW_AT_name        : (indirect string, offset: 0x7): array2
    <da>   DW_AT_decl_file   : 1
    <db>   DW_AT_decl_line   : 5
    <dc>   DW_AT_type        : <0xc2>
    <e0>   DW_AT_external    : 1
    <e0>   DW_AT_location    : 9 byte block: 3 60 10 20 0 0 0 0 0 	(DW_OP_addr: 201060)
 <1><ea>: Abbrev Number: 6 (DW_TAG_variable)
    <eb>   DW_AT_name        : (indirect string, offset: 0x1a): temp
    <ef>   DW_AT_decl_file   : 1
    <f0>   DW_AT_decl_line   : 6
    <f1>   DW_AT_type        : <0x7d>
    <f5>   DW_AT_external    : 1
    <f5>   DW_AT_location    : 9 byte block: 3 21 10 20 0 0 0 0 0 	(DW_OP_addr: 201021)
 <1><ff>: Abbrev Number: 10 (DW_TAG_subprogram)
    <100>   DW_AT_external    : 1
    <100>   DW_AT_name        : (indirect string, offset: 0x90): main
    <104>   DW_AT_decl_file   : 1
    <105>   DW_AT_decl_line   : 15
    <106>   DW_AT_prototyped  : 1
    <106>   DW_AT_type        : <0x62>
    <10a>   DW_AT_low_pc      : 0x645
    <112>   DW_AT_high_pc     : 0x20
    <11a>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <11c>   DW_AT_GNU_all_tail_call_sites: 1
    <11c>   DW_AT_sibling     : <0x13d>
 <2><120>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <121>   DW_AT_name        : (indirect string, offset: 0xfe): argn
    <125>   DW_AT_decl_file   : 1
    <126>   DW_AT_decl_line   : 15
    <127>   DW_AT_type        : <0x62>
    <12b>   DW_AT_location    : 2 byte block: 91 6c 	(DW_OP_fbreg: -20)
 <2><12e>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <12f>   DW_AT_name        : (indirect string, offset: 0x10d): args
    <133>   DW_AT_decl_file   : 1
    <134>   DW_AT_decl_line   : 15
    <135>   DW_AT_type        : <0x13d>
    <139>   DW_AT_location    : 2 byte block: 91 60 	(DW_OP_fbreg: -32)
 <2><13c>: Abbrev Number: 0
 <1><13d>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <13e>   DW_AT_byte_size   : 8
    <13f>   DW_AT_type        : <0x70>
 <1><143>: Abbrev Number: 12 (DW_TAG_subprogram)
    <144>   DW_AT_external    : 1
    <144>   DW_AT_name        : (indirect string, offset: 0x9e): victim_fun
    <148>   DW_AT_decl_file   : 1
    <149>   DW_AT_decl_line   : 9
    <14a>   DW_AT_prototyped  : 1
    <14a>   DW_AT_low_pc      : 0x5fa
    <152>   DW_AT_high_pc     : 0x4b
    <15a>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <15c>   DW_AT_GNU_all_call_sites: 1
 <2><15c>: Abbrev Number: 13 (DW_TAG_formal_parameter)
    <15d>   DW_AT_name        : idx
    <161>   DW_AT_decl_file   : 1
    <162>   DW_AT_decl_line   : 9
    <163>   DW_AT_type        : <0x62>
    <167>   DW_AT_location    : 2 byte block: 91 6c 	(DW_OP_fbreg: -20)
 <2><16a>: Abbrev Number: 0
 <1><16b>: Abbrev Number: 0

Contents of the .debug_abbrev section:

  Number TAG (0x0)
   1      DW_TAG_compile_unit    [has children]
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT_comp_dir     DW_FORM_strp
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data8
    DW_AT_stmt_list    DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   2      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT value: 0     DW_FORM value: 0
   3      DW_TAG_typedef    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   4      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_string
    DW_AT value: 0     DW_FORM value: 0
   5      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   6      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_external     DW_FORM_flag_present
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   7      DW_TAG_array_type    [has children]
    DW_AT_type         DW_FORM_ref4
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   8      DW_TAG_subrange_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT_upper_bound  DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   9      DW_TAG_subrange_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT_upper_bound  DW_FORM_data4
    DW_AT value: 0     DW_FORM value: 0
   10      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data8
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_GNU_all_tail_call_sites DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   11      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   12      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data8
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_GNU_all_call_sites DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   13      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_string
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0

Raw dump of debug contents of section .debug_line:

  Offset:                      0x0
  Length:                      131
  DWARF Version:               2
  Prologue Length:             99
  Minimum Instruction Length:  1
  Initial value of 'is_stmt':  1
  Line Base:                   -5
  Line Range:                  14
  Opcode Base:                 13

 Opcodes:
  Opcode 1 has 0 args
  Opcode 2 has 1 arg
  Opcode 3 has 1 arg
  Opcode 4 has 1 arg
  Opcode 5 has 1 arg
  Opcode 6 has 0 args
  Opcode 7 has 0 args
  Opcode 8 has 0 args
  Opcode 9 has 1 arg
  Opcode 10 has 0 args
  Opcode 11 has 0 args
  Opcode 12 has 1 arg

 The Directory Table (offset 0x1b):
  1	/usr/include/x86_64-linux-gnu/bits

 The File Name Table (offset 0x3f):
  Entry	Dir	Time	Size	Name
  1	0	0	0	test-blade.c
  2	1	0	0	types.h
  3	1	0	0	stdint-uintn.h

 Line Number Statements:
  [0x0000006d]  Extended opcode 2: set Address to 0x5fa
  [0x00000078]  Special opcode 13: advance Address by 0 to 0x5fa and Line by 8 to 9
  [0x00000079]  Special opcode 104: advance Address by 7 to 0x601 and Line by 1 to 10
  [0x0000007a]  Special opcode 188: advance Address by 13 to 0x60e and Line by 1 to 11
  [0x0000007b]  Advance PC by 52 to 0x642
  [0x0000007d]  Special opcode 7: advance Address by 0 to 0x642 and Line by 2 to 13
  [0x0000007e]  Special opcode 49: advance Address by 3 to 0x645 and Line by 2 to 15
  [0x0000007f]  Special opcode 217: advance Address by 15 to 0x654 and Line by 2 to 17
  [0x00000080]  Special opcode 146: advance Address by 10 to 0x65e and Line by 1 to 18
  [0x00000081]  Special opcode 76: advance Address by 5 to 0x663 and Line by 1 to 19
  [0x00000082]  Advance PC by 2 to 0x665
  [0x00000084]  Extended opcode 1: End of Sequence


Contents of the .debug_str section:

  0x00000000 61727261 79310061 72726179 32006172 array1.array2.ar
  0x00000010 72617931 5f73697a 65007465 6d70006c ray1_size.temp.l
  0x00000020 6f6e6720 756e7369 676e6564 20696e74 ong unsigned int
  0x00000030 005f5f75 696e7438 5f740047 4e552043 .__uint8_t.GNU C
  0x00000040 31312037 2e352e30 202d6d74 756e653d 11 7.5.0 -mtune=
  0x00000050 67656e65 72696320 2d6d6172 63683d78 generic -march=x
  0x00000060 38362d36 34202d67 202d6673 7461636b 86-64 -g -fstack
  0x00000070 2d70726f 74656374 6f722d73 74726f6e -protector-stron
  0x00000080 6700756e 7369676e 65642063 68617200 g.unsigned char.
  0x00000090 6d61696e 006c6f6e 6720696e 74007669 main.long int.vi
  0x000000a0 6374696d 5f66756e 002f686f 6d652f6c ctim_fun./home/l
  0x000000b0 75697361 2f756d69 6e686f2f 54455345 uisa/uminho/TESE
  0x000000c0 2f6c6962 2d626c61 6b653262 2f546f6f /lib-blake2b/Too
  0x000000d0 6c732f62 6c616465 2f546573 74007368 ls/blade/Test.sh
  0x000000e0 6f727420 756e7369 676e6564 20696e74 ort unsigned int
  0x000000f0 00746573 742d626c 6164652e 63006172 .test-blade.c.ar
  0x00000100 676e0073 686f7274 20696e74 00617267 gn.short int.arg
  0x00000110 7300                                s.

