
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

f0100000 <_start+0xeffffff4>:
f0100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
f0100006:	00 00                	add    %al,(%eax)
f0100008:	fe 4f 52             	decb   0x52(%edi)
f010000b:	e4                   	.byte 0xe4

f010000c <entry>:
f010000c:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
f0100013:	34 12 
f0100015:	b8 00 d0 10 00       	mov    $0x10d000,%eax
f010001a:	0f 22 d8             	mov    %eax,%cr3
f010001d:	0f 20 c0             	mov    %cr0,%eax
f0100020:	0d 01 00 01 80       	or     $0x80010001,%eax
f0100025:	0f 22 c0             	mov    %eax,%cr0
f0100028:	b8 2f 00 10 f0       	mov    $0xf010002f,%eax
f010002d:	ff e0                	jmp    *%eax

f010002f <relocated>:
f010002f:	bd 00 00 00 00       	mov    $0x0,%ebp
f0100034:	bc 00 d0 10 f0       	mov    $0xf010d000,%esp
f0100039:	e8 02 00 00 00       	call   f0100040 <i386_init>

f010003e <spin>:
f010003e:	eb fe                	jmp    f010003e <spin>

f0100040 <i386_init>:
f0100040:	55                   	push   %ebp
f0100041:	89 e5                	mov    %esp,%ebp
f0100043:	83 ec 0c             	sub    $0xc,%esp
f0100046:	b8 80 f9 10 f0       	mov    $0xf010f980,%eax
f010004b:	2d 00 f3 10 f0       	sub    $0xf010f300,%eax
f0100050:	50                   	push   %eax
f0100051:	6a 00                	push   $0x0
f0100053:	68 00 f3 10 f0       	push   $0xf010f300
f0100058:	e8 c6 33 00 00       	call   f0103423 <memset>
f010005d:	e8 77 04 00 00       	call   f01004d9 <cons_init>
f0100062:	83 c4 08             	add    $0x8,%esp
f0100065:	68 ac 1a 00 00       	push   $0x1aac
f010006a:	68 a0 38 10 f0       	push   $0xf01038a0
f010006f:	e8 1d 28 00 00       	call   f0102891 <cprintf>
f0100074:	e8 5e 0f 00 00       	call   f0100fd7 <mem_init>
f0100079:	83 c4 10             	add    $0x10,%esp
f010007c:	83 ec 0c             	sub    $0xc,%esp
f010007f:	6a 00                	push   $0x0
f0100081:	e8 5a 06 00 00       	call   f01006e0 <monitor>
f0100086:	83 c4 10             	add    $0x10,%esp
f0100089:	eb f1                	jmp    f010007c <i386_init+0x3c>

f010008b <_panic>:
f010008b:	55                   	push   %ebp
f010008c:	89 e5                	mov    %esp,%ebp
f010008e:	83 ec 08             	sub    $0x8,%esp
f0100091:	83 3d 00 f3 10 f0 00 	cmpl   $0x0,0xf010f300
f0100098:	74 0f                	je     f01000a9 <_panic+0x1e>
f010009a:	83 ec 0c             	sub    $0xc,%esp
f010009d:	6a 00                	push   $0x0
f010009f:	e8 3c 06 00 00       	call   f01006e0 <monitor>
f01000a4:	83 c4 10             	add    $0x10,%esp
f01000a7:	eb f1                	jmp    f010009a <_panic+0xf>
f01000a9:	8b 45 10             	mov    0x10(%ebp),%eax
f01000ac:	a3 00 f3 10 f0       	mov    %eax,0xf010f300
f01000b1:	fa                   	cli
f01000b2:	fc                   	cld
f01000b3:	83 ec 04             	sub    $0x4,%esp
f01000b6:	ff 75 0c             	push   0xc(%ebp)
f01000b9:	ff 75 08             	push   0x8(%ebp)
f01000bc:	68 bb 38 10 f0       	push   $0xf01038bb
f01000c1:	e8 cb 27 00 00       	call   f0102891 <cprintf>
f01000c6:	83 c4 08             	add    $0x8,%esp
f01000c9:	8d 45 14             	lea    0x14(%ebp),%eax
f01000cc:	50                   	push   %eax
f01000cd:	ff 75 10             	push   0x10(%ebp)
f01000d0:	e8 96 27 00 00       	call   f010286b <vcprintf>
f01000d5:	c7 04 24 51 3c 10 f0 	movl   $0xf0103c51,(%esp)
f01000dc:	e8 b0 27 00 00       	call   f0102891 <cprintf>
f01000e1:	83 c4 10             	add    $0x10,%esp
f01000e4:	eb b4                	jmp    f010009a <_panic+0xf>

f01000e6 <_warn>:
f01000e6:	55                   	push   %ebp
f01000e7:	89 e5                	mov    %esp,%ebp
f01000e9:	53                   	push   %ebx
f01000ea:	83 ec 08             	sub    $0x8,%esp
f01000ed:	8d 5d 14             	lea    0x14(%ebp),%ebx
f01000f0:	ff 75 0c             	push   0xc(%ebp)
f01000f3:	ff 75 08             	push   0x8(%ebp)
f01000f6:	68 d3 38 10 f0       	push   $0xf01038d3
f01000fb:	e8 91 27 00 00       	call   f0102891 <cprintf>
f0100100:	83 c4 08             	add    $0x8,%esp
f0100103:	53                   	push   %ebx
f0100104:	ff 75 10             	push   0x10(%ebp)
f0100107:	e8 5f 27 00 00       	call   f010286b <vcprintf>
f010010c:	c7 04 24 51 3c 10 f0 	movl   $0xf0103c51,(%esp)
f0100113:	e8 79 27 00 00       	call   f0102891 <cprintf>
f0100118:	83 c4 10             	add    $0x10,%esp
f010011b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f010011e:	c9                   	leave
f010011f:	c3                   	ret

f0100120 <serial_proc_data>:
f0100120:	ba fd 03 00 00       	mov    $0x3fd,%edx
f0100125:	ec                   	in     (%dx),%al
f0100126:	a8 01                	test   $0x1,%al
f0100128:	74 0a                	je     f0100134 <serial_proc_data+0x14>
f010012a:	ba f8 03 00 00       	mov    $0x3f8,%edx
f010012f:	ec                   	in     (%dx),%al
f0100130:	0f b6 c0             	movzbl %al,%eax
f0100133:	c3                   	ret
f0100134:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
f0100139:	c3                   	ret

f010013a <cons_intr>:
f010013a:	55                   	push   %ebp
f010013b:	89 e5                	mov    %esp,%ebp
f010013d:	53                   	push   %ebx
f010013e:	83 ec 04             	sub    $0x4,%esp
f0100141:	89 c3                	mov    %eax,%ebx
f0100143:	ff d3                	call   *%ebx
f0100145:	83 f8 ff             	cmp    $0xffffffff,%eax
f0100148:	74 29                	je     f0100173 <cons_intr+0x39>
f010014a:	85 c0                	test   %eax,%eax
f010014c:	74 f5                	je     f0100143 <cons_intr+0x9>
f010014e:	8b 0d 44 f5 10 f0    	mov    0xf010f544,%ecx
f0100154:	8d 51 01             	lea    0x1(%ecx),%edx
f0100157:	88 81 40 f3 10 f0    	mov    %al,-0xfef0cc0(%ecx)
f010015d:	81 fa 00 02 00 00    	cmp    $0x200,%edx
f0100163:	b8 00 00 00 00       	mov    $0x0,%eax
f0100168:	0f 44 d0             	cmove  %eax,%edx
f010016b:	89 15 44 f5 10 f0    	mov    %edx,0xf010f544
f0100171:	eb d0                	jmp    f0100143 <cons_intr+0x9>
f0100173:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f0100176:	c9                   	leave
f0100177:	c3                   	ret

f0100178 <kbd_proc_data>:
f0100178:	55                   	push   %ebp
f0100179:	89 e5                	mov    %esp,%ebp
f010017b:	53                   	push   %ebx
f010017c:	83 ec 04             	sub    $0x4,%esp
f010017f:	ba 64 00 00 00       	mov    $0x64,%edx
f0100184:	ec                   	in     (%dx),%al
f0100185:	83 e0 21             	and    $0x21,%eax
f0100188:	3c 01                	cmp    $0x1,%al
f010018a:	0f 85 e6 00 00 00    	jne    f0100276 <kbd_proc_data+0xfe>
f0100190:	ba 60 00 00 00       	mov    $0x60,%edx
f0100195:	ec                   	in     (%dx),%al
f0100196:	89 c2                	mov    %eax,%edx
f0100198:	3c e0                	cmp    $0xe0,%al
f010019a:	74 61                	je     f01001fd <kbd_proc_data+0x85>
f010019c:	84 c0                	test   %al,%al
f010019e:	78 70                	js     f0100210 <kbd_proc_data+0x98>
f01001a0:	8b 0d 20 f3 10 f0    	mov    0xf010f320,%ecx
f01001a6:	f6 c1 40             	test   $0x40,%cl
f01001a9:	74 0e                	je     f01001b9 <kbd_proc_data+0x41>
f01001ab:	83 c8 80             	or     $0xffffff80,%eax
f01001ae:	89 c2                	mov    %eax,%edx
f01001b0:	83 e1 bf             	and    $0xffffffbf,%ecx
f01001b3:	89 0d 20 f3 10 f0    	mov    %ecx,0xf010f320
f01001b9:	0f b6 d2             	movzbl %dl,%edx
f01001bc:	0f b6 82 80 3e 10 f0 	movzbl -0xfefc180(%edx),%eax
f01001c3:	0b 05 20 f3 10 f0    	or     0xf010f320,%eax
f01001c9:	0f b6 8a 80 3d 10 f0 	movzbl -0xfefc280(%edx),%ecx
f01001d0:	31 c8                	xor    %ecx,%eax
f01001d2:	a3 20 f3 10 f0       	mov    %eax,0xf010f320
f01001d7:	89 c1                	mov    %eax,%ecx
f01001d9:	83 e1 03             	and    $0x3,%ecx
f01001dc:	8b 0c 8d 60 3d 10 f0 	mov    -0xfefc2a0(,%ecx,4),%ecx
f01001e3:	0f b6 14 11          	movzbl (%ecx,%edx,1),%edx
f01001e7:	0f b6 da             	movzbl %dl,%ebx
f01001ea:	a8 08                	test   $0x8,%al
f01001ec:	74 5d                	je     f010024b <kbd_proc_data+0xd3>
f01001ee:	89 da                	mov    %ebx,%edx
f01001f0:	8d 4b 9f             	lea    -0x61(%ebx),%ecx
f01001f3:	83 f9 19             	cmp    $0x19,%ecx
f01001f6:	77 47                	ja     f010023f <kbd_proc_data+0xc7>
f01001f8:	83 eb 20             	sub    $0x20,%ebx
f01001fb:	eb 0c                	jmp    f0100209 <kbd_proc_data+0x91>
f01001fd:	83 0d 20 f3 10 f0 40 	orl    $0x40,0xf010f320
f0100204:	bb 00 00 00 00       	mov    $0x0,%ebx
f0100209:	89 d8                	mov    %ebx,%eax
f010020b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f010020e:	c9                   	leave
f010020f:	c3                   	ret
f0100210:	8b 0d 20 f3 10 f0    	mov    0xf010f320,%ecx
f0100216:	83 e0 7f             	and    $0x7f,%eax
f0100219:	f6 c1 40             	test   $0x40,%cl
f010021c:	0f 44 d0             	cmove  %eax,%edx
f010021f:	0f b6 d2             	movzbl %dl,%edx
f0100222:	0f b6 82 80 3e 10 f0 	movzbl -0xfefc180(%edx),%eax
f0100229:	83 c8 40             	or     $0x40,%eax
f010022c:	0f b6 c0             	movzbl %al,%eax
f010022f:	f7 d0                	not    %eax
f0100231:	21 c8                	and    %ecx,%eax
f0100233:	a3 20 f3 10 f0       	mov    %eax,0xf010f320
f0100238:	bb 00 00 00 00       	mov    $0x0,%ebx
f010023d:	eb ca                	jmp    f0100209 <kbd_proc_data+0x91>
f010023f:	83 ea 41             	sub    $0x41,%edx
f0100242:	8d 4b 20             	lea    0x20(%ebx),%ecx
f0100245:	83 fa 1a             	cmp    $0x1a,%edx
f0100248:	0f 42 d9             	cmovb  %ecx,%ebx
f010024b:	f7 d0                	not    %eax
f010024d:	a8 06                	test   $0x6,%al
f010024f:	75 b8                	jne    f0100209 <kbd_proc_data+0x91>
f0100251:	81 fb e9 00 00 00    	cmp    $0xe9,%ebx
f0100257:	75 b0                	jne    f0100209 <kbd_proc_data+0x91>
f0100259:	83 ec 0c             	sub    $0xc,%esp
f010025c:	68 ed 38 10 f0       	push   $0xf01038ed
f0100261:	e8 2b 26 00 00       	call   f0102891 <cprintf>
f0100266:	b8 03 00 00 00       	mov    $0x3,%eax
f010026b:	ba 92 00 00 00       	mov    $0x92,%edx
f0100270:	ee                   	out    %al,(%dx)
f0100271:	83 c4 10             	add    $0x10,%esp
f0100274:	eb 93                	jmp    f0100209 <kbd_proc_data+0x91>
f0100276:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
f010027b:	eb 8c                	jmp    f0100209 <kbd_proc_data+0x91>

f010027d <cons_putc>:
f010027d:	55                   	push   %ebp
f010027e:	89 e5                	mov    %esp,%ebp
f0100280:	57                   	push   %edi
f0100281:	56                   	push   %esi
f0100282:	53                   	push   %ebx
f0100283:	83 ec 1c             	sub    $0x1c,%esp
f0100286:	89 c7                	mov    %eax,%edi
f0100288:	bb 00 00 00 00       	mov    $0x0,%ebx
f010028d:	be fd 03 00 00       	mov    $0x3fd,%esi
f0100292:	b9 84 00 00 00       	mov    $0x84,%ecx
f0100297:	89 f2                	mov    %esi,%edx
f0100299:	ec                   	in     (%dx),%al
f010029a:	a8 20                	test   $0x20,%al
f010029c:	75 13                	jne    f01002b1 <cons_putc+0x34>
f010029e:	81 fb ff 31 00 00    	cmp    $0x31ff,%ebx
f01002a4:	7f 0b                	jg     f01002b1 <cons_putc+0x34>
f01002a6:	89 ca                	mov    %ecx,%edx
f01002a8:	ec                   	in     (%dx),%al
f01002a9:	ec                   	in     (%dx),%al
f01002aa:	ec                   	in     (%dx),%al
f01002ab:	ec                   	in     (%dx),%al
f01002ac:	83 c3 01             	add    $0x1,%ebx
f01002af:	eb e6                	jmp    f0100297 <cons_putc+0x1a>
f01002b1:	89 f8                	mov    %edi,%eax
f01002b3:	88 45 e7             	mov    %al,-0x19(%ebp)
f01002b6:	ba f8 03 00 00       	mov    $0x3f8,%edx
f01002bb:	ee                   	out    %al,(%dx)
f01002bc:	bb 00 00 00 00       	mov    $0x0,%ebx
f01002c1:	be 79 03 00 00       	mov    $0x379,%esi
f01002c6:	b9 84 00 00 00       	mov    $0x84,%ecx
f01002cb:	89 f2                	mov    %esi,%edx
f01002cd:	ec                   	in     (%dx),%al
f01002ce:	81 fb ff 31 00 00    	cmp    $0x31ff,%ebx
f01002d4:	7f 0f                	jg     f01002e5 <cons_putc+0x68>
f01002d6:	84 c0                	test   %al,%al
f01002d8:	78 0b                	js     f01002e5 <cons_putc+0x68>
f01002da:	89 ca                	mov    %ecx,%edx
f01002dc:	ec                   	in     (%dx),%al
f01002dd:	ec                   	in     (%dx),%al
f01002de:	ec                   	in     (%dx),%al
f01002df:	ec                   	in     (%dx),%al
f01002e0:	83 c3 01             	add    $0x1,%ebx
f01002e3:	eb e6                	jmp    f01002cb <cons_putc+0x4e>
f01002e5:	ba 78 03 00 00       	mov    $0x378,%edx
f01002ea:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
f01002ee:	ee                   	out    %al,(%dx)
f01002ef:	ba 7a 03 00 00       	mov    $0x37a,%edx
f01002f4:	b8 0d 00 00 00       	mov    $0xd,%eax
f01002f9:	ee                   	out    %al,(%dx)
f01002fa:	b8 08 00 00 00       	mov    $0x8,%eax
f01002ff:	ee                   	out    %al,(%dx)
f0100300:	89 f8                	mov    %edi,%eax
f0100302:	80 cc 07             	or     $0x7,%ah
f0100305:	81 ff 00 01 00 00    	cmp    $0x100,%edi
f010030b:	0f 42 f8             	cmovb  %eax,%edi
f010030e:	89 f8                	mov    %edi,%eax
f0100310:	0f b6 c0             	movzbl %al,%eax
f0100313:	89 fb                	mov    %edi,%ebx
f0100315:	80 fb 0a             	cmp    $0xa,%bl
f0100318:	0f 84 94 00 00 00    	je     f01003b2 <cons_putc+0x135>
f010031e:	83 f8 0a             	cmp    $0xa,%eax
f0100321:	7f 3e                	jg     f0100361 <cons_putc+0xe4>
f0100323:	83 f8 08             	cmp    $0x8,%eax
f0100326:	74 5e                	je     f0100386 <cons_putc+0x109>
f0100328:	83 f8 09             	cmp    $0x9,%eax
f010032b:	75 39                	jne    f0100366 <cons_putc+0xe9>
f010032d:	b8 20 00 00 00       	mov    $0x20,%eax
f0100332:	e8 46 ff ff ff       	call   f010027d <cons_putc>
f0100337:	b8 20 00 00 00       	mov    $0x20,%eax
f010033c:	e8 3c ff ff ff       	call   f010027d <cons_putc>
f0100341:	b8 20 00 00 00       	mov    $0x20,%eax
f0100346:	e8 32 ff ff ff       	call   f010027d <cons_putc>
f010034b:	b8 20 00 00 00       	mov    $0x20,%eax
f0100350:	e8 28 ff ff ff       	call   f010027d <cons_putc>
f0100355:	b8 20 00 00 00       	mov    $0x20,%eax
f010035a:	e8 1e ff ff ff       	call   f010027d <cons_putc>
f010035f:	eb 75                	jmp    f01003d6 <cons_putc+0x159>
f0100361:	83 f8 0d             	cmp    $0xd,%eax
f0100364:	74 54                	je     f01003ba <cons_putc+0x13d>
f0100366:	0f b7 05 48 f5 10 f0 	movzwl 0xf010f548,%eax
f010036d:	8d 50 01             	lea    0x1(%eax),%edx
f0100370:	66 89 15 48 f5 10 f0 	mov    %dx,0xf010f548
f0100377:	0f b7 c0             	movzwl %ax,%eax
f010037a:	8b 15 4c f5 10 f0    	mov    0xf010f54c,%edx
f0100380:	66 89 3c 42          	mov    %di,(%edx,%eax,2)
f0100384:	eb 50                	jmp    f01003d6 <cons_putc+0x159>
f0100386:	0f b7 05 48 f5 10 f0 	movzwl 0xf010f548,%eax
f010038d:	66 85 c0             	test   %ax,%ax
f0100390:	74 4f                	je     f01003e1 <cons_putc+0x164>
f0100392:	83 e8 01             	sub    $0x1,%eax
f0100395:	66 a3 48 f5 10 f0    	mov    %ax,0xf010f548
f010039b:	0f b7 c0             	movzwl %ax,%eax
f010039e:	66 81 e7 00 ff       	and    $0xff00,%di
f01003a3:	83 cf 20             	or     $0x20,%edi
f01003a6:	8b 15 4c f5 10 f0    	mov    0xf010f54c,%edx
f01003ac:	66 89 3c 42          	mov    %di,(%edx,%eax,2)
f01003b0:	eb 24                	jmp    f01003d6 <cons_putc+0x159>
f01003b2:	66 83 05 48 f5 10 f0 	addw   $0x50,0xf010f548
f01003b9:	50 
f01003ba:	0f b7 05 48 f5 10 f0 	movzwl 0xf010f548,%eax
f01003c1:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
f01003c7:	c1 e8 16             	shr    $0x16,%eax
f01003ca:	8d 04 80             	lea    (%eax,%eax,4),%eax
f01003cd:	c1 e0 04             	shl    $0x4,%eax
f01003d0:	66 a3 48 f5 10 f0    	mov    %ax,0xf010f548
f01003d6:	66 81 3d 48 f5 10 f0 	cmpw   $0x7cf,0xf010f548
f01003dd:	cf 07 
f01003df:	77 36                	ja     f0100417 <cons_putc+0x19a>
f01003e1:	8b 0d 50 f5 10 f0    	mov    0xf010f550,%ecx
f01003e7:	b8 0e 00 00 00       	mov    $0xe,%eax
f01003ec:	89 ca                	mov    %ecx,%edx
f01003ee:	ee                   	out    %al,(%dx)
f01003ef:	0f b7 1d 48 f5 10 f0 	movzwl 0xf010f548,%ebx
f01003f6:	8d 71 01             	lea    0x1(%ecx),%esi
f01003f9:	89 d8                	mov    %ebx,%eax
f01003fb:	66 c1 e8 08          	shr    $0x8,%ax
f01003ff:	89 f2                	mov    %esi,%edx
f0100401:	ee                   	out    %al,(%dx)
f0100402:	b8 0f 00 00 00       	mov    $0xf,%eax
f0100407:	89 ca                	mov    %ecx,%edx
f0100409:	ee                   	out    %al,(%dx)
f010040a:	89 d8                	mov    %ebx,%eax
f010040c:	89 f2                	mov    %esi,%edx
f010040e:	ee                   	out    %al,(%dx)
f010040f:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0100412:	5b                   	pop    %ebx
f0100413:	5e                   	pop    %esi
f0100414:	5f                   	pop    %edi
f0100415:	5d                   	pop    %ebp
f0100416:	c3                   	ret
f0100417:	a1 4c f5 10 f0       	mov    0xf010f54c,%eax
f010041c:	83 ec 04             	sub    $0x4,%esp
f010041f:	68 00 0f 00 00       	push   $0xf00
f0100424:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
f010042a:	52                   	push   %edx
f010042b:	50                   	push   %eax
f010042c:	e8 2b 30 00 00       	call   f010345c <memmove>
f0100431:	8b 15 4c f5 10 f0    	mov    0xf010f54c,%edx
f0100437:	8d 82 00 0f 00 00    	lea    0xf00(%edx),%eax
f010043d:	81 c2 a0 0f 00 00    	add    $0xfa0,%edx
f0100443:	83 c4 10             	add    $0x10,%esp
f0100446:	eb 10                	jmp    f0100458 <cons_putc+0x1db>
f0100448:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f010044f:	00 
f0100450:	66 c7 00 20 07       	movw   $0x720,(%eax)
f0100455:	83 c0 02             	add    $0x2,%eax
f0100458:	39 d0                	cmp    %edx,%eax
f010045a:	75 f4                	jne    f0100450 <cons_putc+0x1d3>
f010045c:	66 83 2d 48 f5 10 f0 	subw   $0x50,0xf010f548
f0100463:	50 
f0100464:	e9 78 ff ff ff       	jmp    f01003e1 <cons_putc+0x164>

f0100469 <serial_intr>:
f0100469:	80 3d 54 f5 10 f0 00 	cmpb   $0x0,0xf010f554
f0100470:	75 01                	jne    f0100473 <serial_intr+0xa>
f0100472:	c3                   	ret
f0100473:	55                   	push   %ebp
f0100474:	89 e5                	mov    %esp,%ebp
f0100476:	83 ec 08             	sub    $0x8,%esp
f0100479:	b8 20 01 10 f0       	mov    $0xf0100120,%eax
f010047e:	e8 b7 fc ff ff       	call   f010013a <cons_intr>
f0100483:	c9                   	leave
f0100484:	c3                   	ret

f0100485 <kbd_intr>:
f0100485:	55                   	push   %ebp
f0100486:	89 e5                	mov    %esp,%ebp
f0100488:	83 ec 08             	sub    $0x8,%esp
f010048b:	b8 78 01 10 f0       	mov    $0xf0100178,%eax
f0100490:	e8 a5 fc ff ff       	call   f010013a <cons_intr>
f0100495:	c9                   	leave
f0100496:	c3                   	ret

f0100497 <cons_getc>:
f0100497:	55                   	push   %ebp
f0100498:	89 e5                	mov    %esp,%ebp
f010049a:	83 ec 08             	sub    $0x8,%esp
f010049d:	e8 c7 ff ff ff       	call   f0100469 <serial_intr>
f01004a2:	e8 de ff ff ff       	call   f0100485 <kbd_intr>
f01004a7:	a1 40 f5 10 f0       	mov    0xf010f540,%eax
f01004ac:	ba 00 00 00 00       	mov    $0x0,%edx
f01004b1:	3b 05 44 f5 10 f0    	cmp    0xf010f544,%eax
f01004b7:	74 1c                	je     f01004d5 <cons_getc+0x3e>
f01004b9:	8d 48 01             	lea    0x1(%eax),%ecx
f01004bc:	0f b6 90 40 f3 10 f0 	movzbl -0xfef0cc0(%eax),%edx
f01004c3:	3d ff 01 00 00       	cmp    $0x1ff,%eax
f01004c8:	b8 00 00 00 00       	mov    $0x0,%eax
f01004cd:	0f 45 c1             	cmovne %ecx,%eax
f01004d0:	a3 40 f5 10 f0       	mov    %eax,0xf010f540
f01004d5:	89 d0                	mov    %edx,%eax
f01004d7:	c9                   	leave
f01004d8:	c3                   	ret

f01004d9 <cons_init>:
f01004d9:	55                   	push   %ebp
f01004da:	89 e5                	mov    %esp,%ebp
f01004dc:	57                   	push   %edi
f01004dd:	56                   	push   %esi
f01004de:	53                   	push   %ebx
f01004df:	83 ec 0c             	sub    $0xc,%esp
f01004e2:	0f b7 15 00 80 0b f0 	movzwl 0xf00b8000,%edx
f01004e9:	66 c7 05 00 80 0b f0 	movw   $0xa55a,0xf00b8000
f01004f0:	5a a5 
f01004f2:	0f b7 05 00 80 0b f0 	movzwl 0xf00b8000,%eax
f01004f9:	bb b4 03 00 00       	mov    $0x3b4,%ebx
f01004fe:	be 00 00 0b f0       	mov    $0xf00b0000,%esi
f0100503:	66 3d 5a a5          	cmp    $0xa55a,%ax
f0100507:	0f 84 a6 00 00 00    	je     f01005b3 <cons_init+0xda>
f010050d:	89 1d 50 f5 10 f0    	mov    %ebx,0xf010f550
f0100513:	b8 0e 00 00 00       	mov    $0xe,%eax
f0100518:	89 da                	mov    %ebx,%edx
f010051a:	ee                   	out    %al,(%dx)
f010051b:	8d 7b 01             	lea    0x1(%ebx),%edi
f010051e:	89 fa                	mov    %edi,%edx
f0100520:	ec                   	in     (%dx),%al
f0100521:	0f b6 c8             	movzbl %al,%ecx
f0100524:	c1 e1 08             	shl    $0x8,%ecx
f0100527:	b8 0f 00 00 00       	mov    $0xf,%eax
f010052c:	89 da                	mov    %ebx,%edx
f010052e:	ee                   	out    %al,(%dx)
f010052f:	89 fa                	mov    %edi,%edx
f0100531:	ec                   	in     (%dx),%al
f0100532:	89 35 4c f5 10 f0    	mov    %esi,0xf010f54c
f0100538:	0f b6 c0             	movzbl %al,%eax
f010053b:	09 c8                	or     %ecx,%eax
f010053d:	66 a3 48 f5 10 f0    	mov    %ax,0xf010f548
f0100543:	b9 00 00 00 00       	mov    $0x0,%ecx
f0100548:	bb fa 03 00 00       	mov    $0x3fa,%ebx
f010054d:	89 c8                	mov    %ecx,%eax
f010054f:	89 da                	mov    %ebx,%edx
f0100551:	ee                   	out    %al,(%dx)
f0100552:	bf fb 03 00 00       	mov    $0x3fb,%edi
f0100557:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
f010055c:	89 fa                	mov    %edi,%edx
f010055e:	ee                   	out    %al,(%dx)
f010055f:	b8 0c 00 00 00       	mov    $0xc,%eax
f0100564:	ba f8 03 00 00       	mov    $0x3f8,%edx
f0100569:	ee                   	out    %al,(%dx)
f010056a:	be f9 03 00 00       	mov    $0x3f9,%esi
f010056f:	89 c8                	mov    %ecx,%eax
f0100571:	89 f2                	mov    %esi,%edx
f0100573:	ee                   	out    %al,(%dx)
f0100574:	b8 03 00 00 00       	mov    $0x3,%eax
f0100579:	89 fa                	mov    %edi,%edx
f010057b:	ee                   	out    %al,(%dx)
f010057c:	ba fc 03 00 00       	mov    $0x3fc,%edx
f0100581:	89 c8                	mov    %ecx,%eax
f0100583:	ee                   	out    %al,(%dx)
f0100584:	b8 01 00 00 00       	mov    $0x1,%eax
f0100589:	89 f2                	mov    %esi,%edx
f010058b:	ee                   	out    %al,(%dx)
f010058c:	ba fd 03 00 00       	mov    $0x3fd,%edx
f0100591:	ec                   	in     (%dx),%al
f0100592:	89 c1                	mov    %eax,%ecx
f0100594:	3c ff                	cmp    $0xff,%al
f0100596:	0f 95 05 54 f5 10 f0 	setne  0xf010f554
f010059d:	89 da                	mov    %ebx,%edx
f010059f:	ec                   	in     (%dx),%al
f01005a0:	ba f8 03 00 00       	mov    $0x3f8,%edx
f01005a5:	ec                   	in     (%dx),%al
f01005a6:	80 f9 ff             	cmp    $0xff,%cl
f01005a9:	74 1e                	je     f01005c9 <cons_init+0xf0>
f01005ab:	8d 65 f4             	lea    -0xc(%ebp),%esp
f01005ae:	5b                   	pop    %ebx
f01005af:	5e                   	pop    %esi
f01005b0:	5f                   	pop    %edi
f01005b1:	5d                   	pop    %ebp
f01005b2:	c3                   	ret
f01005b3:	66 89 15 00 80 0b f0 	mov    %dx,0xf00b8000
f01005ba:	bb d4 03 00 00       	mov    $0x3d4,%ebx
f01005bf:	be 00 80 0b f0       	mov    $0xf00b8000,%esi
f01005c4:	e9 44 ff ff ff       	jmp    f010050d <cons_init+0x34>
f01005c9:	83 ec 0c             	sub    $0xc,%esp
f01005cc:	68 f9 38 10 f0       	push   $0xf01038f9
f01005d1:	e8 bb 22 00 00       	call   f0102891 <cprintf>
f01005d6:	83 c4 10             	add    $0x10,%esp
f01005d9:	eb d0                	jmp    f01005ab <cons_init+0xd2>

f01005db <cputchar>:
f01005db:	55                   	push   %ebp
f01005dc:	89 e5                	mov    %esp,%ebp
f01005de:	83 ec 08             	sub    $0x8,%esp
f01005e1:	8b 45 08             	mov    0x8(%ebp),%eax
f01005e4:	e8 94 fc ff ff       	call   f010027d <cons_putc>
f01005e9:	c9                   	leave
f01005ea:	c3                   	ret

f01005eb <getchar>:
f01005eb:	55                   	push   %ebp
f01005ec:	89 e5                	mov    %esp,%ebp
f01005ee:	83 ec 08             	sub    $0x8,%esp
f01005f1:	e8 a1 fe ff ff       	call   f0100497 <cons_getc>
f01005f6:	85 c0                	test   %eax,%eax
f01005f8:	74 f7                	je     f01005f1 <getchar+0x6>
f01005fa:	c9                   	leave
f01005fb:	c3                   	ret

f01005fc <iscons>:
f01005fc:	b8 01 00 00 00       	mov    $0x1,%eax
f0100601:	c3                   	ret

f0100602 <mon_help>:
f0100602:	55                   	push   %ebp
f0100603:	89 e5                	mov    %esp,%ebp
f0100605:	83 ec 0c             	sub    $0xc,%esp
f0100608:	68 16 39 10 f0       	push   $0xf0103916
f010060d:	68 34 39 10 f0       	push   $0xf0103934
f0100612:	68 39 39 10 f0       	push   $0xf0103939
f0100617:	e8 75 22 00 00       	call   f0102891 <cprintf>
f010061c:	83 c4 0c             	add    $0xc,%esp
f010061f:	68 80 3f 10 f0       	push   $0xf0103f80
f0100624:	68 42 39 10 f0       	push   $0xf0103942
f0100629:	68 39 39 10 f0       	push   $0xf0103939
f010062e:	e8 5e 22 00 00       	call   f0102891 <cprintf>
f0100633:	b8 00 00 00 00       	mov    $0x0,%eax
f0100638:	c9                   	leave
f0100639:	c3                   	ret

f010063a <mon_kerninfo>:
f010063a:	55                   	push   %ebp
f010063b:	89 e5                	mov    %esp,%ebp
f010063d:	83 ec 14             	sub    $0x14,%esp
f0100640:	68 4b 39 10 f0       	push   $0xf010394b
f0100645:	e8 47 22 00 00       	call   f0102891 <cprintf>
f010064a:	83 c4 08             	add    $0x8,%esp
f010064d:	68 0c 00 10 00       	push   $0x10000c
f0100652:	68 a8 3f 10 f0       	push   $0xf0103fa8
f0100657:	e8 35 22 00 00       	call   f0102891 <cprintf>
f010065c:	83 c4 0c             	add    $0xc,%esp
f010065f:	68 0c 00 10 00       	push   $0x10000c
f0100664:	68 0c 00 10 f0       	push   $0xf010000c
f0100669:	68 d0 3f 10 f0       	push   $0xf0103fd0
f010066e:	e8 1e 22 00 00       	call   f0102891 <cprintf>
f0100673:	83 c4 0c             	add    $0xc,%esp
f0100676:	68 86 38 10 00       	push   $0x103886
f010067b:	68 86 38 10 f0       	push   $0xf0103886
f0100680:	68 f4 3f 10 f0       	push   $0xf0103ff4
f0100685:	e8 07 22 00 00       	call   f0102891 <cprintf>
f010068a:	83 c4 0c             	add    $0xc,%esp
f010068d:	68 00 f3 10 00       	push   $0x10f300
f0100692:	68 00 f3 10 f0       	push   $0xf010f300
f0100697:	68 18 40 10 f0       	push   $0xf0104018
f010069c:	e8 f0 21 00 00       	call   f0102891 <cprintf>
f01006a1:	83 c4 0c             	add    $0xc,%esp
f01006a4:	68 80 f9 10 00       	push   $0x10f980
f01006a9:	68 80 f9 10 f0       	push   $0xf010f980
f01006ae:	68 3c 40 10 f0       	push   $0xf010403c
f01006b3:	e8 d9 21 00 00       	call   f0102891 <cprintf>
f01006b8:	83 c4 08             	add    $0x8,%esp
f01006bb:	b8 80 f9 10 f0       	mov    $0xf010f980,%eax
f01006c0:	2d 0d fc 0f f0       	sub    $0xf00ffc0d,%eax
f01006c5:	c1 f8 0a             	sar    $0xa,%eax
f01006c8:	50                   	push   %eax
f01006c9:	68 60 40 10 f0       	push   $0xf0104060
f01006ce:	e8 be 21 00 00       	call   f0102891 <cprintf>
f01006d3:	b8 00 00 00 00       	mov    $0x0,%eax
f01006d8:	c9                   	leave
f01006d9:	c3                   	ret

