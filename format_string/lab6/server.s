
server:     file format elf32-i386


Disassembly of section .init:

080483b0 <_init>:
 80483b0:	53                   	push   %ebx
 80483b1:	83 ec 08             	sub    $0x8,%esp
 80483b4:	e8 17 01 00 00       	call   80484d0 <__x86.get_pc_thunk.bx>
 80483b9:	81 c3 47 1c 00 00    	add    $0x1c47,%ebx
 80483bf:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80483c5:	85 c0                	test   %eax,%eax
 80483c7:	74 05                	je     80483ce <_init+0x1e>
 80483c9:	e8 c2 00 00 00       	call   8048490 <socket@plt+0x10>
 80483ce:	83 c4 08             	add    $0x8,%esp
 80483d1:	5b                   	pop    %ebx
 80483d2:	c3                   	ret    

Disassembly of section .plt:

080483e0 <printf@plt-0x10>:
 80483e0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80483e6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483ec:	00 00                	add    %al,(%eax)
	...

080483f0 <printf@plt>:
 80483f0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80483f6:	68 00 00 00 00       	push   $0x0
 80483fb:	e9 e0 ff ff ff       	jmp    80483e0 <_init+0x30>

08048400 <bzero@plt>:
 8048400:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048406:	68 08 00 00 00       	push   $0x8
 804840b:	e9 d0 ff ff ff       	jmp    80483e0 <_init+0x30>

08048410 <recvfrom@plt>:
 8048410:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048416:	68 10 00 00 00       	push   $0x10
 804841b:	e9 c0 ff ff ff       	jmp    80483e0 <_init+0x30>

08048420 <htons@plt>:
 8048420:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048426:	68 18 00 00 00       	push   $0x18
 804842b:	e9 b0 ff ff ff       	jmp    80483e0 <_init+0x30>

08048430 <perror@plt>:
 8048430:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048436:	68 20 00 00 00       	push   $0x20
 804843b:	e9 a0 ff ff ff       	jmp    80483e0 <_init+0x30>

08048440 <__libc_start_main@plt>:
 8048440:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048446:	68 28 00 00 00       	push   $0x28
 804844b:	e9 90 ff ff ff       	jmp    80483e0 <_init+0x30>

08048450 <bind@plt>:
 8048450:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048456:	68 30 00 00 00       	push   $0x30
 804845b:	e9 80 ff ff ff       	jmp    80483e0 <_init+0x30>

08048460 <memset@plt>:
 8048460:	ff 25 28 a0 04 08    	jmp    *0x804a028
 8048466:	68 38 00 00 00       	push   $0x38
 804846b:	e9 70 ff ff ff       	jmp    80483e0 <_init+0x30>

08048470 <htonl@plt>:
 8048470:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 8048476:	68 40 00 00 00       	push   $0x40
 804847b:	e9 60 ff ff ff       	jmp    80483e0 <_init+0x30>

08048480 <socket@plt>:
 8048480:	ff 25 30 a0 04 08    	jmp    *0x804a030
 8048486:	68 48 00 00 00       	push   $0x48
 804848b:	e9 50 ff ff ff       	jmp    80483e0 <_init+0x30>

Disassembly of section .plt.got:

08048490 <.plt.got>:
 8048490:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048496:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080484a0 <_start>:
 80484a0:	31 ed                	xor    %ebp,%ebp
 80484a2:	5e                   	pop    %esi
 80484a3:	89 e1                	mov    %esp,%ecx
 80484a5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484a8:	50                   	push   %eax
 80484a9:	54                   	push   %esp
 80484aa:	52                   	push   %edx
 80484ab:	68 a0 87 04 08       	push   $0x80487a0
 80484b0:	68 40 87 04 08       	push   $0x8048740
 80484b5:	51                   	push   %ecx
 80484b6:	56                   	push   %esi
 80484b7:	68 28 86 04 08       	push   $0x8048628
 80484bc:	e8 7f ff ff ff       	call   8048440 <__libc_start_main@plt>
 80484c1:	f4                   	hlt    
 80484c2:	66 90                	xchg   %ax,%ax
 80484c4:	66 90                	xchg   %ax,%ax
 80484c6:	66 90                	xchg   %ax,%ax
 80484c8:	66 90                	xchg   %ax,%ax
 80484ca:	66 90                	xchg   %ax,%ax
 80484cc:	66 90                	xchg   %ax,%ax
 80484ce:	66 90                	xchg   %ax,%ax

