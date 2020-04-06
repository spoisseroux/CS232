
msb:     file format elf32-i386


Disassembly of section .init:

000003bc <_init>:
_init():
 3bc:	53                   	push   %ebx
 3bd:	83 ec 08             	sub    $0x8,%esp
 3c0:	e8 bb 00 00 00       	call   480 <__x86.get_pc_thunk.bx>
 3c5:	81 c3 0b 1c 00 00    	add    $0x1c0b,%ebx
 3cb:	8b 83 24 00 00 00    	mov    0x24(%ebx),%eax
 3d1:	85 c0                	test   %eax,%eax
 3d3:	74 05                	je     3da <_init+0x1e>
 3d5:	e8 5e 00 00 00       	call   438 <__gmon_start__@plt>
 3da:	83 c4 08             	add    $0x8,%esp
 3dd:	5b                   	pop    %ebx
 3de:	c3                   	ret    

Disassembly of section .plt:

000003e0 <.plt>:
 3e0:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 3e6:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 3ec:	00 00                	add    %al,(%eax)
	...

000003f0 <printf@plt>:
 3f0:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 3f6:	68 00 00 00 00       	push   $0x0
 3fb:	e9 e0 ff ff ff       	jmp    3e0 <.plt>

00000400 <__libc_start_main@plt>:
 400:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 406:	68 08 00 00 00       	push   $0x8
 40b:	e9 d0 ff ff ff       	jmp    3e0 <.plt>

00000410 <putchar@plt>:
 410:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 416:	68 10 00 00 00       	push   $0x10
 41b:	e9 c0 ff ff ff       	jmp    3e0 <.plt>

00000420 <atoi@plt>:
 420:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 426:	68 18 00 00 00       	push   $0x18
 42b:	e9 b0 ff ff ff       	jmp    3e0 <.plt>

Disassembly of section .plt.got:

00000430 <__cxa_finalize@plt>:
 430:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
 436:	66 90                	xchg   %ax,%ax

00000438 <__gmon_start__@plt>:
 438:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
 43e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000440 <_start>:
_start():
 440:	31 ed                	xor    %ebp,%ebp
 442:	5e                   	pop    %esi
 443:	89 e1                	mov    %esp,%ecx
 445:	83 e4 f0             	and    $0xfffffff0,%esp
 448:	50                   	push   %eax
 449:	54                   	push   %esp
 44a:	52                   	push   %edx
 44b:	e8 22 00 00 00       	call   472 <_start+0x32>
 450:	81 c3 80 1b 00 00    	add    $0x1b80,%ebx
 456:	8d 83 00 ec ff ff    	lea    -0x1400(%ebx),%eax
 45c:	50                   	push   %eax
 45d:	8d 83 a0 eb ff ff    	lea    -0x1460(%ebx),%eax
 463:	50                   	push   %eax
 464:	51                   	push   %ecx
 465:	56                   	push   %esi
 466:	ff b3 28 00 00 00    	pushl  0x28(%ebx)
 46c:	e8 8f ff ff ff       	call   400 <__libc_start_main@plt>
 471:	f4                   	hlt    
 472:	8b 1c 24             	mov    (%esp),%ebx
 475:	c3                   	ret    
 476:	66 90                	xchg   %ax,%ax
 478:	66 90                	xchg   %ax,%ax
 47a:	66 90                	xchg   %ax,%ax
 47c:	66 90                	xchg   %ax,%ax
 47e:	66 90                	xchg   %ax,%ax

00000480 <__x86.get_pc_thunk.bx>:
__x86.get_pc_thunk.bx():
 480:	8b 1c 24             	mov    (%esp),%ebx
 483:	c3                   	ret    
 484:	66 90                	xchg   %ax,%ax
 486:	66 90                	xchg   %ax,%ax
 488:	66 90                	xchg   %ax,%ax
 48a:	66 90                	xchg   %ax,%ax
 48c:	66 90                	xchg   %ax,%ax
 48e:	66 90                	xchg   %ax,%ax

00000490 <deregister_tm_clones>:
deregister_tm_clones():
 490:	e8 e4 00 00 00       	call   579 <__x86.get_pc_thunk.dx>
 495:	81 c2 3b 1b 00 00    	add    $0x1b3b,%edx
 49b:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
 4a1:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
 4a7:	39 c8                	cmp    %ecx,%eax
 4a9:	74 1d                	je     4c8 <deregister_tm_clones+0x38>
 4ab:	8b 82 1c 00 00 00    	mov    0x1c(%edx),%eax
 4b1:	85 c0                	test   %eax,%eax
 4b3:	74 13                	je     4c8 <deregister_tm_clones+0x38>
 4b5:	55                   	push   %ebp
 4b6:	89 e5                	mov    %esp,%ebp
 4b8:	83 ec 14             	sub    $0x14,%esp
 4bb:	51                   	push   %ecx
 4bc:	ff d0                	call   *%eax
 4be:	83 c4 10             	add    $0x10,%esp
 4c1:	c9                   	leave  
 4c2:	c3                   	ret    
 4c3:	90                   	nop
 4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4c8:	f3 c3                	repz ret 
 4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004d0 <register_tm_clones>:
register_tm_clones():
 4d0:	e8 a4 00 00 00       	call   579 <__x86.get_pc_thunk.dx>
 4d5:	81 c2 fb 1a 00 00    	add    $0x1afb,%edx
 4db:	55                   	push   %ebp
 4dc:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
 4e2:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
 4e8:	29 c8                	sub    %ecx,%eax
 4ea:	89 e5                	mov    %esp,%ebp
 4ec:	53                   	push   %ebx
 4ed:	c1 f8 02             	sar    $0x2,%eax
 4f0:	89 c3                	mov    %eax,%ebx
 4f2:	83 ec 04             	sub    $0x4,%esp
 4f5:	c1 eb 1f             	shr    $0x1f,%ebx
 4f8:	01 d8                	add    %ebx,%eax
 4fa:	d1 f8                	sar    %eax
 4fc:	74 14                	je     512 <register_tm_clones+0x42>
 4fe:	8b 92 2c 00 00 00    	mov    0x2c(%edx),%edx
 504:	85 d2                	test   %edx,%edx
 506:	74 0a                	je     512 <register_tm_clones+0x42>
 508:	83 ec 08             	sub    $0x8,%esp
 50b:	50                   	push   %eax
 50c:	51                   	push   %ecx
 50d:	ff d2                	call   *%edx
 50f:	83 c4 10             	add    $0x10,%esp
 512:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 515:	c9                   	leave  
 516:	c3                   	ret    
 517:	89 f6                	mov    %esi,%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <__do_global_dtors_aux>:
__do_global_dtors_aux():
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	53                   	push   %ebx
 524:	e8 57 ff ff ff       	call   480 <__x86.get_pc_thunk.bx>
 529:	81 c3 a7 1a 00 00    	add    $0x1aa7,%ebx
 52f:	83 ec 04             	sub    $0x4,%esp
 532:	80 bb 38 00 00 00 00 	cmpb   $0x0,0x38(%ebx)
 539:	75 27                	jne    562 <__do_global_dtors_aux+0x42>
 53b:	8b 83 20 00 00 00    	mov    0x20(%ebx),%eax
 541:	85 c0                	test   %eax,%eax
 543:	74 11                	je     556 <__do_global_dtors_aux+0x36>
 545:	83 ec 0c             	sub    $0xc,%esp
 548:	ff b3 34 00 00 00    	pushl  0x34(%ebx)
 54e:	e8 dd fe ff ff       	call   430 <__cxa_finalize@plt>
 553:	83 c4 10             	add    $0x10,%esp
 556:	e8 35 ff ff ff       	call   490 <deregister_tm_clones>
 55b:	c6 83 38 00 00 00 01 	movb   $0x1,0x38(%ebx)
 562:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 565:	c9                   	leave  
 566:	c3                   	ret    
 567:	89 f6                	mov    %esi,%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000570 <frame_dummy>:
frame_dummy():
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	5d                   	pop    %ebp
 574:	e9 57 ff ff ff       	jmp    4d0 <register_tm_clones>

00000579 <__x86.get_pc_thunk.dx>:
__x86.get_pc_thunk.dx():
 579:	8b 14 24             	mov    (%esp),%edx
 57c:	c3                   	ret    

0000057d <main>:
main():
/home/jdoe/CS232/lab7/task1/msb.c:9
int msb(int x);
void print_binary(int n);