f01006da <mon_backtrace>:
f01006da:	b8 00 00 00 00       	mov    $0x0,%eax
f01006df:	c3                   	ret

f01006e0 <monitor>:
f01006e0:	55                   	push   %ebp
f01006e1:	89 e5                	mov    %esp,%ebp
f01006e3:	57                   	push   %edi
f01006e4:	56                   	push   %esi
f01006e5:	53                   	push   %ebx
f01006e6:	83 ec 58             	sub    $0x58,%esp
f01006e9:	68 8c 40 10 f0       	push   $0xf010408c
f01006ee:	e8 9e 21 00 00       	call   f0102891 <cprintf>
f01006f3:	c7 04 24 b0 40 10 f0 	movl   $0xf01040b0,(%esp)
f01006fa:	e8 92 21 00 00       	call   f0102891 <cprintf>
f01006ff:	83 c4 10             	add    $0x10,%esp
f0100702:	eb 47                	jmp    f010074b <monitor+0x6b>
f0100704:	83 ec 08             	sub    $0x8,%esp
f0100707:	0f be c0             	movsbl %al,%eax
f010070a:	50                   	push   %eax
f010070b:	68 68 39 10 f0       	push   $0xf0103968
f0100710:	e8 c1 2c 00 00       	call   f01033d6 <strchr>
f0100715:	83 c4 10             	add    $0x10,%esp
f0100718:	85 c0                	test   %eax,%eax
f010071a:	74 0a                	je     f0100726 <monitor+0x46>
f010071c:	c6 03 00             	movb   $0x0,(%ebx)
f010071f:	89 f7                	mov    %esi,%edi
f0100721:	8d 5b 01             	lea    0x1(%ebx),%ebx
f0100724:	eb 6b                	jmp    f0100791 <monitor+0xb1>
f0100726:	80 3b 00             	cmpb   $0x0,(%ebx)
f0100729:	74 73                	je     f010079e <monitor+0xbe>
f010072b:	83 fe 0f             	cmp    $0xf,%esi
f010072e:	74 09                	je     f0100739 <monitor+0x59>
f0100730:	8d 7e 01             	lea    0x1(%esi),%edi
f0100733:	89 5c b5 a8          	mov    %ebx,-0x58(%ebp,%esi,4)
f0100737:	eb 39                	jmp    f0100772 <monitor+0x92>
f0100739:	83 ec 08             	sub    $0x8,%esp
f010073c:	6a 10                	push   $0x10
f010073e:	68 6d 39 10 f0       	push   $0xf010396d
f0100743:	e8 49 21 00 00       	call   f0102891 <cprintf>
f0100748:	83 c4 10             	add    $0x10,%esp
f010074b:	83 ec 0c             	sub    $0xc,%esp
f010074e:	68 64 39 10 f0       	push   $0xf0103964
f0100753:	e8 03 2a 00 00       	call   f010315b <readline>
f0100758:	89 c3                	mov    %eax,%ebx
f010075a:	83 c4 10             	add    $0x10,%esp
f010075d:	85 c0                	test   %eax,%eax
f010075f:	74 ea                	je     f010074b <monitor+0x6b>
f0100761:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
f0100768:	be 00 00 00 00       	mov    $0x0,%esi
f010076d:	eb 24                	jmp    f0100793 <monitor+0xb3>
f010076f:	83 c3 01             	add    $0x1,%ebx
f0100772:	0f b6 03             	movzbl (%ebx),%eax
f0100775:	84 c0                	test   %al,%al
f0100777:	74 18                	je     f0100791 <monitor+0xb1>
f0100779:	83 ec 08             	sub    $0x8,%esp
f010077c:	0f be c0             	movsbl %al,%eax
f010077f:	50                   	push   %eax
f0100780:	68 68 39 10 f0       	push   $0xf0103968
f0100785:	e8 4c 2c 00 00       	call   f01033d6 <strchr>
f010078a:	83 c4 10             	add    $0x10,%esp
f010078d:	85 c0                	test   %eax,%eax
f010078f:	74 de                	je     f010076f <monitor+0x8f>
f0100791:	89 fe                	mov    %edi,%esi
f0100793:	0f b6 03             	movzbl (%ebx),%eax
f0100796:	84 c0                	test   %al,%al
f0100798:	0f 85 66 ff ff ff    	jne    f0100704 <monitor+0x24>
f010079e:	c7 44 b5 a8 00 00 00 	movl   $0x0,-0x58(%ebp,%esi,4)
f01007a5:	00 
f01007a6:	85 f6                	test   %esi,%esi
f01007a8:	74 a1                	je     f010074b <monitor+0x6b>
f01007aa:	83 ec 08             	sub    $0x8,%esp
f01007ad:	68 34 39 10 f0       	push   $0xf0103934
f01007b2:	ff 75 a8             	push   -0x58(%ebp)
f01007b5:	e8 a7 2b 00 00       	call   f0103361 <strcmp>
f01007ba:	83 c4 10             	add    $0x10,%esp
f01007bd:	85 c0                	test   %eax,%eax
f01007bf:	74 34                	je     f01007f5 <monitor+0x115>
f01007c1:	83 ec 08             	sub    $0x8,%esp
f01007c4:	68 42 39 10 f0       	push   $0xf0103942
f01007c9:	ff 75 a8             	push   -0x58(%ebp)
f01007cc:	e8 90 2b 00 00       	call   f0103361 <strcmp>
f01007d1:	83 c4 10             	add    $0x10,%esp
f01007d4:	85 c0                	test   %eax,%eax
f01007d6:	74 18                	je     f01007f0 <monitor+0x110>
f01007d8:	83 ec 08             	sub    $0x8,%esp
f01007db:	ff 75 a8             	push   -0x58(%ebp)
f01007de:	68 8a 39 10 f0       	push   $0xf010398a
f01007e3:	e8 a9 20 00 00       	call   f0102891 <cprintf>
f01007e8:	83 c4 10             	add    $0x10,%esp
f01007eb:	e9 5b ff ff ff       	jmp    f010074b <monitor+0x6b>
f01007f0:	b8 01 00 00 00       	mov    $0x1,%eax
f01007f5:	83 ec 04             	sub    $0x4,%esp
f01007f8:	8d 04 40             	lea    (%eax,%eax,2),%eax
f01007fb:	ff 75 08             	push   0x8(%ebp)
f01007fe:	8d 55 a8             	lea    -0x58(%ebp),%edx
f0100801:	52                   	push   %edx
f0100802:	56                   	push   %esi
f0100803:	ff 14 85 14 49 10 f0 	call   *-0xfefb6ec(,%eax,4)
f010080a:	83 c4 10             	add    $0x10,%esp
f010080d:	85 c0                	test   %eax,%eax
f010080f:	0f 89 36 ff ff ff    	jns    f010074b <monitor+0x6b>
f0100815:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0100818:	5b                   	pop    %ebx
f0100819:	5e                   	pop    %esi
f010081a:	5f                   	pop    %edi
f010081b:	5d                   	pop    %ebp
f010081c:	c3                   	ret
f010081d:	66 90                	xchg   %ax,%ax
f010081f:	66 90                	xchg   %ax,%ax
f0100821:	66 90                	xchg   %ax,%ax
f0100823:	66 90                	xchg   %ax,%ax
f0100825:	66 90                	xchg   %ax,%ax
f0100827:	66 90                	xchg   %ax,%ax
f0100829:	66 90                	xchg   %ax,%ax
f010082b:	66 90                	xchg   %ax,%ax
f010082d:	66 90                	xchg   %ax,%ax
f010082f:	66 90                	xchg   %ax,%ax
f0100831:	66 90                	xchg   %ax,%ax
f0100833:	66 90                	xchg   %ax,%ax
f0100835:	66 90                	xchg   %ax,%ax
f0100837:	66 90                	xchg   %ax,%ax
f0100839:	66 90                	xchg   %ax,%ax
f010083b:	66 90                	xchg   %ax,%ax
f010083d:	66 90                	xchg   %ax,%ax
f010083f:	90                   	nop

f0100840 <boot_alloc>:
f0100840:	55                   	push   %ebp
f0100841:	89 e5                	mov    %esp,%ebp
f0100843:	53                   	push   %ebx
f0100844:	83 ec 04             	sub    $0x4,%esp
f0100847:	83 3d 64 f5 10 f0 00 	cmpl   $0x0,0xf010f564
f010084e:	74 2d                	je     f010087d <boot_alloc+0x3d>
f0100850:	8b 1d 64 f5 10 f0    	mov    0xf010f564,%ebx
f0100856:	8d 84 03 ff 0f 00 00 	lea    0xfff(%ebx,%eax,1),%eax
f010085d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
f0100862:	a3 64 f5 10 f0       	mov    %eax,0xf010f564
f0100867:	83 ec 04             	sub    $0x4,%esp
f010086a:	50                   	push   %eax
f010086b:	53                   	push   %ebx
f010086c:	68 d8 40 10 f0       	push   $0xf01040d8
f0100871:	e8 1b 20 00 00       	call   f0102891 <cprintf>
f0100876:	89 d8                	mov    %ebx,%eax
f0100878:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f010087b:	c9                   	leave
f010087c:	c3                   	ret
f010087d:	ba 7f 09 11 f0       	mov    $0xf011097f,%edx
f0100882:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
f0100888:	89 15 64 f5 10 f0    	mov    %edx,0xf010f564
f010088e:	eb c0                	jmp    f0100850 <boot_alloc+0x10>

f0100890 <nvram_read>:
f0100890:	55                   	push   %ebp
f0100891:	89 e5                	mov    %esp,%ebp
f0100893:	56                   	push   %esi
f0100894:	53                   	push   %ebx
f0100895:	89 c3                	mov    %eax,%ebx
f0100897:	83 ec 0c             	sub    $0xc,%esp
f010089a:	50                   	push   %eax
f010089b:	e8 8a 1f 00 00       	call   f010282a <mc146818_read>
f01008a0:	89 c6                	mov    %eax,%esi
f01008a2:	83 c3 01             	add    $0x1,%ebx
f01008a5:	89 1c 24             	mov    %ebx,(%esp)
f01008a8:	e8 7d 1f 00 00       	call   f010282a <mc146818_read>
f01008ad:	c1 e0 08             	shl    $0x8,%eax
f01008b0:	09 f0                	or     %esi,%eax
f01008b2:	8d 65 f8             	lea    -0x8(%ebp),%esp
f01008b5:	5b                   	pop    %ebx
f01008b6:	5e                   	pop    %esi
f01008b7:	5d                   	pop    %ebp
f01008b8:	c3                   	ret

f01008b9 <check_va2pa>:
f01008b9:	89 d1                	mov    %edx,%ecx
f01008bb:	c1 e9 16             	shr    $0x16,%ecx
f01008be:	8b 04 88             	mov    (%eax,%ecx,4),%eax
f01008c1:	a8 01                	test   $0x1,%al
f01008c3:	74 51                	je     f0100916 <check_va2pa+0x5d>
f01008c5:	89 c1                	mov    %eax,%ecx
f01008c7:	81 e1 00 f0 ff ff    	and    $0xfffff000,%ecx
f01008cd:	c1 e8 0c             	shr    $0xc,%eax
f01008d0:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f01008d6:	73 23                	jae    f01008fb <check_va2pa+0x42>
f01008d8:	c1 ea 0c             	shr    $0xc,%edx
f01008db:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
f01008e1:	8b 94 91 00 00 00 f0 	mov    -0x10000000(%ecx,%edx,4),%edx
f01008e8:	89 d0                	mov    %edx,%eax
f01008ea:	25 00 f0 ff ff       	and    $0xfffff000,%eax
f01008ef:	f6 c2 01             	test   $0x1,%dl
f01008f2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
f01008f7:	0f 44 c2             	cmove  %edx,%eax
f01008fa:	c3                   	ret
f01008fb:	55                   	push   %ebp
f01008fc:	89 e5                	mov    %esp,%ebp
f01008fe:	83 ec 08             	sub    $0x8,%esp
f0100901:	51                   	push   %ecx
f0100902:	68 10 41 10 f0       	push   $0xf0104110
f0100907:	68 e2 02 00 00       	push   $0x2e2
f010090c:	68 a0 39 10 f0       	push   $0xf01039a0
f0100911:	e8 75 f7 ff ff       	call   f010008b <_panic>
f0100916:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
f010091b:	c3                   	ret

f010091c <check_page_free_list>:
f010091c:	55                   	push   %ebp
f010091d:	89 e5                	mov    %esp,%ebp
f010091f:	57                   	push   %edi
f0100920:	56                   	push   %esi
f0100921:	53                   	push   %ebx
f0100922:	83 ec 2c             	sub    $0x2c,%esp
f0100925:	84 c0                	test   %al,%al
f0100927:	0f 85 6d 02 00 00    	jne    f0100b9a <check_page_free_list+0x27e>
f010092d:	83 3d 68 f5 10 f0 00 	cmpl   $0x0,0xf010f568
f0100934:	74 0a                	je     f0100940 <check_page_free_list+0x24>
f0100936:	be 00 04 00 00       	mov    $0x400,%esi
f010093b:	e9 c2 02 00 00       	jmp    f0100c02 <check_page_free_list+0x2e6>
f0100940:	83 ec 04             	sub    $0x4,%esp
f0100943:	68 34 41 10 f0       	push   $0xf0104134
f0100948:	68 22 02 00 00       	push   $0x222
f010094d:	68 a0 39 10 f0       	push   $0xf01039a0
f0100952:	e8 34 f7 ff ff       	call   f010008b <_panic>
f0100957:	83 ec 04             	sub    $0x4,%esp
f010095a:	68 80 00 00 00       	push   $0x80
f010095f:	68 97 00 00 00       	push   $0x97
f0100964:	81 ea 00 00 00 10    	sub    $0x10000000,%edx
f010096a:	52                   	push   %edx
f010096b:	e8 b3 2a 00 00       	call   f0103423 <memset>
f0100970:	83 c4 10             	add    $0x10,%esp
f0100973:	8b 1b                	mov    (%ebx),%ebx
f0100975:	85 db                	test   %ebx,%ebx
f0100977:	74 38                	je     f01009b1 <check_page_free_list+0x95>
f0100979:	89 d8                	mov    %ebx,%eax
f010097b:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0100981:	c1 f8 03             	sar    $0x3,%eax
f0100984:	89 c2                	mov    %eax,%edx
f0100986:	c1 e2 0c             	shl    $0xc,%edx
f0100989:	89 d1                	mov    %edx,%ecx
f010098b:	c1 e9 16             	shr    $0x16,%ecx
f010098e:	39 f1                	cmp    %esi,%ecx
f0100990:	73 e1                	jae    f0100973 <check_page_free_list+0x57>
f0100992:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0100997:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f010099d:	72 b8                	jb     f0100957 <check_page_free_list+0x3b>
f010099f:	52                   	push   %edx
f01009a0:	68 10 41 10 f0       	push   $0xf0104110
f01009a5:	6a 52                	push   $0x52
f01009a7:	68 ac 39 10 f0       	push   $0xf01039ac
f01009ac:	e8 da f6 ff ff       	call   f010008b <_panic>
f01009b1:	b8 00 00 00 00       	mov    $0x0,%eax
f01009b6:	e8 85 fe ff ff       	call   f0100840 <boot_alloc>
f01009bb:	89 45 c8             	mov    %eax,-0x38(%ebp)
f01009be:	8b 15 68 f5 10 f0    	mov    0xf010f568,%edx
f01009c4:	8b 1d 58 f5 10 f0    	mov    0xf010f558,%ebx
f01009ca:	a1 60 f5 10 f0       	mov    0xf010f560,%eax
f01009cf:	89 45 cc             	mov    %eax,-0x34(%ebp)
f01009d2:	8d 3c c3             	lea    (%ebx,%eax,8),%edi
f01009d5:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
f01009dc:	be 00 00 00 00       	mov    $0x0,%esi
f01009e1:	89 75 d0             	mov    %esi,-0x30(%ebp)
f01009e4:	e9 ce 00 00 00       	jmp    f0100ab7 <check_page_free_list+0x19b>
f01009e9:	68 ba 39 10 f0       	push   $0xf01039ba
f01009ee:	68 c6 39 10 f0       	push   $0xf01039c6
f01009f3:	68 3d 02 00 00       	push   $0x23d
f01009f8:	68 a0 39 10 f0       	push   $0xf01039a0
f01009fd:	e8 89 f6 ff ff       	call   f010008b <_panic>
f0100a02:	68 db 39 10 f0       	push   $0xf01039db
f0100a07:	68 c6 39 10 f0       	push   $0xf01039c6
f0100a0c:	68 3e 02 00 00       	push   $0x23e
f0100a11:	68 a0 39 10 f0       	push   $0xf01039a0
f0100a16:	e8 70 f6 ff ff       	call   f010008b <_panic>
f0100a1b:	68 58 41 10 f0       	push   $0xf0104158
f0100a20:	68 c6 39 10 f0       	push   $0xf01039c6
f0100a25:	68 3f 02 00 00       	push   $0x23f
f0100a2a:	68 a0 39 10 f0       	push   $0xf01039a0
f0100a2f:	e8 57 f6 ff ff       	call   f010008b <_panic>
f0100a34:	68 ef 39 10 f0       	push   $0xf01039ef
f0100a39:	68 c6 39 10 f0       	push   $0xf01039c6
f0100a3e:	68 42 02 00 00       	push   $0x242
f0100a43:	68 a0 39 10 f0       	push   $0xf01039a0
f0100a48:	e8 3e f6 ff ff       	call   f010008b <_panic>
f0100a4d:	68 00 3a 10 f0       	push   $0xf0103a00
f0100a52:	68 c6 39 10 f0       	push   $0xf01039c6
f0100a57:	68 43 02 00 00       	push   $0x243
f0100a5c:	68 a0 39 10 f0       	push   $0xf01039a0
f0100a61:	e8 25 f6 ff ff       	call   f010008b <_panic>
f0100a66:	68 8c 41 10 f0       	push   $0xf010418c
f0100a6b:	68 c6 39 10 f0       	push   $0xf01039c6
f0100a70:	68 44 02 00 00       	push   $0x244
f0100a75:	68 a0 39 10 f0       	push   $0xf01039a0
f0100a7a:	e8 0c f6 ff ff       	call   f010008b <_panic>
f0100a7f:	68 19 3a 10 f0       	push   $0xf0103a19
f0100a84:	68 c6 39 10 f0       	push   $0xf01039c6
f0100a89:	68 45 02 00 00       	push   $0x245
f0100a8e:	68 a0 39 10 f0       	push   $0xf01039a0
f0100a93:	e8 f3 f5 ff ff       	call   f010008b <_panic>
f0100a98:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0100a9d:	8b 75 cc             	mov    -0x34(%ebp),%esi
f0100aa0:	39 f0                	cmp    %esi,%eax
f0100aa2:	73 77                	jae    f0100b1b <check_page_free_list+0x1ff>
f0100aa4:	81 e9 00 00 00 10    	sub    $0x10000000,%ecx
f0100aaa:	8b 45 c8             	mov    -0x38(%ebp),%eax
f0100aad:	39 c1                	cmp    %eax,%ecx
f0100aaf:	72 7c                	jb     f0100b2d <check_page_free_list+0x211>
f0100ab1:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
f0100ab5:	8b 12                	mov    (%edx),%edx
f0100ab7:	85 d2                	test   %edx,%edx
f0100ab9:	0f 84 87 00 00 00    	je     f0100b46 <check_page_free_list+0x22a>
f0100abf:	39 da                	cmp    %ebx,%edx
f0100ac1:	0f 82 22 ff ff ff    	jb     f01009e9 <check_page_free_list+0xcd>
f0100ac7:	39 fa                	cmp    %edi,%edx
f0100ac9:	0f 83 33 ff ff ff    	jae    f0100a02 <check_page_free_list+0xe6>
f0100acf:	89 d0                	mov    %edx,%eax
f0100ad1:	29 d8                	sub    %ebx,%eax
f0100ad3:	a8 07                	test   $0x7,%al
f0100ad5:	0f 85 40 ff ff ff    	jne    f0100a1b <check_page_free_list+0xff>
f0100adb:	c1 f8 03             	sar    $0x3,%eax
f0100ade:	89 c1                	mov    %eax,%ecx
f0100ae0:	c1 e1 0c             	shl    $0xc,%ecx
f0100ae3:	0f 84 4b ff ff ff    	je     f0100a34 <check_page_free_list+0x118>
f0100ae9:	81 f9 00 00 0a 00    	cmp    $0xa0000,%ecx
f0100aef:	0f 84 58 ff ff ff    	je     f0100a4d <check_page_free_list+0x131>
f0100af5:	81 f9 00 f0 0f 00    	cmp    $0xff000,%ecx
f0100afb:	0f 84 65 ff ff ff    	je     f0100a66 <check_page_free_list+0x14a>
f0100b01:	81 f9 00 00 10 00    	cmp    $0x100000,%ecx
f0100b07:	0f 84 72 ff ff ff    	je     f0100a7f <check_page_free_list+0x163>
f0100b0d:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
f0100b13:	77 83                	ja     f0100a98 <check_page_free_list+0x17c>
f0100b15:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
f0100b19:	eb 9a                	jmp    f0100ab5 <check_page_free_list+0x199>
f0100b1b:	51                   	push   %ecx
f0100b1c:	68 10 41 10 f0       	push   $0xf0104110
f0100b21:	6a 52                	push   $0x52
f0100b23:	68 ac 39 10 f0       	push   $0xf01039ac
f0100b28:	e8 5e f5 ff ff       	call   f010008b <_panic>
f0100b2d:	68 b0 41 10 f0       	push   $0xf01041b0
f0100b32:	68 c6 39 10 f0       	push   $0xf01039c6
f0100b37:	68 46 02 00 00       	push   $0x246
f0100b3c:	68 a0 39 10 f0       	push   $0xf01039a0
f0100b41:	e8 45 f5 ff ff       	call   f010008b <_panic>
f0100b46:	8b 75 d0             	mov    -0x30(%ebp),%esi
f0100b49:	85 f6                	test   %esi,%esi
f0100b4b:	7e 1b                	jle    f0100b68 <check_page_free_list+0x24c>
f0100b4d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
f0100b51:	7e 2e                	jle    f0100b81 <check_page_free_list+0x265>
f0100b53:	83 ec 0c             	sub    $0xc,%esp
f0100b56:	68 f8 41 10 f0       	push   $0xf01041f8
f0100b5b:	e8 31 1d 00 00       	call   f0102891 <cprintf>
f0100b60:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0100b63:	5b                   	pop    %ebx
f0100b64:	5e                   	pop    %esi
f0100b65:	5f                   	pop    %edi
f0100b66:	5d                   	pop    %ebp
f0100b67:	c3                   	ret
f0100b68:	68 33 3a 10 f0       	push   $0xf0103a33
f0100b6d:	68 c6 39 10 f0       	push   $0xf01039c6
f0100b72:	68 4e 02 00 00       	push   $0x24e
f0100b77:	68 a0 39 10 f0       	push   $0xf01039a0
f0100b7c:	e8 0a f5 ff ff       	call   f010008b <_panic>
f0100b81:	68 45 3a 10 f0       	push   $0xf0103a45
f0100b86:	68 c6 39 10 f0       	push   $0xf01039c6
f0100b8b:	68 4f 02 00 00       	push   $0x24f
f0100b90:	68 a0 39 10 f0       	push   $0xf01039a0
f0100b95:	e8 f1 f4 ff ff       	call   f010008b <_panic>
f0100b9a:	a1 68 f5 10 f0       	mov    0xf010f568,%eax
f0100b9f:	85 c0                	test   %eax,%eax
f0100ba1:	0f 84 99 fd ff ff    	je     f0100940 <check_page_free_list+0x24>
f0100ba7:	8d 55 d8             	lea    -0x28(%ebp),%edx
f0100baa:	89 55 e0             	mov    %edx,-0x20(%ebp)
f0100bad:	8d 55 dc             	lea    -0x24(%ebp),%edx
f0100bb0:	89 55 e4             	mov    %edx,-0x1c(%ebp)
f0100bb3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
f0100bb8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f0100bbf:	00 
f0100bc0:	89 c2                	mov    %eax,%edx
f0100bc2:	2b 15 58 f5 10 f0    	sub    0xf010f558,%edx
f0100bc8:	f7 c2 00 e0 7f 00    	test   $0x7fe000,%edx
f0100bce:	0f 95 c2             	setne  %dl
f0100bd1:	0f b6 d2             	movzbl %dl,%edx
f0100bd4:	8b 4c 95 e0          	mov    -0x20(%ebp,%edx,4),%ecx
f0100bd8:	89 01                	mov    %eax,(%ecx)
f0100bda:	89 44 95 e0          	mov    %eax,-0x20(%ebp,%edx,4)
f0100bde:	8b 00                	mov    (%eax),%eax
f0100be0:	85 c0                	test   %eax,%eax
f0100be2:	75 dc                	jne    f0100bc0 <check_page_free_list+0x2a4>
f0100be4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
f0100be7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
f0100bed:	8b 55 dc             	mov    -0x24(%ebp),%edx
f0100bf0:	8b 45 e0             	mov    -0x20(%ebp),%eax
f0100bf3:	89 10                	mov    %edx,(%eax)
f0100bf5:	8b 45 d8             	mov    -0x28(%ebp),%eax
f0100bf8:	a3 68 f5 10 f0       	mov    %eax,0xf010f568
f0100bfd:	be 01 00 00 00       	mov    $0x1,%esi
f0100c02:	8b 1d 68 f5 10 f0    	mov    0xf010f568,%ebx
f0100c08:	e9 68 fd ff ff       	jmp    f0100975 <check_page_free_list+0x59>

f0100c0d <page_init>:
f0100c0d:	55                   	push   %ebp
f0100c0e:	89 e5                	mov    %esp,%ebp
f0100c10:	56                   	push   %esi
f0100c11:	53                   	push   %ebx
f0100c12:	b8 00 00 00 00       	mov    $0x0,%eax
f0100c17:	e8 24 fc ff ff       	call   f0100840 <boot_alloc>
f0100c1c:	3d ff ff ff ef       	cmp    $0xefffffff,%eax
f0100c21:	76 1b                	jbe    f0100c3e <page_init+0x31>
f0100c23:	8d 88 00 00 00 10    	lea    0x10000000(%eax),%ecx
f0100c29:	c1 e9 0c             	shr    $0xc,%ecx
f0100c2c:	8b 1d 68 f5 10 f0    	mov    0xf010f568,%ebx
f0100c32:	be 00 00 00 00       	mov    $0x0,%esi
f0100c37:	b8 00 00 00 00       	mov    $0x0,%eax
f0100c3c:	eb 38                	jmp    f0100c76 <page_init+0x69>
f0100c3e:	50                   	push   %eax
f0100c3f:	68 1c 42 10 f0       	push   $0xf010421c
f0100c44:	68 0a 01 00 00       	push   $0x10a
f0100c49:	68 a0 39 10 f0       	push   $0xf01039a0
f0100c4e:	e8 38 f4 ff ff       	call   f010008b <_panic>
f0100c53:	3d 9f 00 00 00       	cmp    $0x9f,%eax
f0100c58:	76 3c                	jbe    f0100c96 <page_init+0x89>
f0100c5a:	39 c8                	cmp    %ecx,%eax
f0100c5c:	73 38                	jae    f0100c96 <page_init+0x89>
f0100c5e:	8b 15 58 f5 10 f0    	mov    0xf010f558,%edx
f0100c64:	8d 14 c2             	lea    (%edx,%eax,8),%edx
f0100c67:	66 c7 42 04 01 00    	movw   $0x1,0x4(%edx)
f0100c6d:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
f0100c73:	83 c0 01             	add    $0x1,%eax
f0100c76:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0100c7c:	73 3e                	jae    f0100cbc <page_init+0xaf>
f0100c7e:	85 c0                	test   %eax,%eax
f0100c80:	75 d1                	jne    f0100c53 <page_init+0x46>
f0100c82:	8b 15 58 f5 10 f0    	mov    0xf010f558,%edx
f0100c88:	66 c7 42 04 01 00    	movw   $0x1,0x4(%edx)
f0100c8e:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
f0100c94:	eb dd                	jmp    f0100c73 <page_init+0x66>
f0100c96:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
f0100c9d:	89 d6                	mov    %edx,%esi
f0100c9f:	03 35 58 f5 10 f0    	add    0xf010f558,%esi
f0100ca5:	66 c7 46 04 00 00    	movw   $0x0,0x4(%esi)
f0100cab:	89 1e                	mov    %ebx,(%esi)
f0100cad:	89 d3                	mov    %edx,%ebx
f0100caf:	03 1d 58 f5 10 f0    	add    0xf010f558,%ebx
f0100cb5:	be 01 00 00 00       	mov    $0x1,%esi
f0100cba:	eb b7                	jmp    f0100c73 <page_init+0x66>
f0100cbc:	89 f0                	mov    %esi,%eax
f0100cbe:	84 c0                	test   %al,%al
f0100cc0:	74 06                	je     f0100cc8 <page_init+0xbb>
f0100cc2:	89 1d 68 f5 10 f0    	mov    %ebx,0xf010f568
f0100cc8:	8d 65 f8             	lea    -0x8(%ebp),%esp
f0100ccb:	5b                   	pop    %ebx
f0100ccc:	5e                   	pop    %esi
f0100ccd:	5d                   	pop    %ebp
f0100cce:	c3                   	ret

f0100ccf <page_alloc>:
f0100ccf:	55                   	push   %ebp
f0100cd0:	89 e5                	mov    %esp,%ebp
f0100cd2:	53                   	push   %ebx
f0100cd3:	83 ec 04             	sub    $0x4,%esp
f0100cd6:	8b 1d 68 f5 10 f0    	mov    0xf010f568,%ebx
f0100cdc:	85 db                	test   %ebx,%ebx
f0100cde:	74 1a                	je     f0100cfa <page_alloc+0x2b>
f0100ce0:	8b 03                	mov    (%ebx),%eax
f0100ce2:	a3 68 f5 10 f0       	mov    %eax,0xf010f568
f0100ce7:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
f0100ced:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
f0100cf1:	75 19                	jne    f0100d0c <page_alloc+0x3d>
f0100cf3:	89 d8                	mov    %ebx,%eax
f0100cf5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f0100cf8:	c9                   	leave
f0100cf9:	c3                   	ret
f0100cfa:	83 ec 0c             	sub    $0xc,%esp
f0100cfd:	68 40 42 10 f0       	push   $0xf0104240
f0100d02:	e8 8a 1b 00 00       	call   f0102891 <cprintf>
f0100d07:	83 c4 10             	add    $0x10,%esp
f0100d0a:	eb e7                	jmp    f0100cf3 <page_alloc+0x24>
f0100d0c:	89 d8                	mov    %ebx,%eax
f0100d0e:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0100d14:	c1 f8 03             	sar    $0x3,%eax
f0100d17:	89 c2                	mov    %eax,%edx
f0100d19:	c1 e2 0c             	shl    $0xc,%edx
f0100d1c:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0100d21:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0100d27:	73 1b                	jae    f0100d44 <page_alloc+0x75>
f0100d29:	83 ec 04             	sub    $0x4,%esp
f0100d2c:	68 00 10 00 00       	push   $0x1000
f0100d31:	6a 00                	push   $0x0
f0100d33:	81 ea 00 00 00 10    	sub    $0x10000000,%edx
f0100d39:	52                   	push   %edx
f0100d3a:	e8 e4 26 00 00       	call   f0103423 <memset>
f0100d3f:	83 c4 10             	add    $0x10,%esp
f0100d42:	eb af                	jmp    f0100cf3 <page_alloc+0x24>
f0100d44:	52                   	push   %edx
f0100d45:	68 10 41 10 f0       	push   $0xf0104110
f0100d4a:	6a 52                	push   $0x52
f0100d4c:	68 ac 39 10 f0       	push   $0xf01039ac
f0100d51:	e8 35 f3 ff ff       	call   f010008b <_panic>

f0100d56 <page_free>:
f0100d56:	55                   	push   %ebp
f0100d57:	89 e5                	mov    %esp,%ebp
f0100d59:	83 ec 08             	sub    $0x8,%esp
f0100d5c:	8b 45 08             	mov    0x8(%ebp),%eax
f0100d5f:	66 83 78 04 00       	cmpw   $0x0,0x4(%eax)
f0100d64:	75 14                	jne    f0100d7a <page_free+0x24>
f0100d66:	83 38 00             	cmpl   $0x0,(%eax)
f0100d69:	75 0f                	jne    f0100d7a <page_free+0x24>
f0100d6b:	8b 15 68 f5 10 f0    	mov    0xf010f568,%edx
f0100d71:	89 10                	mov    %edx,(%eax)
f0100d73:	a3 68 f5 10 f0       	mov    %eax,0xf010f568
f0100d78:	c9                   	leave
f0100d79:	c3                   	ret
f0100d7a:	83 ec 04             	sub    $0x4,%esp
f0100d7d:	68 60 42 10 f0       	push   $0xf0104260
f0100d82:	68 42 01 00 00       	push   $0x142
f0100d87:	68 a0 39 10 f0       	push   $0xf01039a0
f0100d8c:	e8 fa f2 ff ff       	call   f010008b <_panic>

f0100d91 <page_decref>:
f0100d91:	55                   	push   %ebp
f0100d92:	89 e5                	mov    %esp,%ebp
f0100d94:	83 ec 08             	sub    $0x8,%esp
f0100d97:	8b 55 08             	mov    0x8(%ebp),%edx
f0100d9a:	0f b7 42 04          	movzwl 0x4(%edx),%eax
f0100d9e:	83 e8 01             	sub    $0x1,%eax
f0100da1:	66 89 42 04          	mov    %ax,0x4(%edx)
f0100da5:	66 85 c0             	test   %ax,%ax
f0100da8:	74 02                	je     f0100dac <page_decref+0x1b>
f0100daa:	c9                   	leave
f0100dab:	c3                   	ret
f0100dac:	83 ec 0c             	sub    $0xc,%esp
f0100daf:	52                   	push   %edx
f0100db0:	e8 a1 ff ff ff       	call   f0100d56 <page_free>
f0100db5:	83 c4 10             	add    $0x10,%esp
f0100db8:	eb f0                	jmp    f0100daa <page_decref+0x19>

