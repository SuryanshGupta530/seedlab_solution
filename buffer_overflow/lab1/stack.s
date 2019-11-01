
stack:     file format elf32-i386


Disassembly of section .init:

08048324 <_init>:
 8048324:	53                   	push   %ebx
 8048325:	83 ec 08             	sub    $0x8,%esp
 8048328:	e8 c3 00 00 00       	call   80483f0 <__x86.get_pc_thunk.bx>
 804832d:	81 c3 d3 1c 00 00    	add    $0x1cd3,%ebx
 8048333:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048339:	85 c0                	test   %eax,%eax
 804833b:	74 05                	je     8048342 <_init+0x1e>
 804833d:	e8 6e 00 00 00       	call   80483b0 <fopen@plt+0x10>
 8048342:	83 c4 08             	add    $0x8,%esp
 8048345:	5b                   	pop    %ebx
 8048346:	c3                   	ret    

Disassembly of section .plt:

08048350 <fread@plt-0x10>:
 8048350:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048356:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804835c:	00 00                	add    %al,(%eax)
	...

08048360 <fread@plt>:
 8048360:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048366:	68 00 00 00 00       	push   $0x0
 804836b:	e9 e0 ff ff ff       	jmp    8048350 <_init+0x2c>

08048370 <strcpy@plt>:
 8048370:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048376:	68 08 00 00 00       	push   $0x8
 804837b:	e9 d0 ff ff ff       	jmp    8048350 <_init+0x2c>

08048380 <puts@plt>:
 8048380:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048386:	68 10 00 00 00       	push   $0x10
 804838b:	e9 c0 ff ff ff       	jmp    8048350 <_init+0x2c>

08048390 <__libc_start_main@plt>:
 8048390:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048396:	68 18 00 00 00       	push   $0x18
 804839b:	e9 b0 ff ff ff       	jmp    8048350 <_init+0x2c>

080483a0 <fopen@plt>:
 80483a0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80483a6:	68 20 00 00 00       	push   $0x20
 80483ab:	e9 a0 ff ff ff       	jmp    8048350 <_init+0x2c>

Disassembly of section .plt.got:

080483b0 <.plt.got>:
 80483b0:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080483c0 <_start>:
 80483c0:	31 ed                	xor    %ebp,%ebp
 80483c2:	5e                   	pop    %esi
 80483c3:	89 e1                	mov    %esp,%ecx
 80483c5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483c8:	50                   	push   %eax
 80483c9:	54                   	push   %esp
 80483ca:	52                   	push   %edx
 80483cb:	68 b0 85 04 08       	push   $0x80485b0
 80483d0:	68 50 85 04 08       	push   $0x8048550
 80483d5:	51                   	push   %ecx
 80483d6:	56                   	push   %esi
 80483d7:	68 da 84 04 08       	push   $0x80484da
 80483dc:	e8 af ff ff ff       	call   8048390 <__libc_start_main@plt>
 80483e1:	f4                   	hlt    
 80483e2:	66 90                	xchg   %ax,%ax
 80483e4:	66 90                	xchg   %ax,%ax
 80483e6:	66 90                	xchg   %ax,%ax
 80483e8:	66 90                	xchg   %ax,%ax
 80483ea:	66 90                	xchg   %ax,%ax
 80483ec:	66 90                	xchg   %ax,%ax
 80483ee:	66 90                	xchg   %ax,%ax

080483f0 <__x86.get_pc_thunk.bx>:
 80483f0:	8b 1c 24             	mov    (%esp),%ebx
 80483f3:	c3                   	ret    
 80483f4:	66 90                	xchg   %ax,%ax
 80483f6:	66 90                	xchg   %ax,%ax
 80483f8:	66 90                	xchg   %ax,%ax
 80483fa:	66 90                	xchg   %ax,%ax
 80483fc:	66 90                	xchg   %ax,%ax
 80483fe:	66 90                	xchg   %ax,%ax