080484d0 <__x86.get_pc_thunk.bx>:
 80484d0:	8b 1c 24             	mov    (%esp),%ebx
 80484d3:	c3                   	ret    
 80484d4:	66 90                	xchg   %ax,%ax
 80484d6:	66 90                	xchg   %ax,%ax
 80484d8:	66 90                	xchg   %ax,%ax
 80484da:	66 90                	xchg   %ax,%ax
 80484dc:	66 90                	xchg   %ax,%ax
 80484de:	66 90                	xchg   %ax,%ax

080484e0 <deregister_tm_clones>:
 80484e0:	b8 47 a0 04 08       	mov    $0x804a047,%eax
 80484e5:	2d 44 a0 04 08       	sub    $0x804a044,%eax
 80484ea:	83 f8 06             	cmp    $0x6,%eax
 80484ed:	76 1a                	jbe    8048509 <deregister_tm_clones+0x29>
 80484ef:	b8 00 00 00 00       	mov    $0x0,%eax
 80484f4:	85 c0                	test   %eax,%eax
 80484f6:	74 11                	je     8048509 <deregister_tm_clones+0x29>
 80484f8:	55                   	push   %ebp
 80484f9:	89 e5                	mov    %esp,%ebp
 80484fb:	83 ec 14             	sub    $0x14,%esp
 80484fe:	68 44 a0 04 08       	push   $0x804a044
 8048503:	ff d0                	call   *%eax
 8048505:	83 c4 10             	add    $0x10,%esp
 8048508:	c9                   	leave  
 8048509:	f3 c3                	repz ret 
 804850b:	90                   	nop
 804850c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048510 <register_tm_clones>:
 8048510:	b8 44 a0 04 08       	mov    $0x804a044,%eax
 8048515:	2d 44 a0 04 08       	sub    $0x804a044,%eax
 804851a:	c1 f8 02             	sar    $0x2,%eax
 804851d:	89 c2                	mov    %eax,%edx
 804851f:	c1 ea 1f             	shr    $0x1f,%edx
 8048522:	01 d0                	add    %edx,%eax
 8048524:	d1 f8                	sar    %eax
 8048526:	74 1b                	je     8048543 <register_tm_clones+0x33>
 8048528:	ba 00 00 00 00       	mov    $0x0,%edx
 804852d:	85 d2                	test   %edx,%edx
 804852f:	74 12                	je     8048543 <register_tm_clones+0x33>
 8048531:	55                   	push   %ebp
 8048532:	89 e5                	mov    %esp,%ebp
 8048534:	83 ec 10             	sub    $0x10,%esp
 8048537:	50                   	push   %eax
 8048538:	68 44 a0 04 08       	push   $0x804a044
 804853d:	ff d2                	call   *%edx
 804853f:	83 c4 10             	add    $0x10,%esp
 8048542:	c9                   	leave  
 8048543:	f3 c3                	repz ret 
 8048545:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048550 <__do_global_dtors_aux>:
 8048550:	80 3d 44 a0 04 08 00 	cmpb   $0x0,0x804a044
 8048557:	75 13                	jne    804856c <__do_global_dtors_aux+0x1c>
 8048559:	55                   	push   %ebp
 804855a:	89 e5                	mov    %esp,%ebp
 804855c:	83 ec 08             	sub    $0x8,%esp
 804855f:	e8 7c ff ff ff       	call   80484e0 <deregister_tm_clones>
 8048564:	c6 05 44 a0 04 08 01 	movb   $0x1,0x804a044
 804856b:	c9                   	leave  
 804856c:	f3 c3                	repz ret 
 804856e:	66 90                	xchg   %ax,%ax