f0100dba <pgdir_walk>:
f0100dba:	55                   	push   %ebp
f0100dbb:	89 e5                	mov    %esp,%ebp
f0100dbd:	53                   	push   %ebx
f0100dbe:	83 ec 04             	sub    $0x4,%esp
f0100dc1:	8b 5d 0c             	mov    0xc(%ebp),%ebx
f0100dc4:	c1 eb 16             	shr    $0x16,%ebx
f0100dc7:	c1 e3 02             	shl    $0x2,%ebx
f0100dca:	03 5d 08             	add    0x8(%ebp),%ebx
f0100dcd:	f6 03 01             	testb  $0x1,(%ebx)
f0100dd0:	75 2d                	jne    f0100dff <pgdir_walk+0x45>
f0100dd2:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
f0100dd6:	74 68                	je     f0100e40 <pgdir_walk+0x86>
f0100dd8:	83 ec 0c             	sub    $0xc,%esp
f0100ddb:	6a 01                	push   $0x1
f0100ddd:	e8 ed fe ff ff       	call   f0100ccf <page_alloc>
f0100de2:	83 c4 10             	add    $0x10,%esp
f0100de5:	85 c0                	test   %eax,%eax
f0100de7:	74 3d                	je     f0100e26 <pgdir_walk+0x6c>
f0100de9:	66 83 40 04 01       	addw   $0x1,0x4(%eax)
f0100dee:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0100df4:	c1 f8 03             	sar    $0x3,%eax
f0100df7:	c1 e0 0c             	shl    $0xc,%eax
f0100dfa:	83 c8 07             	or     $0x7,%eax
f0100dfd:	89 03                	mov    %eax,(%ebx)
f0100dff:	8b 03                	mov    (%ebx),%eax
f0100e01:	89 c2                	mov    %eax,%edx
f0100e03:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
f0100e09:	c1 e8 0c             	shr    $0xc,%eax
f0100e0c:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0100e12:	73 17                	jae    f0100e2b <pgdir_walk+0x71>
f0100e14:	8b 45 0c             	mov    0xc(%ebp),%eax
f0100e17:	c1 e8 0a             	shr    $0xa,%eax
f0100e1a:	25 fc 0f 00 00       	and    $0xffc,%eax
f0100e1f:	8d 84 02 00 00 00 f0 	lea    -0x10000000(%edx,%eax,1),%eax
f0100e26:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f0100e29:	c9                   	leave
f0100e2a:	c3                   	ret
f0100e2b:	52                   	push   %edx
f0100e2c:	68 10 41 10 f0       	push   $0xf0104110
f0100e31:	68 7c 01 00 00       	push   $0x17c
f0100e36:	68 a0 39 10 f0       	push   $0xf01039a0
f0100e3b:	e8 4b f2 ff ff       	call   f010008b <_panic>
f0100e40:	b8 00 00 00 00       	mov    $0x0,%eax
f0100e45:	eb df                	jmp    f0100e26 <pgdir_walk+0x6c>

f0100e47 <boot_map_region>:
f0100e47:	55                   	push   %ebp
f0100e48:	89 e5                	mov    %esp,%ebp
f0100e4a:	57                   	push   %edi
f0100e4b:	56                   	push   %esi
f0100e4c:	53                   	push   %ebx
f0100e4d:	83 ec 1c             	sub    $0x1c,%esp
f0100e50:	89 45 e4             	mov    %eax,-0x1c(%ebp)
f0100e53:	8b 45 08             	mov    0x8(%ebp),%eax
f0100e56:	89 cb                	mov    %ecx,%ebx
f0100e58:	c1 eb 0c             	shr    $0xc,%ebx
f0100e5b:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
f0100e61:	83 f9 01             	cmp    $0x1,%ecx
f0100e64:	89 d9                	mov    %ebx,%ecx
f0100e66:	83 d9 ff             	sbb    $0xffffffff,%ecx
f0100e69:	89 c3                	mov    %eax,%ebx
f0100e6b:	be 00 00 00 00       	mov    $0x0,%esi
f0100e70:	29 c2                	sub    %eax,%edx
f0100e72:	89 55 e0             	mov    %edx,-0x20(%ebp)
f0100e75:	89 cf                	mov    %ecx,%edi
f0100e77:	39 fe                	cmp    %edi,%esi
f0100e79:	74 46                	je     f0100ec1 <boot_map_region+0x7a>
f0100e7b:	83 ec 04             	sub    $0x4,%esp
f0100e7e:	6a 01                	push   $0x1
f0100e80:	8b 45 e0             	mov    -0x20(%ebp),%eax
f0100e83:	01 d8                	add    %ebx,%eax
f0100e85:	50                   	push   %eax
f0100e86:	ff 75 e4             	push   -0x1c(%ebp)
f0100e89:	e8 2c ff ff ff       	call   f0100dba <pgdir_walk>
f0100e8e:	83 c4 10             	add    $0x10,%esp
f0100e91:	85 c0                	test   %eax,%eax
f0100e93:	74 15                	je     f0100eaa <boot_map_region+0x63>
f0100e95:	89 da                	mov    %ebx,%edx
f0100e97:	0b 55 0c             	or     0xc(%ebp),%edx
f0100e9a:	83 ca 01             	or     $0x1,%edx
f0100e9d:	89 10                	mov    %edx,(%eax)
f0100e9f:	81 c3 00 10 00 00    	add    $0x1000,%ebx
f0100ea5:	83 c6 01             	add    $0x1,%esi
f0100ea8:	eb cd                	jmp    f0100e77 <boot_map_region+0x30>
f0100eaa:	83 ec 04             	sub    $0x4,%esp
f0100ead:	68 a0 42 10 f0       	push   $0xf01042a0
f0100eb2:	68 95 01 00 00       	push   $0x195
f0100eb7:	68 a0 39 10 f0       	push   $0xf01039a0
f0100ebc:	e8 ca f1 ff ff       	call   f010008b <_panic>
f0100ec1:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0100ec4:	5b                   	pop    %ebx
f0100ec5:	5e                   	pop    %esi
f0100ec6:	5f                   	pop    %edi
f0100ec7:	5d                   	pop    %ebp
f0100ec8:	c3                   	ret

f0100ec9 <page_lookup>:
f0100ec9:	55                   	push   %ebp
f0100eca:	89 e5                	mov    %esp,%ebp
f0100ecc:	83 ec 0c             	sub    $0xc,%esp
f0100ecf:	6a 00                	push   $0x0
f0100ed1:	ff 75 0c             	push   0xc(%ebp)
f0100ed4:	ff 75 08             	push   0x8(%ebp)
f0100ed7:	e8 de fe ff ff       	call   f0100dba <pgdir_walk>
f0100edc:	83 c4 10             	add    $0x10,%esp
f0100edf:	85 c0                	test   %eax,%eax
f0100ee1:	74 3e                	je     f0100f21 <page_lookup+0x58>
f0100ee3:	8b 10                	mov    (%eax),%edx
f0100ee5:	f6 c2 01             	test   $0x1,%dl
f0100ee8:	74 3b                	je     f0100f25 <page_lookup+0x5c>
f0100eea:	c1 ea 0c             	shr    $0xc,%edx
f0100eed:	3b 15 60 f5 10 f0    	cmp    0xf010f560,%edx
f0100ef3:	73 18                	jae    f0100f0d <page_lookup+0x44>
f0100ef5:	8b 0d 58 f5 10 f0    	mov    0xf010f558,%ecx
f0100efb:	8d 14 d1             	lea    (%ecx,%edx,8),%edx
f0100efe:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
f0100f02:	74 05                	je     f0100f09 <page_lookup+0x40>
f0100f04:	8b 4d 10             	mov    0x10(%ebp),%ecx
f0100f07:	89 01                	mov    %eax,(%ecx)
f0100f09:	89 d0                	mov    %edx,%eax
f0100f0b:	c9                   	leave
f0100f0c:	c3                   	ret
f0100f0d:	83 ec 04             	sub    $0x4,%esp
f0100f10:	68 c4 42 10 f0       	push   $0xf01042c4
f0100f15:	6a 4b                	push   $0x4b
f0100f17:	68 ac 39 10 f0       	push   $0xf01039ac
f0100f1c:	e8 6a f1 ff ff       	call   f010008b <_panic>
f0100f21:	89 c2                	mov    %eax,%edx
f0100f23:	eb e4                	jmp    f0100f09 <page_lookup+0x40>
f0100f25:	ba 00 00 00 00       	mov    $0x0,%edx
f0100f2a:	eb dd                	jmp    f0100f09 <page_lookup+0x40>

f0100f2c <page_remove>:
f0100f2c:	55                   	push   %ebp
f0100f2d:	89 e5                	mov    %esp,%ebp
f0100f2f:	83 ec 1c             	sub    $0x1c,%esp
f0100f32:	8d 45 f4             	lea    -0xc(%ebp),%eax
f0100f35:	50                   	push   %eax
f0100f36:	ff 75 0c             	push   0xc(%ebp)
f0100f39:	ff 75 08             	push   0x8(%ebp)
f0100f3c:	e8 88 ff ff ff       	call   f0100ec9 <page_lookup>
f0100f41:	83 c4 10             	add    $0x10,%esp
f0100f44:	85 c0                	test   %eax,%eax
f0100f46:	74 1b                	je     f0100f63 <page_remove+0x37>
f0100f48:	83 ec 0c             	sub    $0xc,%esp
f0100f4b:	50                   	push   %eax
f0100f4c:	e8 40 fe ff ff       	call   f0100d91 <page_decref>
f0100f51:	8b 45 f4             	mov    -0xc(%ebp),%eax
f0100f54:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
f0100f5a:	8b 45 0c             	mov    0xc(%ebp),%eax
f0100f5d:	0f 01 38             	invlpg (%eax)
f0100f60:	83 c4 10             	add    $0x10,%esp
f0100f63:	c9                   	leave
f0100f64:	c3                   	ret

f0100f65 <page_insert>:
f0100f65:	55                   	push   %ebp
f0100f66:	89 e5                	mov    %esp,%ebp
f0100f68:	57                   	push   %edi
f0100f69:	56                   	push   %esi
f0100f6a:	53                   	push   %ebx
f0100f6b:	83 ec 10             	sub    $0x10,%esp
f0100f6e:	8b 7d 08             	mov    0x8(%ebp),%edi
f0100f71:	8b 5d 0c             	mov    0xc(%ebp),%ebx
f0100f74:	6a 01                	push   $0x1
f0100f76:	ff 75 10             	push   0x10(%ebp)
f0100f79:	57                   	push   %edi
f0100f7a:	e8 3b fe ff ff       	call   f0100dba <pgdir_walk>
f0100f7f:	83 c4 10             	add    $0x10,%esp
f0100f82:	85 c0                	test   %eax,%eax
f0100f84:	74 4a                	je     f0100fd0 <page_insert+0x6b>
f0100f86:	89 c6                	mov    %eax,%esi
f0100f88:	66 83 43 04 01       	addw   $0x1,0x4(%ebx)
f0100f8d:	f6 00 01             	testb  $0x1,(%eax)
f0100f90:	75 2d                	jne    f0100fbf <page_insert+0x5a>
f0100f92:	2b 1d 58 f5 10 f0    	sub    0xf010f558,%ebx
f0100f98:	c1 fb 03             	sar    $0x3,%ebx
f0100f9b:	c1 e3 0c             	shl    $0xc,%ebx
f0100f9e:	0b 5d 14             	or     0x14(%ebp),%ebx
f0100fa1:	83 cb 01             	or     $0x1,%ebx
f0100fa4:	89 1e                	mov    %ebx,(%esi)
f0100fa6:	8b 45 10             	mov    0x10(%ebp),%eax
f0100fa9:	c1 e8 16             	shr    $0x16,%eax
f0100fac:	8b 55 14             	mov    0x14(%ebp),%edx
f0100faf:	09 14 87             	or     %edx,(%edi,%eax,4)
f0100fb2:	b8 00 00 00 00       	mov    $0x0,%eax
f0100fb7:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0100fba:	5b                   	pop    %ebx
f0100fbb:	5e                   	pop    %esi
f0100fbc:	5f                   	pop    %edi
f0100fbd:	5d                   	pop    %ebp
f0100fbe:	c3                   	ret
f0100fbf:	83 ec 08             	sub    $0x8,%esp
f0100fc2:	ff 75 10             	push   0x10(%ebp)
f0100fc5:	57                   	push   %edi
f0100fc6:	e8 61 ff ff ff       	call   f0100f2c <page_remove>
f0100fcb:	83 c4 10             	add    $0x10,%esp
f0100fce:	eb c2                	jmp    f0100f92 <page_insert+0x2d>
f0100fd0:	b8 fc ff ff ff       	mov    $0xfffffffc,%eax
f0100fd5:	eb e0                	jmp    f0100fb7 <page_insert+0x52>