08048400 <deregister_tm_clones>:
 8048400:	b8 2b a0 04 08       	mov    $0x804a02b,%eax
 8048405:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 804840a:	83 f8 06             	cmp    $0x6,%eax
 804840d:	76 1a                	jbe    8048429 <deregister_tm_clones+0x29>
 804840f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048414:	85 c0                	test   %eax,%eax
 8048416:	74 11                	je     8048429 <deregister_tm_clones+0x29>
 8048418:	55                   	push   %ebp
 8048419:	89 e5                	mov    %esp,%ebp
 804841b:	83 ec 14             	sub    $0x14,%esp
 804841e:	68 28 a0 04 08       	push   $0x804a028
 8048423:	ff d0                	call   *%eax
 8048425:	83 c4 10             	add    $0x10,%esp
 8048428:	c9                   	leave  
 8048429:	f3 c3                	repz ret 
 804842b:	90                   	nop
 804842c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048430 <register_tm_clones>:
 8048430:	b8 28 a0 04 08       	mov    $0x804a028,%eax
 8048435:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 804843a:	c1 f8 02             	sar    $0x2,%eax
 804843d:	89 c2                	mov    %eax,%edx
 804843f:	c1 ea 1f             	shr    $0x1f,%edx
 8048442:	01 d0                	add    %edx,%eax
 8048444:	d1 f8                	sar    %eax
 8048446:	74 1b                	je     8048463 <register_tm_clones+0x33>
 8048448:	ba 00 00 00 00       	mov    $0x0,%edx
 804844d:	85 d2                	test   %edx,%edx
 804844f:	74 12                	je     8048463 <register_tm_clones+0x33>
 8048451:	55                   	push   %ebp
 8048452:	89 e5                	mov    %esp,%ebp
 8048454:	83 ec 10             	sub    $0x10,%esp
 8048457:	50                   	push   %eax
 8048458:	68 28 a0 04 08       	push   $0x804a028
 804845d:	ff d2                	call   *%edx
 804845f:	83 c4 10             	add    $0x10,%esp
 8048462:	c9                   	leave  
 8048463:	f3 c3                	repz ret 
 8048465:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048470 <__do_global_dtors_aux>:
 8048470:	80 3d 28 a0 04 08 00 	cmpb   $0x0,0x804a028
 8048477:	75 13                	jne    804848c <__do_global_dtors_aux+0x1c>
 8048479:	55                   	push   %ebp
 804847a:	89 e5                	mov    %esp,%ebp
 804847c:	83 ec 08             	sub    $0x8,%esp
 804847f:	e8 7c ff ff ff       	call   8048400 <deregister_tm_clones>
 8048484:	c6 05 28 a0 04 08 01 	movb   $0x1,0x804a028
 804848b:	c9                   	leave  
 804848c:	f3 c3                	repz ret 
 804848e:	66 90                	xchg   %ax,%ax

08048490 <frame_dummy>:
 8048490:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048495:	8b 10                	mov    (%eax),%edx
 8048497:	85 d2                	test   %edx,%edx
 8048499:	75 05                	jne    80484a0 <frame_dummy+0x10>
 804849b:	eb 93                	jmp    8048430 <register_tm_clones>
 804849d:	8d 76 00             	lea    0x0(%esi),%esi
 80484a0:	ba 00 00 00 00       	mov    $0x0,%edx
 80484a5:	85 d2                	test   %edx,%edx
 80484a7:	74 f2                	je     804849b <frame_dummy+0xb>
 80484a9:	55                   	push   %ebp
 80484aa:	89 e5                	mov    %esp,%ebp
 80484ac:	83 ec 14             	sub    $0x14,%esp
 80484af:	50                   	push   %eax
 80484b0:	ff d2                	call   *%edx
 80484b2:	83 c4 10             	add    $0x10,%esp
 80484b5:	c9                   	leave  
 80484b6:	e9 75 ff ff ff       	jmp    8048430 <register_tm_clones>

080484bb <bof>:
 80484bb:	55                   	push   %ebp
 80484bc:	89 e5                	mov    %esp,%ebp
 80484be:	83 ec 28             	sub    $0x28,%esp
 80484c1:	83 ec 08             	sub    $0x8,%esp
 80484c4:	ff 75 08             	pushl  0x8(%ebp)
 80484c7:	8d 45 e0             	lea    -0x20(%ebp),%eax
 80484ca:	50                   	push   %eax
 80484cb:	e8 a0 fe ff ff       	call   8048370 <strcpy@plt>
 80484d0:	83 c4 10             	add    $0x10,%esp
 80484d3:	b8 01 00 00 00       	mov    $0x1,%eax
 80484d8:	c9                   	leave  
 80484d9:	c3                   	ret    