08048570 <frame_dummy>:
 8048570:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048575:	8b 10                	mov    (%eax),%edx
 8048577:	85 d2                	test   %edx,%edx
 8048579:	75 05                	jne    8048580 <frame_dummy+0x10>
 804857b:	eb 93                	jmp    8048510 <register_tm_clones>
 804857d:	8d 76 00             	lea    0x0(%esi),%esi
 8048580:	ba 00 00 00 00       	mov    $0x0,%edx
 8048585:	85 d2                	test   %edx,%edx
 8048587:	74 f2                	je     804857b <frame_dummy+0xb>
 8048589:	55                   	push   %ebp
 804858a:	89 e5                	mov    %esp,%ebp
 804858c:	83 ec 14             	sub    $0x14,%esp
 804858f:	50                   	push   %eax
 8048590:	ff d2                	call   *%edx
 8048592:	83 c4 10             	add    $0x10,%esp
 8048595:	c9                   	leave  
 8048596:	e9 75 ff ff ff       	jmp    8048510 <register_tm_clones>

0804859b <myprintf>:
 804859b:	55                   	push   %ebp
 804859c:	89 e5                	mov    %esp,%ebp
 804859e:	83 ec 08             	sub    $0x8,%esp
 80485a1:	8d 45 08             	lea    0x8(%ebp),%eax
 80485a4:	83 ec 08             	sub    $0x8,%esp
 80485a7:	50                   	push   %eax
 80485a8:	68 d4 87 04 08       	push   $0x80487d4
 80485ad:	e8 3e fe ff ff       	call   80483f0 <printf@plt>
 80485b2:	83 c4 10             	add    $0x10,%esp
 80485b5:	8b 45 08             	mov    0x8(%ebp),%eax
 80485b8:	83 ec 0c             	sub    $0xc,%esp
 80485bb:	50                   	push   %eax
 80485bc:	e8 2f fe ff ff       	call   80483f0 <printf@plt>
 80485c1:	83 c4 10             	add    $0x10,%esp
 80485c4:	a1 40 a0 04 08       	mov    0x804a040,%eax
 80485c9:	83 ec 08             	sub    $0x8,%esp
 80485cc:	50                   	push   %eax
 80485cd:	68 00 88 04 08       	push   $0x8048800
 80485d2:	e8 19 fe ff ff       	call   80483f0 <printf@plt>
 80485d7:	83 c4 10             	add    $0x10,%esp
 80485da:	90                   	nop
 80485db:	c9                   	leave  
 80485dc:	c3                   	ret    

080485dd <helper>:
 80485dd:	55                   	push   %ebp
 80485de:	89 e5                	mov    %esp,%ebp
 80485e0:	83 ec 08             	sub    $0x8,%esp
 80485e3:	a1 3c a0 04 08       	mov    0x804a03c,%eax
 80485e8:	83 ec 08             	sub    $0x8,%esp
 80485eb:	50                   	push   %eax
 80485ec:	68 34 88 04 08       	push   $0x8048834
 80485f1:	e8 fa fd ff ff       	call   80483f0 <printf@plt>
 80485f6:	83 c4 10             	add    $0x10,%esp
 80485f9:	b8 40 a0 04 08       	mov    $0x804a040,%eax
 80485fe:	83 ec 08             	sub    $0x8,%esp
 8048601:	50                   	push   %eax
 8048602:	68 58 88 04 08       	push   $0x8048858
 8048607:	e8 e4 fd ff ff       	call   80483f0 <printf@plt>
 804860c:	83 c4 10             	add    $0x10,%esp
 804860f:	a1 40 a0 04 08       	mov    0x804a040,%eax
 8048614:	83 ec 08             	sub    $0x8,%esp
 8048617:	50                   	push   %eax
 8048618:	68 88 88 04 08       	push   $0x8048888
 804861d:	e8 ce fd ff ff       	call   80483f0 <printf@plt>
 8048622:	83 c4 10             	add    $0x10,%esp
 8048625:	90                   	nop
 8048626:	c9                   	leave  
 8048627:	c3                   	ret    