f0100fd7 <mem_init>:
f0100fd7:	55                   	push   %ebp
f0100fd8:	89 e5                	mov    %esp,%ebp
f0100fda:	57                   	push   %edi
f0100fdb:	56                   	push   %esi
f0100fdc:	53                   	push   %ebx
f0100fdd:	83 ec 3c             	sub    $0x3c,%esp
f0100fe0:	b8 15 00 00 00       	mov    $0x15,%eax
f0100fe5:	e8 a6 f8 ff ff       	call   f0100890 <nvram_read>
f0100fea:	89 c3                	mov    %eax,%ebx
f0100fec:	b8 17 00 00 00       	mov    $0x17,%eax
f0100ff1:	e8 9a f8 ff ff       	call   f0100890 <nvram_read>
f0100ff6:	89 c6                	mov    %eax,%esi
f0100ff8:	b8 34 00 00 00       	mov    $0x34,%eax
f0100ffd:	e8 8e f8 ff ff       	call   f0100890 <nvram_read>
f0101002:	c1 e0 06             	shl    $0x6,%eax
f0101005:	0f 84 b0 00 00 00    	je     f01010bb <mem_init+0xe4>
f010100b:	05 00 40 00 00       	add    $0x4000,%eax
f0101010:	89 c2                	mov    %eax,%edx
f0101012:	c1 ea 02             	shr    $0x2,%edx
f0101015:	89 15 60 f5 10 f0    	mov    %edx,0xf010f560
f010101b:	89 c2                	mov    %eax,%edx
f010101d:	29 da                	sub    %ebx,%edx
f010101f:	52                   	push   %edx
f0101020:	53                   	push   %ebx
f0101021:	50                   	push   %eax
f0101022:	68 e4 42 10 f0       	push   $0xf01042e4
f0101027:	e8 65 18 00 00       	call   f0102891 <cprintf>
f010102c:	b8 00 10 00 00       	mov    $0x1000,%eax
f0101031:	e8 0a f8 ff ff       	call   f0100840 <boot_alloc>
f0101036:	a3 5c f5 10 f0       	mov    %eax,0xf010f55c
f010103b:	83 c4 0c             	add    $0xc,%esp
f010103e:	68 00 10 00 00       	push   $0x1000
f0101043:	6a 00                	push   $0x0
f0101045:	50                   	push   %eax
f0101046:	e8 d8 23 00 00       	call   f0103423 <memset>
f010104b:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f0101050:	83 c4 10             	add    $0x10,%esp
f0101053:	3d ff ff ff ef       	cmp    $0xefffffff,%eax
f0101058:	76 71                	jbe    f01010cb <mem_init+0xf4>
f010105a:	8d 90 00 00 00 10    	lea    0x10000000(%eax),%edx
f0101060:	83 ca 05             	or     $0x5,%edx
f0101063:	89 90 f4 0e 00 00    	mov    %edx,0xef4(%eax)
f0101069:	a1 60 f5 10 f0       	mov    0xf010f560,%eax
f010106e:	c1 e0 03             	shl    $0x3,%eax
f0101071:	e8 ca f7 ff ff       	call   f0100840 <boot_alloc>
f0101076:	a3 58 f5 10 f0       	mov    %eax,0xf010f558
f010107b:	83 ec 04             	sub    $0x4,%esp
f010107e:	8b 1d 60 f5 10 f0    	mov    0xf010f560,%ebx
f0101084:	8d 14 dd 00 00 00 00 	lea    0x0(,%ebx,8),%edx
f010108b:	52                   	push   %edx
f010108c:	6a 00                	push   $0x0
f010108e:	50                   	push   %eax
f010108f:	e8 8f 23 00 00       	call   f0103423 <memset>
f0101094:	e8 74 fb ff ff       	call   f0100c0d <page_init>
f0101099:	b8 01 00 00 00       	mov    $0x1,%eax
f010109e:	e8 79 f8 ff ff       	call   f010091c <check_page_free_list>
f01010a3:	83 c4 10             	add    $0x10,%esp
f01010a6:	83 3d 58 f5 10 f0 00 	cmpl   $0x0,0xf010f558
f01010ad:	74 31                	je     f01010e0 <mem_init+0x109>
f01010af:	a1 68 f5 10 f0       	mov    0xf010f568,%eax
f01010b4:	bb 00 00 00 00       	mov    $0x0,%ebx
f01010b9:	eb 4a                	jmp    f0101105 <mem_init+0x12e>
f01010bb:	8d 86 00 04 00 00    	lea    0x400(%esi),%eax
f01010c1:	85 f6                	test   %esi,%esi
f01010c3:	0f 44 c3             	cmove  %ebx,%eax
f01010c6:	e9 45 ff ff ff       	jmp    f0101010 <mem_init+0x39>
f01010cb:	50                   	push   %eax
f01010cc:	68 1c 42 10 f0       	push   $0xf010421c
f01010d1:	68 8f 00 00 00       	push   $0x8f
f01010d6:	68 a0 39 10 f0       	push   $0xf01039a0
f01010db:	e8 ab ef ff ff       	call   f010008b <_panic>
f01010e0:	83 ec 04             	sub    $0x4,%esp
f01010e3:	68 56 3a 10 f0       	push   $0xf0103a56
f01010e8:	68 62 02 00 00       	push   $0x262
f01010ed:	68 a0 39 10 f0       	push   $0xf01039a0
f01010f2:	e8 94 ef ff ff       	call   f010008b <_panic>
f01010f7:	90                   	nop
f01010f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01010ff:	00 
f0101100:	83 c3 01             	add    $0x1,%ebx
f0101103:	8b 00                	mov    (%eax),%eax
f0101105:	85 c0                	test   %eax,%eax
f0101107:	75 f7                	jne    f0101100 <mem_init+0x129>
f0101109:	83 ec 0c             	sub    $0xc,%esp
f010110c:	6a 00                	push   $0x0
f010110e:	e8 bc fb ff ff       	call   f0100ccf <page_alloc>
f0101113:	89 45 d4             	mov    %eax,-0x2c(%ebp)
f0101116:	83 c4 10             	add    $0x10,%esp
f0101119:	85 c0                	test   %eax,%eax
f010111b:	0f 84 0a 02 00 00    	je     f010132b <mem_init+0x354>
f0101121:	83 ec 0c             	sub    $0xc,%esp
f0101124:	6a 00                	push   $0x0
f0101126:	e8 a4 fb ff ff       	call   f0100ccf <page_alloc>
f010112b:	89 c7                	mov    %eax,%edi
f010112d:	83 c4 10             	add    $0x10,%esp
f0101130:	85 c0                	test   %eax,%eax
f0101132:	0f 84 0c 02 00 00    	je     f0101344 <mem_init+0x36d>
f0101138:	83 ec 0c             	sub    $0xc,%esp
f010113b:	6a 00                	push   $0x0
f010113d:	e8 8d fb ff ff       	call   f0100ccf <page_alloc>
f0101142:	89 c6                	mov    %eax,%esi
f0101144:	83 c4 10             	add    $0x10,%esp
f0101147:	85 c0                	test   %eax,%eax
f0101149:	0f 84 0e 02 00 00    	je     f010135d <mem_init+0x386>
f010114f:	39 7d d4             	cmp    %edi,-0x2c(%ebp)
f0101152:	0f 84 1e 02 00 00    	je     f0101376 <mem_init+0x39f>
f0101158:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
f010115b:	0f 84 2e 02 00 00    	je     f010138f <mem_init+0x3b8>
f0101161:	39 c7                	cmp    %eax,%edi
f0101163:	0f 84 26 02 00 00    	je     f010138f <mem_init+0x3b8>
f0101169:	8b 0d 58 f5 10 f0    	mov    0xf010f558,%ecx
f010116f:	a1 60 f5 10 f0       	mov    0xf010f560,%eax
f0101174:	c1 e0 0c             	shl    $0xc,%eax
f0101177:	8b 55 d4             	mov    -0x2c(%ebp),%edx
f010117a:	29 ca                	sub    %ecx,%edx
f010117c:	c1 fa 03             	sar    $0x3,%edx
f010117f:	c1 e2 0c             	shl    $0xc,%edx
f0101182:	39 c2                	cmp    %eax,%edx
f0101184:	0f 83 1e 02 00 00    	jae    f01013a8 <mem_init+0x3d1>
f010118a:	89 fa                	mov    %edi,%edx
f010118c:	29 ca                	sub    %ecx,%edx
f010118e:	c1 fa 03             	sar    $0x3,%edx
f0101191:	c1 e2 0c             	shl    $0xc,%edx
f0101194:	39 c2                	cmp    %eax,%edx
f0101196:	0f 83 25 02 00 00    	jae    f01013c1 <mem_init+0x3ea>
f010119c:	89 f2                	mov    %esi,%edx
f010119e:	29 ca                	sub    %ecx,%edx
f01011a0:	c1 fa 03             	sar    $0x3,%edx
f01011a3:	c1 e2 0c             	shl    $0xc,%edx
f01011a6:	39 c2                	cmp    %eax,%edx
f01011a8:	0f 83 2c 02 00 00    	jae    f01013da <mem_init+0x403>
f01011ae:	a1 68 f5 10 f0       	mov    0xf010f568,%eax
f01011b3:	89 45 d0             	mov    %eax,-0x30(%ebp)
f01011b6:	c7 05 68 f5 10 f0 00 	movl   $0x0,0xf010f568
f01011bd:	00 00 00 
f01011c0:	83 ec 0c             	sub    $0xc,%esp
f01011c3:	6a 00                	push   $0x0
f01011c5:	e8 05 fb ff ff       	call   f0100ccf <page_alloc>
f01011ca:	83 c4 10             	add    $0x10,%esp
f01011cd:	85 c0                	test   %eax,%eax
f01011cf:	0f 85 1e 02 00 00    	jne    f01013f3 <mem_init+0x41c>
f01011d5:	83 ec 0c             	sub    $0xc,%esp
f01011d8:	ff 75 d4             	push   -0x2c(%ebp)
f01011db:	e8 76 fb ff ff       	call   f0100d56 <page_free>
f01011e0:	89 3c 24             	mov    %edi,(%esp)
f01011e3:	e8 6e fb ff ff       	call   f0100d56 <page_free>
f01011e8:	89 34 24             	mov    %esi,(%esp)
f01011eb:	e8 66 fb ff ff       	call   f0100d56 <page_free>
f01011f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
f01011f7:	e8 d3 fa ff ff       	call   f0100ccf <page_alloc>
f01011fc:	89 c6                	mov    %eax,%esi
f01011fe:	83 c4 10             	add    $0x10,%esp
f0101201:	85 c0                	test   %eax,%eax
f0101203:	0f 84 03 02 00 00    	je     f010140c <mem_init+0x435>
f0101209:	83 ec 0c             	sub    $0xc,%esp
f010120c:	6a 00                	push   $0x0
f010120e:	e8 bc fa ff ff       	call   f0100ccf <page_alloc>
f0101213:	89 45 d4             	mov    %eax,-0x2c(%ebp)
f0101216:	83 c4 10             	add    $0x10,%esp
f0101219:	85 c0                	test   %eax,%eax
f010121b:	0f 84 04 02 00 00    	je     f0101425 <mem_init+0x44e>
f0101221:	83 ec 0c             	sub    $0xc,%esp
f0101224:	6a 00                	push   $0x0
f0101226:	e8 a4 fa ff ff       	call   f0100ccf <page_alloc>
f010122b:	89 c7                	mov    %eax,%edi
f010122d:	83 c4 10             	add    $0x10,%esp
f0101230:	85 c0                	test   %eax,%eax
f0101232:	0f 84 06 02 00 00    	je     f010143e <mem_init+0x467>
f0101238:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f010123b:	39 c6                	cmp    %eax,%esi
f010123d:	0f 84 14 02 00 00    	je     f0101457 <mem_init+0x480>
f0101243:	39 7d d4             	cmp    %edi,-0x2c(%ebp)
f0101246:	0f 84 24 02 00 00    	je     f0101470 <mem_init+0x499>
f010124c:	39 fe                	cmp    %edi,%esi
f010124e:	0f 84 1c 02 00 00    	je     f0101470 <mem_init+0x499>
f0101254:	83 ec 0c             	sub    $0xc,%esp
f0101257:	6a 00                	push   $0x0
f0101259:	e8 71 fa ff ff       	call   f0100ccf <page_alloc>
f010125e:	83 c4 10             	add    $0x10,%esp
f0101261:	85 c0                	test   %eax,%eax
f0101263:	0f 85 20 02 00 00    	jne    f0101489 <mem_init+0x4b2>
f0101269:	89 f0                	mov    %esi,%eax
f010126b:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0101271:	c1 f8 03             	sar    $0x3,%eax
f0101274:	89 c2                	mov    %eax,%edx
f0101276:	c1 e2 0c             	shl    $0xc,%edx
f0101279:	25 ff ff 0f 00       	and    $0xfffff,%eax
f010127e:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0101284:	0f 83 18 02 00 00    	jae    f01014a2 <mem_init+0x4cb>
f010128a:	83 ec 04             	sub    $0x4,%esp
f010128d:	68 00 10 00 00       	push   $0x1000
f0101292:	6a 01                	push   $0x1
f0101294:	81 ea 00 00 00 10    	sub    $0x10000000,%edx
f010129a:	52                   	push   %edx
f010129b:	e8 83 21 00 00       	call   f0103423 <memset>
f01012a0:	89 34 24             	mov    %esi,(%esp)
f01012a3:	e8 ae fa ff ff       	call   f0100d56 <page_free>
f01012a8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
f01012af:	e8 1b fa ff ff       	call   f0100ccf <page_alloc>
f01012b4:	83 c4 10             	add    $0x10,%esp
f01012b7:	85 c0                	test   %eax,%eax
f01012b9:	0f 84 f5 01 00 00    	je     f01014b4 <mem_init+0x4dd>
f01012bf:	39 c6                	cmp    %eax,%esi
f01012c1:	0f 85 06 02 00 00    	jne    f01014cd <mem_init+0x4f6>
f01012c7:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f01012cd:	c1 f8 03             	sar    $0x3,%eax
f01012d0:	89 c1                	mov    %eax,%ecx
f01012d2:	c1 e1 0c             	shl    $0xc,%ecx
f01012d5:	25 ff ff 0f 00       	and    $0xfffff,%eax
f01012da:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f01012e0:	0f 83 00 02 00 00    	jae    f01014e6 <mem_init+0x50f>
f01012e6:	8d 81 00 00 00 f0    	lea    -0x10000000(%ecx),%eax
f01012ec:	81 e9 00 f0 ff 0f    	sub    $0xffff000,%ecx
f01012f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
f01012f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01012ff:	00 
f0101300:	39 c8                	cmp    %ecx,%eax
f0101302:	0f 84 f0 01 00 00    	je     f01014f8 <mem_init+0x521>
f0101308:	0f b6 10             	movzbl (%eax),%edx
f010130b:	83 c0 01             	add    $0x1,%eax
f010130e:	84 d2                	test   %dl,%dl
f0101310:	74 ee                	je     f0101300 <mem_init+0x329>
f0101312:	68 59 3b 10 f0       	push   $0xf0103b59
f0101317:	68 c6 39 10 f0       	push   $0xf01039c6
f010131c:	68 90 02 00 00       	push   $0x290
f0101321:	68 a0 39 10 f0       	push   $0xf01039a0
f0101326:	e8 60 ed ff ff       	call   f010008b <_panic>
f010132b:	68 71 3a 10 f0       	push   $0xf0103a71
f0101330:	68 c6 39 10 f0       	push   $0xf01039c6
f0101335:	68 6a 02 00 00       	push   $0x26a
f010133a:	68 a0 39 10 f0       	push   $0xf01039a0
f010133f:	e8 47 ed ff ff       	call   f010008b <_panic>
f0101344:	68 87 3a 10 f0       	push   $0xf0103a87
f0101349:	68 c6 39 10 f0       	push   $0xf01039c6
f010134e:	68 6b 02 00 00       	push   $0x26b
f0101353:	68 a0 39 10 f0       	push   $0xf01039a0
f0101358:	e8 2e ed ff ff       	call   f010008b <_panic>
f010135d:	68 9d 3a 10 f0       	push   $0xf0103a9d
f0101362:	68 c6 39 10 f0       	push   $0xf01039c6
f0101367:	68 6c 02 00 00       	push   $0x26c
f010136c:	68 a0 39 10 f0       	push   $0xf01039a0
f0101371:	e8 15 ed ff ff       	call   f010008b <_panic>
f0101376:	68 b3 3a 10 f0       	push   $0xf0103ab3
f010137b:	68 c6 39 10 f0       	push   $0xf01039c6
f0101380:	68 6f 02 00 00       	push   $0x26f
f0101385:	68 a0 39 10 f0       	push   $0xf01039a0
f010138a:	e8 fc ec ff ff       	call   f010008b <_panic>
f010138f:	68 20 43 10 f0       	push   $0xf0104320
f0101394:	68 c6 39 10 f0       	push   $0xf01039c6
f0101399:	68 70 02 00 00       	push   $0x270
f010139e:	68 a0 39 10 f0       	push   $0xf01039a0
f01013a3:	e8 e3 ec ff ff       	call   f010008b <_panic>
f01013a8:	68 c5 3a 10 f0       	push   $0xf0103ac5
f01013ad:	68 c6 39 10 f0       	push   $0xf01039c6
f01013b2:	68 71 02 00 00       	push   $0x271
f01013b7:	68 a0 39 10 f0       	push   $0xf01039a0
f01013bc:	e8 ca ec ff ff       	call   f010008b <_panic>
f01013c1:	68 e2 3a 10 f0       	push   $0xf0103ae2
f01013c6:	68 c6 39 10 f0       	push   $0xf01039c6
f01013cb:	68 72 02 00 00       	push   $0x272
f01013d0:	68 a0 39 10 f0       	push   $0xf01039a0
f01013d5:	e8 b1 ec ff ff       	call   f010008b <_panic>
f01013da:	68 ff 3a 10 f0       	push   $0xf0103aff
f01013df:	68 c6 39 10 f0       	push   $0xf01039c6
f01013e4:	68 73 02 00 00       	push   $0x273
f01013e9:	68 a0 39 10 f0       	push   $0xf01039a0
f01013ee:	e8 98 ec ff ff       	call   f010008b <_panic>
f01013f3:	68 1c 3b 10 f0       	push   $0xf0103b1c
f01013f8:	68 c6 39 10 f0       	push   $0xf01039c6
f01013fd:	68 7a 02 00 00       	push   $0x27a
f0101402:	68 a0 39 10 f0       	push   $0xf01039a0
f0101407:	e8 7f ec ff ff       	call   f010008b <_panic>
f010140c:	68 71 3a 10 f0       	push   $0xf0103a71
f0101411:	68 c6 39 10 f0       	push   $0xf01039c6
f0101416:	68 81 02 00 00       	push   $0x281
f010141b:	68 a0 39 10 f0       	push   $0xf01039a0
f0101420:	e8 66 ec ff ff       	call   f010008b <_panic>
f0101425:	68 87 3a 10 f0       	push   $0xf0103a87
f010142a:	68 c6 39 10 f0       	push   $0xf01039c6
f010142f:	68 82 02 00 00       	push   $0x282
f0101434:	68 a0 39 10 f0       	push   $0xf01039a0
f0101439:	e8 4d ec ff ff       	call   f010008b <_panic>
f010143e:	68 9d 3a 10 f0       	push   $0xf0103a9d
f0101443:	68 c6 39 10 f0       	push   $0xf01039c6
f0101448:	68 83 02 00 00       	push   $0x283
f010144d:	68 a0 39 10 f0       	push   $0xf01039a0
f0101452:	e8 34 ec ff ff       	call   f010008b <_panic>
f0101457:	68 b3 3a 10 f0       	push   $0xf0103ab3
f010145c:	68 c6 39 10 f0       	push   $0xf01039c6
f0101461:	68 85 02 00 00       	push   $0x285
f0101466:	68 a0 39 10 f0       	push   $0xf01039a0
f010146b:	e8 1b ec ff ff       	call   f010008b <_panic>
f0101470:	68 20 43 10 f0       	push   $0xf0104320
f0101475:	68 c6 39 10 f0       	push   $0xf01039c6
f010147a:	68 86 02 00 00       	push   $0x286
f010147f:	68 a0 39 10 f0       	push   $0xf01039a0
f0101484:	e8 02 ec ff ff       	call   f010008b <_panic>
f0101489:	68 1c 3b 10 f0       	push   $0xf0103b1c
f010148e:	68 c6 39 10 f0       	push   $0xf01039c6
f0101493:	68 87 02 00 00       	push   $0x287
f0101498:	68 a0 39 10 f0       	push   $0xf01039a0
f010149d:	e8 e9 eb ff ff       	call   f010008b <_panic>
f01014a2:	52                   	push   %edx
f01014a3:	68 10 41 10 f0       	push   $0xf0104110
f01014a8:	6a 52                	push   $0x52
f01014aa:	68 ac 39 10 f0       	push   $0xf01039ac
f01014af:	e8 d7 eb ff ff       	call   f010008b <_panic>
f01014b4:	68 2b 3b 10 f0       	push   $0xf0103b2b
f01014b9:	68 c6 39 10 f0       	push   $0xf01039c6
f01014be:	68 8c 02 00 00       	push   $0x28c
f01014c3:	68 a0 39 10 f0       	push   $0xf01039a0
f01014c8:	e8 be eb ff ff       	call   f010008b <_panic>
f01014cd:	68 49 3b 10 f0       	push   $0xf0103b49
f01014d2:	68 c6 39 10 f0       	push   $0xf01039c6
f01014d7:	68 8d 02 00 00       	push   $0x28d
f01014dc:	68 a0 39 10 f0       	push   $0xf01039a0
f01014e1:	e8 a5 eb ff ff       	call   f010008b <_panic>
f01014e6:	51                   	push   %ecx
f01014e7:	68 10 41 10 f0       	push   $0xf0104110
f01014ec:	6a 52                	push   $0x52
f01014ee:	68 ac 39 10 f0       	push   $0xf01039ac
f01014f3:	e8 93 eb ff ff       	call   f010008b <_panic>
f01014f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
f01014fb:	a3 68 f5 10 f0       	mov    %eax,0xf010f568
f0101500:	83 ec 0c             	sub    $0xc,%esp
f0101503:	56                   	push   %esi
f0101504:	e8 4d f8 ff ff       	call   f0100d56 <page_free>
f0101509:	83 c4 04             	add    $0x4,%esp
f010150c:	ff 75 d4             	push   -0x2c(%ebp)
f010150f:	e8 42 f8 ff ff       	call   f0100d56 <page_free>
f0101514:	89 3c 24             	mov    %edi,(%esp)
f0101517:	e8 3a f8 ff ff       	call   f0100d56 <page_free>
f010151c:	a1 68 f5 10 f0       	mov    0xf010f568,%eax
f0101521:	83 c4 10             	add    $0x10,%esp
f0101524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
f0101528:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f010152f:	00 
f0101530:	85 c0                	test   %eax,%eax
f0101532:	74 07                	je     f010153b <mem_init+0x564>
f0101534:	83 eb 01             	sub    $0x1,%ebx
f0101537:	8b 00                	mov    (%eax),%eax
f0101539:	eb f5                	jmp    f0101530 <mem_init+0x559>
f010153b:	85 db                	test   %ebx,%ebx
f010153d:	0f 85 a8 06 00 00    	jne    f0101beb <mem_init+0xc14>
f0101543:	83 ec 0c             	sub    $0xc,%esp
f0101546:	68 40 43 10 f0       	push   $0xf0104340
f010154b:	e8 41 13 00 00       	call   f0102891 <cprintf>
f0101550:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
f0101557:	e8 73 f7 ff ff       	call   f0100ccf <page_alloc>
f010155c:	89 45 d0             	mov    %eax,-0x30(%ebp)
f010155f:	83 c4 10             	add    $0x10,%esp
f0101562:	85 c0                	test   %eax,%eax
f0101564:	0f 84 9a 06 00 00    	je     f0101c04 <mem_init+0xc2d>
f010156a:	83 ec 0c             	sub    $0xc,%esp
f010156d:	6a 00                	push   $0x0
f010156f:	e8 5b f7 ff ff       	call   f0100ccf <page_alloc>
f0101574:	89 45 d4             	mov    %eax,-0x2c(%ebp)
f0101577:	83 c4 10             	add    $0x10,%esp
f010157a:	85 c0                	test   %eax,%eax
f010157c:	0f 84 9b 06 00 00    	je     f0101c1d <mem_init+0xc46>
f0101582:	83 ec 0c             	sub    $0xc,%esp
f0101585:	6a 00                	push   $0x0
f0101587:	e8 43 f7 ff ff       	call   f0100ccf <page_alloc>
f010158c:	89 c3                	mov    %eax,%ebx
f010158e:	83 c4 10             	add    $0x10,%esp
f0101591:	85 c0                	test   %eax,%eax
f0101593:	0f 84 9d 06 00 00    	je     f0101c36 <mem_init+0xc5f>
f0101599:	8b 75 d4             	mov    -0x2c(%ebp),%esi
f010159c:	39 75 d0             	cmp    %esi,-0x30(%ebp)
f010159f:	0f 84 aa 06 00 00    	je     f0101c4f <mem_init+0xc78>
f01015a5:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
f01015a8:	0f 84 ba 06 00 00    	je     f0101c68 <mem_init+0xc91>
f01015ae:	39 45 d0             	cmp    %eax,-0x30(%ebp)
f01015b1:	0f 84 b1 06 00 00    	je     f0101c68 <mem_init+0xc91>
f01015b7:	a1 68 f5 10 f0       	mov    0xf010f568,%eax
f01015bc:	89 45 cc             	mov    %eax,-0x34(%ebp)
f01015bf:	c7 05 68 f5 10 f0 00 	movl   $0x0,0xf010f568
f01015c6:	00 00 00 
f01015c9:	83 ec 0c             	sub    $0xc,%esp
f01015cc:	6a 00                	push   $0x0
f01015ce:	e8 fc f6 ff ff       	call   f0100ccf <page_alloc>
f01015d3:	83 c4 10             	add    $0x10,%esp
f01015d6:	85 c0                	test   %eax,%eax
f01015d8:	0f 85 a3 06 00 00    	jne    f0101c81 <mem_init+0xcaa>
f01015de:	83 ec 04             	sub    $0x4,%esp
f01015e1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
f01015e4:	50                   	push   %eax
f01015e5:	6a 00                	push   $0x0
f01015e7:	ff 35 5c f5 10 f0    	push   0xf010f55c
f01015ed:	e8 d7 f8 ff ff       	call   f0100ec9 <page_lookup>
f01015f2:	83 c4 10             	add    $0x10,%esp
f01015f5:	85 c0                	test   %eax,%eax
f01015f7:	0f 85 9d 06 00 00    	jne    f0101c9a <mem_init+0xcc3>
f01015fd:	6a 02                	push   $0x2
f01015ff:	6a 00                	push   $0x0
f0101601:	ff 75 d4             	push   -0x2c(%ebp)
f0101604:	ff 35 5c f5 10 f0    	push   0xf010f55c
f010160a:	e8 56 f9 ff ff       	call   f0100f65 <page_insert>
f010160f:	83 c4 10             	add    $0x10,%esp
f0101612:	85 c0                	test   %eax,%eax
f0101614:	0f 89 99 06 00 00    	jns    f0101cb3 <mem_init+0xcdc>
f010161a:	83 ec 0c             	sub    $0xc,%esp
f010161d:	ff 75 d0             	push   -0x30(%ebp)
f0101620:	e8 31 f7 ff ff       	call   f0100d56 <page_free>
f0101625:	6a 02                	push   $0x2
f0101627:	6a 00                	push   $0x0
f0101629:	ff 75 d4             	push   -0x2c(%ebp)
f010162c:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101632:	e8 2e f9 ff ff       	call   f0100f65 <page_insert>
f0101637:	83 c4 20             	add    $0x20,%esp
f010163a:	85 c0                	test   %eax,%eax
f010163c:	0f 85 8a 06 00 00    	jne    f0101ccc <mem_init+0xcf5>
f0101642:	8b 35 5c f5 10 f0    	mov    0xf010f55c,%esi
f0101648:	8b 3d 58 f5 10 f0    	mov    0xf010f558,%edi
f010164e:	8b 16                	mov    (%esi),%edx
f0101650:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
f0101656:	8b 45 d0             	mov    -0x30(%ebp),%eax
f0101659:	29 f8                	sub    %edi,%eax
f010165b:	c1 f8 03             	sar    $0x3,%eax
f010165e:	c1 e0 0c             	shl    $0xc,%eax
f0101661:	39 c2                	cmp    %eax,%edx
f0101663:	0f 85 7c 06 00 00    	jne    f0101ce5 <mem_init+0xd0e>
f0101669:	ba 00 00 00 00       	mov    $0x0,%edx
f010166e:	89 f0                	mov    %esi,%eax
f0101670:	e8 44 f2 ff ff       	call   f01008b9 <check_va2pa>
f0101675:	89 c2                	mov    %eax,%edx
f0101677:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f010167a:	29 f8                	sub    %edi,%eax
f010167c:	c1 f8 03             	sar    $0x3,%eax
f010167f:	c1 e0 0c             	shl    $0xc,%eax
f0101682:	39 c2                	cmp    %eax,%edx
f0101684:	0f 85 74 06 00 00    	jne    f0101cfe <mem_init+0xd27>
f010168a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f010168d:	66 83 78 04 01       	cmpw   $0x1,0x4(%eax)
f0101692:	0f 85 7f 06 00 00    	jne    f0101d17 <mem_init+0xd40>
f0101698:	8b 45 d0             	mov    -0x30(%ebp),%eax
f010169b:	66 83 78 04 01       	cmpw   $0x1,0x4(%eax)
f01016a0:	0f 85 8a 06 00 00    	jne    f0101d30 <mem_init+0xd59>
f01016a6:	6a 02                	push   $0x2
f01016a8:	68 00 10 00 00       	push   $0x1000
f01016ad:	53                   	push   %ebx
f01016ae:	56                   	push   %esi
f01016af:	e8 b1 f8 ff ff       	call   f0100f65 <page_insert>
f01016b4:	83 c4 10             	add    $0x10,%esp
f01016b7:	85 c0                	test   %eax,%eax
f01016b9:	0f 85 8a 06 00 00    	jne    f0101d49 <mem_init+0xd72>
f01016bf:	ba 00 10 00 00       	mov    $0x1000,%edx
f01016c4:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f01016c9:	e8 eb f1 ff ff       	call   f01008b9 <check_va2pa>
f01016ce:	89 c2                	mov    %eax,%edx
f01016d0:	89 d8                	mov    %ebx,%eax
f01016d2:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f01016d8:	c1 f8 03             	sar    $0x3,%eax
f01016db:	c1 e0 0c             	shl    $0xc,%eax
f01016de:	39 c2                	cmp    %eax,%edx
f01016e0:	0f 85 7c 06 00 00    	jne    f0101d62 <mem_init+0xd8b>
f01016e6:	66 83 7b 04 01       	cmpw   $0x1,0x4(%ebx)
f01016eb:	0f 85 8a 06 00 00    	jne    f0101d7b <mem_init+0xda4>
f01016f1:	83 ec 0c             	sub    $0xc,%esp
f01016f4:	6a 00                	push   $0x0
f01016f6:	e8 d4 f5 ff ff       	call   f0100ccf <page_alloc>
f01016fb:	83 c4 10             	add    $0x10,%esp
f01016fe:	85 c0                	test   %eax,%eax
f0101700:	0f 85 8e 06 00 00    	jne    f0101d94 <mem_init+0xdbd>
f0101706:	6a 02                	push   $0x2
f0101708:	68 00 10 00 00       	push   $0x1000
f010170d:	53                   	push   %ebx
f010170e:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101714:	e8 4c f8 ff ff       	call   f0100f65 <page_insert>
f0101719:	83 c4 10             	add    $0x10,%esp
f010171c:	85 c0                	test   %eax,%eax
f010171e:	0f 85 89 06 00 00    	jne    f0101dad <mem_init+0xdd6>
f0101724:	ba 00 10 00 00       	mov    $0x1000,%edx
f0101729:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f010172e:	e8 86 f1 ff ff       	call   f01008b9 <check_va2pa>
f0101733:	89 c2                	mov    %eax,%edx
f0101735:	89 d8                	mov    %ebx,%eax
f0101737:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f010173d:	c1 f8 03             	sar    $0x3,%eax
f0101740:	c1 e0 0c             	shl    $0xc,%eax
f0101743:	39 c2                	cmp    %eax,%edx
f0101745:	0f 85 7b 06 00 00    	jne    f0101dc6 <mem_init+0xdef>
f010174b:	66 83 7b 04 01       	cmpw   $0x1,0x4(%ebx)
f0101750:	0f 85 89 06 00 00    	jne    f0101ddf <mem_init+0xe08>
f0101756:	83 ec 0c             	sub    $0xc,%esp
f0101759:	6a 00                	push   $0x0
f010175b:	e8 6f f5 ff ff       	call   f0100ccf <page_alloc>
f0101760:	83 c4 10             	add    $0x10,%esp
f0101763:	85 c0                	test   %eax,%eax
f0101765:	0f 85 8d 06 00 00    	jne    f0101df8 <mem_init+0xe21>
f010176b:	8b 15 5c f5 10 f0    	mov    0xf010f55c,%edx
f0101771:	8b 02                	mov    (%edx),%eax
f0101773:	89 c6                	mov    %eax,%esi
f0101775:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
f010177b:	c1 e8 0c             	shr    $0xc,%eax
f010177e:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0101784:	0f 83 87 06 00 00    	jae    f0101e11 <mem_init+0xe3a>
f010178a:	83 ec 04             	sub    $0x4,%esp
f010178d:	6a 00                	push   $0x0
f010178f:	68 00 10 00 00       	push   $0x1000
f0101794:	52                   	push   %edx
f0101795:	e8 20 f6 ff ff       	call   f0100dba <pgdir_walk>
f010179a:	81 ee fc ff ff 0f    	sub    $0xffffffc,%esi
f01017a0:	83 c4 10             	add    $0x10,%esp
f01017a3:	39 f0                	cmp    %esi,%eax
f01017a5:	0f 85 7b 06 00 00    	jne    f0101e26 <mem_init+0xe4f>
f01017ab:	6a 06                	push   $0x6
f01017ad:	68 00 10 00 00       	push   $0x1000
f01017b2:	53                   	push   %ebx
f01017b3:	ff 35 5c f5 10 f0    	push   0xf010f55c
f01017b9:	e8 a7 f7 ff ff       	call   f0100f65 <page_insert>
f01017be:	83 c4 10             	add    $0x10,%esp
f01017c1:	85 c0                	test   %eax,%eax
f01017c3:	0f 85 76 06 00 00    	jne    f0101e3f <mem_init+0xe68>
f01017c9:	8b 35 5c f5 10 f0    	mov    0xf010f55c,%esi
f01017cf:	ba 00 10 00 00       	mov    $0x1000,%edx
f01017d4:	89 f0                	mov    %esi,%eax
f01017d6:	e8 de f0 ff ff       	call   f01008b9 <check_va2pa>
f01017db:	89 c2                	mov    %eax,%edx
f01017dd:	89 d8                	mov    %ebx,%eax
f01017df:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f01017e5:	c1 f8 03             	sar    $0x3,%eax
f01017e8:	c1 e0 0c             	shl    $0xc,%eax
f01017eb:	39 c2                	cmp    %eax,%edx
f01017ed:	0f 85 65 06 00 00    	jne    f0101e58 <mem_init+0xe81>
f01017f3:	66 83 7b 04 01       	cmpw   $0x1,0x4(%ebx)
f01017f8:	0f 85 73 06 00 00    	jne    f0101e71 <mem_init+0xe9a>
f01017fe:	83 ec 04             	sub    $0x4,%esp
f0101801:	6a 00                	push   $0x0
f0101803:	68 00 10 00 00       	push   $0x1000
f0101808:	56                   	push   %esi
f0101809:	e8 ac f5 ff ff       	call   f0100dba <pgdir_walk>
f010180e:	83 c4 10             	add    $0x10,%esp
f0101811:	f6 00 04             	testb  $0x4,(%eax)
f0101814:	0f 84 70 06 00 00    	je     f0101e8a <mem_init+0xeb3>
f010181a:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f010181f:	f6 00 04             	testb  $0x4,(%eax)
f0101822:	0f 84 7b 06 00 00    	je     f0101ea3 <mem_init+0xecc>
f0101828:	6a 02                	push   $0x2
f010182a:	68 00 10 00 00       	push   $0x1000
f010182f:	53                   	push   %ebx
f0101830:	50                   	push   %eax
f0101831:	e8 2f f7 ff ff       	call   f0100f65 <page_insert>
f0101836:	83 c4 10             	add    $0x10,%esp
f0101839:	85 c0                	test   %eax,%eax
f010183b:	0f 85 7b 06 00 00    	jne    f0101ebc <mem_init+0xee5>
f0101841:	83 ec 04             	sub    $0x4,%esp
f0101844:	6a 00                	push   $0x0
f0101846:	68 00 10 00 00       	push   $0x1000
f010184b:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101851:	e8 64 f5 ff ff       	call   f0100dba <pgdir_walk>
f0101856:	83 c4 10             	add    $0x10,%esp
f0101859:	f6 00 02             	testb  $0x2,(%eax)
f010185c:	0f 84 73 06 00 00    	je     f0101ed5 <mem_init+0xefe>
f0101862:	83 ec 04             	sub    $0x4,%esp
f0101865:	6a 00                	push   $0x0
f0101867:	68 00 10 00 00       	push   $0x1000
f010186c:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101872:	e8 43 f5 ff ff       	call   f0100dba <pgdir_walk>
f0101877:	83 c4 10             	add    $0x10,%esp
f010187a:	f6 00 04             	testb  $0x4,(%eax)
f010187d:	0f 85 6b 06 00 00    	jne    f0101eee <mem_init+0xf17>
f0101883:	6a 02                	push   $0x2
f0101885:	68 00 00 40 00       	push   $0x400000
f010188a:	ff 75 d0             	push   -0x30(%ebp)
f010188d:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101893:	e8 cd f6 ff ff       	call   f0100f65 <page_insert>
f0101898:	83 c4 10             	add    $0x10,%esp
f010189b:	85 c0                	test   %eax,%eax
f010189d:	0f 89 64 06 00 00    	jns    f0101f07 <mem_init+0xf30>
f01018a3:	6a 02                	push   $0x2
f01018a5:	68 00 10 00 00       	push   $0x1000
f01018aa:	ff 75 d4             	push   -0x2c(%ebp)
f01018ad:	ff 35 5c f5 10 f0    	push   0xf010f55c
f01018b3:	e8 ad f6 ff ff       	call   f0100f65 <page_insert>
f01018b8:	83 c4 10             	add    $0x10,%esp
f01018bb:	85 c0                	test   %eax,%eax
f01018bd:	0f 85 5d 06 00 00    	jne    f0101f20 <mem_init+0xf49>
f01018c3:	83 ec 04             	sub    $0x4,%esp
f01018c6:	6a 00                	push   $0x0
f01018c8:	68 00 10 00 00       	push   $0x1000
f01018cd:	ff 35 5c f5 10 f0    	push   0xf010f55c
f01018d3:	e8 e2 f4 ff ff       	call   f0100dba <pgdir_walk>
f01018d8:	8b 00                	mov    (%eax),%eax
f01018da:	83 c4 10             	add    $0x10,%esp
f01018dd:	83 e0 04             	and    $0x4,%eax
f01018e0:	89 c7                	mov    %eax,%edi
f01018e2:	0f 85 51 06 00 00    	jne    f0101f39 <mem_init+0xf62>
f01018e8:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f01018ed:	89 45 c8             	mov    %eax,-0x38(%ebp)
f01018f0:	ba 00 00 00 00       	mov    $0x0,%edx
f01018f5:	e8 bf ef ff ff       	call   f01008b9 <check_va2pa>
f01018fa:	8b 75 d4             	mov    -0x2c(%ebp),%esi
f01018fd:	2b 35 58 f5 10 f0    	sub    0xf010f558,%esi
f0101903:	c1 fe 03             	sar    $0x3,%esi
f0101906:	c1 e6 0c             	shl    $0xc,%esi
f0101909:	39 f0                	cmp    %esi,%eax
f010190b:	0f 85 41 06 00 00    	jne    f0101f52 <mem_init+0xf7b>
f0101911:	ba 00 10 00 00       	mov    $0x1000,%edx
f0101916:	8b 45 c8             	mov    -0x38(%ebp),%eax
f0101919:	e8 9b ef ff ff       	call   f01008b9 <check_va2pa>
f010191e:	39 c6                	cmp    %eax,%esi
f0101920:	0f 85 45 06 00 00    	jne    f0101f6b <mem_init+0xf94>
f0101926:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f0101929:	66 83 78 04 02       	cmpw   $0x2,0x4(%eax)
f010192e:	0f 85 50 06 00 00    	jne    f0101f84 <mem_init+0xfad>
f0101934:	66 83 7b 04 00       	cmpw   $0x0,0x4(%ebx)
f0101939:	0f 85 5e 06 00 00    	jne    f0101f9d <mem_init+0xfc6>
f010193f:	83 ec 0c             	sub    $0xc,%esp
f0101942:	6a 00                	push   $0x0
f0101944:	e8 86 f3 ff ff       	call   f0100ccf <page_alloc>
f0101949:	83 c4 10             	add    $0x10,%esp
f010194c:	85 c0                	test   %eax,%eax
f010194e:	0f 84 62 06 00 00    	je     f0101fb6 <mem_init+0xfdf>
f0101954:	39 c3                	cmp    %eax,%ebx
f0101956:	0f 85 5a 06 00 00    	jne    f0101fb6 <mem_init+0xfdf>
f010195c:	83 ec 08             	sub    $0x8,%esp
f010195f:	6a 00                	push   $0x0
f0101961:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101967:	e8 c0 f5 ff ff       	call   f0100f2c <page_remove>
f010196c:	8b 35 5c f5 10 f0    	mov    0xf010f55c,%esi
f0101972:	ba 00 00 00 00       	mov    $0x0,%edx
f0101977:	89 f0                	mov    %esi,%eax
f0101979:	e8 3b ef ff ff       	call   f01008b9 <check_va2pa>
f010197e:	83 c4 10             	add    $0x10,%esp
f0101981:	83 f8 ff             	cmp    $0xffffffff,%eax
f0101984:	0f 85 45 06 00 00    	jne    f0101fcf <mem_init+0xff8>
f010198a:	ba 00 10 00 00       	mov    $0x1000,%edx
f010198f:	89 f0                	mov    %esi,%eax
f0101991:	e8 23 ef ff ff       	call   f01008b9 <check_va2pa>
f0101996:	89 c2                	mov    %eax,%edx
f0101998:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f010199b:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f01019a1:	c1 f8 03             	sar    $0x3,%eax
f01019a4:	c1 e0 0c             	shl    $0xc,%eax
f01019a7:	39 c2                	cmp    %eax,%edx
f01019a9:	0f 85 39 06 00 00    	jne    f0101fe8 <mem_init+0x1011>
f01019af:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f01019b2:	66 83 78 04 01       	cmpw   $0x1,0x4(%eax)
f01019b7:	0f 85 44 06 00 00    	jne    f0102001 <mem_init+0x102a>
f01019bd:	66 83 7b 04 00       	cmpw   $0x0,0x4(%ebx)
f01019c2:	0f 85 52 06 00 00    	jne    f010201a <mem_init+0x1043>
f01019c8:	6a 00                	push   $0x0
f01019ca:	68 00 10 00 00       	push   $0x1000
f01019cf:	ff 75 d4             	push   -0x2c(%ebp)
f01019d2:	56                   	push   %esi
f01019d3:	e8 8d f5 ff ff       	call   f0100f65 <page_insert>
f01019d8:	83 c4 10             	add    $0x10,%esp
f01019db:	85 c0                	test   %eax,%eax
f01019dd:	0f 85 50 06 00 00    	jne    f0102033 <mem_init+0x105c>
f01019e3:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f01019e6:	66 83 78 04 00       	cmpw   $0x0,0x4(%eax)
f01019eb:	0f 84 5b 06 00 00    	je     f010204c <mem_init+0x1075>
f01019f1:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f01019f4:	83 38 00             	cmpl   $0x0,(%eax)
f01019f7:	0f 85 68 06 00 00    	jne    f0102065 <mem_init+0x108e>
f01019fd:	83 ec 08             	sub    $0x8,%esp
f0101a00:	68 00 10 00 00       	push   $0x1000
f0101a05:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101a0b:	e8 1c f5 ff ff       	call   f0100f2c <page_remove>
f0101a10:	8b 35 5c f5 10 f0    	mov    0xf010f55c,%esi
f0101a16:	ba 00 00 00 00       	mov    $0x0,%edx
f0101a1b:	89 f0                	mov    %esi,%eax
f0101a1d:	e8 97 ee ff ff       	call   f01008b9 <check_va2pa>
f0101a22:	83 c4 10             	add    $0x10,%esp
f0101a25:	83 f8 ff             	cmp    $0xffffffff,%eax
f0101a28:	0f 85 50 06 00 00    	jne    f010207e <mem_init+0x10a7>
f0101a2e:	ba 00 10 00 00       	mov    $0x1000,%edx
f0101a33:	89 f0                	mov    %esi,%eax
f0101a35:	e8 7f ee ff ff       	call   f01008b9 <check_va2pa>
f0101a3a:	83 f8 ff             	cmp    $0xffffffff,%eax
f0101a3d:	0f 85 54 06 00 00    	jne    f0102097 <mem_init+0x10c0>
f0101a43:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f0101a46:	66 83 78 04 00       	cmpw   $0x0,0x4(%eax)
f0101a4b:	0f 85 5f 06 00 00    	jne    f01020b0 <mem_init+0x10d9>
f0101a51:	66 83 7b 04 00       	cmpw   $0x0,0x4(%ebx)
f0101a56:	0f 85 6d 06 00 00    	jne    f01020c9 <mem_init+0x10f2>
f0101a5c:	83 ec 0c             	sub    $0xc,%esp
f0101a5f:	6a 00                	push   $0x0
f0101a61:	e8 69 f2 ff ff       	call   f0100ccf <page_alloc>
f0101a66:	83 c4 10             	add    $0x10,%esp
f0101a69:	85 c0                	test   %eax,%eax
f0101a6b:	0f 84 71 06 00 00    	je     f01020e2 <mem_init+0x110b>
f0101a71:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
f0101a74:	0f 85 68 06 00 00    	jne    f01020e2 <mem_init+0x110b>
f0101a7a:	83 ec 0c             	sub    $0xc,%esp
f0101a7d:	6a 00                	push   $0x0
f0101a7f:	e8 4b f2 ff ff       	call   f0100ccf <page_alloc>
f0101a84:	83 c4 10             	add    $0x10,%esp
f0101a87:	85 c0                	test   %eax,%eax
f0101a89:	0f 85 6c 06 00 00    	jne    f01020fb <mem_init+0x1124>
f0101a8f:	8b 0d 5c f5 10 f0    	mov    0xf010f55c,%ecx
f0101a95:	8b 11                	mov    (%ecx),%edx
f0101a97:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
f0101a9d:	8b 45 d0             	mov    -0x30(%ebp),%eax
f0101aa0:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0101aa6:	c1 f8 03             	sar    $0x3,%eax
f0101aa9:	c1 e0 0c             	shl    $0xc,%eax
f0101aac:	39 c2                	cmp    %eax,%edx
f0101aae:	0f 85 60 06 00 00    	jne    f0102114 <mem_init+0x113d>
f0101ab4:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
f0101aba:	8b 45 d0             	mov    -0x30(%ebp),%eax
f0101abd:	66 83 78 04 01       	cmpw   $0x1,0x4(%eax)
f0101ac2:	0f 85 65 06 00 00    	jne    f010212d <mem_init+0x1156>
f0101ac8:	8b 45 d0             	mov    -0x30(%ebp),%eax
f0101acb:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
f0101ad1:	83 ec 0c             	sub    $0xc,%esp
f0101ad4:	50                   	push   %eax
f0101ad5:	e8 7c f2 ff ff       	call   f0100d56 <page_free>
f0101ada:	83 c4 0c             	add    $0xc,%esp
f0101add:	6a 01                	push   $0x1
f0101adf:	68 00 10 40 00       	push   $0x401000
f0101ae4:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101aea:	e8 cb f2 ff ff       	call   f0100dba <pgdir_walk>
f0101aef:	89 45 c8             	mov    %eax,-0x38(%ebp)
f0101af2:	8b 35 5c f5 10 f0    	mov    0xf010f55c,%esi
f0101af8:	8b 46 04             	mov    0x4(%esi),%eax
f0101afb:	89 c2                	mov    %eax,%edx
f0101afd:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
f0101b03:	8b 0d 60 f5 10 f0    	mov    0xf010f560,%ecx
f0101b09:	c1 e8 0c             	shr    $0xc,%eax
f0101b0c:	83 c4 10             	add    $0x10,%esp
f0101b0f:	39 c8                	cmp    %ecx,%eax
f0101b11:	0f 83 2f 06 00 00    	jae    f0102146 <mem_init+0x116f>
f0101b17:	81 ea fc ff ff 0f    	sub    $0xffffffc,%edx
f0101b1d:	39 55 c8             	cmp    %edx,-0x38(%ebp)
f0101b20:	0f 85 35 06 00 00    	jne    f010215b <mem_init+0x1184>
f0101b26:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
f0101b2d:	8b 45 d0             	mov    -0x30(%ebp),%eax
f0101b30:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
f0101b36:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0101b3c:	c1 f8 03             	sar    $0x3,%eax
f0101b3f:	89 c2                	mov    %eax,%edx
f0101b41:	c1 e2 0c             	shl    $0xc,%edx
f0101b44:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0101b49:	39 c8                	cmp    %ecx,%eax
f0101b4b:	0f 83 23 06 00 00    	jae    f0102174 <mem_init+0x119d>
f0101b51:	83 ec 04             	sub    $0x4,%esp
f0101b54:	68 00 10 00 00       	push   $0x1000
f0101b59:	68 ff 00 00 00       	push   $0xff
f0101b5e:	81 ea 00 00 00 10    	sub    $0x10000000,%edx
f0101b64:	52                   	push   %edx
f0101b65:	e8 b9 18 00 00       	call   f0103423 <memset>
f0101b6a:	8b 75 d0             	mov    -0x30(%ebp),%esi
f0101b6d:	89 34 24             	mov    %esi,(%esp)
f0101b70:	e8 e1 f1 ff ff       	call   f0100d56 <page_free>
f0101b75:	83 c4 0c             	add    $0xc,%esp
f0101b78:	6a 01                	push   $0x1
f0101b7a:	6a 00                	push   $0x0
f0101b7c:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0101b82:	e8 33 f2 ff ff       	call   f0100dba <pgdir_walk>
f0101b87:	89 f0                	mov    %esi,%eax
f0101b89:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0101b8f:	c1 f8 03             	sar    $0x3,%eax
f0101b92:	89 c1                	mov    %eax,%ecx
f0101b94:	c1 e1 0c             	shl    $0xc,%ecx
f0101b97:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0101b9c:	83 c4 10             	add    $0x10,%esp
f0101b9f:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0101ba5:	0f 83 db 05 00 00    	jae    f0102186 <mem_init+0x11af>
f0101bab:	8d 81 00 00 00 f0    	lea    -0x10000000(%ecx),%eax
f0101bb1:	81 e9 00 f0 ff 0f    	sub    $0xffff000,%ecx
f0101bb7:	90                   	nop
f0101bb8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f0101bbf:	00 
f0101bc0:	39 c8                	cmp    %ecx,%eax
f0101bc2:	0f 84 d0 05 00 00    	je     f0102198 <mem_init+0x11c1>
f0101bc8:	8b 10                	mov    (%eax),%edx
f0101bca:	83 c0 04             	add    $0x4,%eax
f0101bcd:	f6 c2 01             	test   $0x1,%dl
f0101bd0:	74 ee                	je     f0101bc0 <mem_init+0xbe9>
f0101bd2:	68 23 3c 10 f0       	push   $0xf0103c23
f0101bd7:	68 c6 39 10 f0       	push   $0xf01039c6
f0101bdc:	68 73 03 00 00       	push   $0x373
f0101be1:	68 a0 39 10 f0       	push   $0xf01039a0
f0101be6:	e8 a0 e4 ff ff       	call   f010008b <_panic>
f0101beb:	68 63 3b 10 f0       	push   $0xf0103b63
f0101bf0:	68 c6 39 10 f0       	push   $0xf01039c6
f0101bf5:	68 9d 02 00 00       	push   $0x29d
f0101bfa:	68 a0 39 10 f0       	push   $0xf01039a0
f0101bff:	e8 87 e4 ff ff       	call   f010008b <_panic>
f0101c04:	68 71 3a 10 f0       	push   $0xf0103a71
f0101c09:	68 c6 39 10 f0       	push   $0xf01039c6
f0101c0e:	68 f6 02 00 00       	push   $0x2f6
f0101c13:	68 a0 39 10 f0       	push   $0xf01039a0
f0101c18:	e8 6e e4 ff ff       	call   f010008b <_panic>
f0101c1d:	68 87 3a 10 f0       	push   $0xf0103a87
f0101c22:	68 c6 39 10 f0       	push   $0xf01039c6
f0101c27:	68 f7 02 00 00       	push   $0x2f7
f0101c2c:	68 a0 39 10 f0       	push   $0xf01039a0
f0101c31:	e8 55 e4 ff ff       	call   f010008b <_panic>
f0101c36:	68 9d 3a 10 f0       	push   $0xf0103a9d
f0101c3b:	68 c6 39 10 f0       	push   $0xf01039c6
f0101c40:	68 f8 02 00 00       	push   $0x2f8
f0101c45:	68 a0 39 10 f0       	push   $0xf01039a0
f0101c4a:	e8 3c e4 ff ff       	call   f010008b <_panic>
f0101c4f:	68 b3 3a 10 f0       	push   $0xf0103ab3
f0101c54:	68 c6 39 10 f0       	push   $0xf01039c6
f0101c59:	68 fb 02 00 00       	push   $0x2fb
f0101c5e:	68 a0 39 10 f0       	push   $0xf01039a0
f0101c63:	e8 23 e4 ff ff       	call   f010008b <_panic>
f0101c68:	68 20 43 10 f0       	push   $0xf0104320
f0101c6d:	68 c6 39 10 f0       	push   $0xf01039c6
f0101c72:	68 fc 02 00 00       	push   $0x2fc
f0101c77:	68 a0 39 10 f0       	push   $0xf01039a0
f0101c7c:	e8 0a e4 ff ff       	call   f010008b <_panic>
f0101c81:	68 1c 3b 10 f0       	push   $0xf0103b1c
f0101c86:	68 c6 39 10 f0       	push   $0xf01039c6
f0101c8b:	68 03 03 00 00       	push   $0x303
f0101c90:	68 a0 39 10 f0       	push   $0xf01039a0
f0101c95:	e8 f1 e3 ff ff       	call   f010008b <_panic>
f0101c9a:	68 60 43 10 f0       	push   $0xf0104360
f0101c9f:	68 c6 39 10 f0       	push   $0xf01039c6
f0101ca4:	68 06 03 00 00       	push   $0x306
f0101ca9:	68 a0 39 10 f0       	push   $0xf01039a0
f0101cae:	e8 d8 e3 ff ff       	call   f010008b <_panic>
f0101cb3:	68 98 43 10 f0       	push   $0xf0104398
f0101cb8:	68 c6 39 10 f0       	push   $0xf01039c6
f0101cbd:	68 09 03 00 00       	push   $0x309
f0101cc2:	68 a0 39 10 f0       	push   $0xf01039a0
f0101cc7:	e8 bf e3 ff ff       	call   f010008b <_panic>
f0101ccc:	68 c8 43 10 f0       	push   $0xf01043c8
f0101cd1:	68 c6 39 10 f0       	push   $0xf01039c6
f0101cd6:	68 0d 03 00 00       	push   $0x30d
f0101cdb:	68 a0 39 10 f0       	push   $0xf01039a0
f0101ce0:	e8 a6 e3 ff ff       	call   f010008b <_panic>
f0101ce5:	68 f8 43 10 f0       	push   $0xf01043f8
f0101cea:	68 c6 39 10 f0       	push   $0xf01039c6
f0101cef:	68 0e 03 00 00       	push   $0x30e
f0101cf4:	68 a0 39 10 f0       	push   $0xf01039a0
f0101cf9:	e8 8d e3 ff ff       	call   f010008b <_panic>
f0101cfe:	68 20 44 10 f0       	push   $0xf0104420
f0101d03:	68 c6 39 10 f0       	push   $0xf01039c6
f0101d08:	68 0f 03 00 00       	push   $0x30f
f0101d0d:	68 a0 39 10 f0       	push   $0xf01039a0
f0101d12:	e8 74 e3 ff ff       	call   f010008b <_panic>
f0101d17:	68 6e 3b 10 f0       	push   $0xf0103b6e
f0101d1c:	68 c6 39 10 f0       	push   $0xf01039c6
f0101d21:	68 10 03 00 00       	push   $0x310
f0101d26:	68 a0 39 10 f0       	push   $0xf01039a0
f0101d2b:	e8 5b e3 ff ff       	call   f010008b <_panic>
f0101d30:	68 7f 3b 10 f0       	push   $0xf0103b7f
f0101d35:	68 c6 39 10 f0       	push   $0xf01039c6
f0101d3a:	68 11 03 00 00       	push   $0x311
f0101d3f:	68 a0 39 10 f0       	push   $0xf01039a0
f0101d44:	e8 42 e3 ff ff       	call   f010008b <_panic>
f0101d49:	68 50 44 10 f0       	push   $0xf0104450
f0101d4e:	68 c6 39 10 f0       	push   $0xf01039c6
f0101d53:	68 14 03 00 00       	push   $0x314
f0101d58:	68 a0 39 10 f0       	push   $0xf01039a0
f0101d5d:	e8 29 e3 ff ff       	call   f010008b <_panic>
f0101d62:	68 8c 44 10 f0       	push   $0xf010448c
f0101d67:	68 c6 39 10 f0       	push   $0xf01039c6
f0101d6c:	68 15 03 00 00       	push   $0x315
f0101d71:	68 a0 39 10 f0       	push   $0xf01039a0
f0101d76:	e8 10 e3 ff ff       	call   f010008b <_panic>
f0101d7b:	68 90 3b 10 f0       	push   $0xf0103b90
f0101d80:	68 c6 39 10 f0       	push   $0xf01039c6
f0101d85:	68 16 03 00 00       	push   $0x316
f0101d8a:	68 a0 39 10 f0       	push   $0xf01039a0
f0101d8f:	e8 f7 e2 ff ff       	call   f010008b <_panic>
f0101d94:	68 1c 3b 10 f0       	push   $0xf0103b1c
f0101d99:	68 c6 39 10 f0       	push   $0xf01039c6
f0101d9e:	68 19 03 00 00       	push   $0x319
f0101da3:	68 a0 39 10 f0       	push   $0xf01039a0
f0101da8:	e8 de e2 ff ff       	call   f010008b <_panic>
f0101dad:	68 50 44 10 f0       	push   $0xf0104450
f0101db2:	68 c6 39 10 f0       	push   $0xf01039c6
f0101db7:	68 1c 03 00 00       	push   $0x31c
f0101dbc:	68 a0 39 10 f0       	push   $0xf01039a0
f0101dc1:	e8 c5 e2 ff ff       	call   f010008b <_panic>
f0101dc6:	68 8c 44 10 f0       	push   $0xf010448c
f0101dcb:	68 c6 39 10 f0       	push   $0xf01039c6
f0101dd0:	68 1d 03 00 00       	push   $0x31d
f0101dd5:	68 a0 39 10 f0       	push   $0xf01039a0
f0101dda:	e8 ac e2 ff ff       	call   f010008b <_panic>
f0101ddf:	68 90 3b 10 f0       	push   $0xf0103b90
f0101de4:	68 c6 39 10 f0       	push   $0xf01039c6
f0101de9:	68 1e 03 00 00       	push   $0x31e
f0101dee:	68 a0 39 10 f0       	push   $0xf01039a0
f0101df3:	e8 93 e2 ff ff       	call   f010008b <_panic>
f0101df8:	68 1c 3b 10 f0       	push   $0xf0103b1c
f0101dfd:	68 c6 39 10 f0       	push   $0xf01039c6
f0101e02:	68 22 03 00 00       	push   $0x322
f0101e07:	68 a0 39 10 f0       	push   $0xf01039a0
f0101e0c:	e8 7a e2 ff ff       	call   f010008b <_panic>
f0101e11:	56                   	push   %esi
f0101e12:	68 10 41 10 f0       	push   $0xf0104110
f0101e17:	68 25 03 00 00       	push   $0x325
f0101e1c:	68 a0 39 10 f0       	push   $0xf01039a0
f0101e21:	e8 65 e2 ff ff       	call   f010008b <_panic>
f0101e26:	68 bc 44 10 f0       	push   $0xf01044bc
f0101e2b:	68 c6 39 10 f0       	push   $0xf01039c6
f0101e30:	68 26 03 00 00       	push   $0x326
f0101e35:	68 a0 39 10 f0       	push   $0xf01039a0
f0101e3a:	e8 4c e2 ff ff       	call   f010008b <_panic>
f0101e3f:	68 fc 44 10 f0       	push   $0xf01044fc
f0101e44:	68 c6 39 10 f0       	push   $0xf01039c6
f0101e49:	68 29 03 00 00       	push   $0x329
f0101e4e:	68 a0 39 10 f0       	push   $0xf01039a0
f0101e53:	e8 33 e2 ff ff       	call   f010008b <_panic>
f0101e58:	68 8c 44 10 f0       	push   $0xf010448c
f0101e5d:	68 c6 39 10 f0       	push   $0xf01039c6
f0101e62:	68 2a 03 00 00       	push   $0x32a
f0101e67:	68 a0 39 10 f0       	push   $0xf01039a0
f0101e6c:	e8 1a e2 ff ff       	call   f010008b <_panic>
f0101e71:	68 90 3b 10 f0       	push   $0xf0103b90
f0101e76:	68 c6 39 10 f0       	push   $0xf01039c6
f0101e7b:	68 2b 03 00 00       	push   $0x32b
f0101e80:	68 a0 39 10 f0       	push   $0xf01039a0
f0101e85:	e8 01 e2 ff ff       	call   f010008b <_panic>
f0101e8a:	68 3c 45 10 f0       	push   $0xf010453c
f0101e8f:	68 c6 39 10 f0       	push   $0xf01039c6
f0101e94:	68 2c 03 00 00       	push   $0x32c
f0101e99:	68 a0 39 10 f0       	push   $0xf01039a0
f0101e9e:	e8 e8 e1 ff ff       	call   f010008b <_panic>
f0101ea3:	68 a1 3b 10 f0       	push   $0xf0103ba1
f0101ea8:	68 c6 39 10 f0       	push   $0xf01039c6
f0101ead:	68 2d 03 00 00       	push   $0x32d
f0101eb2:	68 a0 39 10 f0       	push   $0xf01039a0
f0101eb7:	e8 cf e1 ff ff       	call   f010008b <_panic>
f0101ebc:	68 50 44 10 f0       	push   $0xf0104450
f0101ec1:	68 c6 39 10 f0       	push   $0xf01039c6
f0101ec6:	68 30 03 00 00       	push   $0x330
f0101ecb:	68 a0 39 10 f0       	push   $0xf01039a0
f0101ed0:	e8 b6 e1 ff ff       	call   f010008b <_panic>
f0101ed5:	68 70 45 10 f0       	push   $0xf0104570
f0101eda:	68 c6 39 10 f0       	push   $0xf01039c6
f0101edf:	68 31 03 00 00       	push   $0x331
f0101ee4:	68 a0 39 10 f0       	push   $0xf01039a0
f0101ee9:	e8 9d e1 ff ff       	call   f010008b <_panic>
f0101eee:	68 a4 45 10 f0       	push   $0xf01045a4
f0101ef3:	68 c6 39 10 f0       	push   $0xf01039c6
f0101ef8:	68 32 03 00 00       	push   $0x332
f0101efd:	68 a0 39 10 f0       	push   $0xf01039a0
f0101f02:	e8 84 e1 ff ff       	call   f010008b <_panic>
f0101f07:	68 dc 45 10 f0       	push   $0xf01045dc
f0101f0c:	68 c6 39 10 f0       	push   $0xf01039c6
f0101f11:	68 35 03 00 00       	push   $0x335
f0101f16:	68 a0 39 10 f0       	push   $0xf01039a0
f0101f1b:	e8 6b e1 ff ff       	call   f010008b <_panic>
f0101f20:	68 14 46 10 f0       	push   $0xf0104614
f0101f25:	68 c6 39 10 f0       	push   $0xf01039c6
f0101f2a:	68 38 03 00 00       	push   $0x338
f0101f2f:	68 a0 39 10 f0       	push   $0xf01039a0
f0101f34:	e8 52 e1 ff ff       	call   f010008b <_panic>
f0101f39:	68 a4 45 10 f0       	push   $0xf01045a4
f0101f3e:	68 c6 39 10 f0       	push   $0xf01039c6
f0101f43:	68 39 03 00 00       	push   $0x339
f0101f48:	68 a0 39 10 f0       	push   $0xf01039a0
f0101f4d:	e8 39 e1 ff ff       	call   f010008b <_panic>
f0101f52:	68 50 46 10 f0       	push   $0xf0104650
f0101f57:	68 c6 39 10 f0       	push   $0xf01039c6
f0101f5c:	68 3c 03 00 00       	push   $0x33c
f0101f61:	68 a0 39 10 f0       	push   $0xf01039a0
f0101f66:	e8 20 e1 ff ff       	call   f010008b <_panic>
f0101f6b:	68 7c 46 10 f0       	push   $0xf010467c
f0101f70:	68 c6 39 10 f0       	push   $0xf01039c6
f0101f75:	68 3d 03 00 00       	push   $0x33d
f0101f7a:	68 a0 39 10 f0       	push   $0xf01039a0
f0101f7f:	e8 07 e1 ff ff       	call   f010008b <_panic>
f0101f84:	68 b7 3b 10 f0       	push   $0xf0103bb7
f0101f89:	68 c6 39 10 f0       	push   $0xf01039c6
f0101f8e:	68 3f 03 00 00       	push   $0x33f
f0101f93:	68 a0 39 10 f0       	push   $0xf01039a0
f0101f98:	e8 ee e0 ff ff       	call   f010008b <_panic>
f0101f9d:	68 c8 3b 10 f0       	push   $0xf0103bc8
f0101fa2:	68 c6 39 10 f0       	push   $0xf01039c6
f0101fa7:	68 40 03 00 00       	push   $0x340
f0101fac:	68 a0 39 10 f0       	push   $0xf01039a0
f0101fb1:	e8 d5 e0 ff ff       	call   f010008b <_panic>
f0101fb6:	68 ac 46 10 f0       	push   $0xf01046ac
f0101fbb:	68 c6 39 10 f0       	push   $0xf01039c6
f0101fc0:	68 43 03 00 00       	push   $0x343
f0101fc5:	68 a0 39 10 f0       	push   $0xf01039a0
f0101fca:	e8 bc e0 ff ff       	call   f010008b <_panic>
f0101fcf:	68 d0 46 10 f0       	push   $0xf01046d0
f0101fd4:	68 c6 39 10 f0       	push   $0xf01039c6
f0101fd9:	68 47 03 00 00       	push   $0x347
f0101fde:	68 a0 39 10 f0       	push   $0xf01039a0
f0101fe3:	e8 a3 e0 ff ff       	call   f010008b <_panic>
f0101fe8:	68 7c 46 10 f0       	push   $0xf010467c
f0101fed:	68 c6 39 10 f0       	push   $0xf01039c6
f0101ff2:	68 48 03 00 00       	push   $0x348
f0101ff7:	68 a0 39 10 f0       	push   $0xf01039a0
f0101ffc:	e8 8a e0 ff ff       	call   f010008b <_panic>
f0102001:	68 6e 3b 10 f0       	push   $0xf0103b6e
f0102006:	68 c6 39 10 f0       	push   $0xf01039c6
f010200b:	68 49 03 00 00       	push   $0x349
f0102010:	68 a0 39 10 f0       	push   $0xf01039a0
f0102015:	e8 71 e0 ff ff       	call   f010008b <_panic>
f010201a:	68 c8 3b 10 f0       	push   $0xf0103bc8
f010201f:	68 c6 39 10 f0       	push   $0xf01039c6
f0102024:	68 4a 03 00 00       	push   $0x34a
f0102029:	68 a0 39 10 f0       	push   $0xf01039a0
f010202e:	e8 58 e0 ff ff       	call   f010008b <_panic>
f0102033:	68 f4 46 10 f0       	push   $0xf01046f4
f0102038:	68 c6 39 10 f0       	push   $0xf01039c6
f010203d:	68 4d 03 00 00       	push   $0x34d
f0102042:	68 a0 39 10 f0       	push   $0xf01039a0
f0102047:	e8 3f e0 ff ff       	call   f010008b <_panic>
f010204c:	68 d9 3b 10 f0       	push   $0xf0103bd9
f0102051:	68 c6 39 10 f0       	push   $0xf01039c6
f0102056:	68 4e 03 00 00       	push   $0x34e
f010205b:	68 a0 39 10 f0       	push   $0xf01039a0
f0102060:	e8 26 e0 ff ff       	call   f010008b <_panic>
f0102065:	68 e5 3b 10 f0       	push   $0xf0103be5
f010206a:	68 c6 39 10 f0       	push   $0xf01039c6
f010206f:	68 4f 03 00 00       	push   $0x34f
f0102074:	68 a0 39 10 f0       	push   $0xf01039a0
f0102079:	e8 0d e0 ff ff       	call   f010008b <_panic>
f010207e:	68 d0 46 10 f0       	push   $0xf01046d0
f0102083:	68 c6 39 10 f0       	push   $0xf01039c6
f0102088:	68 53 03 00 00       	push   $0x353
f010208d:	68 a0 39 10 f0       	push   $0xf01039a0
f0102092:	e8 f4 df ff ff       	call   f010008b <_panic>
f0102097:	68 2c 47 10 f0       	push   $0xf010472c
f010209c:	68 c6 39 10 f0       	push   $0xf01039c6
f01020a1:	68 54 03 00 00       	push   $0x354
f01020a6:	68 a0 39 10 f0       	push   $0xf01039a0
f01020ab:	e8 db df ff ff       	call   f010008b <_panic>
f01020b0:	68 fa 3b 10 f0       	push   $0xf0103bfa
f01020b5:	68 c6 39 10 f0       	push   $0xf01039c6
f01020ba:	68 55 03 00 00       	push   $0x355
f01020bf:	68 a0 39 10 f0       	push   $0xf01039a0
f01020c4:	e8 c2 df ff ff       	call   f010008b <_panic>
f01020c9:	68 c8 3b 10 f0       	push   $0xf0103bc8
f01020ce:	68 c6 39 10 f0       	push   $0xf01039c6
f01020d3:	68 56 03 00 00       	push   $0x356
f01020d8:	68 a0 39 10 f0       	push   $0xf01039a0
f01020dd:	e8 a9 df ff ff       	call   f010008b <_panic>
f01020e2:	68 54 47 10 f0       	push   $0xf0104754
f01020e7:	68 c6 39 10 f0       	push   $0xf01039c6
f01020ec:	68 59 03 00 00       	push   $0x359
f01020f1:	68 a0 39 10 f0       	push   $0xf01039a0
f01020f6:	e8 90 df ff ff       	call   f010008b <_panic>
f01020fb:	68 1c 3b 10 f0       	push   $0xf0103b1c
f0102100:	68 c6 39 10 f0       	push   $0xf01039c6
f0102105:	68 5c 03 00 00       	push   $0x35c
f010210a:	68 a0 39 10 f0       	push   $0xf01039a0
f010210f:	e8 77 df ff ff       	call   f010008b <_panic>
f0102114:	68 f8 43 10 f0       	push   $0xf01043f8
f0102119:	68 c6 39 10 f0       	push   $0xf01039c6
f010211e:	68 5f 03 00 00       	push   $0x35f
f0102123:	68 a0 39 10 f0       	push   $0xf01039a0
f0102128:	e8 5e df ff ff       	call   f010008b <_panic>
f010212d:	68 7f 3b 10 f0       	push   $0xf0103b7f
f0102132:	68 c6 39 10 f0       	push   $0xf01039c6
f0102137:	68 61 03 00 00       	push   $0x361
f010213c:	68 a0 39 10 f0       	push   $0xf01039a0
f0102141:	e8 45 df ff ff       	call   f010008b <_panic>
f0102146:	52                   	push   %edx
f0102147:	68 10 41 10 f0       	push   $0xf0104110
f010214c:	68 68 03 00 00       	push   $0x368
f0102151:	68 a0 39 10 f0       	push   $0xf01039a0
f0102156:	e8 30 df ff ff       	call   f010008b <_panic>
f010215b:	68 0b 3c 10 f0       	push   $0xf0103c0b
f0102160:	68 c6 39 10 f0       	push   $0xf01039c6
f0102165:	68 69 03 00 00       	push   $0x369
f010216a:	68 a0 39 10 f0       	push   $0xf01039a0
f010216f:	e8 17 df ff ff       	call   f010008b <_panic>
f0102174:	52                   	push   %edx
f0102175:	68 10 41 10 f0       	push   $0xf0104110
f010217a:	6a 52                	push   $0x52
f010217c:	68 ac 39 10 f0       	push   $0xf01039ac
f0102181:	e8 05 df ff ff       	call   f010008b <_panic>
f0102186:	51                   	push   %ecx
f0102187:	68 10 41 10 f0       	push   $0xf0104110
f010218c:	6a 52                	push   $0x52
f010218e:	68 ac 39 10 f0       	push   $0xf01039ac
f0102193:	e8 f3 de ff ff       	call   f010008b <_panic>
f0102198:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f010219d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
f01021a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
f01021a6:	66 c7 40 04 00 00    	movw   $0x0,0x4(%eax)
f01021ac:	8b 75 cc             	mov    -0x34(%ebp),%esi
f01021af:	89 35 68 f5 10 f0    	mov    %esi,0xf010f568
f01021b5:	83 ec 0c             	sub    $0xc,%esp
f01021b8:	50                   	push   %eax
f01021b9:	e8 98 eb ff ff       	call   f0100d56 <page_free>
f01021be:	83 c4 04             	add    $0x4,%esp
f01021c1:	ff 75 d4             	push   -0x2c(%ebp)
f01021c4:	e8 8d eb ff ff       	call   f0100d56 <page_free>
f01021c9:	89 1c 24             	mov    %ebx,(%esp)
f01021cc:	e8 85 eb ff ff       	call   f0100d56 <page_free>
f01021d1:	c7 04 24 3a 3c 10 f0 	movl   $0xf0103c3a,(%esp)
f01021d8:	e8 b4 06 00 00       	call   f0102891 <cprintf>
f01021dd:	a1 58 f5 10 f0       	mov    0xf010f558,%eax
f01021e2:	83 c4 10             	add    $0x10,%esp
f01021e5:	3d ff ff ff ef       	cmp    $0xefffffff,%eax
f01021ea:	0f 86 d6 00 00 00    	jbe    f01022c6 <mem_init+0x12ef>
f01021f0:	83 ec 08             	sub    $0x8,%esp
f01021f3:	6a 04                	push   $0x4
f01021f5:	05 00 00 00 10       	add    $0x10000000,%eax
f01021fa:	50                   	push   %eax
f01021fb:	b9 00 00 40 00       	mov    $0x400000,%ecx
f0102200:	ba 00 00 00 ef       	mov    $0xef000000,%edx
f0102205:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f010220a:	e8 38 ec ff ff       	call   f0100e47 <boot_map_region>
f010220f:	83 c4 10             	add    $0x10,%esp
f0102212:	b8 00 50 10 f0       	mov    $0xf0105000,%eax
f0102217:	3d ff ff ff ef       	cmp    $0xefffffff,%eax
f010221c:	0f 86 b9 00 00 00    	jbe    f01022db <mem_init+0x1304>
f0102222:	83 ec 08             	sub    $0x8,%esp
f0102225:	6a 02                	push   $0x2
f0102227:	68 00 50 10 00       	push   $0x105000
f010222c:	b9 00 80 00 00       	mov    $0x8000,%ecx
f0102231:	ba 00 80 ff ef       	mov    $0xefff8000,%edx
f0102236:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f010223b:	e8 07 ec ff ff       	call   f0100e47 <boot_map_region>
f0102240:	83 c4 08             	add    $0x8,%esp
f0102243:	6a 02                	push   $0x2
f0102245:	6a 00                	push   $0x0
f0102247:	b9 00 00 00 10       	mov    $0x10000000,%ecx
f010224c:	ba 00 00 00 f0       	mov    $0xf0000000,%edx
f0102251:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f0102256:	e8 ec eb ff ff       	call   f0100e47 <boot_map_region>
f010225b:	8b 1d 5c f5 10 f0    	mov    0xf010f55c,%ebx
f0102261:	8b 15 60 f5 10 f0    	mov    0xf010f560,%edx
f0102267:	8d 04 d5 ff 0f 00 00 	lea    0xfff(,%edx,8),%eax
f010226e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
f0102273:	8b 0d 58 f5 10 f0    	mov    0xf010f558,%ecx
f0102279:	8d b1 00 00 00 10    	lea    0x10000000(%ecx),%esi
f010227f:	89 75 cc             	mov    %esi,-0x34(%ebp)
f0102282:	83 c4 10             	add    $0x10,%esp
f0102285:	89 fe                	mov    %edi,%esi
f0102287:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
f010228a:	89 55 c8             	mov    %edx,-0x38(%ebp)
f010228d:	89 c3                	mov    %eax,%ebx
f010228f:	89 4d d0             	mov    %ecx,-0x30(%ebp)
f0102292:	89 7d c4             	mov    %edi,-0x3c(%ebp)
f0102295:	8b 7d cc             	mov    -0x34(%ebp),%edi
f0102298:	39 de                	cmp    %ebx,%esi
f010229a:	0f 83 81 00 00 00    	jae    f0102321 <mem_init+0x134a>
f01022a0:	8d 96 00 00 00 ef    	lea    -0x11000000(%esi),%edx
f01022a6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f01022a9:	e8 0b e6 ff ff       	call   f01008b9 <check_va2pa>
f01022ae:	81 7d d0 ff ff ff ef 	cmpl   $0xefffffff,-0x30(%ebp)
f01022b5:	76 39                	jbe    f01022f0 <mem_init+0x1319>
f01022b7:	8d 14 3e             	lea    (%esi,%edi,1),%edx
f01022ba:	39 c2                	cmp    %eax,%edx
f01022bc:	75 4a                	jne    f0102308 <mem_init+0x1331>
f01022be:	81 c6 00 10 00 00    	add    $0x1000,%esi
f01022c4:	eb d2                	jmp    f0102298 <mem_init+0x12c1>
f01022c6:	50                   	push   %eax
f01022c7:	68 1c 42 10 f0       	push   $0xf010421c
f01022cc:	68 b3 00 00 00       	push   $0xb3
f01022d1:	68 a0 39 10 f0       	push   $0xf01039a0
f01022d6:	e8 b0 dd ff ff       	call   f010008b <_panic>
f01022db:	50                   	push   %eax
f01022dc:	68 1c 42 10 f0       	push   $0xf010421c
f01022e1:	68 c0 00 00 00       	push   $0xc0
f01022e6:	68 a0 39 10 f0       	push   $0xf01039a0
f01022eb:	e8 9b dd ff ff       	call   f010008b <_panic>
f01022f0:	8b 4d d0             	mov    -0x30(%ebp),%ecx
f01022f3:	51                   	push   %ecx
f01022f4:	68 1c 42 10 f0       	push   $0xf010421c
f01022f9:	68 b5 02 00 00       	push   $0x2b5
f01022fe:	68 a0 39 10 f0       	push   $0xf01039a0
f0102303:	e8 83 dd ff ff       	call   f010008b <_panic>
f0102308:	68 78 47 10 f0       	push   $0xf0104778
f010230d:	68 c6 39 10 f0       	push   $0xf01039c6
f0102312:	68 b5 02 00 00       	push   $0x2b5
f0102317:	68 a0 39 10 f0       	push   $0xf01039a0
f010231c:	e8 6a dd ff ff       	call   f010008b <_panic>
f0102321:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
f0102324:	8b 55 c8             	mov    -0x38(%ebp),%edx
f0102327:	8b 7d c4             	mov    -0x3c(%ebp),%edi
f010232a:	89 d0                	mov    %edx,%eax
f010232c:	c1 e0 0c             	shl    $0xc,%eax
f010232f:	89 fe                	mov    %edi,%esi
f0102331:	89 7d d4             	mov    %edi,-0x2c(%ebp)
f0102334:	89 c7                	mov    %eax,%edi
f0102336:	39 fe                	cmp    %edi,%esi
f0102338:	73 32                	jae    f010236c <mem_init+0x1395>
f010233a:	8d 96 00 00 00 f0    	lea    -0x10000000(%esi),%edx
f0102340:	89 d8                	mov    %ebx,%eax
f0102342:	e8 72 e5 ff ff       	call   f01008b9 <check_va2pa>
f0102347:	39 c6                	cmp    %eax,%esi
f0102349:	75 08                	jne    f0102353 <mem_init+0x137c>
f010234b:	81 c6 00 10 00 00    	add    $0x1000,%esi
f0102351:	eb e3                	jmp    f0102336 <mem_init+0x135f>
f0102353:	68 ac 47 10 f0       	push   $0xf01047ac
f0102358:	68 c6 39 10 f0       	push   $0xf01039c6
f010235d:	68 ba 02 00 00       	push   $0x2ba
f0102362:	68 a0 39 10 f0       	push   $0xf01039a0
f0102367:	e8 1f dd ff ff       	call   f010008b <_panic>
f010236c:	be 00 80 ff ef       	mov    $0xefff8000,%esi
f0102371:	b8 00 50 10 f0       	mov    $0xf0105000,%eax
f0102376:	05 00 70 00 20       	add    $0x20007000,%eax
f010237b:	89 c7                	mov    %eax,%edi
f010237d:	89 f2                	mov    %esi,%edx
f010237f:	89 d8                	mov    %ebx,%eax
f0102381:	e8 33 e5 ff ff       	call   f01008b9 <check_va2pa>
f0102386:	81 c6 00 10 00 00    	add    $0x1000,%esi
f010238c:	8d 14 37             	lea    (%edi,%esi,1),%edx
f010238f:	39 c2                	cmp    %eax,%edx
f0102391:	75 35                	jne    f01023c8 <mem_init+0x13f1>
f0102393:	81 fe 00 00 00 f0    	cmp    $0xf0000000,%esi
f0102399:	75 e2                	jne    f010237d <mem_init+0x13a6>
f010239b:	8b 7d d4             	mov    -0x2c(%ebp),%edi
f010239e:	ba 00 00 c0 ef       	mov    $0xefc00000,%edx
f01023a3:	89 d8                	mov    %ebx,%eax
f01023a5:	e8 0f e5 ff ff       	call   f01008b9 <check_va2pa>
f01023aa:	83 f8 ff             	cmp    $0xffffffff,%eax
f01023ad:	74 61                	je     f0102410 <mem_init+0x1439>
f01023af:	68 1c 48 10 f0       	push   $0xf010481c
f01023b4:	68 c6 39 10 f0       	push   $0xf01039c6
f01023b9:	68 bf 02 00 00       	push   $0x2bf
f01023be:	68 a0 39 10 f0       	push   $0xf01039a0
f01023c3:	e8 c3 dc ff ff       	call   f010008b <_panic>
f01023c8:	68 d4 47 10 f0       	push   $0xf01047d4
f01023cd:	68 c6 39 10 f0       	push   $0xf01039c6
f01023d2:	68 be 02 00 00       	push   $0x2be
f01023d7:	68 a0 39 10 f0       	push   $0xf01039a0
f01023dc:	e8 aa dc ff ff       	call   f010008b <_panic>
f01023e1:	81 ff bb 03 00 00    	cmp    $0x3bb,%edi
f01023e7:	76 27                	jbe    f0102410 <mem_init+0x1439>
f01023e9:	f6 04 bb 01          	testb  $0x1,(%ebx,%edi,4)
f01023ed:	74 40                	je     f010242f <mem_init+0x1458>
f01023ef:	83 c7 01             	add    $0x1,%edi
f01023f2:	81 ff 00 04 00 00    	cmp    $0x400,%edi
f01023f8:	0f 84 87 00 00 00    	je     f0102485 <mem_init+0x14ae>
f01023fe:	81 ff bd 03 00 00    	cmp    $0x3bd,%edi
f0102404:	76 db                	jbe    f01023e1 <mem_init+0x140a>
f0102406:	81 ff bf 03 00 00    	cmp    $0x3bf,%edi
f010240c:	74 db                	je     f01023e9 <mem_init+0x1412>
f010240e:	77 38                	ja     f0102448 <mem_init+0x1471>
f0102410:	83 3c bb 00          	cmpl   $0x0,(%ebx,%edi,4)
f0102414:	74 d9                	je     f01023ef <mem_init+0x1418>
f0102416:	68 75 3c 10 f0       	push   $0xf0103c75
f010241b:	68 c6 39 10 f0       	push   $0xf01039c6
f0102420:	68 ce 02 00 00       	push   $0x2ce
f0102425:	68 a0 39 10 f0       	push   $0xf01039a0
f010242a:	e8 5c dc ff ff       	call   f010008b <_panic>
f010242f:	68 53 3c 10 f0       	push   $0xf0103c53
f0102434:	68 c6 39 10 f0       	push   $0xf01039c6
f0102439:	68 c7 02 00 00       	push   $0x2c7
f010243e:	68 a0 39 10 f0       	push   $0xf01039a0
f0102443:	e8 43 dc ff ff       	call   f010008b <_panic>
f0102448:	8b 04 bb             	mov    (%ebx,%edi,4),%eax
f010244b:	a8 01                	test   $0x1,%al
f010244d:	74 1d                	je     f010246c <mem_init+0x1495>
f010244f:	a8 02                	test   $0x2,%al
f0102451:	75 9c                	jne    f01023ef <mem_init+0x1418>
f0102453:	68 64 3c 10 f0       	push   $0xf0103c64
f0102458:	68 c6 39 10 f0       	push   $0xf01039c6
f010245d:	68 cc 02 00 00       	push   $0x2cc
f0102462:	68 a0 39 10 f0       	push   $0xf01039a0
f0102467:	e8 1f dc ff ff       	call   f010008b <_panic>
f010246c:	68 53 3c 10 f0       	push   $0xf0103c53
f0102471:	68 c6 39 10 f0       	push   $0xf01039c6
f0102476:	68 cb 02 00 00       	push   $0x2cb
f010247b:	68 a0 39 10 f0       	push   $0xf01039a0
f0102480:	e8 06 dc ff ff       	call   f010008b <_panic>
f0102485:	83 ec 0c             	sub    $0xc,%esp
f0102488:	68 4c 48 10 f0       	push   $0xf010484c
f010248d:	e8 ff 03 00 00       	call   f0102891 <cprintf>
f0102492:	a1 5c f5 10 f0       	mov    0xf010f55c,%eax
f0102497:	83 c4 10             	add    $0x10,%esp
f010249a:	3d ff ff ff ef       	cmp    $0xefffffff,%eax
f010249f:	0f 86 03 02 00 00    	jbe    f01026a8 <mem_init+0x16d1>
f01024a5:	05 00 00 00 10       	add    $0x10000000,%eax
f01024aa:	0f 22 d8             	mov    %eax,%cr3
f01024ad:	b8 00 00 00 00       	mov    $0x0,%eax
f01024b2:	e8 65 e4 ff ff       	call   f010091c <check_page_free_list>
f01024b7:	0f 20 c0             	mov    %cr0,%eax
f01024ba:	83 e0 f3             	and    $0xfffffff3,%eax
f01024bd:	0d 23 00 05 80       	or     $0x80050023,%eax
f01024c2:	0f 22 c0             	mov    %eax,%cr0
f01024c5:	83 ec 0c             	sub    $0xc,%esp
f01024c8:	6a 00                	push   $0x0
f01024ca:	e8 00 e8 ff ff       	call   f0100ccf <page_alloc>
f01024cf:	89 c3                	mov    %eax,%ebx
f01024d1:	83 c4 10             	add    $0x10,%esp
f01024d4:	85 c0                	test   %eax,%eax
f01024d6:	0f 84 e1 01 00 00    	je     f01026bd <mem_init+0x16e6>
f01024dc:	83 ec 0c             	sub    $0xc,%esp
f01024df:	6a 00                	push   $0x0
f01024e1:	e8 e9 e7 ff ff       	call   f0100ccf <page_alloc>
f01024e6:	89 c7                	mov    %eax,%edi
f01024e8:	83 c4 10             	add    $0x10,%esp
f01024eb:	85 c0                	test   %eax,%eax
f01024ed:	0f 84 e3 01 00 00    	je     f01026d6 <mem_init+0x16ff>
f01024f3:	83 ec 0c             	sub    $0xc,%esp
f01024f6:	6a 00                	push   $0x0
f01024f8:	e8 d2 e7 ff ff       	call   f0100ccf <page_alloc>
f01024fd:	89 c6                	mov    %eax,%esi
f01024ff:	83 c4 10             	add    $0x10,%esp
f0102502:	85 c0                	test   %eax,%eax
f0102504:	0f 84 e5 01 00 00    	je     f01026ef <mem_init+0x1718>
f010250a:	83 ec 0c             	sub    $0xc,%esp
f010250d:	53                   	push   %ebx
f010250e:	e8 43 e8 ff ff       	call   f0100d56 <page_free>
f0102513:	89 f8                	mov    %edi,%eax
f0102515:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f010251b:	c1 f8 03             	sar    $0x3,%eax
f010251e:	89 c2                	mov    %eax,%edx
f0102520:	c1 e2 0c             	shl    $0xc,%edx
f0102523:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0102528:	83 c4 10             	add    $0x10,%esp
f010252b:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0102531:	0f 83 d1 01 00 00    	jae    f0102708 <mem_init+0x1731>
f0102537:	83 ec 04             	sub    $0x4,%esp
f010253a:	68 00 10 00 00       	push   $0x1000
f010253f:	6a 01                	push   $0x1
f0102541:	81 ea 00 00 00 10    	sub    $0x10000000,%edx
f0102547:	52                   	push   %edx
f0102548:	e8 d6 0e 00 00       	call   f0103423 <memset>
f010254d:	89 f0                	mov    %esi,%eax
f010254f:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0102555:	c1 f8 03             	sar    $0x3,%eax
f0102558:	89 c2                	mov    %eax,%edx
f010255a:	c1 e2 0c             	shl    $0xc,%edx
f010255d:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0102562:	83 c4 10             	add    $0x10,%esp
f0102565:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f010256b:	0f 83 a9 01 00 00    	jae    f010271a <mem_init+0x1743>
f0102571:	83 ec 04             	sub    $0x4,%esp
f0102574:	68 00 10 00 00       	push   $0x1000
f0102579:	6a 02                	push   $0x2
f010257b:	81 ea 00 00 00 10    	sub    $0x10000000,%edx
f0102581:	52                   	push   %edx
f0102582:	e8 9c 0e 00 00       	call   f0103423 <memset>
f0102587:	6a 02                	push   $0x2
f0102589:	68 00 10 00 00       	push   $0x1000
f010258e:	57                   	push   %edi
f010258f:	ff 35 5c f5 10 f0    	push   0xf010f55c
f0102595:	e8 cb e9 ff ff       	call   f0100f65 <page_insert>
f010259a:	83 c4 20             	add    $0x20,%esp
f010259d:	66 83 7f 04 01       	cmpw   $0x1,0x4(%edi)
f01025a2:	0f 85 84 01 00 00    	jne    f010272c <mem_init+0x1755>
f01025a8:	81 3d 00 10 00 00 01 	cmpl   $0x1010101,0x1000
f01025af:	01 01 01 
f01025b2:	0f 85 8d 01 00 00    	jne    f0102745 <mem_init+0x176e>
f01025b8:	6a 02                	push   $0x2
f01025ba:	68 00 10 00 00       	push   $0x1000
f01025bf:	56                   	push   %esi
f01025c0:	ff 35 5c f5 10 f0    	push   0xf010f55c
f01025c6:	e8 9a e9 ff ff       	call   f0100f65 <page_insert>
f01025cb:	83 c4 10             	add    $0x10,%esp
f01025ce:	81 3d 00 10 00 00 02 	cmpl   $0x2020202,0x1000
f01025d5:	02 02 02 
f01025d8:	0f 85 80 01 00 00    	jne    f010275e <mem_init+0x1787>
f01025de:	66 83 7e 04 01       	cmpw   $0x1,0x4(%esi)
f01025e3:	0f 85 8e 01 00 00    	jne    f0102777 <mem_init+0x17a0>
f01025e9:	66 83 7f 04 00       	cmpw   $0x0,0x4(%edi)
f01025ee:	0f 85 9c 01 00 00    	jne    f0102790 <mem_init+0x17b9>
f01025f4:	c7 05 00 10 00 00 03 	movl   $0x3030303,0x1000
f01025fb:	03 03 03 
f01025fe:	89 f0                	mov    %esi,%eax
f0102600:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0102606:	c1 f8 03             	sar    $0x3,%eax
f0102609:	89 c2                	mov    %eax,%edx
f010260b:	c1 e2 0c             	shl    $0xc,%edx
f010260e:	25 ff ff 0f 00       	and    $0xfffff,%eax
f0102613:	3b 05 60 f5 10 f0    	cmp    0xf010f560,%eax
f0102619:	0f 83 8a 01 00 00    	jae    f01027a9 <mem_init+0x17d2>
f010261f:	81 ba 00 00 00 f0 03 	cmpl   $0x3030303,-0x10000000(%edx)
f0102626:	03 03 03 
f0102629:	0f 85 8c 01 00 00    	jne    f01027bb <mem_init+0x17e4>
f010262f:	83 ec 08             	sub    $0x8,%esp
f0102632:	68 00 10 00 00       	push   $0x1000
f0102637:	ff 35 5c f5 10 f0    	push   0xf010f55c
f010263d:	e8 ea e8 ff ff       	call   f0100f2c <page_remove>
f0102642:	83 c4 10             	add    $0x10,%esp
f0102645:	66 83 7e 04 00       	cmpw   $0x0,0x4(%esi)
f010264a:	0f 85 84 01 00 00    	jne    f01027d4 <mem_init+0x17fd>
f0102650:	8b 0d 5c f5 10 f0    	mov    0xf010f55c,%ecx
f0102656:	8b 11                	mov    (%ecx),%edx
f0102658:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
f010265e:	89 d8                	mov    %ebx,%eax
f0102660:	2b 05 58 f5 10 f0    	sub    0xf010f558,%eax
f0102666:	c1 f8 03             	sar    $0x3,%eax
f0102669:	c1 e0 0c             	shl    $0xc,%eax
f010266c:	39 c2                	cmp    %eax,%edx
f010266e:	0f 85 79 01 00 00    	jne    f01027ed <mem_init+0x1816>
f0102674:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
f010267a:	66 83 7b 04 01       	cmpw   $0x1,0x4(%ebx)
f010267f:	0f 85 81 01 00 00    	jne    f0102806 <mem_init+0x182f>
f0102685:	66 c7 43 04 00 00    	movw   $0x0,0x4(%ebx)
f010268b:	83 ec 0c             	sub    $0xc,%esp
f010268e:	53                   	push   %ebx
f010268f:	e8 c2 e6 ff ff       	call   f0100d56 <page_free>
f0102694:	c7 04 24 e0 48 10 f0 	movl   $0xf01048e0,(%esp)
f010269b:	e8 f1 01 00 00       	call   f0102891 <cprintf>
f01026a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
f01026a3:	5b                   	pop    %ebx
f01026a4:	5e                   	pop    %esi
f01026a5:	5f                   	pop    %edi
f01026a6:	5d                   	pop    %ebp
f01026a7:	c3                   	ret
f01026a8:	50                   	push   %eax
f01026a9:	68 1c 42 10 f0       	push   $0xf010421c
f01026ae:	68 d4 00 00 00       	push   $0xd4
f01026b3:	68 a0 39 10 f0       	push   $0xf01039a0
f01026b8:	e8 ce d9 ff ff       	call   f010008b <_panic>
f01026bd:	68 71 3a 10 f0       	push   $0xf0103a71
f01026c2:	68 c6 39 10 f0       	push   $0xf01039c6
f01026c7:	68 8e 03 00 00       	push   $0x38e
f01026cc:	68 a0 39 10 f0       	push   $0xf01039a0
f01026d1:	e8 b5 d9 ff ff       	call   f010008b <_panic>
f01026d6:	68 87 3a 10 f0       	push   $0xf0103a87
f01026db:	68 c6 39 10 f0       	push   $0xf01039c6
f01026e0:	68 8f 03 00 00       	push   $0x38f
f01026e5:	68 a0 39 10 f0       	push   $0xf01039a0
f01026ea:	e8 9c d9 ff ff       	call   f010008b <_panic>
f01026ef:	68 9d 3a 10 f0       	push   $0xf0103a9d
f01026f4:	68 c6 39 10 f0       	push   $0xf01039c6
f01026f9:	68 90 03 00 00       	push   $0x390
f01026fe:	68 a0 39 10 f0       	push   $0xf01039a0
f0102703:	e8 83 d9 ff ff       	call   f010008b <_panic>
f0102708:	52                   	push   %edx
f0102709:	68 10 41 10 f0       	push   $0xf0104110
f010270e:	6a 52                	push   $0x52
f0102710:	68 ac 39 10 f0       	push   $0xf01039ac
f0102715:	e8 71 d9 ff ff       	call   f010008b <_panic>
f010271a:	52                   	push   %edx
f010271b:	68 10 41 10 f0       	push   $0xf0104110
f0102720:	6a 52                	push   $0x52
f0102722:	68 ac 39 10 f0       	push   $0xf01039ac
f0102727:	e8 5f d9 ff ff       	call   f010008b <_panic>
f010272c:	68 6e 3b 10 f0       	push   $0xf0103b6e
f0102731:	68 c6 39 10 f0       	push   $0xf01039c6
f0102736:	68 95 03 00 00       	push   $0x395
f010273b:	68 a0 39 10 f0       	push   $0xf01039a0
f0102740:	e8 46 d9 ff ff       	call   f010008b <_panic>
f0102745:	68 6c 48 10 f0       	push   $0xf010486c
f010274a:	68 c6 39 10 f0       	push   $0xf01039c6
f010274f:	68 96 03 00 00       	push   $0x396
f0102754:	68 a0 39 10 f0       	push   $0xf01039a0
f0102759:	e8 2d d9 ff ff       	call   f010008b <_panic>
f010275e:	68 90 48 10 f0       	push   $0xf0104890
f0102763:	68 c6 39 10 f0       	push   $0xf01039c6
f0102768:	68 98 03 00 00       	push   $0x398
f010276d:	68 a0 39 10 f0       	push   $0xf01039a0
f0102772:	e8 14 d9 ff ff       	call   f010008b <_panic>
f0102777:	68 90 3b 10 f0       	push   $0xf0103b90
f010277c:	68 c6 39 10 f0       	push   $0xf01039c6
f0102781:	68 99 03 00 00       	push   $0x399
f0102786:	68 a0 39 10 f0       	push   $0xf01039a0
f010278b:	e8 fb d8 ff ff       	call   f010008b <_panic>
f0102790:	68 fa 3b 10 f0       	push   $0xf0103bfa
f0102795:	68 c6 39 10 f0       	push   $0xf01039c6
f010279a:	68 9a 03 00 00       	push   $0x39a
f010279f:	68 a0 39 10 f0       	push   $0xf01039a0
f01027a4:	e8 e2 d8 ff ff       	call   f010008b <_panic>
f01027a9:	52                   	push   %edx
f01027aa:	68 10 41 10 f0       	push   $0xf0104110
f01027af:	6a 52                	push   $0x52
f01027b1:	68 ac 39 10 f0       	push   $0xf01039ac
f01027b6:	e8 d0 d8 ff ff       	call   f010008b <_panic>
f01027bb:	68 b4 48 10 f0       	push   $0xf01048b4
f01027c0:	68 c6 39 10 f0       	push   $0xf01039c6
f01027c5:	68 9c 03 00 00       	push   $0x39c
f01027ca:	68 a0 39 10 f0       	push   $0xf01039a0
f01027cf:	e8 b7 d8 ff ff       	call   f010008b <_panic>
f01027d4:	68 c8 3b 10 f0       	push   $0xf0103bc8
f01027d9:	68 c6 39 10 f0       	push   $0xf01039c6
f01027de:	68 9e 03 00 00       	push   $0x39e
f01027e3:	68 a0 39 10 f0       	push   $0xf01039a0
f01027e8:	e8 9e d8 ff ff       	call   f010008b <_panic>
f01027ed:	68 f8 43 10 f0       	push   $0xf01043f8
f01027f2:	68 c6 39 10 f0       	push   $0xf01039c6
f01027f7:	68 a1 03 00 00       	push   $0x3a1
f01027fc:	68 a0 39 10 f0       	push   $0xf01039a0
f0102801:	e8 85 d8 ff ff       	call   f010008b <_panic>
f0102806:	68 7f 3b 10 f0       	push   $0xf0103b7f
f010280b:	68 c6 39 10 f0       	push   $0xf01039c6
f0102810:	68 a3 03 00 00       	push   $0x3a3
f0102815:	68 a0 39 10 f0       	push   $0xf01039a0
f010281a:	e8 6c d8 ff ff       	call   f010008b <_panic>