080484da <main>:
 80484da:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80484de:	83 e4 f0             	and    $0xfffffff0,%esp
 80484e1:	ff 71 fc             	pushl  -0x4(%ecx)
 80484e4:	55                   	push   %ebp
 80484e5:	89 e5                	mov    %esp,%ebp
 80484e7:	51                   	push   %ecx
 80484e8:	81 ec 14 02 00 00    	sub    $0x214,%esp
 80484ee:	83 ec 08             	sub    $0x8,%esp
 80484f1:	68 d0 85 04 08       	push   $0x80485d0
 80484f6:	68 d2 85 04 08       	push   $0x80485d2
 80484fb:	e8 a0 fe ff ff       	call   80483a0 <fopen@plt>
 8048500:	83 c4 10             	add    $0x10,%esp
 8048503:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048506:	ff 75 f4             	pushl  -0xc(%ebp)
 8048509:	68 05 02 00 00       	push   $0x205
 804850e:	6a 01                	push   $0x1
 8048510:	8d 85 ef fd ff ff    	lea    -0x211(%ebp),%eax
 8048516:	50                   	push   %eax
 8048517:	e8 44 fe ff ff       	call   8048360 <fread@plt>
 804851c:	83 c4 10             	add    $0x10,%esp
 804851f:	83 ec 0c             	sub    $0xc,%esp
 8048522:	8d 85 ef fd ff ff    	lea    -0x211(%ebp),%eax
 8048528:	50                   	push   %eax
 8048529:	e8 8d ff ff ff       	call   80484bb <bof>
 804852e:	83 c4 10             	add    $0x10,%esp
 8048531:	83 ec 0c             	sub    $0xc,%esp
 8048534:	68 da 85 04 08       	push   $0x80485da
 8048539:	e8 42 fe ff ff       	call   8048380 <puts@plt>
 804853e:	83 c4 10             	add    $0x10,%esp
 8048541:	b8 01 00 00 00       	mov    $0x1,%eax
 8048546:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 8048549:	c9                   	leave  
 804854a:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804854d:	c3                   	ret    
 804854e:	66 90                	xchg   %ax,%ax

08048550 <__libc_csu_init>:
 8048550:	55                   	push   %ebp
 8048551:	57                   	push   %edi
 8048552:	56                   	push   %esi
 8048553:	53                   	push   %ebx
 8048554:	e8 97 fe ff ff       	call   80483f0 <__x86.get_pc_thunk.bx>
 8048559:	81 c3 a7 1a 00 00    	add    $0x1aa7,%ebx
 804855f:	83 ec 0c             	sub    $0xc,%esp
 8048562:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048566:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804856c:	e8 b3 fd ff ff       	call   8048324 <_init>
 8048571:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048577:	29 c6                	sub    %eax,%esi
 8048579:	c1 fe 02             	sar    $0x2,%esi
 804857c:	85 f6                	test   %esi,%esi
 804857e:	74 25                	je     80485a5 <__libc_csu_init+0x55>
 8048580:	31 ff                	xor    %edi,%edi
 8048582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048588:	83 ec 04             	sub    $0x4,%esp
 804858b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804858f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048593:	55                   	push   %ebp
 8048594:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804859b:	83 c7 01             	add    $0x1,%edi
 804859e:	83 c4 10             	add    $0x10,%esp
 80485a1:	39 f7                	cmp    %esi,%edi
 80485a3:	75 e3                	jne    8048588 <__libc_csu_init+0x38>
 80485a5:	83 c4 0c             	add    $0xc,%esp
 80485a8:	5b                   	pop    %ebx
 80485a9:	5e                   	pop    %esi
 80485aa:	5f                   	pop    %edi
 80485ab:	5d                   	pop    %ebp
 80485ac:	c3                   	ret    
 80485ad:	8d 76 00             	lea    0x0(%esi),%esi

080485b0 <__libc_csu_fini>:
 80485b0:	f3 c3                	repz ret 

Disassembly of section .fini:

080485b4 <_fini>:
 80485b4:	53                   	push   %ebx
 80485b5:	83 ec 08             	sub    $0x8,%esp
 80485b8:	e8 33 fe ff ff       	call   80483f0 <__x86.get_pc_thunk.bx>
 80485bd:	81 c3 43 1a 00 00    	add    $0x1a43,%ebx
 80485c3:	83 c4 08             	add    $0x8,%esp
 80485c6:	5b                   	pop    %ebx
 80485c7:	c3                   	ret    