08048628 <main>:
 8048628:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804862c:	83 e4 f0             	and    $0xfffffff0,%esp
 804862f:	ff 71 fc             	pushl  -0x4(%ecx)
 8048632:	55                   	push   %ebp
 8048633:	89 e5                	mov    %esp,%ebp
 8048635:	51                   	push   %ecx
 8048636:	81 ec 14 06 00 00    	sub    $0x614,%esp
 804863c:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048642:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048645:	31 c0                	xor    %eax,%eax
 8048647:	e8 91 ff ff ff       	call   80485dd <helper>
 804864c:	83 ec 04             	sub    $0x4,%esp
 804864f:	6a 11                	push   $0x11
 8048651:	6a 02                	push   $0x2
 8048653:	6a 02                	push   $0x2
 8048655:	e8 26 fe ff ff       	call   8048480 <socket@plt>
 804865a:	83 c4 10             	add    $0x10,%esp
 804865d:	89 85 f4 f9 ff ff    	mov    %eax,-0x60c(%ebp)
 8048663:	83 ec 04             	sub    $0x4,%esp
 8048666:	6a 10                	push   $0x10
 8048668:	6a 00                	push   $0x0
 804866a:	8d 85 f8 f9 ff ff    	lea    -0x608(%ebp),%eax
 8048670:	50                   	push   %eax
 8048671:	e8 ea fd ff ff       	call   8048460 <memset@plt>
 8048676:	83 c4 10             	add    $0x10,%esp
 8048679:	66 c7 85 f8 f9 ff ff 	movw   $0x2,-0x608(%ebp)
 8048680:	02 00 
 8048682:	83 ec 0c             	sub    $0xc,%esp
 8048685:	6a 00                	push   $0x0
 8048687:	e8 e4 fd ff ff       	call   8048470 <htonl@plt>
 804868c:	83 c4 10             	add    $0x10,%esp
 804868f:	89 85 fc f9 ff ff    	mov    %eax,-0x604(%ebp)
 8048695:	83 ec 0c             	sub    $0xc,%esp
 8048698:	68 82 23 00 00       	push   $0x2382
 804869d:	e8 7e fd ff ff       	call   8048420 <htons@plt>
 80486a2:	83 c4 10             	add    $0x10,%esp
 80486a5:	66 89 85 fa f9 ff ff 	mov    %ax,-0x606(%ebp)
 80486ac:	83 ec 04             	sub    $0x4,%esp
 80486af:	6a 10                	push   $0x10
 80486b1:	8d 85 f8 f9 ff ff    	lea    -0x608(%ebp),%eax
 80486b7:	50                   	push   %eax
 80486b8:	ff b5 f4 f9 ff ff    	pushl  -0x60c(%ebp)
 80486be:	e8 8d fd ff ff       	call   8048450 <bind@plt>
 80486c3:	83 c4 10             	add    $0x10,%esp
 80486c6:	85 c0                	test   %eax,%eax
 80486c8:	79 10                	jns    80486da <main+0xb2>
 80486ca:	83 ec 0c             	sub    $0xc,%esp
 80486cd:	68 bd 88 04 08       	push   $0x80488bd
 80486d2:	e8 59 fd ff ff       	call   8048430 <perror@plt>
 80486d7:	83 c4 10             	add    $0x10,%esp
 80486da:	83 ec 08             	sub    $0x8,%esp
 80486dd:	68 dc 05 00 00       	push   $0x5dc
 80486e2:	8d 85 18 fa ff ff    	lea    -0x5e8(%ebp),%eax
 80486e8:	50                   	push   %eax
 80486e9:	e8 12 fd ff ff       	call   8048400 <bzero@plt>
 80486ee:	83 c4 10             	add    $0x10,%esp
 80486f1:	83 ec 08             	sub    $0x8,%esp
 80486f4:	8d 85 f0 f9 ff ff    	lea    -0x610(%ebp),%eax
 80486fa:	50                   	push   %eax
 80486fb:	8d 85 08 fa ff ff    	lea    -0x5f8(%ebp),%eax
 8048701:	50                   	push   %eax
 8048702:	6a 00                	push   $0x0
 8048704:	68 db 05 00 00       	push   $0x5db
 8048709:	8d 85 18 fa ff ff    	lea    -0x5e8(%ebp),%eax
 804870f:	50                   	push   %eax
 8048710:	ff b5 f4 f9 ff ff    	pushl  -0x60c(%ebp)
 8048716:	e8 f5 fc ff ff       	call   8048410 <recvfrom@plt>
 804871b:	83 c4 20             	add    $0x20,%esp
 804871e:	83 ec 0c             	sub    $0xc,%esp
 8048721:	8d 85 18 fa ff ff    	lea    -0x5e8(%ebp),%eax
 8048727:	50                   	push   %eax
 8048728:	e8 6e fe ff ff       	call   804859b <myprintf>
 804872d:	83 c4 10             	add    $0x10,%esp
 8048730:	eb a8                	jmp    80486da <main+0xb2>
 8048732:	66 90                	xchg   %ax,%ax
 8048734:	66 90                	xchg   %ax,%ax
 8048736:	66 90                	xchg   %ax,%ax
 8048738:	66 90                	xchg   %ax,%ax
 804873a:	66 90                	xchg   %ax,%ax
 804873c:	66 90                	xchg   %ax,%ax
 804873e:	66 90                	xchg   %ax,%ax