f010281f <tlb_invalidate>:
f010281f:	55                   	push   %ebp
f0102820:	89 e5                	mov    %esp,%ebp
f0102822:	8b 45 0c             	mov    0xc(%ebp),%eax
f0102825:	0f 01 38             	invlpg (%eax)
f0102828:	5d                   	pop    %ebp
f0102829:	c3                   	ret

f010282a <mc146818_read>:
f010282a:	55                   	push   %ebp
f010282b:	89 e5                	mov    %esp,%ebp
f010282d:	8b 45 08             	mov    0x8(%ebp),%eax
f0102830:	ba 70 00 00 00       	mov    $0x70,%edx
f0102835:	ee                   	out    %al,(%dx)
f0102836:	ba 71 00 00 00       	mov    $0x71,%edx
f010283b:	ec                   	in     (%dx),%al
f010283c:	0f b6 c0             	movzbl %al,%eax
f010283f:	5d                   	pop    %ebp
f0102840:	c3                   	ret

f0102841 <mc146818_write>:
f0102841:	55                   	push   %ebp
f0102842:	89 e5                	mov    %esp,%ebp
f0102844:	8b 45 08             	mov    0x8(%ebp),%eax
f0102847:	ba 70 00 00 00       	mov    $0x70,%edx
f010284c:	ee                   	out    %al,(%dx)
f010284d:	8b 45 0c             	mov    0xc(%ebp),%eax
f0102850:	ba 71 00 00 00       	mov    $0x71,%edx
f0102855:	ee                   	out    %al,(%dx)
f0102856:	5d                   	pop    %ebp
f0102857:	c3                   	ret