//Please do not modify main().
//All your changes should be made within msb()
int main(int argc, char **argv) {
 57d:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 581:	83 e4 f0             	and    $0xfffffff0,%esp
 584:	ff 71 fc             	pushl  -0x4(%ecx)
 587:	55                   	push   %ebp
 588:	89 e5                	mov    %esp,%ebp
 58a:	53                   	push   %ebx
 58b:	51                   	push   %ecx
 58c:	83 ec 10             	sub    $0x10,%esp
 58f:	e8 ec fe ff ff       	call   480 <__x86.get_pc_thunk.bx>
 594:	81 c3 3c 1a 00 00    	add    $0x1a3c,%ebx
 59a:	89 c8                	mov    %ecx,%eax
/home/jdoe/CS232/lab7/task1/msb.c:10
	if (argc<2) {
 59c:	83 38 01             	cmpl   $0x1,(%eax)
 59f:	7f 1f                	jg     5c0 <main+0x43>
/home/jdoe/CS232/lab7/task1/msb.c:11
		printf("Invoke as %s <n> \n\twhere <n> is an integer\n",argv[0]);
 5a1:	8b 40 04             	mov    0x4(%eax),%eax
 5a4:	8b 00                	mov    (%eax),%eax
 5a6:	83 ec 08             	sub    $0x8,%esp
 5a9:	50                   	push   %eax
 5aa:	8d 83 20 ec ff ff    	lea    -0x13e0(%ebx),%eax
 5b0:	50                   	push   %eax
 5b1:	e8 3a fe ff ff       	call   3f0 <printf@plt>
 5b6:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:12
		return 1;
 5b9:	b8 01 00 00 00       	mov    $0x1,%eax
 5be:	eb 6d                	jmp    62d <main+0xb0>
/home/jdoe/CS232/lab7/task1/msb.c:14
	}
	int x=atoi(argv[1]);
 5c0:	8b 40 04             	mov    0x4(%eax),%eax
 5c3:	83 c0 04             	add    $0x4,%eax
 5c6:	8b 00                	mov    (%eax),%eax
 5c8:	83 ec 0c             	sub    $0xc,%esp
 5cb:	50                   	push   %eax
 5cc:	e8 4f fe ff ff       	call   420 <atoi@plt>
 5d1:	83 c4 10             	add    $0x10,%esp
 5d4:	89 45 f4             	mov    %eax,-0xc(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:15
	printf("X= ");
 5d7:	83 ec 0c             	sub    $0xc,%esp
 5da:	8d 83 4c ec ff ff    	lea    -0x13b4(%ebx),%eax
 5e0:	50                   	push   %eax
 5e1:	e8 0a fe ff ff       	call   3f0 <printf@plt>
 5e6:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:16
	print_binary(x);
 5e9:	83 ec 0c             	sub    $0xc,%esp
 5ec:	ff 75 f4             	pushl  -0xc(%ebp)
 5ef:	e8 0c 05 00 00       	call   b00 <print_binary>
 5f4:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:17
	printf("\n");
 5f7:	83 ec 0c             	sub    $0xc,%esp
 5fa:	6a 0a                	push   $0xa
 5fc:	e8 0f fe ff ff       	call   410 <putchar@plt>
 601:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:18
	printf("The most significant bit of %d is at position %d\n",x,msb(x));
 604:	83 ec 0c             	sub    $0xc,%esp
 607:	ff 75 f4             	pushl  -0xc(%ebp)
 60a:	e8 28 00 00 00       	call   637 <msb>
 60f:	83 c4 10             	add    $0x10,%esp
 612:	83 ec 04             	sub    $0x4,%esp
 615:	50                   	push   %eax
 616:	ff 75 f4             	pushl  -0xc(%ebp)
 619:	8d 83 50 ec ff ff    	lea    -0x13b0(%ebx),%eax
 61f:	50                   	push   %eax
 620:	e8 cb fd ff ff       	call   3f0 <printf@plt>
 625:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:19
	return 0;
 628:	b8 00 00 00 00       	mov    $0x0,%eax
/home/jdoe/CS232/lab7/task1/msb.c:20
}
 62d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 630:	59                   	pop    %ecx
 631:	5b                   	pop    %ebx
 632:	5d                   	pop    %ebp
 633:	8d 61 fc             	lea    -0x4(%ecx),%esp
 636:	c3                   	ret    

00000637 <msb>:
msb():
/home/jdoe/CS232/lab7/task1/msb.c:22

int msb(int x) {
 637:	55                   	push   %ebp
 638:	89 e5                	mov    %esp,%ebp
 63a:	53                   	push   %ebx
 63b:	83 ec 34             	sub    $0x34,%esp
 63e:	e8 3d fe ff ff       	call   480 <__x86.get_pc_thunk.bx>
 643:	81 c3 8d 19 00 00    	add    $0x198d,%ebx
/home/jdoe/CS232/lab7/task1/msb.c:23
	if (x==0) return -1;
 649:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 64d:	75 0a                	jne    659 <msb+0x22>
/home/jdoe/CS232/lab7/task1/msb.c:23 (discriminator 1)
 64f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 654:	e9 a2 04 00 00       	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:34
	//                        ^
	//                        |
	//                        ep
	// in which * is a wild card which could be 0 or 1
	int w, ep;
	w=32; // Number of bits that might contain most significant 1
 659:	c7 45 f4 20 00 00 00 	movl   $0x20,-0xc(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:35
	ep=0; // Rightmost bit that might contain most significant 1
 660:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:38
	//while(w>1) { //Narrow down to a single bit
		//TODO: Look at half the range of bits
        int hw = w/2;
 667:	8b 45 f4             	mov    -0xc(%ebp),%eax
 66a:	89 c2                	mov    %eax,%edx
 66c:	c1 ea 1f             	shr    $0x1f,%edx
 66f:	01 d0                	add    %edx,%eax
 671:	d1 f8                	sar    %eax
 673:	89 45 cc             	mov    %eax,-0x34(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:40
		//TODO: create a mask.
        int mask = 4294901760;
 676:	c7 45 d0 00 00 ff ff 	movl   $0xffff0000,-0x30(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:41
				ep = 16;
 67d:	c7 45 c8 10 00 00 00 	movl   $0x10,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:44
        //11111111111111110000000000000000;
		// This mask is all one-bits in the left half of the range
		printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 684:	83 ec 0c             	sub    $0xc,%esp
 687:	8d 83 82 ec ff ff    	lea    -0x137e(%ebx),%eax
 68d:	50                   	push   %eax
 68e:	e8 5d fd ff ff       	call   3f0 <printf@plt>
 693:	83 c4 10             	add    $0x10,%esp
 696:	83 ec 0c             	sub    $0xc,%esp
 699:	ff 75 d0             	pushl  -0x30(%ebp)
 69c:	e8 5f 04 00 00       	call   b00 <print_binary>
 6a1:	83 c4 10             	add    $0x10,%esp
 6a4:	83 ec 04             	sub    $0x4,%esp
 6a7:	ff 75 c8             	pushl  -0x38(%ebp)
 6aa:	ff 75 cc             	pushl  -0x34(%ebp)
 6ad:	8d 83 86 ec ff ff    	lea    -0x137a(%ebx),%eax
 6b3:	50                   	push   %eax
 6b4:	e8 37 fd ff ff       	call   3f0 <printf@plt>
 6b9:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:48
		//TODO: use mask to figure out if the left half of the range has at least one bit

        //bits in left
        if ((mask&x) != 0) {
 6bc:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6bf:	23 45 08             	and    0x8(%ebp),%eax
 6c2:	85 c0                	test   %eax,%eax
 6c4:	0f 84 13 02 00 00    	je     8dd <msb+0x2a6>
/home/jdoe/CS232/lab7/task1/msb.c:50
            //check left 2
            mask = 4278190080;
 6ca:	c7 45 d0 00 00 00 ff 	movl   $0xff000000,-0x30(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:51
						hw = hw/2;
 6d1:	8b 45 cc             	mov    -0x34(%ebp),%eax
 6d4:	89 c2                	mov    %eax,%edx
 6d6:	c1 ea 1f             	shr    $0x1f,%edx
 6d9:	01 d0                	add    %edx,%eax
 6db:	d1 f8                	sar    %eax
 6dd:	89 45 cc             	mov    %eax,-0x34(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:52
						ep = 24;
 6e0:	c7 45 c8 18 00 00 00 	movl   $0x18,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:53
						printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 6e7:	83 ec 0c             	sub    $0xc,%esp
 6ea:	8d 83 82 ec ff ff    	lea    -0x137e(%ebx),%eax
 6f0:	50                   	push   %eax
 6f1:	e8 fa fc ff ff       	call   3f0 <printf@plt>
 6f6:	83 c4 10             	add    $0x10,%esp
 6f9:	83 ec 0c             	sub    $0xc,%esp
 6fc:	ff 75 d0             	pushl  -0x30(%ebp)
 6ff:	e8 fc 03 00 00       	call   b00 <print_binary>
 704:	83 c4 10             	add    $0x10,%esp
 707:	83 ec 04             	sub    $0x4,%esp
 70a:	ff 75 c8             	pushl  -0x38(%ebp)
 70d:	ff 75 cc             	pushl  -0x34(%ebp)
 710:	8d 83 86 ec ff ff    	lea    -0x137a(%ebx),%eax
 716:	50                   	push   %eax
 717:	e8 d4 fc ff ff       	call   3f0 <printf@plt>
 71c:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:56
            //11111111000000000000000000000000;
            //bits in left 2
            if ((mask&x) != 0) {
 71f:	8b 45 d0             	mov    -0x30(%ebp),%eax
 722:	23 45 08             	and    0x8(%ebp),%eax
 725:	85 c0                	test   %eax,%eax
 727:	0f 84 b0 01 00 00    	je     8dd <msb+0x2a6>
/home/jdoe/CS232/lab7/task1/msb.c:58
                //check left most
                mask = 4026531840;
 72d:	c7 45 d0 00 00 00 f0 	movl   $0xf0000000,-0x30(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:59
								hw = hw/2;
 734:	8b 45 cc             	mov    -0x34(%ebp),%eax
 737:	89 c2                	mov    %eax,%edx
 739:	c1 ea 1f             	shr    $0x1f,%edx
 73c:	01 d0                	add    %edx,%eax
 73e:	d1 f8                	sar    %eax
 740:	89 45 cc             	mov    %eax,-0x34(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:60
								ep = 28;
 743:	c7 45 c8 1c 00 00 00 	movl   $0x1c,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:61
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 74a:	83 ec 0c             	sub    $0xc,%esp
 74d:	8d 83 82 ec ff ff    	lea    -0x137e(%ebx),%eax
 753:	50                   	push   %eax
 754:	e8 97 fc ff ff       	call   3f0 <printf@plt>
 759:	83 c4 10             	add    $0x10,%esp
 75c:	83 ec 0c             	sub    $0xc,%esp
 75f:	ff 75 d0             	pushl  -0x30(%ebp)
 762:	e8 99 03 00 00       	call   b00 <print_binary>
 767:	83 c4 10             	add    $0x10,%esp
 76a:	83 ec 04             	sub    $0x4,%esp
 76d:	ff 75 c8             	pushl  -0x38(%ebp)
 770:	ff 75 cc             	pushl  -0x34(%ebp)
 773:	8d 83 86 ec ff ff    	lea    -0x137a(%ebx),%eax
 779:	50                   	push   %eax
 77a:	e8 71 fc ff ff       	call   3f0 <printf@plt>
 77f:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:64
                //1111 0000 0000 0000 0000 0000 0000 0000;
                //bits in left most
                if ((mask&x) != 0) {
 782:	8b 45 d0             	mov    -0x30(%ebp),%eax
 785:	23 45 08             	and    0x8(%ebp),%eax
 788:	85 c0                	test   %eax,%eax
 78a:	74 34                	je     7c0 <msb+0x189>
/home/jdoe/CS232/lab7/task1/msb.c:66

                    for(int n=31;n>=27;n--) {
 78c:	c7 45 d4 1f 00 00 00 	movl   $0x1f,-0x2c(%ebp)
 793:	eb 25                	jmp    7ba <msb+0x183>
/home/jdoe/CS232/lab7/task1/msb.c:67
                        if ((x & (1<<n))!= 0){
 795:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 798:	8b 55 08             	mov    0x8(%ebp),%edx
 79b:	89 c1                	mov    %eax,%ecx
 79d:	d3 fa                	sar    %cl,%edx
 79f:	89 d0                	mov    %edx,%eax
 7a1:	83 e0 01             	and    $0x1,%eax
 7a4:	85 c0                	test   %eax,%eax
 7a6:	74 0e                	je     7b6 <msb+0x17f>
/home/jdoe/CS232/lab7/task1/msb.c:68
                            ep = n;
 7a8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7ab:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:69
														return ep;
 7ae:	8b 45 c8             	mov    -0x38(%ebp),%eax
 7b1:	e9 45 03 00 00       	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:66 (discriminator 2)
                    for(int n=31;n>=27;n--) {
 7b6:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:66 (discriminator 1)
 7ba:	83 7d d4 1a          	cmpl   $0x1a,-0x2c(%ebp)
 7be:	7f d5                	jg     795 <msb+0x15e>
/home/jdoe/CS232/lab7/task1/msb.c:77
                    }
                }


                //bits in right
                if ((mask&x) == 0) {
 7c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7c3:	23 45 08             	and    0x8(%ebp),%eax
 7c6:	85 c0                	test   %eax,%eax
 7c8:	75 34                	jne    7fe <msb+0x1c7>
/home/jdoe/CS232/lab7/task1/msb.c:79

                    for(int n=26;n>=23;n--) {
 7ca:	c7 45 d8 1a 00 00 00 	movl   $0x1a,-0x28(%ebp)
 7d1:	eb 25                	jmp    7f8 <msb+0x1c1>
/home/jdoe/CS232/lab7/task1/msb.c:80
                        if ((x & (1<<n))!= 0){
 7d3:	8b 45 d8             	mov    -0x28(%ebp),%eax
 7d6:	8b 55 08             	mov    0x8(%ebp),%edx
 7d9:	89 c1                	mov    %eax,%ecx
 7db:	d3 fa                	sar    %cl,%edx
 7dd:	89 d0                	mov    %edx,%eax
 7df:	83 e0 01             	and    $0x1,%eax
 7e2:	85 c0                	test   %eax,%eax
 7e4:	74 0e                	je     7f4 <msb+0x1bd>
/home/jdoe/CS232/lab7/task1/msb.c:81
                            ep = n;
 7e6:	8b 45 d8             	mov    -0x28(%ebp),%eax
 7e9:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:82
														return ep;
 7ec:	8b 45 c8             	mov    -0x38(%ebp),%eax
 7ef:	e9 07 03 00 00       	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:79 (discriminator 2)
                    for(int n=26;n>=23;n--) {
 7f4:	83 6d d8 01          	subl   $0x1,-0x28(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:79 (discriminator 1)
 7f8:	83 7d d8 16          	cmpl   $0x16,-0x28(%ebp)
 7fc:	7f d5                	jg     7d3 <msb+0x19c>
/home/jdoe/CS232/lab7/task1/msb.c:89
                        }
                    }
                }

            //bits in right 2
            if ((mask&x) == 0) {
 7fe:	8b 45 d0             	mov    -0x30(%ebp),%eax
 801:	23 45 08             	and    0x8(%ebp),%eax
 804:	85 c0                	test   %eax,%eax
 806:	0f 85 d1 00 00 00    	jne    8dd <msb+0x2a6>
/home/jdoe/CS232/lab7/task1/msb.c:91
                //check right 2
                mask = 15728640;
 80c:	c7 45 d0 00 00 f0 00 	movl   $0xf00000,-0x30(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:92
								hw = hw/2;
 813:	8b 45 cc             	mov    -0x34(%ebp),%eax
 816:	89 c2                	mov    %eax,%edx
 818:	c1 ea 1f             	shr    $0x1f,%edx
 81b:	01 d0                	add    %edx,%eax
 81d:	d1 f8                	sar    %eax
 81f:	89 45 cc             	mov    %eax,-0x34(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:93
								ep = 20;
 822:	c7 45 c8 14 00 00 00 	movl   $0x14,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:94
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 829:	83 ec 0c             	sub    $0xc,%esp
 82c:	8d 83 82 ec ff ff    	lea    -0x137e(%ebx),%eax
 832:	50                   	push   %eax
 833:	e8 b8 fb ff ff       	call   3f0 <printf@plt>
 838:	83 c4 10             	add    $0x10,%esp
 83b:	83 ec 0c             	sub    $0xc,%esp
 83e:	ff 75 d0             	pushl  -0x30(%ebp)
 841:	e8 ba 02 00 00       	call   b00 <print_binary>
 846:	83 c4 10             	add    $0x10,%esp
 849:	83 ec 04             	sub    $0x4,%esp
 84c:	ff 75 c8             	pushl  -0x38(%ebp)
 84f:	ff 75 cc             	pushl  -0x34(%ebp)
 852:	8d 83 86 ec ff ff    	lea    -0x137a(%ebx),%eax
 858:	50                   	push   %eax
 859:	e8 92 fb ff ff       	call   3f0 <printf@plt>
 85e:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:98
                //00000000111100000000000000000000;

                //check left
                if (((mask&x) != 0)) {
 861:	8b 45 d0             	mov    -0x30(%ebp),%eax
 864:	23 45 08             	and    0x8(%ebp),%eax
 867:	85 c0                	test   %eax,%eax
 869:	74 34                	je     89f <msb+0x268>
/home/jdoe/CS232/lab7/task1/msb.c:100

                    for(int n=23;n>=19;n--) {
 86b:	c7 45 dc 17 00 00 00 	movl   $0x17,-0x24(%ebp)
 872:	eb 25                	jmp    899 <msb+0x262>
/home/jdoe/CS232/lab7/task1/msb.c:101
                        if ((x & (1<<n))!= 0){
 874:	8b 45 dc             	mov    -0x24(%ebp),%eax
 877:	8b 55 08             	mov    0x8(%ebp),%edx
 87a:	89 c1                	mov    %eax,%ecx
 87c:	d3 fa                	sar    %cl,%edx
 87e:	89 d0                	mov    %edx,%eax
 880:	83 e0 01             	and    $0x1,%eax
 883:	85 c0                	test   %eax,%eax
 885:	74 0e                	je     895 <msb+0x25e>
/home/jdoe/CS232/lab7/task1/msb.c:102
                            ep = n;
 887:	8b 45 dc             	mov    -0x24(%ebp),%eax
 88a:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:103
														return ep;
 88d:	8b 45 c8             	mov    -0x38(%ebp),%eax
 890:	e9 66 02 00 00       	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:100 (discriminator 2)
                    for(int n=23;n>=19;n--) {
 895:	83 6d dc 01          	subl   $0x1,-0x24(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:100 (discriminator 1)
 899:	83 7d dc 12          	cmpl   $0x12,-0x24(%ebp)
 89d:	7f d5                	jg     874 <msb+0x23d>
/home/jdoe/CS232/lab7/task1/msb.c:110
                        }
                    }

                }
                //check right
                if ((mask&x) == 0) {
 89f:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8a2:	23 45 08             	and    0x8(%ebp),%eax
 8a5:	85 c0                	test   %eax,%eax
 8a7:	75 34                	jne    8dd <msb+0x2a6>
/home/jdoe/CS232/lab7/task1/msb.c:112

                    for(int n=19;n>=15;n--) {
 8a9:	c7 45 e0 13 00 00 00 	movl   $0x13,-0x20(%ebp)
 8b0:	eb 25                	jmp    8d7 <msb+0x2a0>
/home/jdoe/CS232/lab7/task1/msb.c:113
                        if ((x & (1<<n))!= 0){
 8b2:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8b5:	8b 55 08             	mov    0x8(%ebp),%edx
 8b8:	89 c1                	mov    %eax,%ecx
 8ba:	d3 fa                	sar    %cl,%edx
 8bc:	89 d0                	mov    %edx,%eax
 8be:	83 e0 01             	and    $0x1,%eax
 8c1:	85 c0                	test   %eax,%eax
 8c3:	74 0e                	je     8d3 <msb+0x29c>
/home/jdoe/CS232/lab7/task1/msb.c:114
                            ep = n;
 8c5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8c8:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:115
														return ep;
 8cb:	8b 45 c8             	mov    -0x38(%ebp),%eax
 8ce:	e9 28 02 00 00       	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:112 (discriminator 2)
                    for(int n=19;n>=15;n--) {
 8d3:	83 6d e0 01          	subl   $0x1,-0x20(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:112 (discriminator 1)
 8d7:	83 7d e0 0e          	cmpl   $0xe,-0x20(%ebp)
 8db:	7f d5                	jg     8b2 <msb+0x27b>
/home/jdoe/CS232/lab7/task1/msb.c:126
            }
        }
        }

        //bits in right
        if ((mask&x) == 0) {
 8dd:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8e0:	23 45 08             	and    0x8(%ebp),%eax
 8e3:	85 c0                	test   %eax,%eax
 8e5:	0f 85 0d 02 00 00    	jne    af8 <msb+0x4c1>
/home/jdoe/CS232/lab7/task1/msb.c:129

            //check left 2
            mask = 65280;
 8eb:	c7 45 d0 00 ff 00 00 	movl   $0xff00,-0x30(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:130
						hw = hw/2;
 8f2:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8f5:	89 c2                	mov    %eax,%edx
 8f7:	c1 ea 1f             	shr    $0x1f,%edx
 8fa:	01 d0                	add    %edx,%eax
 8fc:	d1 f8                	sar    %eax
 8fe:	89 45 cc             	mov    %eax,-0x34(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:131
						ep = 8;
 901:	c7 45 c8 08 00 00 00 	movl   $0x8,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:132
						printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 908:	83 ec 0c             	sub    $0xc,%esp
 90b:	8d 83 82 ec ff ff    	lea    -0x137e(%ebx),%eax
 911:	50                   	push   %eax
 912:	e8 d9 fa ff ff       	call   3f0 <printf@plt>
 917:	83 c4 10             	add    $0x10,%esp
 91a:	83 ec 0c             	sub    $0xc,%esp
 91d:	ff 75 d0             	pushl  -0x30(%ebp)
 920:	e8 db 01 00 00       	call   b00 <print_binary>
 925:	83 c4 10             	add    $0x10,%esp
 928:	83 ec 04             	sub    $0x4,%esp
 92b:	ff 75 c8             	pushl  -0x38(%ebp)
 92e:	ff 75 cc             	pushl  -0x34(%ebp)
 931:	8d 83 86 ec ff ff    	lea    -0x137a(%ebx),%eax
 937:	50                   	push   %eax
 938:	e8 b3 fa ff ff       	call   3f0 <printf@plt>
 93d:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:135
            //00000000000000001111111100000000;
            //bits in left 2
            if (((mask&x) != 0)) {
 940:	8b 45 d0             	mov    -0x30(%ebp),%eax
 943:	23 45 08             	and    0x8(%ebp),%eax
 946:	85 c0                	test   %eax,%eax
 948:	0f 84 d1 00 00 00    	je     a1f <msb+0x3e8>
/home/jdoe/CS232/lab7/task1/msb.c:137
                //check left most
                mask = 61440;
 94e:	c7 45 d0 00 f0 00 00 	movl   $0xf000,-0x30(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:138
								hw = hw/2;
 955:	8b 45 cc             	mov    -0x34(%ebp),%eax
 958:	89 c2                	mov    %eax,%edx
 95a:	c1 ea 1f             	shr    $0x1f,%edx
 95d:	01 d0                	add    %edx,%eax
 95f:	d1 f8                	sar    %eax
 961:	89 45 cc             	mov    %eax,-0x34(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:139
								ep = 12;
 964:	c7 45 c8 0c 00 00 00 	movl   $0xc,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:140
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 96b:	83 ec 0c             	sub    $0xc,%esp
 96e:	8d 83 82 ec ff ff    	lea    -0x137e(%ebx),%eax
 974:	50                   	push   %eax
 975:	e8 76 fa ff ff       	call   3f0 <printf@plt>
 97a:	83 c4 10             	add    $0x10,%esp
 97d:	83 ec 0c             	sub    $0xc,%esp
 980:	ff 75 d0             	pushl  -0x30(%ebp)
 983:	e8 78 01 00 00       	call   b00 <print_binary>
 988:	83 c4 10             	add    $0x10,%esp
 98b:	83 ec 04             	sub    $0x4,%esp
 98e:	ff 75 c8             	pushl  -0x38(%ebp)
 991:	ff 75 cc             	pushl  -0x34(%ebp)
 994:	8d 83 86 ec ff ff    	lea    -0x137a(%ebx),%eax
 99a:	50                   	push   %eax
 99b:	e8 50 fa ff ff       	call   3f0 <printf@plt>
 9a0:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:144
                //00000000000000001111000000000000;

                //bits in left most
                if (((mask&x) != 0)) {
 9a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9a6:	23 45 08             	and    0x8(%ebp),%eax
 9a9:	85 c0                	test   %eax,%eax
 9ab:	74 34                	je     9e1 <msb+0x3aa>
/home/jdoe/CS232/lab7/task1/msb.c:146

                    for(int n=15;n>=11;n--) {
 9ad:	c7 45 e4 0f 00 00 00 	movl   $0xf,-0x1c(%ebp)
 9b4:	eb 25                	jmp    9db <msb+0x3a4>
/home/jdoe/CS232/lab7/task1/msb.c:147
                        if ((x & (1<<n))!= 0){
 9b6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 9b9:	8b 55 08             	mov    0x8(%ebp),%edx
 9bc:	89 c1                	mov    %eax,%ecx
 9be:	d3 fa                	sar    %cl,%edx
 9c0:	89 d0                	mov    %edx,%eax
 9c2:	83 e0 01             	and    $0x1,%eax
 9c5:	85 c0                	test   %eax,%eax
 9c7:	74 0e                	je     9d7 <msb+0x3a0>
/home/jdoe/CS232/lab7/task1/msb.c:148
                            ep = n;
 9c9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 9cc:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:149
														return ep;
 9cf:	8b 45 c8             	mov    -0x38(%ebp),%eax
 9d2:	e9 24 01 00 00       	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:146 (discriminator 2)
                    for(int n=15;n>=11;n--) {
 9d7:	83 6d e4 01          	subl   $0x1,-0x1c(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:146 (discriminator 1)
 9db:	83 7d e4 0a          	cmpl   $0xa,-0x1c(%ebp)
 9df:	7f d5                	jg     9b6 <msb+0x37f>
/home/jdoe/CS232/lab7/task1/msb.c:157
                    }

                }

                //bits in right
                if ((mask&x) == 0) {
 9e1:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9e4:	23 45 08             	and    0x8(%ebp),%eax
 9e7:	85 c0                	test   %eax,%eax
 9e9:	75 34                	jne    a1f <msb+0x3e8>
/home/jdoe/CS232/lab7/task1/msb.c:159

                    for(int n=11;n>=7;n--) {
 9eb:	c7 45 e8 0b 00 00 00 	movl   $0xb,-0x18(%ebp)
 9f2:	eb 25                	jmp    a19 <msb+0x3e2>
/home/jdoe/CS232/lab7/task1/msb.c:160
                        if ((x & (1<<n))!= 0){
 9f4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 9f7:	8b 55 08             	mov    0x8(%ebp),%edx
 9fa:	89 c1                	mov    %eax,%ecx
 9fc:	d3 fa                	sar    %cl,%edx
 9fe:	89 d0                	mov    %edx,%eax
 a00:	83 e0 01             	and    $0x1,%eax
 a03:	85 c0                	test   %eax,%eax
 a05:	74 0e                	je     a15 <msb+0x3de>
/home/jdoe/CS232/lab7/task1/msb.c:161
                            ep = n;
 a07:	8b 45 e8             	mov    -0x18(%ebp),%eax
 a0a:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:162
														return ep;
 a0d:	8b 45 c8             	mov    -0x38(%ebp),%eax
 a10:	e9 e6 00 00 00       	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:159 (discriminator 2)
                    for(int n=11;n>=7;n--) {
 a15:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:159 (discriminator 1)
 a19:	83 7d e8 06          	cmpl   $0x6,-0x18(%ebp)
 a1d:	7f d5                	jg     9f4 <msb+0x3bd>
/home/jdoe/CS232/lab7/task1/msb.c:172
                }

            }

            //bits in right 2
            if ((mask&x) == 0) {
 a1f:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a22:	23 45 08             	and    0x8(%ebp),%eax
 a25:	85 c0                	test   %eax,%eax
 a27:	0f 85 cb 00 00 00    	jne    af8 <msb+0x4c1>
/home/jdoe/CS232/lab7/task1/msb.c:174
                //check right 2
                mask = 240;
 a2d:	c7 45 d0 f0 00 00 00 	movl   $0xf0,-0x30(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:175
								hw = hw/2;
 a34:	8b 45 cc             	mov    -0x34(%ebp),%eax
 a37:	89 c2                	mov    %eax,%edx
 a39:	c1 ea 1f             	shr    $0x1f,%edx
 a3c:	01 d0                	add    %edx,%eax
 a3e:	d1 f8                	sar    %eax
 a40:	89 45 cc             	mov    %eax,-0x34(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:176
								ep = 4;
 a43:	c7 45 c8 04 00 00 00 	movl   $0x4,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:177
								printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 a4a:	83 ec 0c             	sub    $0xc,%esp
 a4d:	8d 83 82 ec ff ff    	lea    -0x137e(%ebx),%eax
 a53:	50                   	push   %eax
 a54:	e8 97 f9 ff ff       	call   3f0 <printf@plt>
 a59:	83 c4 10             	add    $0x10,%esp
 a5c:	83 ec 0c             	sub    $0xc,%esp
 a5f:	ff 75 d0             	pushl  -0x30(%ebp)
 a62:	e8 99 00 00 00       	call   b00 <print_binary>
 a67:	83 c4 10             	add    $0x10,%esp
 a6a:	83 ec 04             	sub    $0x4,%esp
 a6d:	ff 75 c8             	pushl  -0x38(%ebp)
 a70:	ff 75 cc             	pushl  -0x34(%ebp)
 a73:	8d 83 86 ec ff ff    	lea    -0x137a(%ebx),%eax
 a79:	50                   	push   %eax
 a7a:	e8 71 f9 ff ff       	call   3f0 <printf@plt>
 a7f:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:181
                //00000000000000000000000011110000;

                //check left
                if (((mask&x) != 0)) {
 a82:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a85:	23 45 08             	and    0x8(%ebp),%eax
 a88:	85 c0                	test   %eax,%eax
 a8a:	74 31                	je     abd <msb+0x486>
/home/jdoe/CS232/lab7/task1/msb.c:183

                    for(int n=7;n>=3;n--) {
 a8c:	c7 45 ec 07 00 00 00 	movl   $0x7,-0x14(%ebp)
 a93:	eb 22                	jmp    ab7 <msb+0x480>
/home/jdoe/CS232/lab7/task1/msb.c:184
                        if ((x & (1<<n))!= 0){
 a95:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a98:	8b 55 08             	mov    0x8(%ebp),%edx
 a9b:	89 c1                	mov    %eax,%ecx
 a9d:	d3 fa                	sar    %cl,%edx
 a9f:	89 d0                	mov    %edx,%eax
 aa1:	83 e0 01             	and    $0x1,%eax
 aa4:	85 c0                	test   %eax,%eax
 aa6:	74 0b                	je     ab3 <msb+0x47c>
/home/jdoe/CS232/lab7/task1/msb.c:185
                            ep = n;
 aa8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 aab:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:186
														return ep;
 aae:	8b 45 c8             	mov    -0x38(%ebp),%eax
 ab1:	eb 48                	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:183 (discriminator 2)
                    for(int n=7;n>=3;n--) {
 ab3:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:183 (discriminator 1)
 ab7:	83 7d ec 02          	cmpl   $0x2,-0x14(%ebp)
 abb:	7f d8                	jg     a95 <msb+0x45e>
/home/jdoe/CS232/lab7/task1/msb.c:194
                    }

                }

                //check right
                if ((mask&x) == 0) {
 abd:	8b 45 d0             	mov    -0x30(%ebp),%eax
 ac0:	23 45 08             	and    0x8(%ebp),%eax
 ac3:	85 c0                	test   %eax,%eax
 ac5:	75 31                	jne    af8 <msb+0x4c1>
/home/jdoe/CS232/lab7/task1/msb.c:196

                    for(int n=3;n>=0;n--) {
 ac7:	c7 45 f0 03 00 00 00 	movl   $0x3,-0x10(%ebp)
 ace:	eb 22                	jmp    af2 <msb+0x4bb>
/home/jdoe/CS232/lab7/task1/msb.c:197
                        if ((x & (1<<n))!= 0){
 ad0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 ad3:	8b 55 08             	mov    0x8(%ebp),%edx
 ad6:	89 c1                	mov    %eax,%ecx
 ad8:	d3 fa                	sar    %cl,%edx
 ada:	89 d0                	mov    %edx,%eax
 adc:	83 e0 01             	and    $0x1,%eax
 adf:	85 c0                	test   %eax,%eax
 ae1:	74 0b                	je     aee <msb+0x4b7>
/home/jdoe/CS232/lab7/task1/msb.c:198
                            ep = n;
 ae3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 ae6:	89 45 c8             	mov    %eax,-0x38(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:199
														return ep;
 ae9:	8b 45 c8             	mov    -0x38(%ebp),%eax
 aec:	eb 0d                	jmp    afb <msb+0x4c4>
/home/jdoe/CS232/lab7/task1/msb.c:196 (discriminator 2)
                    for(int n=3;n>=0;n--) {
 aee:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:196 (discriminator 1)
 af2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 af6:	79 d8                	jns    ad0 <msb+0x499>
/home/jdoe/CS232/lab7/task1/msb.c:215
		//If the left half of the range has a one bit, focus on only the left half
		//else focus on only the right half
		//TODO: You have ruled out either the left half of the range or the right half of the range
		//set up ep and w accordingly
	//}
	return ep;
 af8:	8b 45 c8             	mov    -0x38(%ebp),%eax
/home/jdoe/CS232/lab7/task1/msb.c:216
}
 afb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 afe:	c9                   	leave  
 aff:	c3                   	ret    

00000b00 <print_binary>:
print_binary():
/home/jdoe/CS232/lab7/task1/msb.c:218
//Do not modify print_binary
void print_binary(int n) {
 b00:	55                   	push   %ebp
 b01:	89 e5                	mov    %esp,%ebp
 b03:	53                   	push   %ebx
 b04:	83 ec 14             	sub    $0x14,%esp
 b07:	e8 74 f9 ff ff       	call   480 <__x86.get_pc_thunk.bx>
 b0c:	81 c3 c4 14 00 00    	add    $0x14c4,%ebx
/home/jdoe/CS232/lab7/task1/msb.c:220
	int i;
	for(i=31;i>=0;i--) {
 b12:	c7 45 f4 1f 00 00 00 	movl   $0x1f,-0xc(%ebp)
 b19:	eb 46                	jmp    b61 <print_binary+0x61>
/home/jdoe/CS232/lab7/task1/msb.c:221
		printf("%c",(n&1<<i)?'1':'0');
 b1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 b1e:	8b 55 08             	mov    0x8(%ebp),%edx
 b21:	89 c1                	mov    %eax,%ecx
 b23:	d3 fa                	sar    %cl,%edx
 b25:	89 d0                	mov    %edx,%eax
 b27:	83 e0 01             	and    $0x1,%eax
 b2a:	85 c0                	test   %eax,%eax
 b2c:	74 07                	je     b35 <print_binary+0x35>
/home/jdoe/CS232/lab7/task1/msb.c:221 (discriminator 1)
 b2e:	b8 31 00 00 00       	mov    $0x31,%eax
 b33:	eb 05                	jmp    b3a <print_binary+0x3a>
/home/jdoe/CS232/lab7/task1/msb.c:221 (discriminator 2)
 b35:	b8 30 00 00 00       	mov    $0x30,%eax
/home/jdoe/CS232/lab7/task1/msb.c:221 (discriminator 4)
 b3a:	83 ec 0c             	sub    $0xc,%esp
 b3d:	50                   	push   %eax
 b3e:	e8 cd f8 ff ff       	call   410 <putchar@plt>
 b43:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:222 (discriminator 4)
		if (0==i%4) printf(" ");
 b46:	8b 45 f4             	mov    -0xc(%ebp),%eax
 b49:	83 e0 03             	and    $0x3,%eax
 b4c:	85 c0                	test   %eax,%eax
 b4e:	75 0d                	jne    b5d <print_binary+0x5d>
/home/jdoe/CS232/lab7/task1/msb.c:222 (discriminator 1)
 b50:	83 ec 0c             	sub    $0xc,%esp
 b53:	6a 20                	push   $0x20
 b55:	e8 b6 f8 ff ff       	call   410 <putchar@plt>
 b5a:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:220 (discriminator 2)
	for(i=31;i>=0;i--) {
 b5d:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:220 (discriminator 1)
 b61:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 b65:	79 b4                	jns    b1b <print_binary+0x1b>
/home/jdoe/CS232/lab7/task1/msb.c:224
	}
}
 b67:	90                   	nop
 b68:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 b6b:	c9                   	leave  
 b6c:	c3                   	ret    
 b6d:	66 90                	xchg   %ax,%ax
 b6f:	90                   	nop

00000b70 <__libc_csu_init>:
__libc_csu_init():
 b70:	55                   	push   %ebp
 b71:	57                   	push   %edi
 b72:	56                   	push   %esi
 b73:	53                   	push   %ebx
 b74:	e8 07 f9 ff ff       	call   480 <__x86.get_pc_thunk.bx>
 b79:	81 c3 57 14 00 00    	add    $0x1457,%ebx
 b7f:	83 ec 0c             	sub    $0xc,%esp
 b82:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 b86:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
 b8c:	e8 2b f8 ff ff       	call   3bc <_init>
 b91:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 b97:	29 c6                	sub    %eax,%esi
 b99:	c1 fe 02             	sar    $0x2,%esi
 b9c:	85 f6                	test   %esi,%esi
 b9e:	74 25                	je     bc5 <__libc_csu_init+0x55>
 ba0:	31 ff                	xor    %edi,%edi
 ba2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 ba8:	83 ec 04             	sub    $0x4,%esp
 bab:	55                   	push   %ebp
 bac:	ff 74 24 2c          	pushl  0x2c(%esp)
 bb0:	ff 74 24 2c          	pushl  0x2c(%esp)
 bb4:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
 bbb:	83 c7 01             	add    $0x1,%edi
 bbe:	83 c4 10             	add    $0x10,%esp
 bc1:	39 fe                	cmp    %edi,%esi
 bc3:	75 e3                	jne    ba8 <__libc_csu_init+0x38>
 bc5:	83 c4 0c             	add    $0xc,%esp
 bc8:	5b                   	pop    %ebx
 bc9:	5e                   	pop    %esi
 bca:	5f                   	pop    %edi
 bcb:	5d                   	pop    %ebp
 bcc:	c3                   	ret    
 bcd:	8d 76 00             	lea    0x0(%esi),%esi

00000bd0 <__libc_csu_fini>:
__libc_csu_fini():
 bd0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000bd4 <_fini>:
_fini():
 bd4:	53                   	push   %ebx
 bd5:	83 ec 08             	sub    $0x8,%esp
 bd8:	e8 a3 f8 ff ff       	call   480 <__x86.get_pc_thunk.bx>
 bdd:	81 c3 f3 13 00 00    	add    $0x13f3,%ebx
 be3:	83 c4 08             	add    $0x8,%esp
 be6:	5b                   	pop    %ebx
 be7:	c3                   	ret    