08048740 <__libc_csu_init>:
 8048740:	55                   	push   %ebp
 8048741:	57                   	push   %edi
 8048742:	56                   	push   %esi
 8048743:	53                   	push   %ebx
 8048744:	e8 87 fd ff ff       	call   80484d0 <__x86.get_pc_thunk.bx>
 8048749:	81 c3 b7 18 00 00    	add    $0x18b7,%ebx
 804874f:	83 ec 0c             	sub    $0xc,%esp
 8048752:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048756:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804875c:	e8 4f fc ff ff       	call   80483b0 <_init>
 8048761:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048767:	29 c6                	sub    %eax,%esi
 8048769:	c1 fe 02             	sar    $0x2,%esi
 804876c:	85 f6                	test   %esi,%esi
 804876e:	74 25                	je     8048795 <__libc_csu_init+0x55>
 8048770:	31 ff                	xor    %edi,%edi
 8048772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048778:	83 ec 04             	sub    $0x4,%esp
 804877b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804877f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048783:	55                   	push   %ebp
 8048784:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804878b:	83 c7 01             	add    $0x1,%edi
 804878e:	83 c4 10             	add    $0x10,%esp
 8048791:	39 f7                	cmp    %esi,%edi
 8048793:	75 e3                	jne    8048778 <__libc_csu_init+0x38>
 8048795:	83 c4 0c             	add    $0xc,%esp
 8048798:	5b                   	pop    %ebx
 8048799:	5e                   	pop    %esi
 804879a:	5f                   	pop    %edi
 804879b:	5d                   	pop    %ebp
 804879c:	c3                   	ret    
 804879d:	8d 76 00             	lea    0x0(%esi),%esi

080487a0 <__libc_csu_fini>:
 80487a0:	f3 c3                	repz ret 

Disassembly of section .fini:

080487a4 <_fini>:
 80487a4:	53                   	push   %ebx
 80487a5:	83 ec 08             	sub    $0x8,%esp
 80487a8:	e8 23 fd ff ff       	call   80484d0 <__x86.get_pc_thunk.bx>
 80487ad:	81 c3 53 18 00 00    	add    $0x1853,%ebx
 80487b3:	83 c4 08             	add    $0x8,%esp
 80487b6:	5b                   	pop    %ebx
 80487b7:	c3                   	ret    