f0102858 <putch>:
f0102858:	55                   	push   %ebp
f0102859:	89 e5                	mov    %esp,%ebp
f010285b:	83 ec 14             	sub    $0x14,%esp
f010285e:	ff 75 08             	push   0x8(%ebp)
f0102861:	e8 75 dd ff ff       	call   f01005db <cputchar>
f0102866:	83 c4 10             	add    $0x10,%esp
f0102869:	c9                   	leave
f010286a:	c3                   	ret

f010286b <vcprintf>:
f010286b:	55                   	push   %ebp
f010286c:	89 e5                	mov    %esp,%ebp
f010286e:	83 ec 18             	sub    $0x18,%esp
f0102871:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
f0102878:	ff 75 0c             	push   0xc(%ebp)
f010287b:	ff 75 08             	push   0x8(%ebp)
f010287e:	8d 45 f4             	lea    -0xc(%ebp),%eax
f0102881:	50                   	push   %eax
f0102882:	68 58 28 10 f0       	push   $0xf0102858
f0102887:	e8 37 04 00 00       	call   f0102cc3 <vprintfmt>
f010288c:	8b 45 f4             	mov    -0xc(%ebp),%eax
f010288f:	c9                   	leave
f0102890:	c3                   	ret

f0102891 <cprintf>:
f0102891:	55                   	push   %ebp
f0102892:	89 e5                	mov    %esp,%ebp
f0102894:	83 ec 10             	sub    $0x10,%esp
f0102897:	8d 45 0c             	lea    0xc(%ebp),%eax
f010289a:	50                   	push   %eax
f010289b:	ff 75 08             	push   0x8(%ebp)
f010289e:	e8 c8 ff ff ff       	call   f010286b <vcprintf>
f01028a3:	c9                   	leave
f01028a4:	c3                   	ret
f01028a5:	66 90                	xchg   %ax,%ax
f01028a7:	66 90                	xchg   %ax,%ax
f01028a9:	66 90                	xchg   %ax,%ax
f01028ab:	66 90                	xchg   %ax,%ax
f01028ad:	66 90                	xchg   %ax,%ax
f01028af:	66 90                	xchg   %ax,%ax
f01028b1:	66 90                	xchg   %ax,%ax
f01028b3:	66 90                	xchg   %ax,%ax
f01028b5:	66 90                	xchg   %ax,%ax
f01028b7:	66 90                	xchg   %ax,%ax
f01028b9:	66 90                	xchg   %ax,%ax
f01028bb:	66 90                	xchg   %ax,%ax
f01028bd:	66 90                	xchg   %ax,%ax
f01028bf:	90                   	nop

f01028c0 <stab_binsearch>:
f01028c0:	55                   	push   %ebp
f01028c1:	89 e5                	mov    %esp,%ebp
f01028c3:	57                   	push   %edi
f01028c4:	56                   	push   %esi
f01028c5:	53                   	push   %ebx
f01028c6:	83 ec 18             	sub    $0x18,%esp
f01028c9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
f01028cc:	89 55 e0             	mov    %edx,-0x20(%ebp)
f01028cf:	89 4d dc             	mov    %ecx,-0x24(%ebp)
f01028d2:	8b 1a                	mov    (%edx),%ebx
f01028d4:	8b 09                	mov    (%ecx),%ecx
f01028d6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
f01028dd:	83 c0 04             	add    $0x4,%eax
f01028e0:	89 45 ec             	mov    %eax,-0x14(%ebp)
f01028e3:	eb 6a                	jmp    f010294f <stab_binsearch+0x8f>
f01028e5:	eb 19                	jmp    f0102900 <stab_binsearch+0x40>
f01028e7:	90                   	nop
f01028e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01028ef:	00 
f01028f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01028f7:	00 
f01028f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01028ff:	00 
f0102900:	83 ea 0c             	sub    $0xc,%edx
f0102903:	83 e8 01             	sub    $0x1,%eax
f0102906:	39 c3                	cmp    %eax,%ebx
f0102908:	0f 8f c8 00 00 00    	jg     f01029d6 <stab_binsearch+0x116>
f010290e:	0f b6 0a             	movzbl (%edx),%ecx
f0102911:	39 f1                	cmp    %esi,%ecx
f0102913:	75 eb                	jne    f0102900 <stab_binsearch+0x40>
f0102915:	8b 4d f0             	mov    -0x10(%ebp),%ecx
f0102918:	89 75 08             	mov    %esi,0x8(%ebp)
f010291b:	8d 14 40             	lea    (%eax,%eax,2),%edx
f010291e:	8b 75 e4             	mov    -0x1c(%ebp),%esi
f0102921:	8b 54 96 08          	mov    0x8(%esi,%edx,4),%edx
f0102925:	3b 55 0c             	cmp    0xc(%ebp),%edx
f0102928:	72 16                	jb     f0102940 <stab_binsearch+0x80>
f010292a:	39 55 0c             	cmp    %edx,0xc(%ebp)
f010292d:	73 47                	jae    f0102976 <stab_binsearch+0xb6>
f010292f:	8d 48 ff             	lea    -0x1(%eax),%ecx
f0102932:	8b 45 dc             	mov    -0x24(%ebp),%eax
f0102935:	89 08                	mov    %ecx,(%eax)
f0102937:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
f010293e:	eb 0f                	jmp    f010294f <stab_binsearch+0x8f>
f0102940:	8b 75 e0             	mov    -0x20(%ebp),%esi
f0102943:	89 06                	mov    %eax,(%esi)
f0102945:	8d 5f 01             	lea    0x1(%edi),%ebx
f0102948:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
f010294f:	39 cb                	cmp    %ecx,%ebx
f0102951:	7f 37                	jg     f010298a <stab_binsearch+0xca>
f0102953:	8d 14 0b             	lea    (%ebx,%ecx,1),%edx
f0102956:	89 d0                	mov    %edx,%eax
f0102958:	c1 e8 1f             	shr    $0x1f,%eax
f010295b:	01 d0                	add    %edx,%eax
f010295d:	89 c7                	mov    %eax,%edi
f010295f:	d1 ff                	sar    $1,%edi
f0102961:	83 e0 fe             	and    $0xfffffffe,%eax
f0102964:	01 f8                	add    %edi,%eax
f0102966:	8b 55 ec             	mov    -0x14(%ebp),%edx
f0102969:	8d 14 82             	lea    (%edx,%eax,4),%edx
f010296c:	89 f8                	mov    %edi,%eax
f010296e:	89 4d f0             	mov    %ecx,-0x10(%ebp)
f0102971:	8b 75 08             	mov    0x8(%ebp),%esi
f0102974:	eb 90                	jmp    f0102906 <stab_binsearch+0x46>
f0102976:	8b 7d e0             	mov    -0x20(%ebp),%edi
f0102979:	89 07                	mov    %eax,(%edi)
f010297b:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
f010297f:	89 c3                	mov    %eax,%ebx
f0102981:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
f0102988:	eb c5                	jmp    f010294f <stab_binsearch+0x8f>
f010298a:	8b 75 08             	mov    0x8(%ebp),%esi
f010298d:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
f0102991:	75 15                	jne    f01029a8 <stab_binsearch+0xe8>
f0102993:	8b 45 e0             	mov    -0x20(%ebp),%eax
f0102996:	8b 00                	mov    (%eax),%eax
f0102998:	83 e8 01             	sub    $0x1,%eax
f010299b:	8b 7d dc             	mov    -0x24(%ebp),%edi
f010299e:	89 07                	mov    %eax,(%edi)
f01029a0:	83 c4 18             	add    $0x18,%esp
f01029a3:	5b                   	pop    %ebx
f01029a4:	5e                   	pop    %esi
f01029a5:	5f                   	pop    %edi
f01029a6:	5d                   	pop    %ebp
f01029a7:	c3                   	ret
f01029a8:	8b 45 dc             	mov    -0x24(%ebp),%eax
f01029ab:	8b 00                	mov    (%eax),%eax
f01029ad:	8b 7d e0             	mov    -0x20(%ebp),%edi
f01029b0:	8b 0f                	mov    (%edi),%ecx
f01029b2:	8d 14 40             	lea    (%eax,%eax,2),%edx
f01029b5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
f01029b8:	8d 54 97 04          	lea    0x4(%edi,%edx,4),%edx
f01029bc:	39 c1                	cmp    %eax,%ecx
f01029be:	7d 0f                	jge    f01029cf <stab_binsearch+0x10f>
f01029c0:	0f b6 1a             	movzbl (%edx),%ebx
f01029c3:	39 f3                	cmp    %esi,%ebx
f01029c5:	74 08                	je     f01029cf <stab_binsearch+0x10f>
f01029c7:	83 ea 0c             	sub    $0xc,%edx
f01029ca:	83 e8 01             	sub    $0x1,%eax
f01029cd:	eb ed                	jmp    f01029bc <stab_binsearch+0xfc>
f01029cf:	8b 7d e0             	mov    -0x20(%ebp),%edi
f01029d2:	89 07                	mov    %eax,(%edi)
f01029d4:	eb ca                	jmp    f01029a0 <stab_binsearch+0xe0>
f01029d6:	8b 4d f0             	mov    -0x10(%ebp),%ecx
f01029d9:	89 75 08             	mov    %esi,0x8(%ebp)
f01029dc:	8d 5f 01             	lea    0x1(%edi),%ebx
f01029df:	e9 6b ff ff ff       	jmp    f010294f <stab_binsearch+0x8f>

f01029e4 <debuginfo_eip>:
f01029e4:	55                   	push   %ebp
f01029e5:	89 e5                	mov    %esp,%ebp
f01029e7:	57                   	push   %edi
f01029e8:	56                   	push   %esi
f01029e9:	53                   	push   %ebx
f01029ea:	83 ec 2c             	sub    $0x2c,%esp
f01029ed:	8b 5d 08             	mov    0x8(%ebp),%ebx
f01029f0:	8b 75 0c             	mov    0xc(%ebp),%esi
f01029f3:	c7 06 83 3c 10 f0    	movl   $0xf0103c83,(%esi)
f01029f9:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
f0102a00:	c7 46 08 83 3c 10 f0 	movl   $0xf0103c83,0x8(%esi)
f0102a07:	c7 46 0c 09 00 00 00 	movl   $0x9,0xc(%esi)
f0102a0e:	89 5e 10             	mov    %ebx,0x10(%esi)
f0102a11:	c7 46 14 00 00 00 00 	movl   $0x0,0x14(%esi)
f0102a18:	81 fb ff ff 7f ef    	cmp    $0xef7fffff,%ebx
f0102a1e:	0f 86 e9 00 00 00    	jbe    f0102b0d <debuginfo_eip+0x129>
f0102a24:	b8 99 4a 10 f0       	mov    $0xf0104a99,%eax
f0102a29:	3d 99 4a 10 f0       	cmp    $0xf0104a99,%eax
f0102a2e:	0f 86 6b 01 00 00    	jbe    f0102b9f <debuginfo_eip+0x1bb>
f0102a34:	80 3d 98 4a 10 f0 00 	cmpb   $0x0,0xf0104a98
f0102a3b:	0f 85 65 01 00 00    	jne    f0102ba6 <debuginfo_eip+0x1c2>
f0102a41:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
f0102a48:	b8 98 4a 10 f0       	mov    $0xf0104a98,%eax
f0102a4d:	2d 98 4a 10 f0       	sub    $0xf0104a98,%eax
f0102a52:	c1 f8 02             	sar    $0x2,%eax
f0102a55:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
f0102a5b:	83 e8 01             	sub    $0x1,%eax
f0102a5e:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0102a61:	8d 4d e0             	lea    -0x20(%ebp),%ecx
f0102a64:	8d 55 e4             	lea    -0x1c(%ebp),%edx
f0102a67:	83 ec 08             	sub    $0x8,%esp
f0102a6a:	53                   	push   %ebx
f0102a6b:	6a 64                	push   $0x64
f0102a6d:	b8 98 4a 10 f0       	mov    $0xf0104a98,%eax
f0102a72:	e8 49 fe ff ff       	call   f01028c0 <stab_binsearch>
f0102a77:	8b 7d e4             	mov    -0x1c(%ebp),%edi
f0102a7a:	83 c4 10             	add    $0x10,%esp
f0102a7d:	85 ff                	test   %edi,%edi
f0102a7f:	0f 84 28 01 00 00    	je     f0102bad <debuginfo_eip+0x1c9>
f0102a85:	89 7d dc             	mov    %edi,-0x24(%ebp)
f0102a88:	8b 45 e0             	mov    -0x20(%ebp),%eax
f0102a8b:	89 45 d8             	mov    %eax,-0x28(%ebp)
f0102a8e:	8d 4d d8             	lea    -0x28(%ebp),%ecx
f0102a91:	8d 55 dc             	lea    -0x24(%ebp),%edx
f0102a94:	83 ec 08             	sub    $0x8,%esp
f0102a97:	53                   	push   %ebx
f0102a98:	6a 24                	push   $0x24
f0102a9a:	b8 98 4a 10 f0       	mov    $0xf0104a98,%eax
f0102a9f:	e8 1c fe ff ff       	call   f01028c0 <stab_binsearch>
f0102aa4:	8b 45 dc             	mov    -0x24(%ebp),%eax
f0102aa7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
f0102aaa:	8b 4d d8             	mov    -0x28(%ebp),%ecx
f0102aad:	89 4d d0             	mov    %ecx,-0x30(%ebp)
f0102ab0:	83 c4 10             	add    $0x10,%esp
f0102ab3:	89 fb                	mov    %edi,%ebx
f0102ab5:	39 c8                	cmp    %ecx,%eax
f0102ab7:	7f 32                	jg     f0102aeb <debuginfo_eip+0x107>
f0102ab9:	8d 04 40             	lea    (%eax,%eax,2),%eax
f0102abc:	c1 e0 02             	shl    $0x2,%eax
f0102abf:	8d 90 98 4a 10 f0    	lea    -0xfefb568(%eax),%edx
f0102ac5:	8b 88 98 4a 10 f0    	mov    -0xfefb568(%eax),%ecx
f0102acb:	b8 99 4a 10 f0       	mov    $0xf0104a99,%eax
f0102ad0:	2d 99 4a 10 f0       	sub    $0xf0104a99,%eax
f0102ad5:	39 c1                	cmp    %eax,%ecx
f0102ad7:	73 09                	jae    f0102ae2 <debuginfo_eip+0xfe>
f0102ad9:	81 c1 99 4a 10 f0    	add    $0xf0104a99,%ecx
f0102adf:	89 4e 08             	mov    %ecx,0x8(%esi)
f0102ae2:	8b 42 08             	mov    0x8(%edx),%eax
f0102ae5:	89 46 10             	mov    %eax,0x10(%esi)
f0102ae8:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
f0102aeb:	83 ec 08             	sub    $0x8,%esp
f0102aee:	6a 3a                	push   $0x3a
f0102af0:	ff 76 08             	push   0x8(%esi)
f0102af3:	e8 0f 09 00 00       	call   f0103407 <strfind>
f0102af8:	2b 46 08             	sub    0x8(%esi),%eax
f0102afb:	89 46 0c             	mov    %eax,0xc(%esi)
f0102afe:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
f0102b01:	8d 04 85 9c 4a 10 f0 	lea    -0xfefb564(,%eax,4),%eax
f0102b08:	83 c4 10             	add    $0x10,%esp
f0102b0b:	eb 1a                	jmp    f0102b27 <debuginfo_eip+0x143>
f0102b0d:	83 ec 04             	sub    $0x4,%esp
f0102b10:	68 8d 3c 10 f0       	push   $0xf0103c8d
f0102b15:	6a 7f                	push   $0x7f
f0102b17:	68 9a 3c 10 f0       	push   $0xf0103c9a
f0102b1c:	e8 6a d5 ff ff       	call   f010008b <_panic>
f0102b21:	83 eb 01             	sub    $0x1,%ebx
f0102b24:	83 e8 0c             	sub    $0xc,%eax
f0102b27:	39 df                	cmp    %ebx,%edi
f0102b29:	7f 33                	jg     f0102b5e <debuginfo_eip+0x17a>
f0102b2b:	0f b6 10             	movzbl (%eax),%edx
f0102b2e:	80 fa 84             	cmp    $0x84,%dl
f0102b31:	74 0b                	je     f0102b3e <debuginfo_eip+0x15a>
f0102b33:	80 fa 64             	cmp    $0x64,%dl
f0102b36:	75 e9                	jne    f0102b21 <debuginfo_eip+0x13d>
f0102b38:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
f0102b3c:	74 e3                	je     f0102b21 <debuginfo_eip+0x13d>
f0102b3e:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
f0102b41:	8b 14 85 98 4a 10 f0 	mov    -0xfefb568(,%eax,4),%edx
f0102b48:	b8 99 4a 10 f0       	mov    $0xf0104a99,%eax
f0102b4d:	2d 99 4a 10 f0       	sub    $0xf0104a99,%eax
f0102b52:	39 c2                	cmp    %eax,%edx
f0102b54:	73 08                	jae    f0102b5e <debuginfo_eip+0x17a>
f0102b56:	81 c2 99 4a 10 f0    	add    $0xf0104a99,%edx
f0102b5c:	89 16                	mov    %edx,(%esi)
f0102b5e:	b8 00 00 00 00       	mov    $0x0,%eax
f0102b63:	8b 7d d4             	mov    -0x2c(%ebp),%edi
f0102b66:	8b 4d d0             	mov    -0x30(%ebp),%ecx
f0102b69:	39 cf                	cmp    %ecx,%edi
f0102b6b:	7d 4c                	jge    f0102bb9 <debuginfo_eip+0x1d5>
f0102b6d:	89 f8                	mov    %edi,%eax
f0102b6f:	83 c0 01             	add    $0x1,%eax
f0102b72:	eb 13                	jmp    f0102b87 <debuginfo_eip+0x1a3>
f0102b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
f0102b78:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f0102b7f:	00 
f0102b80:	83 46 14 01          	addl   $0x1,0x14(%esi)
f0102b84:	83 c0 01             	add    $0x1,%eax
f0102b87:	39 c1                	cmp    %eax,%ecx
f0102b89:	74 29                	je     f0102bb4 <debuginfo_eip+0x1d0>
f0102b8b:	8d 14 40             	lea    (%eax,%eax,2),%edx
f0102b8e:	80 3c 95 9c 4a 10 f0 	cmpb   $0xa0,-0xfefb564(,%edx,4)
f0102b95:	a0 
f0102b96:	74 e8                	je     f0102b80 <debuginfo_eip+0x19c>
f0102b98:	b8 00 00 00 00       	mov    $0x0,%eax
f0102b9d:	eb 1a                	jmp    f0102bb9 <debuginfo_eip+0x1d5>
f0102b9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
f0102ba4:	eb 13                	jmp    f0102bb9 <debuginfo_eip+0x1d5>
f0102ba6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
f0102bab:	eb 0c                	jmp    f0102bb9 <debuginfo_eip+0x1d5>
f0102bad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
f0102bb2:	eb 05                	jmp    f0102bb9 <debuginfo_eip+0x1d5>
f0102bb4:	b8 00 00 00 00       	mov    $0x0,%eax
f0102bb9:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0102bbc:	5b                   	pop    %ebx
f0102bbd:	5e                   	pop    %esi
f0102bbe:	5f                   	pop    %edi
f0102bbf:	5d                   	pop    %ebp
f0102bc0:	c3                   	ret
f0102bc1:	66 90                	xchg   %ax,%ax
f0102bc3:	66 90                	xchg   %ax,%ax
f0102bc5:	66 90                	xchg   %ax,%ax
f0102bc7:	66 90                	xchg   %ax,%ax
f0102bc9:	66 90                	xchg   %ax,%ax
f0102bcb:	66 90                	xchg   %ax,%ax
f0102bcd:	66 90                	xchg   %ax,%ax
f0102bcf:	66 90                	xchg   %ax,%ax
f0102bd1:	66 90                	xchg   %ax,%ax
f0102bd3:	66 90                	xchg   %ax,%ax
f0102bd5:	66 90                	xchg   %ax,%ax
f0102bd7:	66 90                	xchg   %ax,%ax
f0102bd9:	66 90                	xchg   %ax,%ax
f0102bdb:	66 90                	xchg   %ax,%ax
f0102bdd:	66 90                	xchg   %ax,%ax
f0102bdf:	90                   	nop

f0102be0 <printnum>:
f0102be0:	55                   	push   %ebp
f0102be1:	89 e5                	mov    %esp,%ebp
f0102be3:	57                   	push   %edi
f0102be4:	56                   	push   %esi
f0102be5:	53                   	push   %ebx
f0102be6:	83 ec 1c             	sub    $0x1c,%esp
f0102be9:	89 c7                	mov    %eax,%edi
f0102beb:	89 d6                	mov    %edx,%esi
f0102bed:	8b 45 08             	mov    0x8(%ebp),%eax
f0102bf0:	8b 55 0c             	mov    0xc(%ebp),%edx
f0102bf3:	89 d1                	mov    %edx,%ecx
f0102bf5:	89 c2                	mov    %eax,%edx
f0102bf7:	89 45 d8             	mov    %eax,-0x28(%ebp)
f0102bfa:	89 4d dc             	mov    %ecx,-0x24(%ebp)
f0102bfd:	8b 45 10             	mov    0x10(%ebp),%eax
f0102c00:	8b 5d 14             	mov    0x14(%ebp),%ebx
f0102c03:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0102c06:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
f0102c0d:	39 c2                	cmp    %eax,%edx
f0102c0f:	1b 4d e4             	sbb    -0x1c(%ebp),%ecx
f0102c12:	72 3e                	jb     f0102c52 <printnum+0x72>
f0102c14:	83 ec 0c             	sub    $0xc,%esp
f0102c17:	ff 75 18             	push   0x18(%ebp)
f0102c1a:	83 eb 01             	sub    $0x1,%ebx
f0102c1d:	53                   	push   %ebx
f0102c1e:	50                   	push   %eax
f0102c1f:	83 ec 08             	sub    $0x8,%esp
f0102c22:	ff 75 e4             	push   -0x1c(%ebp)
f0102c25:	ff 75 e0             	push   -0x20(%ebp)
f0102c28:	ff 75 dc             	push   -0x24(%ebp)
f0102c2b:	ff 75 d8             	push   -0x28(%ebp)
f0102c2e:	e8 fd 09 00 00       	call   f0103630 <__udivdi3>
f0102c33:	83 c4 18             	add    $0x18,%esp
f0102c36:	52                   	push   %edx
f0102c37:	50                   	push   %eax
f0102c38:	89 f2                	mov    %esi,%edx
f0102c3a:	89 f8                	mov    %edi,%eax
f0102c3c:	e8 9f ff ff ff       	call   f0102be0 <printnum>
f0102c41:	83 c4 20             	add    $0x20,%esp
f0102c44:	eb 13                	jmp    f0102c59 <printnum+0x79>
f0102c46:	83 ec 08             	sub    $0x8,%esp
f0102c49:	56                   	push   %esi
f0102c4a:	ff 75 18             	push   0x18(%ebp)
f0102c4d:	ff d7                	call   *%edi
f0102c4f:	83 c4 10             	add    $0x10,%esp
f0102c52:	83 eb 01             	sub    $0x1,%ebx
f0102c55:	85 db                	test   %ebx,%ebx
f0102c57:	7f ed                	jg     f0102c46 <printnum+0x66>
f0102c59:	83 ec 08             	sub    $0x8,%esp
f0102c5c:	56                   	push   %esi
f0102c5d:	83 ec 04             	sub    $0x4,%esp
f0102c60:	ff 75 e4             	push   -0x1c(%ebp)
f0102c63:	ff 75 e0             	push   -0x20(%ebp)
f0102c66:	ff 75 dc             	push   -0x24(%ebp)
f0102c69:	ff 75 d8             	push   -0x28(%ebp)
f0102c6c:	e8 df 0a 00 00       	call   f0103750 <__umoddi3>
f0102c71:	83 c4 14             	add    $0x14,%esp
f0102c74:	0f be 80 a8 3c 10 f0 	movsbl -0xfefc358(%eax),%eax
f0102c7b:	50                   	push   %eax
f0102c7c:	ff d7                	call   *%edi
f0102c7e:	83 c4 10             	add    $0x10,%esp
f0102c81:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0102c84:	5b                   	pop    %ebx
f0102c85:	5e                   	pop    %esi
f0102c86:	5f                   	pop    %edi
f0102c87:	5d                   	pop    %ebp
f0102c88:	c3                   	ret

f0102c89 <sprintputch>:
f0102c89:	55                   	push   %ebp
f0102c8a:	89 e5                	mov    %esp,%ebp
f0102c8c:	8b 45 0c             	mov    0xc(%ebp),%eax
f0102c8f:	83 40 08 01          	addl   $0x1,0x8(%eax)
f0102c93:	8b 10                	mov    (%eax),%edx
f0102c95:	3b 50 04             	cmp    0x4(%eax),%edx
f0102c98:	73 0a                	jae    f0102ca4 <sprintputch+0x1b>
f0102c9a:	8d 4a 01             	lea    0x1(%edx),%ecx
f0102c9d:	89 08                	mov    %ecx,(%eax)
f0102c9f:	8b 45 08             	mov    0x8(%ebp),%eax
f0102ca2:	88 02                	mov    %al,(%edx)
f0102ca4:	5d                   	pop    %ebp
f0102ca5:	c3                   	ret

f0102ca6 <printfmt>:
f0102ca6:	55                   	push   %ebp
f0102ca7:	89 e5                	mov    %esp,%ebp
f0102ca9:	83 ec 08             	sub    $0x8,%esp
f0102cac:	8d 45 14             	lea    0x14(%ebp),%eax
f0102caf:	50                   	push   %eax
f0102cb0:	ff 75 10             	push   0x10(%ebp)
f0102cb3:	ff 75 0c             	push   0xc(%ebp)
f0102cb6:	ff 75 08             	push   0x8(%ebp)
f0102cb9:	e8 05 00 00 00       	call   f0102cc3 <vprintfmt>
f0102cbe:	83 c4 10             	add    $0x10,%esp
f0102cc1:	c9                   	leave
f0102cc2:	c3                   	ret

f0102cc3 <vprintfmt>:
f0102cc3:	55                   	push   %ebp
f0102cc4:	89 e5                	mov    %esp,%ebp
f0102cc6:	57                   	push   %edi
f0102cc7:	56                   	push   %esi
f0102cc8:	53                   	push   %ebx
f0102cc9:	83 ec 2c             	sub    $0x2c,%esp
f0102ccc:	8b 75 08             	mov    0x8(%ebp),%esi
f0102ccf:	8b 5d 0c             	mov    0xc(%ebp),%ebx
f0102cd2:	8b 7d 10             	mov    0x10(%ebp),%edi
f0102cd5:	eb 0a                	jmp    f0102ce1 <vprintfmt+0x1e>
f0102cd7:	83 ec 08             	sub    $0x8,%esp
f0102cda:	53                   	push   %ebx
f0102cdb:	50                   	push   %eax
f0102cdc:	ff d6                	call   *%esi
f0102cde:	83 c4 10             	add    $0x10,%esp
f0102ce1:	83 c7 01             	add    $0x1,%edi
f0102ce4:	0f b6 47 ff          	movzbl -0x1(%edi),%eax
f0102ce8:	83 f8 25             	cmp    $0x25,%eax
f0102ceb:	74 0c                	je     f0102cf9 <vprintfmt+0x36>
f0102ced:	85 c0                	test   %eax,%eax
f0102cef:	75 e6                	jne    f0102cd7 <vprintfmt+0x14>
f0102cf1:	8d 65 f4             	lea    -0xc(%ebp),%esp
f0102cf4:	5b                   	pop    %ebx
f0102cf5:	5e                   	pop    %esi
f0102cf6:	5f                   	pop    %edi
f0102cf7:	5d                   	pop    %ebp
f0102cf8:	c3                   	ret
f0102cf9:	c6 45 d0 20          	movb   $0x20,-0x30(%ebp)
f0102cfd:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
f0102d04:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,-0x20(%ebp)
f0102d0b:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%ebp)
f0102d12:	ba 00 00 00 00       	mov    $0x0,%edx
f0102d17:	89 d1                	mov    %edx,%ecx
f0102d19:	8d 47 01             	lea    0x1(%edi),%eax
f0102d1c:	89 45 dc             	mov    %eax,-0x24(%ebp)
f0102d1f:	0f b6 07             	movzbl (%edi),%eax
f0102d22:	8d 50 dd             	lea    -0x23(%eax),%edx
f0102d25:	80 fa 55             	cmp    $0x55,%dl
f0102d28:	0f 87 a2 03 00 00    	ja     f01030d0 <vprintfmt+0x40d>
f0102d2e:	0f b6 d2             	movzbl %dl,%edx
f0102d31:	ff 24 95 24 49 10 f0 	jmp    *-0xfefb6dc(,%edx,4)
f0102d38:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0102d3b:	c6 45 d0 2d          	movb   $0x2d,-0x30(%ebp)
f0102d3f:	eb d8                	jmp    f0102d19 <vprintfmt+0x56>
f0102d41:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0102d44:	c6 45 d0 30          	movb   $0x30,-0x30(%ebp)
f0102d48:	eb cf                	jmp    f0102d19 <vprintfmt+0x56>
f0102d4a:	0f b6 c0             	movzbl %al,%eax
f0102d4d:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0102d50:	ba 00 00 00 00       	mov    $0x0,%edx
f0102d55:	89 4d dc             	mov    %ecx,-0x24(%ebp)
f0102d58:	89 d1                	mov    %edx,%ecx
f0102d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
f0102d60:	8d 14 89             	lea    (%ecx,%ecx,4),%edx
f0102d63:	8d 4c 50 d0          	lea    -0x30(%eax,%edx,2),%ecx
f0102d67:	0f b6 07             	movzbl (%edi),%eax
f0102d6a:	0f be d0             	movsbl %al,%edx
f0102d6d:	83 ea 30             	sub    $0x30,%edx
f0102d70:	83 fa 09             	cmp    $0x9,%edx
f0102d73:	77 61                	ja     f0102dd6 <vprintfmt+0x113>
f0102d75:	0f be c0             	movsbl %al,%eax
f0102d78:	83 c7 01             	add    $0x1,%edi
f0102d7b:	eb e3                	jmp    f0102d60 <vprintfmt+0x9d>
f0102d7d:	8b 45 14             	mov    0x14(%ebp),%eax
f0102d80:	8b 00                	mov    (%eax),%eax
f0102d82:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0102d85:	8b 45 14             	mov    0x14(%ebp),%eax
f0102d88:	8d 40 04             	lea    0x4(%eax),%eax
f0102d8b:	89 45 14             	mov    %eax,0x14(%ebp)
f0102d8e:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0102d91:	8b 45 d8             	mov    -0x28(%ebp),%eax
f0102d94:	85 c0                	test   %eax,%eax
f0102d96:	8b 55 e0             	mov    -0x20(%ebp),%edx
f0102d99:	0f 48 c2             	cmovs  %edx,%eax
f0102d9c:	89 45 d8             	mov    %eax,-0x28(%ebp)
f0102d9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
f0102da4:	0f 49 c2             	cmovns %edx,%eax
f0102da7:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0102daa:	e9 6a ff ff ff       	jmp    f0102d19 <vprintfmt+0x56>
f0102daf:	8b 55 d8             	mov    -0x28(%ebp),%edx
f0102db2:	85 d2                	test   %edx,%edx
f0102db4:	b8 00 00 00 00       	mov    $0x0,%eax
f0102db9:	0f 49 c2             	cmovns %edx,%eax
f0102dbc:	89 45 d8             	mov    %eax,-0x28(%ebp)
f0102dbf:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0102dc2:	e9 52 ff ff ff       	jmp    f0102d19 <vprintfmt+0x56>
f0102dc7:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0102dca:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
f0102dd1:	e9 43 ff ff ff       	jmp    f0102d19 <vprintfmt+0x56>
f0102dd6:	89 4d e0             	mov    %ecx,-0x20(%ebp)
f0102dd9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
f0102ddc:	eb b3                	jmp    f0102d91 <vprintfmt+0xce>
f0102dde:	83 c1 01             	add    $0x1,%ecx
f0102de1:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0102de4:	e9 30 ff ff ff       	jmp    f0102d19 <vprintfmt+0x56>
f0102de9:	8b 45 14             	mov    0x14(%ebp),%eax
f0102dec:	8d 78 04             	lea    0x4(%eax),%edi
f0102def:	83 ec 08             	sub    $0x8,%esp
f0102df2:	53                   	push   %ebx
f0102df3:	ff 30                	push   (%eax)
f0102df5:	ff d6                	call   *%esi
f0102df7:	83 c4 10             	add    $0x10,%esp
f0102dfa:	89 7d 14             	mov    %edi,0x14(%ebp)
f0102dfd:	e9 6d 02 00 00       	jmp    f010306f <vprintfmt+0x3ac>
f0102e02:	8b 45 14             	mov    0x14(%ebp),%eax
f0102e05:	8d 78 04             	lea    0x4(%eax),%edi
f0102e08:	8b 10                	mov    (%eax),%edx
f0102e0a:	89 d0                	mov    %edx,%eax
f0102e0c:	f7 d8                	neg    %eax
f0102e0e:	0f 48 c2             	cmovs  %edx,%eax
f0102e11:	83 f8 06             	cmp    $0x6,%eax
f0102e14:	7f 23                	jg     f0102e39 <vprintfmt+0x176>
f0102e16:	8b 14 85 7c 4a 10 f0 	mov    -0xfefb584(,%eax,4),%edx
f0102e1d:	85 d2                	test   %edx,%edx
f0102e1f:	74 18                	je     f0102e39 <vprintfmt+0x176>
f0102e21:	52                   	push   %edx
f0102e22:	68 d8 39 10 f0       	push   $0xf01039d8
f0102e27:	53                   	push   %ebx
f0102e28:	56                   	push   %esi
f0102e29:	e8 78 fe ff ff       	call   f0102ca6 <printfmt>
f0102e2e:	83 c4 10             	add    $0x10,%esp
f0102e31:	89 7d 14             	mov    %edi,0x14(%ebp)
f0102e34:	e9 36 02 00 00       	jmp    f010306f <vprintfmt+0x3ac>
f0102e39:	50                   	push   %eax
f0102e3a:	68 c0 3c 10 f0       	push   $0xf0103cc0
f0102e3f:	53                   	push   %ebx
f0102e40:	56                   	push   %esi
f0102e41:	e8 60 fe ff ff       	call   f0102ca6 <printfmt>
f0102e46:	83 c4 10             	add    $0x10,%esp
f0102e49:	89 7d 14             	mov    %edi,0x14(%ebp)
f0102e4c:	e9 1e 02 00 00       	jmp    f010306f <vprintfmt+0x3ac>
f0102e51:	8b 45 14             	mov    0x14(%ebp),%eax
f0102e54:	83 c0 04             	add    $0x4,%eax
f0102e57:	89 45 c8             	mov    %eax,-0x38(%ebp)
f0102e5a:	8b 45 14             	mov    0x14(%ebp),%eax
f0102e5d:	8b 08                	mov    (%eax),%ecx
f0102e5f:	85 c9                	test   %ecx,%ecx
f0102e61:	b8 b9 3c 10 f0       	mov    $0xf0103cb9,%eax
f0102e66:	0f 45 c1             	cmovne %ecx,%eax
f0102e69:	89 45 cc             	mov    %eax,-0x34(%ebp)
f0102e6c:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
f0102e70:	7e 06                	jle    f0102e78 <vprintfmt+0x1b5>
f0102e72:	80 7d d0 2d          	cmpb   $0x2d,-0x30(%ebp)
f0102e76:	75 05                	jne    f0102e7d <vprintfmt+0x1ba>
f0102e78:	8b 7d cc             	mov    -0x34(%ebp),%edi
f0102e7b:	eb 57                	jmp    f0102ed4 <vprintfmt+0x211>
f0102e7d:	83 ec 08             	sub    $0x8,%esp
f0102e80:	ff 75 e0             	push   -0x20(%ebp)
f0102e83:	ff 75 cc             	push   -0x34(%ebp)
f0102e86:	e8 d0 03 00 00       	call   f010325b <strnlen>
f0102e8b:	89 c2                	mov    %eax,%edx
f0102e8d:	8b 45 d8             	mov    -0x28(%ebp),%eax
f0102e90:	29 d0                	sub    %edx,%eax
f0102e92:	83 c4 10             	add    $0x10,%esp
f0102e95:	89 c7                	mov    %eax,%edi
f0102e97:	0f be 4d d0          	movsbl -0x30(%ebp),%ecx
f0102e9b:	89 4d d8             	mov    %ecx,-0x28(%ebp)
f0102e9e:	89 45 d0             	mov    %eax,-0x30(%ebp)
f0102ea1:	eb 0f                	jmp    f0102eb2 <vprintfmt+0x1ef>
f0102ea3:	83 ec 08             	sub    $0x8,%esp
f0102ea6:	53                   	push   %ebx
f0102ea7:	ff 75 d8             	push   -0x28(%ebp)
f0102eaa:	ff d6                	call   *%esi
f0102eac:	83 ef 01             	sub    $0x1,%edi
f0102eaf:	83 c4 10             	add    $0x10,%esp
f0102eb2:	85 ff                	test   %edi,%edi
f0102eb4:	7f ed                	jg     f0102ea3 <vprintfmt+0x1e0>
f0102eb6:	8b 45 d0             	mov    -0x30(%ebp),%eax
f0102eb9:	85 c0                	test   %eax,%eax
f0102ebb:	ba 00 00 00 00       	mov    $0x0,%edx
f0102ec0:	0f 49 d0             	cmovns %eax,%edx
f0102ec3:	29 d0                	sub    %edx,%eax
f0102ec5:	89 45 d8             	mov    %eax,-0x28(%ebp)
f0102ec8:	eb ae                	jmp    f0102e78 <vprintfmt+0x1b5>
f0102eca:	83 ec 08             	sub    $0x8,%esp
f0102ecd:	53                   	push   %ebx
f0102ece:	52                   	push   %edx
f0102ecf:	ff d6                	call   *%esi
f0102ed1:	83 c4 10             	add    $0x10,%esp
f0102ed4:	0f b6 07             	movzbl (%edi),%eax
f0102ed7:	0f be d0             	movsbl %al,%edx
f0102eda:	85 d2                	test   %edx,%edx
f0102edc:	74 30                	je     f0102f0e <vprintfmt+0x24b>
f0102ede:	8b 4d e0             	mov    -0x20(%ebp),%ecx
f0102ee1:	85 c9                	test   %ecx,%ecx
f0102ee3:	78 08                	js     f0102eed <vprintfmt+0x22a>
f0102ee5:	83 e9 01             	sub    $0x1,%ecx
f0102ee8:	89 4d e0             	mov    %ecx,-0x20(%ebp)
f0102eeb:	78 21                	js     f0102f0e <vprintfmt+0x24b>
f0102eed:	83 c7 01             	add    $0x1,%edi
f0102ef0:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
f0102ef4:	74 d4                	je     f0102eca <vprintfmt+0x207>
f0102ef6:	0f be c0             	movsbl %al,%eax
f0102ef9:	83 e8 20             	sub    $0x20,%eax
f0102efc:	83 f8 5e             	cmp    $0x5e,%eax
f0102eff:	76 c9                	jbe    f0102eca <vprintfmt+0x207>
f0102f01:	83 ec 08             	sub    $0x8,%esp
f0102f04:	53                   	push   %ebx
f0102f05:	6a 3f                	push   $0x3f
f0102f07:	ff d6                	call   *%esi
f0102f09:	83 c4 10             	add    $0x10,%esp
f0102f0c:	eb c6                	jmp    f0102ed4 <vprintfmt+0x211>
f0102f0e:	8b 45 cc             	mov    -0x34(%ebp),%eax
f0102f11:	8b 4d d8             	mov    -0x28(%ebp),%ecx
f0102f14:	01 c8                	add    %ecx,%eax
f0102f16:	29 f8                	sub    %edi,%eax
f0102f18:	89 c7                	mov    %eax,%edi
f0102f1a:	eb 0e                	jmp    f0102f2a <vprintfmt+0x267>
f0102f1c:	83 ec 08             	sub    $0x8,%esp
f0102f1f:	53                   	push   %ebx
f0102f20:	6a 20                	push   $0x20
f0102f22:	ff d6                	call   *%esi
f0102f24:	83 ef 01             	sub    $0x1,%edi
f0102f27:	83 c4 10             	add    $0x10,%esp
f0102f2a:	85 ff                	test   %edi,%edi
f0102f2c:	7f ee                	jg     f0102f1c <vprintfmt+0x259>
f0102f2e:	8b 45 c8             	mov    -0x38(%ebp),%eax
f0102f31:	89 45 14             	mov    %eax,0x14(%ebp)
f0102f34:	e9 36 01 00 00       	jmp    f010306f <vprintfmt+0x3ac>
f0102f39:	83 f9 01             	cmp    $0x1,%ecx
f0102f3c:	7f 1f                	jg     f0102f5d <vprintfmt+0x29a>
f0102f3e:	85 c9                	test   %ecx,%ecx
f0102f40:	74 67                	je     f0102fa9 <vprintfmt+0x2e6>
f0102f42:	8b 45 14             	mov    0x14(%ebp),%eax
f0102f45:	8b 00                	mov    (%eax),%eax
f0102f47:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0102f4a:	89 c1                	mov    %eax,%ecx
f0102f4c:	c1 f9 1f             	sar    $0x1f,%ecx
f0102f4f:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
f0102f52:	8b 45 14             	mov    0x14(%ebp),%eax
f0102f55:	8d 40 04             	lea    0x4(%eax),%eax
f0102f58:	89 45 14             	mov    %eax,0x14(%ebp)
f0102f5b:	eb 17                	jmp    f0102f74 <vprintfmt+0x2b1>
f0102f5d:	8b 45 14             	mov    0x14(%ebp),%eax
f0102f60:	8b 50 04             	mov    0x4(%eax),%edx
f0102f63:	8b 00                	mov    (%eax),%eax
f0102f65:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0102f68:	89 55 e4             	mov    %edx,-0x1c(%ebp)
f0102f6b:	8b 45 14             	mov    0x14(%ebp),%eax
f0102f6e:	8d 40 08             	lea    0x8(%eax),%eax
f0102f71:	89 45 14             	mov    %eax,0x14(%ebp)
f0102f74:	8b 55 e0             	mov    -0x20(%ebp),%edx
f0102f77:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
f0102f7a:	bf 0a 00 00 00       	mov    $0xa,%edi
f0102f7f:	85 c9                	test   %ecx,%ecx
f0102f81:	0f 89 ce 00 00 00    	jns    f0103055 <vprintfmt+0x392>
f0102f87:	83 ec 08             	sub    $0x8,%esp
f0102f8a:	53                   	push   %ebx
f0102f8b:	6a 2d                	push   $0x2d
f0102f8d:	ff d6                	call   *%esi
f0102f8f:	8b 55 e0             	mov    -0x20(%ebp),%edx
f0102f92:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
f0102f95:	f7 da                	neg    %edx
f0102f97:	83 d1 00             	adc    $0x0,%ecx
f0102f9a:	f7 d9                	neg    %ecx
f0102f9c:	83 c4 10             	add    $0x10,%esp
f0102f9f:	bf 0a 00 00 00       	mov    $0xa,%edi
f0102fa4:	e9 ac 00 00 00       	jmp    f0103055 <vprintfmt+0x392>
f0102fa9:	8b 45 14             	mov    0x14(%ebp),%eax
f0102fac:	8b 00                	mov    (%eax),%eax
f0102fae:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0102fb1:	89 c1                	mov    %eax,%ecx
f0102fb3:	c1 f9 1f             	sar    $0x1f,%ecx
f0102fb6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
f0102fb9:	8b 45 14             	mov    0x14(%ebp),%eax
f0102fbc:	8d 40 04             	lea    0x4(%eax),%eax
f0102fbf:	89 45 14             	mov    %eax,0x14(%ebp)
f0102fc2:	eb b0                	jmp    f0102f74 <vprintfmt+0x2b1>
f0102fc4:	83 f9 01             	cmp    $0x1,%ecx
f0102fc7:	7f 1b                	jg     f0102fe4 <vprintfmt+0x321>
f0102fc9:	85 c9                	test   %ecx,%ecx
f0102fcb:	74 2c                	je     f0102ff9 <vprintfmt+0x336>
f0102fcd:	8b 45 14             	mov    0x14(%ebp),%eax
f0102fd0:	8b 10                	mov    (%eax),%edx
f0102fd2:	b9 00 00 00 00       	mov    $0x0,%ecx
f0102fd7:	8d 40 04             	lea    0x4(%eax),%eax
f0102fda:	89 45 14             	mov    %eax,0x14(%ebp)
f0102fdd:	bf 0a 00 00 00       	mov    $0xa,%edi
f0102fe2:	eb 71                	jmp    f0103055 <vprintfmt+0x392>
f0102fe4:	8b 45 14             	mov    0x14(%ebp),%eax
f0102fe7:	8b 10                	mov    (%eax),%edx
f0102fe9:	8b 48 04             	mov    0x4(%eax),%ecx
f0102fec:	8d 40 08             	lea    0x8(%eax),%eax
f0102fef:	89 45 14             	mov    %eax,0x14(%ebp)
f0102ff2:	bf 0a 00 00 00       	mov    $0xa,%edi
f0102ff7:	eb 5c                	jmp    f0103055 <vprintfmt+0x392>
f0102ff9:	8b 45 14             	mov    0x14(%ebp),%eax
f0102ffc:	8b 10                	mov    (%eax),%edx
f0102ffe:	b9 00 00 00 00       	mov    $0x0,%ecx
f0103003:	8d 40 04             	lea    0x4(%eax),%eax
f0103006:	89 45 14             	mov    %eax,0x14(%ebp)
f0103009:	bf 0a 00 00 00       	mov    $0xa,%edi
f010300e:	eb 45                	jmp    f0103055 <vprintfmt+0x392>
f0103010:	83 ec 08             	sub    $0x8,%esp
f0103013:	53                   	push   %ebx
f0103014:	6a 58                	push   $0x58
f0103016:	ff d6                	call   *%esi
f0103018:	83 c4 08             	add    $0x8,%esp
f010301b:	53                   	push   %ebx
f010301c:	6a 58                	push   $0x58
f010301e:	ff d6                	call   *%esi
f0103020:	83 c4 08             	add    $0x8,%esp
f0103023:	53                   	push   %ebx
f0103024:	6a 58                	push   $0x58
f0103026:	ff d6                	call   *%esi
f0103028:	83 c4 10             	add    $0x10,%esp
f010302b:	eb 42                	jmp    f010306f <vprintfmt+0x3ac>
f010302d:	83 ec 08             	sub    $0x8,%esp
f0103030:	53                   	push   %ebx
f0103031:	6a 30                	push   $0x30
f0103033:	ff d6                	call   *%esi
f0103035:	83 c4 08             	add    $0x8,%esp
f0103038:	53                   	push   %ebx
f0103039:	6a 78                	push   $0x78
f010303b:	ff d6                	call   *%esi
f010303d:	8b 45 14             	mov    0x14(%ebp),%eax
f0103040:	8b 10                	mov    (%eax),%edx
f0103042:	b9 00 00 00 00       	mov    $0x0,%ecx
f0103047:	83 c4 10             	add    $0x10,%esp
f010304a:	8d 40 04             	lea    0x4(%eax),%eax
f010304d:	89 45 14             	mov    %eax,0x14(%ebp)
f0103050:	bf 10 00 00 00       	mov    $0x10,%edi
f0103055:	83 ec 0c             	sub    $0xc,%esp
f0103058:	0f be 45 d0          	movsbl -0x30(%ebp),%eax
f010305c:	50                   	push   %eax
f010305d:	ff 75 d8             	push   -0x28(%ebp)
f0103060:	57                   	push   %edi
f0103061:	51                   	push   %ecx
f0103062:	52                   	push   %edx
f0103063:	89 da                	mov    %ebx,%edx
f0103065:	89 f0                	mov    %esi,%eax
f0103067:	e8 74 fb ff ff       	call   f0102be0 <printnum>
f010306c:	83 c4 20             	add    $0x20,%esp
f010306f:	8b 7d dc             	mov    -0x24(%ebp),%edi
f0103072:	e9 6a fc ff ff       	jmp    f0102ce1 <vprintfmt+0x1e>
f0103077:	83 f9 01             	cmp    $0x1,%ecx
f010307a:	7f 1b                	jg     f0103097 <vprintfmt+0x3d4>
f010307c:	85 c9                	test   %ecx,%ecx
f010307e:	74 2c                	je     f01030ac <vprintfmt+0x3e9>
f0103080:	8b 45 14             	mov    0x14(%ebp),%eax
f0103083:	8b 10                	mov    (%eax),%edx
f0103085:	b9 00 00 00 00       	mov    $0x0,%ecx
f010308a:	8d 40 04             	lea    0x4(%eax),%eax
f010308d:	89 45 14             	mov    %eax,0x14(%ebp)
f0103090:	bf 10 00 00 00       	mov    $0x10,%edi
f0103095:	eb be                	jmp    f0103055 <vprintfmt+0x392>
f0103097:	8b 45 14             	mov    0x14(%ebp),%eax
f010309a:	8b 10                	mov    (%eax),%edx
f010309c:	8b 48 04             	mov    0x4(%eax),%ecx
f010309f:	8d 40 08             	lea    0x8(%eax),%eax
f01030a2:	89 45 14             	mov    %eax,0x14(%ebp)
f01030a5:	bf 10 00 00 00       	mov    $0x10,%edi
f01030aa:	eb a9                	jmp    f0103055 <vprintfmt+0x392>
f01030ac:	8b 45 14             	mov    0x14(%ebp),%eax
f01030af:	8b 10                	mov    (%eax),%edx
f01030b1:	b9 00 00 00 00       	mov    $0x0,%ecx
f01030b6:	8d 40 04             	lea    0x4(%eax),%eax
f01030b9:	89 45 14             	mov    %eax,0x14(%ebp)
f01030bc:	bf 10 00 00 00       	mov    $0x10,%edi
f01030c1:	eb 92                	jmp    f0103055 <vprintfmt+0x392>
f01030c3:	83 ec 08             	sub    $0x8,%esp
f01030c6:	53                   	push   %ebx
f01030c7:	6a 25                	push   $0x25
f01030c9:	ff d6                	call   *%esi
f01030cb:	83 c4 10             	add    $0x10,%esp
f01030ce:	eb 9f                	jmp    f010306f <vprintfmt+0x3ac>
f01030d0:	83 ec 08             	sub    $0x8,%esp
f01030d3:	53                   	push   %ebx
f01030d4:	6a 25                	push   $0x25
f01030d6:	ff d6                	call   *%esi
f01030d8:	83 c4 10             	add    $0x10,%esp
f01030db:	89 f8                	mov    %edi,%eax
f01030dd:	8d 76 00             	lea    0x0(%esi),%esi
f01030e0:	80 78 ff 25          	cmpb   $0x25,-0x1(%eax)
f01030e4:	74 05                	je     f01030eb <vprintfmt+0x428>
f01030e6:	83 e8 01             	sub    $0x1,%eax
f01030e9:	eb f5                	jmp    f01030e0 <vprintfmt+0x41d>
f01030eb:	89 45 dc             	mov    %eax,-0x24(%ebp)
f01030ee:	e9 7c ff ff ff       	jmp    f010306f <vprintfmt+0x3ac>

f01030f3 <vsnprintf>:
f01030f3:	55                   	push   %ebp
f01030f4:	89 e5                	mov    %esp,%ebp
f01030f6:	83 ec 18             	sub    $0x18,%esp
f01030f9:	8b 45 08             	mov    0x8(%ebp),%eax
f01030fc:	8b 55 0c             	mov    0xc(%ebp),%edx
f01030ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
f0103102:	8d 4c 10 ff          	lea    -0x1(%eax,%edx,1),%ecx
f0103106:	89 4d f0             	mov    %ecx,-0x10(%ebp)
f0103109:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
f0103110:	85 c0                	test   %eax,%eax
f0103112:	74 26                	je     f010313a <vsnprintf+0x47>
f0103114:	85 d2                	test   %edx,%edx
f0103116:	7e 22                	jle    f010313a <vsnprintf+0x47>
f0103118:	ff 75 14             	push   0x14(%ebp)
f010311b:	ff 75 10             	push   0x10(%ebp)
f010311e:	8d 45 ec             	lea    -0x14(%ebp),%eax
f0103121:	50                   	push   %eax
f0103122:	68 89 2c 10 f0       	push   $0xf0102c89
f0103127:	e8 97 fb ff ff       	call   f0102cc3 <vprintfmt>
f010312c:	8b 45 ec             	mov    -0x14(%ebp),%eax
f010312f:	c6 00 00             	movb   $0x0,(%eax)
f0103132:	8b 45 f4             	mov    -0xc(%ebp),%eax
f0103135:	83 c4 10             	add    $0x10,%esp
f0103138:	c9                   	leave
f0103139:	c3                   	ret
f010313a:	b8 fd ff ff ff       	mov    $0xfffffffd,%eax
f010313f:	eb f7                	jmp    f0103138 <vsnprintf+0x45>

f0103141 <snprintf>:
f0103141:	55                   	push   %ebp
f0103142:	89 e5                	mov    %esp,%ebp
f0103144:	83 ec 08             	sub    $0x8,%esp
f0103147:	8d 45 14             	lea    0x14(%ebp),%eax
f010314a:	50                   	push   %eax
f010314b:	ff 75 10             	push   0x10(%ebp)
f010314e:	ff 75 0c             	push   0xc(%ebp)
f0103151:	ff 75 08             	push   0x8(%ebp)
f0103154:	e8 9a ff ff ff       	call   f01030f3 <vsnprintf>
f0103159:	c9                   	leave
f010315a:	c3                   	ret

f010315b <readline>:
f010315b:	55                   	push   %ebp
f010315c:	89 e5                	mov    %esp,%ebp
f010315e:	57                   	push   %edi
f010315f:	56                   	push   %esi
f0103160:	53                   	push   %ebx
f0103161:	83 ec 0c             	sub    $0xc,%esp
f0103164:	8b 45 08             	mov    0x8(%ebp),%eax
f0103167:	85 c0                	test   %eax,%eax
f0103169:	74 11                	je     f010317c <readline+0x21>
f010316b:	83 ec 08             	sub    $0x8,%esp
f010316e:	50                   	push   %eax
f010316f:	68 d8 39 10 f0       	push   $0xf01039d8
f0103174:	e8 18 f7 ff ff       	call   f0102891 <cprintf>
f0103179:	83 c4 10             	add    $0x10,%esp
f010317c:	83 ec 0c             	sub    $0xc,%esp
f010317f:	6a 00                	push   $0x0
f0103181:	e8 76 d4 ff ff       	call   f01005fc <iscons>
f0103186:	89 c7                	mov    %eax,%edi
f0103188:	83 c4 10             	add    $0x10,%esp
f010318b:	be 00 00 00 00       	mov    $0x0,%esi
f0103190:	eb 3f                	jmp    f01031d1 <readline+0x76>
f0103192:	83 ec 08             	sub    $0x8,%esp
f0103195:	50                   	push   %eax
f0103196:	68 32 3d 10 f0       	push   $0xf0103d32
f010319b:	e8 f1 f6 ff ff       	call   f0102891 <cprintf>
f01031a0:	83 c4 10             	add    $0x10,%esp
f01031a3:	b8 00 00 00 00       	mov    $0x0,%eax
f01031a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
f01031ab:	5b                   	pop    %ebx
f01031ac:	5e                   	pop    %esi
f01031ad:	5f                   	pop    %edi
f01031ae:	5d                   	pop    %ebp
f01031af:	c3                   	ret
f01031b0:	85 ff                	test   %edi,%edi
f01031b2:	75 05                	jne    f01031b9 <readline+0x5e>
f01031b4:	83 ee 01             	sub    $0x1,%esi
f01031b7:	eb 18                	jmp    f01031d1 <readline+0x76>
f01031b9:	83 ec 0c             	sub    $0xc,%esp
f01031bc:	6a 08                	push   $0x8
f01031be:	e8 18 d4 ff ff       	call   f01005db <cputchar>
f01031c3:	83 c4 10             	add    $0x10,%esp
f01031c6:	eb ec                	jmp    f01031b4 <readline+0x59>
f01031c8:	88 9e 80 f5 10 f0    	mov    %bl,-0xfef0a80(%esi)
f01031ce:	8d 76 01             	lea    0x1(%esi),%esi
f01031d1:	e8 15 d4 ff ff       	call   f01005eb <getchar>
f01031d6:	89 c3                	mov    %eax,%ebx
f01031d8:	85 c0                	test   %eax,%eax
f01031da:	78 b6                	js     f0103192 <readline+0x37>
f01031dc:	83 f8 08             	cmp    $0x8,%eax
f01031df:	0f 94 c0             	sete   %al
f01031e2:	83 fb 7f             	cmp    $0x7f,%ebx
f01031e5:	0f 94 c2             	sete   %dl
f01031e8:	08 d0                	or     %dl,%al
f01031ea:	74 04                	je     f01031f0 <readline+0x95>
f01031ec:	85 f6                	test   %esi,%esi
f01031ee:	7f c0                	jg     f01031b0 <readline+0x55>
f01031f0:	83 fb 1f             	cmp    $0x1f,%ebx
f01031f3:	7e 1a                	jle    f010320f <readline+0xb4>
f01031f5:	81 fe fe 03 00 00    	cmp    $0x3fe,%esi
f01031fb:	7f 12                	jg     f010320f <readline+0xb4>
f01031fd:	85 ff                	test   %edi,%edi
f01031ff:	74 c7                	je     f01031c8 <readline+0x6d>
f0103201:	83 ec 0c             	sub    $0xc,%esp
f0103204:	53                   	push   %ebx
f0103205:	e8 d1 d3 ff ff       	call   f01005db <cputchar>
f010320a:	83 c4 10             	add    $0x10,%esp
f010320d:	eb b9                	jmp    f01031c8 <readline+0x6d>
f010320f:	83 fb 0a             	cmp    $0xa,%ebx
f0103212:	74 05                	je     f0103219 <readline+0xbe>
f0103214:	83 fb 0d             	cmp    $0xd,%ebx
f0103217:	75 b8                	jne    f01031d1 <readline+0x76>
f0103219:	85 ff                	test   %edi,%edi
f010321b:	75 11                	jne    f010322e <readline+0xd3>
f010321d:	c6 86 80 f5 10 f0 00 	movb   $0x0,-0xfef0a80(%esi)
f0103224:	b8 80 f5 10 f0       	mov    $0xf010f580,%eax
f0103229:	e9 7a ff ff ff       	jmp    f01031a8 <readline+0x4d>
f010322e:	83 ec 0c             	sub    $0xc,%esp
f0103231:	6a 0a                	push   $0xa
f0103233:	e8 a3 d3 ff ff       	call   f01005db <cputchar>
f0103238:	83 c4 10             	add    $0x10,%esp
f010323b:	eb e0                	jmp    f010321d <readline+0xc2>
f010323d:	66 90                	xchg   %ax,%ax
f010323f:	90                   	nop

f0103240 <strlen>:
f0103240:	55                   	push   %ebp
f0103241:	89 e5                	mov    %esp,%ebp
f0103243:	8b 55 08             	mov    0x8(%ebp),%edx
f0103246:	b8 00 00 00 00       	mov    $0x0,%eax
f010324b:	eb 06                	jmp    f0103253 <strlen+0x13>
f010324d:	8d 76 00             	lea    0x0(%esi),%esi
f0103250:	83 c0 01             	add    $0x1,%eax
f0103253:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
f0103257:	75 f7                	jne    f0103250 <strlen+0x10>
f0103259:	5d                   	pop    %ebp
f010325a:	c3                   	ret

f010325b <strnlen>:
f010325b:	55                   	push   %ebp
f010325c:	89 e5                	mov    %esp,%ebp
f010325e:	8b 4d 08             	mov    0x8(%ebp),%ecx
f0103261:	8b 55 0c             	mov    0xc(%ebp),%edx
f0103264:	b8 00 00 00 00       	mov    $0x0,%eax
f0103269:	eb 08                	jmp    f0103273 <strnlen+0x18>
f010326b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
f0103270:	83 c0 01             	add    $0x1,%eax
f0103273:	39 d0                	cmp    %edx,%eax
f0103275:	74 08                	je     f010327f <strnlen+0x24>
f0103277:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
f010327b:	75 f3                	jne    f0103270 <strnlen+0x15>
f010327d:	89 c2                	mov    %eax,%edx
f010327f:	89 d0                	mov    %edx,%eax
f0103281:	5d                   	pop    %ebp
f0103282:	c3                   	ret

f0103283 <strcpy>:
f0103283:	55                   	push   %ebp
f0103284:	89 e5                	mov    %esp,%ebp
f0103286:	53                   	push   %ebx
f0103287:	8b 4d 08             	mov    0x8(%ebp),%ecx
f010328a:	8b 5d 0c             	mov    0xc(%ebp),%ebx
f010328d:	b8 00 00 00 00       	mov    $0x0,%eax
f0103292:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
f0103298:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f010329f:	00 
f01032a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
f01032a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
f01032a7:	83 c0 01             	add    $0x1,%eax
f01032aa:	84 d2                	test   %dl,%dl
f01032ac:	75 f2                	jne    f01032a0 <strcpy+0x1d>
f01032ae:	89 c8                	mov    %ecx,%eax
f01032b0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f01032b3:	c9                   	leave
f01032b4:	c3                   	ret

f01032b5 <strcat>:
f01032b5:	55                   	push   %ebp
f01032b6:	89 e5                	mov    %esp,%ebp
f01032b8:	53                   	push   %ebx
f01032b9:	83 ec 10             	sub    $0x10,%esp
f01032bc:	8b 5d 08             	mov    0x8(%ebp),%ebx
f01032bf:	53                   	push   %ebx
f01032c0:	e8 7b ff ff ff       	call   f0103240 <strlen>
f01032c5:	83 c4 08             	add    $0x8,%esp
f01032c8:	ff 75 0c             	push   0xc(%ebp)
f01032cb:	01 d8                	add    %ebx,%eax
f01032cd:	50                   	push   %eax
f01032ce:	e8 b0 ff ff ff       	call   f0103283 <strcpy>
f01032d3:	89 d8                	mov    %ebx,%eax
f01032d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f01032d8:	c9                   	leave
f01032d9:	c3                   	ret

f01032da <strncpy>:
f01032da:	55                   	push   %ebp
f01032db:	89 e5                	mov    %esp,%ebp
f01032dd:	56                   	push   %esi
f01032de:	53                   	push   %ebx
f01032df:	8b 75 08             	mov    0x8(%ebp),%esi
f01032e2:	8b 55 0c             	mov    0xc(%ebp),%edx
f01032e5:	89 f3                	mov    %esi,%ebx
f01032e7:	03 5d 10             	add    0x10(%ebp),%ebx
f01032ea:	89 f0                	mov    %esi,%eax
f01032ec:	eb 21                	jmp    f010330f <strncpy+0x35>
f01032ee:	66 90                	xchg   %ax,%ax
f01032f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01032f7:	00 
f01032f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01032ff:	00 
f0103300:	83 c0 01             	add    $0x1,%eax
f0103303:	0f b6 0a             	movzbl (%edx),%ecx
f0103306:	88 48 ff             	mov    %cl,-0x1(%eax)
f0103309:	80 f9 01             	cmp    $0x1,%cl
f010330c:	83 da ff             	sbb    $0xffffffff,%edx
f010330f:	39 d8                	cmp    %ebx,%eax
f0103311:	75 ed                	jne    f0103300 <strncpy+0x26>
f0103313:	89 f0                	mov    %esi,%eax
f0103315:	5b                   	pop    %ebx
f0103316:	5e                   	pop    %esi
f0103317:	5d                   	pop    %ebp
f0103318:	c3                   	ret

f0103319 <strlcpy>:
f0103319:	55                   	push   %ebp
f010331a:	89 e5                	mov    %esp,%ebp
f010331c:	56                   	push   %esi
f010331d:	53                   	push   %ebx
f010331e:	8b 75 08             	mov    0x8(%ebp),%esi
f0103321:	8b 4d 0c             	mov    0xc(%ebp),%ecx
f0103324:	8b 45 10             	mov    0x10(%ebp),%eax
f0103327:	89 f3                	mov    %esi,%ebx
f0103329:	85 c0                	test   %eax,%eax
f010332b:	74 2c                	je     f0103359 <strlcpy+0x40>
f010332d:	8d 5c 06 ff          	lea    -0x1(%esi,%eax,1),%ebx
f0103331:	89 f2                	mov    %esi,%edx
f0103333:	eb 14                	jmp    f0103349 <strlcpy+0x30>
f0103335:	8d 76 00             	lea    0x0(%esi),%esi
f0103338:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f010333f:	00 
f0103340:	83 c1 01             	add    $0x1,%ecx
f0103343:	83 c2 01             	add    $0x1,%edx
f0103346:	88 42 ff             	mov    %al,-0x1(%edx)
f0103349:	39 da                	cmp    %ebx,%edx
f010334b:	74 09                	je     f0103356 <strlcpy+0x3d>
f010334d:	0f b6 01             	movzbl (%ecx),%eax
f0103350:	84 c0                	test   %al,%al
f0103352:	75 ec                	jne    f0103340 <strlcpy+0x27>
f0103354:	89 d3                	mov    %edx,%ebx
f0103356:	c6 03 00             	movb   $0x0,(%ebx)
f0103359:	89 d8                	mov    %ebx,%eax
f010335b:	29 f0                	sub    %esi,%eax
f010335d:	5b                   	pop    %ebx
f010335e:	5e                   	pop    %esi
f010335f:	5d                   	pop    %ebp
f0103360:	c3                   	ret

f0103361 <strcmp>:
f0103361:	55                   	push   %ebp
f0103362:	89 e5                	mov    %esp,%ebp
f0103364:	8b 4d 08             	mov    0x8(%ebp),%ecx
f0103367:	8b 55 0c             	mov    0xc(%ebp),%edx
f010336a:	eb 1a                	jmp    f0103386 <strcmp+0x25>
f010336c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
f0103370:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f0103377:	00 
f0103378:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f010337f:	00 
f0103380:	83 c1 01             	add    $0x1,%ecx
f0103383:	83 c2 01             	add    $0x1,%edx
f0103386:	0f b6 01             	movzbl (%ecx),%eax
f0103389:	84 c0                	test   %al,%al
f010338b:	74 04                	je     f0103391 <strcmp+0x30>
f010338d:	3a 02                	cmp    (%edx),%al
f010338f:	74 ef                	je     f0103380 <strcmp+0x1f>
f0103391:	0f b6 c0             	movzbl %al,%eax
f0103394:	0f b6 12             	movzbl (%edx),%edx
f0103397:	29 d0                	sub    %edx,%eax
f0103399:	5d                   	pop    %ebp
f010339a:	c3                   	ret

f010339b <strncmp>:
f010339b:	55                   	push   %ebp
f010339c:	89 e5                	mov    %esp,%ebp
f010339e:	53                   	push   %ebx
f010339f:	8b 45 08             	mov    0x8(%ebp),%eax
f01033a2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
f01033a5:	8b 55 10             	mov    0x10(%ebp),%edx
f01033a8:	eb 09                	jmp    f01033b3 <strncmp+0x18>
f01033aa:	83 ea 01             	sub    $0x1,%edx
f01033ad:	83 c0 01             	add    $0x1,%eax
f01033b0:	83 c1 01             	add    $0x1,%ecx
f01033b3:	85 d2                	test   %edx,%edx
f01033b5:	74 18                	je     f01033cf <strncmp+0x34>
f01033b7:	0f b6 18             	movzbl (%eax),%ebx
f01033ba:	84 db                	test   %bl,%bl
f01033bc:	74 04                	je     f01033c2 <strncmp+0x27>
f01033be:	3a 19                	cmp    (%ecx),%bl
f01033c0:	74 e8                	je     f01033aa <strncmp+0xf>
f01033c2:	0f b6 00             	movzbl (%eax),%eax
f01033c5:	0f b6 11             	movzbl (%ecx),%edx
f01033c8:	29 d0                	sub    %edx,%eax
f01033ca:	8b 5d fc             	mov    -0x4(%ebp),%ebx
f01033cd:	c9                   	leave
f01033ce:	c3                   	ret
f01033cf:	b8 00 00 00 00       	mov    $0x0,%eax
f01033d4:	eb f4                	jmp    f01033ca <strncmp+0x2f>

f01033d6 <strchr>:
f01033d6:	55                   	push   %ebp
f01033d7:	89 e5                	mov    %esp,%ebp
f01033d9:	8b 45 08             	mov    0x8(%ebp),%eax
f01033dc:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
f01033e0:	eb 11                	jmp    f01033f3 <strchr+0x1d>
f01033e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
f01033e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01033ef:	00 
f01033f0:	83 c0 01             	add    $0x1,%eax
f01033f3:	0f b6 10             	movzbl (%eax),%edx
f01033f6:	84 d2                	test   %dl,%dl
f01033f8:	74 06                	je     f0103400 <strchr+0x2a>
f01033fa:	38 ca                	cmp    %cl,%dl
f01033fc:	75 f2                	jne    f01033f0 <strchr+0x1a>
f01033fe:	eb 05                	jmp    f0103405 <strchr+0x2f>
f0103400:	b8 00 00 00 00       	mov    $0x0,%eax
f0103405:	5d                   	pop    %ebp
f0103406:	c3                   	ret

f0103407 <strfind>:
f0103407:	55                   	push   %ebp
f0103408:	89 e5                	mov    %esp,%ebp
f010340a:	8b 45 08             	mov    0x8(%ebp),%eax
f010340d:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
f0103411:	0f b6 10             	movzbl (%eax),%edx
f0103414:	38 ca                	cmp    %cl,%dl
f0103416:	74 09                	je     f0103421 <strfind+0x1a>
f0103418:	84 d2                	test   %dl,%dl
f010341a:	74 05                	je     f0103421 <strfind+0x1a>
f010341c:	83 c0 01             	add    $0x1,%eax
f010341f:	eb f0                	jmp    f0103411 <strfind+0xa>
f0103421:	5d                   	pop    %ebp
f0103422:	c3                   	ret

f0103423 <memset>:
f0103423:	55                   	push   %ebp
f0103424:	89 e5                	mov    %esp,%ebp
f0103426:	57                   	push   %edi
f0103427:	8b 55 08             	mov    0x8(%ebp),%edx
f010342a:	8b 4d 10             	mov    0x10(%ebp),%ecx
f010342d:	85 c9                	test   %ecx,%ecx
f010342f:	74 24                	je     f0103455 <memset+0x32>
f0103431:	89 d0                	mov    %edx,%eax
f0103433:	09 c8                	or     %ecx,%eax
f0103435:	a8 03                	test   $0x3,%al
f0103437:	75 14                	jne    f010344d <memset+0x2a>
f0103439:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
f010343d:	69 c0 01 01 01 01    	imul   $0x1010101,%eax,%eax
f0103443:	c1 e9 02             	shr    $0x2,%ecx
f0103446:	89 d7                	mov    %edx,%edi
f0103448:	fc                   	cld
f0103449:	f3 ab                	rep stos %eax,%es:(%edi)
f010344b:	eb 08                	jmp    f0103455 <memset+0x32>
f010344d:	89 d7                	mov    %edx,%edi
f010344f:	8b 45 0c             	mov    0xc(%ebp),%eax
f0103452:	fc                   	cld
f0103453:	f3 aa                	rep stos %al,%es:(%edi)
f0103455:	89 d0                	mov    %edx,%eax
f0103457:	8b 7d fc             	mov    -0x4(%ebp),%edi
f010345a:	c9                   	leave
f010345b:	c3                   	ret

f010345c <memmove>:
f010345c:	55                   	push   %ebp
f010345d:	89 e5                	mov    %esp,%ebp
f010345f:	57                   	push   %edi
f0103460:	56                   	push   %esi
f0103461:	53                   	push   %ebx
f0103462:	8b 45 08             	mov    0x8(%ebp),%eax
f0103465:	8b 55 0c             	mov    0xc(%ebp),%edx
f0103468:	8b 4d 10             	mov    0x10(%ebp),%ecx
f010346b:	39 c2                	cmp    %eax,%edx
f010346d:	73 39                	jae    f01034a8 <memmove+0x4c>
f010346f:	8d 1c 0a             	lea    (%edx,%ecx,1),%ebx
f0103472:	39 d8                	cmp    %ebx,%eax
f0103474:	73 32                	jae    f01034a8 <memmove+0x4c>
f0103476:	8d 34 08             	lea    (%eax,%ecx,1),%esi
f0103479:	89 f2                	mov    %esi,%edx
f010347b:	09 ca                	or     %ecx,%edx
f010347d:	09 da                	or     %ebx,%edx
f010347f:	f6 c2 03             	test   $0x3,%dl
f0103482:	75 12                	jne    f0103496 <memmove+0x3a>
f0103484:	83 ee 04             	sub    $0x4,%esi
f0103487:	83 eb 04             	sub    $0x4,%ebx
f010348a:	c1 e9 02             	shr    $0x2,%ecx
f010348d:	89 f7                	mov    %esi,%edi
f010348f:	89 de                	mov    %ebx,%esi
f0103491:	fd                   	std
f0103492:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
f0103494:	eb 0f                	jmp    f01034a5 <memmove+0x49>
f0103496:	89 f2                	mov    %esi,%edx
f0103498:	83 ea 01             	sub    $0x1,%edx
f010349b:	83 eb 01             	sub    $0x1,%ebx
f010349e:	89 d7                	mov    %edx,%edi
f01034a0:	89 de                	mov    %ebx,%esi
f01034a2:	fd                   	std
f01034a3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
f01034a5:	fc                   	cld
f01034a6:	eb 1e                	jmp    f01034c6 <memmove+0x6a>
f01034a8:	89 c3                	mov    %eax,%ebx
f01034aa:	09 cb                	or     %ecx,%ebx
f01034ac:	09 d3                	or     %edx,%ebx
f01034ae:	f6 c3 03             	test   $0x3,%bl
f01034b1:	75 0c                	jne    f01034bf <memmove+0x63>
f01034b3:	c1 e9 02             	shr    $0x2,%ecx
f01034b6:	89 c7                	mov    %eax,%edi
f01034b8:	89 d6                	mov    %edx,%esi
f01034ba:	fc                   	cld
f01034bb:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
f01034bd:	eb 07                	jmp    f01034c6 <memmove+0x6a>
f01034bf:	89 c7                	mov    %eax,%edi
f01034c1:	89 d6                	mov    %edx,%esi
f01034c3:	fc                   	cld
f01034c4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
f01034c6:	5b                   	pop    %ebx
f01034c7:	5e                   	pop    %esi
f01034c8:	5f                   	pop    %edi
f01034c9:	5d                   	pop    %ebp
f01034ca:	c3                   	ret

f01034cb <memcpy>:
f01034cb:	55                   	push   %ebp
f01034cc:	89 e5                	mov    %esp,%ebp
f01034ce:	83 ec 0c             	sub    $0xc,%esp
f01034d1:	ff 75 10             	push   0x10(%ebp)
f01034d4:	ff 75 0c             	push   0xc(%ebp)
f01034d7:	ff 75 08             	push   0x8(%ebp)
f01034da:	e8 7d ff ff ff       	call   f010345c <memmove>
f01034df:	c9                   	leave
f01034e0:	c3                   	ret

f01034e1 <memcmp>:
f01034e1:	55                   	push   %ebp
f01034e2:	89 e5                	mov    %esp,%ebp
f01034e4:	56                   	push   %esi
f01034e5:	53                   	push   %ebx
f01034e6:	8b 45 08             	mov    0x8(%ebp),%eax
f01034e9:	8b 55 0c             	mov    0xc(%ebp),%edx
f01034ec:	89 c6                	mov    %eax,%esi
f01034ee:	03 75 10             	add    0x10(%ebp),%esi
f01034f1:	eb 13                	jmp    f0103506 <memcmp+0x25>
f01034f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
f01034f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01034ff:	00 
f0103500:	83 c0 01             	add    $0x1,%eax
f0103503:	83 c2 01             	add    $0x1,%edx
f0103506:	39 f0                	cmp    %esi,%eax
f0103508:	74 14                	je     f010351e <memcmp+0x3d>
f010350a:	0f b6 08             	movzbl (%eax),%ecx
f010350d:	0f b6 1a             	movzbl (%edx),%ebx
f0103510:	38 d9                	cmp    %bl,%cl
f0103512:	74 ec                	je     f0103500 <memcmp+0x1f>
f0103514:	0f b6 c1             	movzbl %cl,%eax
f0103517:	0f b6 db             	movzbl %bl,%ebx
f010351a:	29 d8                	sub    %ebx,%eax
f010351c:	eb 05                	jmp    f0103523 <memcmp+0x42>
f010351e:	b8 00 00 00 00       	mov    $0x0,%eax
f0103523:	5b                   	pop    %ebx
f0103524:	5e                   	pop    %esi
f0103525:	5d                   	pop    %ebp
f0103526:	c3                   	ret

f0103527 <memfind>:
f0103527:	55                   	push   %ebp
f0103528:	89 e5                	mov    %esp,%ebp
f010352a:	8b 45 08             	mov    0x8(%ebp),%eax
f010352d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
f0103530:	89 c2                	mov    %eax,%edx
f0103532:	03 55 10             	add    0x10(%ebp),%edx
f0103535:	eb 0c                	jmp    f0103543 <memfind+0x1c>
f0103537:	90                   	nop
f0103538:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f010353f:	00 
f0103540:	83 c0 01             	add    $0x1,%eax
f0103543:	39 d0                	cmp    %edx,%eax
f0103545:	73 04                	jae    f010354b <memfind+0x24>
f0103547:	38 08                	cmp    %cl,(%eax)
f0103549:	75 f5                	jne    f0103540 <memfind+0x19>
f010354b:	5d                   	pop    %ebp
f010354c:	c3                   	ret

f010354d <strtol>:
f010354d:	55                   	push   %ebp
f010354e:	89 e5                	mov    %esp,%ebp
f0103550:	57                   	push   %edi
f0103551:	56                   	push   %esi
f0103552:	53                   	push   %ebx
f0103553:	8b 55 08             	mov    0x8(%ebp),%edx
f0103556:	8b 5d 10             	mov    0x10(%ebp),%ebx
f0103559:	eb 08                	jmp    f0103563 <strtol+0x16>
f010355b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
f0103560:	83 c2 01             	add    $0x1,%edx
f0103563:	0f b6 02             	movzbl (%edx),%eax
f0103566:	3c 20                	cmp    $0x20,%al
f0103568:	74 f6                	je     f0103560 <strtol+0x13>
f010356a:	3c 09                	cmp    $0x9,%al
f010356c:	74 f2                	je     f0103560 <strtol+0x13>
f010356e:	3c 2b                	cmp    $0x2b,%al
f0103570:	74 31                	je     f01035a3 <strtol+0x56>
f0103572:	8d 4a 01             	lea    0x1(%edx),%ecx
f0103575:	3c 2d                	cmp    $0x2d,%al
f0103577:	0f 44 d1             	cmove  %ecx,%edx
f010357a:	0f 94 c0             	sete   %al
f010357d:	0f b6 c0             	movzbl %al,%eax
f0103580:	f7 c3 ef ff ff ff    	test   $0xffffffef,%ebx
f0103586:	75 0f                	jne    f0103597 <strtol+0x4a>
f0103588:	80 3a 30             	cmpb   $0x30,(%edx)
f010358b:	74 20                	je     f01035ad <strtol+0x60>
f010358d:	85 db                	test   %ebx,%ebx
f010358f:	b9 0a 00 00 00       	mov    $0xa,%ecx
f0103594:	0f 44 d9             	cmove  %ecx,%ebx
f0103597:	b9 00 00 00 00       	mov    $0x0,%ecx
f010359c:	89 c7                	mov    %eax,%edi
f010359e:	89 5d 10             	mov    %ebx,0x10(%ebp)
f01035a1:	eb 49                	jmp    f01035ec <strtol+0x9f>
f01035a3:	83 c2 01             	add    $0x1,%edx
f01035a6:	b8 00 00 00 00       	mov    $0x0,%eax
f01035ab:	eb d3                	jmp    f0103580 <strtol+0x33>
f01035ad:	80 7a 01 78          	cmpb   $0x78,0x1(%edx)
f01035b1:	74 12                	je     f01035c5 <strtol+0x78>
f01035b3:	83 fb 01             	cmp    $0x1,%ebx
f01035b6:	83 d2 00             	adc    $0x0,%edx
f01035b9:	85 db                	test   %ebx,%ebx
f01035bb:	b9 08 00 00 00       	mov    $0x8,%ecx
f01035c0:	0f 44 d9             	cmove  %ecx,%ebx
f01035c3:	eb d2                	jmp    f0103597 <strtol+0x4a>
f01035c5:	83 c2 02             	add    $0x2,%edx
f01035c8:	bb 10 00 00 00       	mov    $0x10,%ebx
f01035cd:	eb c8                	jmp    f0103597 <strtol+0x4a>
f01035cf:	8d 73 9f             	lea    -0x61(%ebx),%esi
f01035d2:	89 f0                	mov    %esi,%eax
f01035d4:	3c 19                	cmp    $0x19,%al
f01035d6:	77 28                	ja     f0103600 <strtol+0xb3>
f01035d8:	0f be db             	movsbl %bl,%ebx
f01035db:	8d 73 a9             	lea    -0x57(%ebx),%esi
f01035de:	3b 75 10             	cmp    0x10(%ebp),%esi
f01035e1:	7d 2e                	jge    f0103611 <strtol+0xc4>
f01035e3:	83 c2 01             	add    $0x1,%edx
f01035e6:	0f af 4d 10          	imul   0x10(%ebp),%ecx
f01035ea:	01 f1                	add    %esi,%ecx
f01035ec:	0f b6 1a             	movzbl (%edx),%ebx
f01035ef:	8d 73 d0             	lea    -0x30(%ebx),%esi
f01035f2:	89 f0                	mov    %esi,%eax
f01035f4:	3c 09                	cmp    $0x9,%al
f01035f6:	77 d7                	ja     f01035cf <strtol+0x82>
f01035f8:	0f be db             	movsbl %bl,%ebx
f01035fb:	8d 73 d0             	lea    -0x30(%ebx),%esi
f01035fe:	eb de                	jmp    f01035de <strtol+0x91>
f0103600:	8d 73 bf             	lea    -0x41(%ebx),%esi
f0103603:	89 f0                	mov    %esi,%eax
f0103605:	3c 19                	cmp    $0x19,%al
f0103607:	77 08                	ja     f0103611 <strtol+0xc4>
f0103609:	0f be db             	movsbl %bl,%ebx
f010360c:	8d 73 c9             	lea    -0x37(%ebx),%esi
f010360f:	eb cd                	jmp    f01035de <strtol+0x91>
f0103611:	89 f8                	mov    %edi,%eax
f0103613:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
f0103617:	74 05                	je     f010361e <strtol+0xd1>
f0103619:	8b 7d 0c             	mov    0xc(%ebp),%edi
f010361c:	89 17                	mov    %edx,(%edi)
f010361e:	89 ca                	mov    %ecx,%edx
f0103620:	f7 da                	neg    %edx
f0103622:	85 c0                	test   %eax,%eax
f0103624:	0f 45 ca             	cmovne %edx,%ecx
f0103627:	89 c8                	mov    %ecx,%eax
f0103629:	5b                   	pop    %ebx
f010362a:	5e                   	pop    %esi
f010362b:	5f                   	pop    %edi
f010362c:	5d                   	pop    %ebp
f010362d:	c3                   	ret
f010362e:	66 90                	xchg   %ax,%ax

f0103630 <__udivdi3>:
f0103630:	55                   	push   %ebp
f0103631:	89 e5                	mov    %esp,%ebp
f0103633:	57                   	push   %edi
f0103634:	56                   	push   %esi
f0103635:	53                   	push   %ebx
f0103636:	83 ec 1c             	sub    $0x1c,%esp
f0103639:	8b 75 08             	mov    0x8(%ebp),%esi
f010363c:	8b 45 14             	mov    0x14(%ebp),%eax
f010363f:	8b 5d 0c             	mov    0xc(%ebp),%ebx
f0103642:	8b 7d 10             	mov    0x10(%ebp),%edi
f0103645:	89 75 e4             	mov    %esi,-0x1c(%ebp)
f0103648:	85 c0                	test   %eax,%eax
f010364a:	75 1c                	jne    f0103668 <__udivdi3+0x38>
f010364c:	39 fb                	cmp    %edi,%ebx
f010364e:	73 50                	jae    f01036a0 <__udivdi3+0x70>
f0103650:	89 f0                	mov    %esi,%eax
f0103652:	31 f6                	xor    %esi,%esi
f0103654:	89 da                	mov    %ebx,%edx
f0103656:	f7 f7                	div    %edi
f0103658:	89 f2                	mov    %esi,%edx
f010365a:	83 c4 1c             	add    $0x1c,%esp
f010365d:	5b                   	pop    %ebx
f010365e:	5e                   	pop    %esi
f010365f:	5f                   	pop    %edi
f0103660:	5d                   	pop    %ebp
f0103661:	c3                   	ret
f0103662:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
f0103668:	39 c3                	cmp    %eax,%ebx
f010366a:	73 14                	jae    f0103680 <__udivdi3+0x50>
f010366c:	31 f6                	xor    %esi,%esi
f010366e:	31 c0                	xor    %eax,%eax
f0103670:	89 f2                	mov    %esi,%edx
f0103672:	83 c4 1c             	add    $0x1c,%esp
f0103675:	5b                   	pop    %ebx
f0103676:	5e                   	pop    %esi
f0103677:	5f                   	pop    %edi
f0103678:	5d                   	pop    %ebp
f0103679:	c3                   	ret
f010367a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
f0103680:	0f bd f0             	bsr    %eax,%esi
f0103683:	83 f6 1f             	xor    $0x1f,%esi
f0103686:	75 48                	jne    f01036d0 <__udivdi3+0xa0>
f0103688:	39 d8                	cmp    %ebx,%eax
f010368a:	72 07                	jb     f0103693 <__udivdi3+0x63>
f010368c:	31 c0                	xor    %eax,%eax
f010368e:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
f0103691:	72 dd                	jb     f0103670 <__udivdi3+0x40>
f0103693:	b8 01 00 00 00       	mov    $0x1,%eax
f0103698:	eb d6                	jmp    f0103670 <__udivdi3+0x40>
f010369a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
f01036a0:	89 f9                	mov    %edi,%ecx
f01036a2:	85 ff                	test   %edi,%edi
f01036a4:	75 0b                	jne    f01036b1 <__udivdi3+0x81>
f01036a6:	b8 01 00 00 00       	mov    $0x1,%eax
f01036ab:	31 d2                	xor    %edx,%edx
f01036ad:	f7 f7                	div    %edi
f01036af:	89 c1                	mov    %eax,%ecx
f01036b1:	31 d2                	xor    %edx,%edx
f01036b3:	89 d8                	mov    %ebx,%eax
f01036b5:	f7 f1                	div    %ecx
f01036b7:	89 c6                	mov    %eax,%esi
f01036b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
f01036bc:	f7 f1                	div    %ecx
f01036be:	89 f2                	mov    %esi,%edx
f01036c0:	83 c4 1c             	add    $0x1c,%esp
f01036c3:	5b                   	pop    %ebx
f01036c4:	5e                   	pop    %esi
f01036c5:	5f                   	pop    %edi
f01036c6:	5d                   	pop    %ebp
f01036c7:	c3                   	ret
f01036c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f01036cf:	00 
f01036d0:	89 f1                	mov    %esi,%ecx
f01036d2:	ba 20 00 00 00       	mov    $0x20,%edx
f01036d7:	29 f2                	sub    %esi,%edx
f01036d9:	d3 e0                	shl    %cl,%eax
f01036db:	89 45 e0             	mov    %eax,-0x20(%ebp)
f01036de:	89 d1                	mov    %edx,%ecx
f01036e0:	89 f8                	mov    %edi,%eax
f01036e2:	d3 e8                	shr    %cl,%eax
f01036e4:	8b 4d e0             	mov    -0x20(%ebp),%ecx
f01036e7:	09 c1                	or     %eax,%ecx
f01036e9:	89 d8                	mov    %ebx,%eax
f01036eb:	89 4d e0             	mov    %ecx,-0x20(%ebp)
f01036ee:	89 f1                	mov    %esi,%ecx
f01036f0:	d3 e7                	shl    %cl,%edi
f01036f2:	89 d1                	mov    %edx,%ecx
f01036f4:	d3 e8                	shr    %cl,%eax
f01036f6:	89 f1                	mov    %esi,%ecx
f01036f8:	89 7d dc             	mov    %edi,-0x24(%ebp)
f01036fb:	89 45 d8             	mov    %eax,-0x28(%ebp)
f01036fe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
f0103701:	d3 e3                	shl    %cl,%ebx
f0103703:	89 d1                	mov    %edx,%ecx
f0103705:	8b 55 d8             	mov    -0x28(%ebp),%edx
f0103708:	d3 e8                	shr    %cl,%eax
f010370a:	09 d8                	or     %ebx,%eax
f010370c:	f7 75 e0             	divl   -0x20(%ebp)
f010370f:	89 d3                	mov    %edx,%ebx
f0103711:	89 c7                	mov    %eax,%edi
f0103713:	f7 65 dc             	mull   -0x24(%ebp)
f0103716:	89 45 e0             	mov    %eax,-0x20(%ebp)
f0103719:	39 d3                	cmp    %edx,%ebx
f010371b:	72 23                	jb     f0103740 <__udivdi3+0x110>
f010371d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
f0103720:	89 f1                	mov    %esi,%ecx
f0103722:	d3 e0                	shl    %cl,%eax
f0103724:	3b 45 e0             	cmp    -0x20(%ebp),%eax
f0103727:	73 04                	jae    f010372d <__udivdi3+0xfd>
f0103729:	39 d3                	cmp    %edx,%ebx
f010372b:	74 13                	je     f0103740 <__udivdi3+0x110>
f010372d:	89 f8                	mov    %edi,%eax
f010372f:	31 f6                	xor    %esi,%esi
f0103731:	e9 3a ff ff ff       	jmp    f0103670 <__udivdi3+0x40>
f0103736:	66 90                	xchg   %ax,%ax
f0103738:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
f010373f:	00 
f0103740:	8d 47 ff             	lea    -0x1(%edi),%eax
f0103743:	31 f6                	xor    %esi,%esi
f0103745:	e9 26 ff ff ff       	jmp    f0103670 <__udivdi3+0x40>
f010374a:	66 90                	xchg   %ax,%ax
f010374c:	66 90                	xchg   %ax,%ax
f010374e:	66 90                	xchg   %ax,%ax

f0103750 <__umoddi3>:
f0103750:	55                   	push   %ebp
f0103751:	89 e5                	mov    %esp,%ebp
f0103753:	57                   	push   %edi
f0103754:	56                   	push   %esi
f0103755:	53                   	push   %ebx
f0103756:	83 ec 2c             	sub    $0x2c,%esp
f0103759:	8b 5d 0c             	mov    0xc(%ebp),%ebx
f010375c:	8b 45 14             	mov    0x14(%ebp),%eax
f010375f:	8b 75 08             	mov    0x8(%ebp),%esi
f0103762:	8b 7d 10             	mov    0x10(%ebp),%edi
f0103765:	89 da                	mov    %ebx,%edx
f0103767:	85 c0                	test   %eax,%eax
f0103769:	75 15                	jne    f0103780 <__umoddi3+0x30>
f010376b:	39 fb                	cmp    %edi,%ebx
f010376d:	73 51                	jae    f01037c0 <__umoddi3+0x70>
f010376f:	89 f0                	mov    %esi,%eax
f0103771:	f7 f7                	div    %edi
f0103773:	89 d0                	mov    %edx,%eax
f0103775:	31 d2                	xor    %edx,%edx
f0103777:	83 c4 2c             	add    $0x2c,%esp
f010377a:	5b                   	pop    %ebx
f010377b:	5e                   	pop    %esi
f010377c:	5f                   	pop    %edi
f010377d:	5d                   	pop    %ebp
f010377e:	c3                   	ret
f010377f:	90                   	nop
f0103780:	89 75 e0             	mov    %esi,-0x20(%ebp)
f0103783:	39 c3                	cmp    %eax,%ebx
f0103785:	73 11                	jae    f0103798 <__umoddi3+0x48>
f0103787:	89 f0                	mov    %esi,%eax
f0103789:	83 c4 2c             	add    $0x2c,%esp
f010378c:	5b                   	pop    %ebx
f010378d:	5e                   	pop    %esi
f010378e:	5f                   	pop    %edi
f010378f:	5d                   	pop    %ebp
f0103790:	c3                   	ret
f0103791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
f0103798:	0f bd c8             	bsr    %eax,%ecx
f010379b:	83 f1 1f             	xor    $0x1f,%ecx
f010379e:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
f01037a1:	75 3d                	jne    f01037e0 <__umoddi3+0x90>
f01037a3:	39 d8                	cmp    %ebx,%eax
f01037a5:	0f 82 cd 00 00 00    	jb     f0103878 <__umoddi3+0x128>
f01037ab:	39 fe                	cmp    %edi,%esi
f01037ad:	0f 83 c5 00 00 00    	jae    f0103878 <__umoddi3+0x128>
f01037b3:	8b 45 e0             	mov    -0x20(%ebp),%eax
f01037b6:	83 c4 2c             	add    $0x2c,%esp
f01037b9:	5b                   	pop    %ebx
f01037ba:	5e                   	pop    %esi
f01037bb:	5f                   	pop    %edi
f01037bc:	5d                   	pop    %ebp
f01037bd:	c3                   	ret
f01037be:	66 90                	xchg   %ax,%ax
f01037c0:	89 f9                	mov    %edi,%ecx
f01037c2:	85 ff                	test   %edi,%edi
f01037c4:	75 0b                	jne    f01037d1 <__umoddi3+0x81>
f01037c6:	b8 01 00 00 00       	mov    $0x1,%eax
f01037cb:	31 d2                	xor    %edx,%edx
f01037cd:	f7 f7                	div    %edi
f01037cf:	89 c1                	mov    %eax,%ecx
f01037d1:	89 d8                	mov    %ebx,%eax
f01037d3:	31 d2                	xor    %edx,%edx
f01037d5:	f7 f1                	div    %ecx
f01037d7:	89 f0                	mov    %esi,%eax
f01037d9:	f7 f1                	div    %ecx
f01037db:	eb 96                	jmp    f0103773 <__umoddi3+0x23>
f01037dd:	8d 76 00             	lea    0x0(%esi),%esi
f01037e0:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
f01037e4:	ba 20 00 00 00       	mov    $0x20,%edx
f01037e9:	2b 55 e4             	sub    -0x1c(%ebp),%edx
f01037ec:	89 55 e0             	mov    %edx,-0x20(%ebp)
f01037ef:	d3 e0                	shl    %cl,%eax
f01037f1:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
f01037f5:	89 45 dc             	mov    %eax,-0x24(%ebp)
f01037f8:	89 f8                	mov    %edi,%eax
f01037fa:	8b 55 dc             	mov    -0x24(%ebp),%edx
f01037fd:	d3 e8                	shr    %cl,%eax
f01037ff:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
f0103803:	09 c2                	or     %eax,%edx
f0103805:	d3 e7                	shl    %cl,%edi
f0103807:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
f010380b:	89 55 dc             	mov    %edx,-0x24(%ebp)
f010380e:	89 da                	mov    %ebx,%edx
f0103810:	89 7d d8             	mov    %edi,-0x28(%ebp)
f0103813:	89 f7                	mov    %esi,%edi
f0103815:	d3 ea                	shr    %cl,%edx
f0103817:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
f010381b:	d3 e3                	shl    %cl,%ebx
f010381d:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
f0103821:	d3 ef                	shr    %cl,%edi
f0103823:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
f0103827:	89 f8                	mov    %edi,%eax
f0103829:	d3 e6                	shl    %cl,%esi
f010382b:	09 d8                	or     %ebx,%eax
f010382d:	f7 75 dc             	divl   -0x24(%ebp)
f0103830:	89 d3                	mov    %edx,%ebx
f0103832:	89 75 d4             	mov    %esi,-0x2c(%ebp)
f0103835:	89 f7                	mov    %esi,%edi
f0103837:	f7 65 d8             	mull   -0x28(%ebp)
f010383a:	89 c6                	mov    %eax,%esi
f010383c:	89 d1                	mov    %edx,%ecx
f010383e:	39 d3                	cmp    %edx,%ebx
f0103840:	72 06                	jb     f0103848 <__umoddi3+0xf8>
f0103842:	75 0e                	jne    f0103852 <__umoddi3+0x102>
f0103844:	39 c7                	cmp    %eax,%edi
f0103846:	73 0a                	jae    f0103852 <__umoddi3+0x102>
f0103848:	2b 45 d8             	sub    -0x28(%ebp),%eax
f010384b:	1b 55 dc             	sbb    -0x24(%ebp),%edx
f010384e:	89 d1                	mov    %edx,%ecx
f0103850:	89 c6                	mov    %eax,%esi
f0103852:	8b 45 d4             	mov    -0x2c(%ebp),%eax
f0103855:	29 f0                	sub    %esi,%eax
f0103857:	19 cb                	sbb    %ecx,%ebx
f0103859:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
f010385d:	89 da                	mov    %ebx,%edx
f010385f:	d3 e2                	shl    %cl,%edx
f0103861:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
f0103865:	d3 e8                	shr    %cl,%eax
f0103867:	d3 eb                	shr    %cl,%ebx
f0103869:	09 d0                	or     %edx,%eax
f010386b:	89 da                	mov    %ebx,%edx
f010386d:	83 c4 2c             	add    $0x2c,%esp
f0103870:	5b                   	pop    %ebx
f0103871:	5e                   	pop    %esi
f0103872:	5f                   	pop    %edi
f0103873:	5d                   	pop    %ebp
f0103874:	c3                   	ret
f0103875:	8d 76 00             	lea    0x0(%esi),%esi
f0103878:	89 da                	mov    %ebx,%edx
f010387a:	29 fe                	sub    %edi,%esi
f010387c:	19 c2                	sbb    %eax,%edx
f010387e:	89 75 e0             	mov    %esi,-0x20(%ebp)
f0103881:	e9 2d ff ff ff       	jmp    f01037b3 <__umoddi3+0x63>
