	.file	"histogram.cpp"
	.text
	.p2align 4
	.def	_ZN9HistogramIyhE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyhE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIyhE10accumulateIhEEvPT_y._omp_fn.0:
.LFB16968:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	8(%rcx), %r12
	movq	16(%rcx), %rbx
	movq	(%rcx), %rdi
	call	_Z22manage_thread_affinityv
	subq	$2048, %rsp
	xorl	%edx, %edx
	movl	$2048, %r8d
	leaq	32(%rsp), %rsi
	movq	%rsi, %rcx
	call	memset
	testq	%r12, %r12
	jne	.L2
	.p2align 4,,10
	.p2align 3
.L5:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$2048, %rax
	jne	.L3
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L10
.L2:
	call	omp_get_num_threads
	movl	%eax, %r13d
	call	omp_get_thread_num
	movslq	%r13d, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r12, %rax
	divq	%r8
	movq	%rax, %r12
	cmpq	%rdx, %rcx
	jb	.L4
.L7:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L5
	leaq	(%rdi,%rdx), %rax
	addq	%r12, %rdi
	.p2align 4,,10
	.p2align 3
.L6:
	movzbl	(%rax), %edx
	incq	%rax
	incq	(%rsi,%rdx,8)
	cmpq	%rdi, %rax
	jne	.L6
	jmp	.L5
.L4:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L7
.L10:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16968:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16968-.LLSDACSB16968
.LLSDACSB16968:
.LLSDACSE16968:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIytE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIytE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIytE10accumulateItEEvPT_y._omp_fn.0:
.LFB16969:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	8(%rcx), %rax
	movl	24(%rcx), %ebx
	movq	16(%rcx), %rsi
	movl	28(%rcx), %r15d
	movq	%rax, -88(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -96(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%ebx, %edx, %edx
	movslq	%edx, %r13
	leaq	15(,%r13,8), %rax
	leaq	-1(%r13), %r14
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$6, %edx
	jbe	.L24
	leaq	-4(%r13), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L13
	leaq	0(,%rdx,4), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r13
	je	.L31
	leaq	1(%rax), %r9
	movq	$0, (%rdx)
	cmpq	%r9, %r14
	jb	.L32
	addq	$2, %rax
	movq	$0, 8(%rdx)
	cmpq	%rax, %r14
	jb	.L33
	movq	$0, 16(%rdx)
	vzeroupper
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L12:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r14
	jnb	.L12
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L31:
	vzeroupper
	jmp	.L15
.L32:
	vzeroupper
	jmp	.L15
.L33:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L15:
	cmpq	$0, -88(%rbp)
	jne	.L16
	.p2align 4,,10
	.p2align 3
.L21:
	call	GOMP_atomic_start
	cmpq	$2, %r14
	jbe	.L25
	leaq	-4(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L18:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L18
	movq	%rcx, %rax
	leaq	0(,%rcx,4), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	%rax, %rsi
	cmpq	%rdx, %r13
	jne	.L34
	vzeroupper
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L25:
	xorl	%edx, %edx
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L34:
	vzeroupper
.L17:
	movq	(%rdi), %rax
	addq	%rax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %r14
	jb	.L19
	addq	$2, %rdx
	movq	8(%rdi), %rax
	addq	%rax, 8(%rsi)
	cmpq	%rdx, %r14
	jb	.L19
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L19:
	call	GOMP_atomic_end
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L16:
	call	omp_get_num_threads
	movslq	%eax, %r12
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r12
	cmpq	%rdx, %r9
	jb	.L20
.L23:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L21
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L22:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incq	(%rbx,%rax,8)
	cmpq	%r9, %rdx
	jne	.L22
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L20:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L30:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16969:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16969-.LLSDACSB16969
.LLSDACSB16969:
.LLSDACSE16969:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIyaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramIyaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB16970:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	(%rcx), %r12
	movq	16(%rcx), %rdi
	movq	8(%rcx), %rbx
	call	_Z22manage_thread_affinityv
	subq	$2048, %rsp
	xorl	%edx, %edx
	movl	$2048, %r8d
	leaq	32(%rsp), %rsi
	movq	%rsi, %rcx
	call	memset
	testq	%r12, %r12
	jne	.L36
	.p2align 4,,10
	.p2align 3
.L39:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L37:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$2048, %rax
	jne	.L37
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L44
.L36:
	call	omp_get_num_threads
	movl	%eax, %r13d
	call	omp_get_thread_num
	movslq	%r13d, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r12, %rax
	divq	%r8
	movq	%rax, %r12
	cmpq	%rdx, %rcx
	jb	.L38
.L41:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L39
	leaq	(%rdi,%rdx), %rax
	addq	%r12, %rdi
	.p2align 4,,10
	.p2align 3
.L40:
	movzbl	(%rax), %edx
	incq	%rax
	incq	(%rsi,%rdx,8)
	cmpq	%rdi, %rax
	jne	.L40
	jmp	.L39
.L38:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L41
.L44:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16970:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16970-.LLSDACSB16970
.LLSDACSB16970:
.LLSDACSE16970:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIysE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIysE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramIysE10accumulateIsEEvPT_y._omp_fn.0:
.LFB16971:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %rax
	movl	24(%rcx), %ebx
	movq	8(%rcx), %rsi
	movl	28(%rcx), %r15d
	movq	%rax, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%ebx, %edx, %edx
	movslq	%edx, %r13
	leaq	15(,%r13,8), %rax
	leaq	-1(%r13), %r14
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$6, %edx
	jbe	.L58
	leaq	-4(%r13), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L47:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L47
	leaq	0(,%rdx,4), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r13
	je	.L65
	leaq	1(%rax), %r9
	movq	$0, (%rdx)
	cmpq	%r9, %r14
	jb	.L66
	addq	$2, %rax
	movq	$0, 8(%rdx)
	cmpq	%rax, %r14
	jb	.L67
	movq	$0, 16(%rdx)
	vzeroupper
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L58:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L46:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r14
	jnb	.L46
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L65:
	vzeroupper
	jmp	.L49
.L66:
	vzeroupper
	jmp	.L49
.L67:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L49:
	cmpq	$0, -88(%rbp)
	jne	.L50
	.p2align 4,,10
	.p2align 3
.L55:
	call	GOMP_atomic_start
	cmpq	$2, %r14
	jbe	.L59
	leaq	-4(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L52:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L52
	movq	%rcx, %rax
	leaq	0(,%rcx,4), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	%rax, %rsi
	cmpq	%rdx, %r13
	jne	.L68
	vzeroupper
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L59:
	xorl	%edx, %edx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L68:
	vzeroupper
.L51:
	movq	(%rdi), %rax
	addq	%rax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %r14
	jb	.L53
	addq	$2, %rdx
	movq	8(%rdi), %rax
	addq	%rax, 8(%rsi)
	cmpq	%rdx, %r14
	jb	.L53
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L53:
	call	GOMP_atomic_end
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L50:
	call	omp_get_num_threads
	movslq	%eax, %r12
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r12
	cmpq	%rdx, %r9
	jb	.L54
.L57:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L55
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L56:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incq	(%rbx,%rax,8)
	cmpq	%r9, %rdx
	jne	.L56
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L54:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L64:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16971:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16971-.LLSDACSB16971
.LLSDACSB16971:
.LLSDACSE16971:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjhE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjhE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIjhE10accumulateIhEEvPT_y._omp_fn.0:
.LFB16974:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	8(%rcx), %r12
	movq	16(%rcx), %rbx
	movq	(%rcx), %rsi
	call	_Z22manage_thread_affinityv
	subq	$1024, %rsp
	xorl	%edx, %edx
	movl	$1024, %r8d
	leaq	32(%rsp), %rdi
	movq	%rdi, %rcx
	call	memset
	testq	%r12, %r12
	jne	.L70
	.p2align 4,,10
	.p2align 3
.L73:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L71:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rdi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$1024, %rax
	jne	.L71
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L78
.L70:
	call	omp_get_num_threads
	movl	%eax, %r13d
	call	omp_get_thread_num
	movslq	%r13d, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r12, %rax
	divq	%r8
	movq	%rax, %r12
	cmpq	%rdx, %rcx
	jb	.L72
.L75:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L73
	leaq	(%rsi,%rdx), %rax
	addq	%r12, %rsi
	.p2align 4,,10
	.p2align 3
.L74:
	movzbl	(%rax), %edx
	incq	%rax
	incl	(%rdi,%rdx,4)
	cmpq	%rsi, %rax
	jne	.L74
	jmp	.L73
.L72:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L75
.L78:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16974:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16974-.LLSDACSB16974
.LLSDACSB16974:
.LLSDACSE16974:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjtE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjtE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIjtE10accumulateItEEvPT_y._omp_fn.0:
.LFB16975:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	8(%rcx), %rax
	movl	24(%rcx), %ebx
	movq	16(%rcx), %rsi
	movl	28(%rcx), %r15d
	movq	%rax, -88(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -96(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%ebx, %edx, %edx
	movslq	%edx, %r14
	leaq	15(,%r14,4), %rax
	leaq	-1(%r14), %rdi
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movq	%rbx, %r12
	cmpl	$7, %edx
	jbe	.L92
	leaq	-8(%r14), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L81:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L81
	leaq	0(,%rdx,8), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r14
	je	.L99
	leaq	1(%rax), %r9
	movl	$0, (%rdx)
	cmpq	%r9, %rdi
	jb	.L100
	leaq	2(%rax), %r9
	movl	$0, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L101
	leaq	3(%rax), %r9
	movl	$0, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L102
	leaq	4(%rax), %r9
	movl	$0, 12(%rdx)
	cmpq	%r9, %rdi
	jb	.L103
	leaq	5(%rax), %r9
	movl	$0, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L104
	addq	$6, %rax
	movl	$0, 20(%rdx)
	cmpq	%rax, %rdi
	jb	.L105
	movl	$0, 24(%rdx)
	vzeroupper
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L92:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L80:
	movl	$0, (%rbx,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L80
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L99:
	vzeroupper
	jmp	.L83
.L100:
	vzeroupper
	jmp	.L83
.L101:
	vzeroupper
	jmp	.L83
.L102:
	vzeroupper
	jmp	.L83
.L103:
	vzeroupper
	jmp	.L83
.L104:
	vzeroupper
	jmp	.L83
.L105:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L83:
	cmpq	$0, -88(%rbp)
	jne	.L84
	.p2align 4,,10
	.p2align 3
.L89:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L93
	leaq	-8(%r14), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L86:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L86
	movq	%rcx, %rax
	leaq	0(,%rcx,8), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %r12
	addq	%rax, %rsi
	cmpq	%rdx, %r14
	jne	.L106
	vzeroupper
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L93:
	xorl	%edx, %edx
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L106:
	vzeroupper
.L85:
	movl	(%r12), %eax
	addl	%eax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L87
	movl	4(%r12), %eax
	addl	%eax, 4(%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L87
	movl	8(%r12), %eax
	addl	%eax, 8(%rsi)
	leaq	3(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L87
	movl	12(%r12), %eax
	addl	%eax, 12(%rsi)
	leaq	4(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L87
	movl	16(%r12), %eax
	addl	%eax, 16(%rsi)
	leaq	5(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L87
	addq	$6, %rdx
	movl	20(%r12), %eax
	addl	%eax, 20(%rsi)
	cmpq	%rdx, %rdi
	jb	.L87
	movl	24(%r12), %eax
	addl	%eax, 24(%rsi)
.L87:
	call	GOMP_atomic_end
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L84:
	call	omp_get_num_threads
	movslq	%eax, %r13
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r13
	cmpq	%rdx, %r9
	jb	.L88
.L91:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L89
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L90:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incl	(%rbx,%rax,4)
	cmpq	%r9, %rdx
	jne	.L90
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L88:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L98:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16975:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16975-.LLSDACSB16975
.LLSDACSB16975:
.LLSDACSE16975:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramIjaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB16976:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	(%rcx), %r12
	movq	16(%rcx), %rsi
	movq	8(%rcx), %rbx
	call	_Z22manage_thread_affinityv
	subq	$1024, %rsp
	xorl	%edx, %edx
	movl	$1024, %r8d
	leaq	32(%rsp), %rdi
	movq	%rdi, %rcx
	call	memset
	testq	%r12, %r12
	jne	.L108
	.p2align 4,,10
	.p2align 3
.L111:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L109:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rdi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$1024, %rax
	jne	.L109
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L116
.L108:
	call	omp_get_num_threads
	movl	%eax, %r13d
	call	omp_get_thread_num
	movslq	%r13d, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r12, %rax
	divq	%r8
	movq	%rax, %r12
	cmpq	%rdx, %rcx
	jb	.L110
.L113:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L111
	leaq	(%rsi,%rdx), %rax
	addq	%r12, %rsi
	.p2align 4,,10
	.p2align 3
.L112:
	movzbl	(%rax), %edx
	incq	%rax
	incl	(%rdi,%rdx,4)
	cmpq	%rsi, %rax
	jne	.L112
	jmp	.L111
.L110:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L113
.L116:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16976:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16976-.LLSDACSB16976
.LLSDACSB16976:
.LLSDACSE16976:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjsE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjsE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramIjsE10accumulateIsEEvPT_y._omp_fn.0:
.LFB16977:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %rax
	movl	24(%rcx), %ebx
	movq	8(%rcx), %rsi
	movl	28(%rcx), %r15d
	movq	%rax, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%ebx, %edx, %edx
	movslq	%edx, %r14
	leaq	15(,%r14,4), %rax
	leaq	-1(%r14), %rdi
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movq	%rbx, %r12
	cmpl	$7, %edx
	jbe	.L130
	leaq	-8(%r14), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L119:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L119
	leaq	0(,%rdx,8), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r14
	je	.L137
	leaq	1(%rax), %r9
	movl	$0, (%rdx)
	cmpq	%r9, %rdi
	jb	.L138
	leaq	2(%rax), %r9
	movl	$0, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L139
	leaq	3(%rax), %r9
	movl	$0, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L140
	leaq	4(%rax), %r9
	movl	$0, 12(%rdx)
	cmpq	%r9, %rdi
	jb	.L141
	leaq	5(%rax), %r9
	movl	$0, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L142
	addq	$6, %rax
	movl	$0, 20(%rdx)
	cmpq	%rax, %rdi
	jb	.L143
	movl	$0, 24(%rdx)
	vzeroupper
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L130:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L118:
	movl	$0, (%rbx,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L118
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L137:
	vzeroupper
	jmp	.L121
.L138:
	vzeroupper
	jmp	.L121
.L139:
	vzeroupper
	jmp	.L121
.L140:
	vzeroupper
	jmp	.L121
.L141:
	vzeroupper
	jmp	.L121
.L142:
	vzeroupper
	jmp	.L121
.L143:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L121:
	cmpq	$0, -88(%rbp)
	jne	.L122
	.p2align 4,,10
	.p2align 3
.L127:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L131
	leaq	-8(%r14), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L124:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L124
	movq	%rcx, %rax
	leaq	0(,%rcx,8), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %r12
	addq	%rax, %rsi
	cmpq	%rdx, %r14
	jne	.L144
	vzeroupper
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L131:
	xorl	%edx, %edx
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L144:
	vzeroupper
.L123:
	movl	(%r12), %eax
	addl	%eax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L125
	movl	4(%r12), %eax
	addl	%eax, 4(%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L125
	movl	8(%r12), %eax
	addl	%eax, 8(%rsi)
	leaq	3(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L125
	movl	12(%r12), %eax
	addl	%eax, 12(%rsi)
	leaq	4(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L125
	movl	16(%r12), %eax
	addl	%eax, 16(%rsi)
	leaq	5(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L125
	addq	$6, %rdx
	movl	20(%r12), %eax
	addl	%eax, 20(%rsi)
	cmpq	%rdx, %rdi
	jb	.L125
	movl	24(%r12), %eax
	addl	%eax, 24(%rsi)
.L125:
	call	GOMP_atomic_end
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L122:
	call	omp_get_num_threads
	movslq	%eax, %r13
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r13
	cmpq	%rdx, %r9
	jb	.L126
.L129:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L127
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L128:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incl	(%rbx,%rax,4)
	cmpq	%r9, %rdx
	jne	.L128
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L126:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L136:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16977:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16977-.LLSDACSB16977
.LLSDACSB16977:
.LLSDACSE16977:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIthE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIthE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIthE10accumulateIhEEvPT_y._omp_fn.0:
.LFB16980:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %rbx
	movq	8(%rcx), %r13
	movq	(%rcx), %rsi
	call	_Z22manage_thread_affinityv
	subq	$512, %rsp
	movl	$64, %ecx
	xorl	%eax, %eax
	leaq	32(%rsp), %r12
	movq	%r12, %rdi
	rep stosq
	testq	%r13, %r13
	jne	.L146
	.p2align 4,,10
	.p2align 3
.L148:
	call	GOMP_atomic_start
	vmovdqu	(%rbx), %ymm1
	vpaddw	(%r12), %ymm1, %ymm0
	vmovdqu	32(%r12), %ymm2
	vmovdqu	64(%r12), %ymm3
	vmovdqu	%ymm0, (%rbx)
	vpaddw	32(%rbx), %ymm2, %ymm0
	vmovdqu	96(%rbx), %ymm4
	vmovdqu	128(%rbx), %ymm5
	vmovdqu	160(%rbx), %ymm1
	vmovdqu	%ymm0, 32(%rbx)
	vpaddw	64(%rbx), %ymm3, %ymm0
	vmovdqu	192(%rbx), %ymm2
	vmovdqu	224(%rbx), %ymm3
	vmovdqu	%ymm0, 64(%rbx)
	vpaddw	96(%r12), %ymm4, %ymm0
	vmovdqu	256(%rbx), %ymm4
	vmovdqu	%ymm0, 96(%rbx)
	vpaddw	128(%r12), %ymm5, %ymm0
	vmovdqu	288(%rbx), %ymm5
	vmovdqu	%ymm0, 128(%rbx)
	vpaddw	160(%r12), %ymm1, %ymm0
	vmovdqu	320(%rbx), %ymm1
	vmovdqu	%ymm0, 160(%rbx)
	vpaddw	192(%r12), %ymm2, %ymm0
	vmovdqu	%ymm0, 192(%rbx)
	vpaddw	224(%r12), %ymm3, %ymm0
	vmovdqu	%ymm0, 224(%rbx)
	vpaddw	256(%r12), %ymm4, %ymm0
	vmovdqu	%ymm0, 256(%rbx)
	vpaddw	288(%r12), %ymm5, %ymm0
	vmovdqu	%ymm0, 288(%rbx)
	vpaddw	320(%r12), %ymm1, %ymm0
	vmovdqu	%ymm0, 320(%rbx)
	vmovdqu	352(%rbx), %ymm2
	vpaddw	352(%r12), %ymm2, %ymm0
	vmovdqu	384(%rbx), %ymm3
	vmovdqu	416(%rbx), %ymm4
	vmovdqu	%ymm0, 352(%rbx)
	vmovdqu	448(%rbx), %ymm5
	vpaddw	384(%r12), %ymm3, %ymm0
	vmovdqu	%ymm0, 384(%rbx)
	vpaddw	416(%r12), %ymm4, %ymm0
	vmovdqu	%ymm0, 416(%rbx)
	vpaddw	448(%r12), %ymm5, %ymm0
	vmovdqu	%ymm0, 448(%rbx)
	vmovdqu	480(%r12), %ymm0
	vpaddw	480(%rbx), %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L152
.L146:
	call	omp_get_num_threads
	movl	%eax, %edi
	call	omp_get_thread_num
	movslq	%edi, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%r8
	movq	%rax, %r13
	cmpq	%rdx, %rcx
	jb	.L147
.L150:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L148
	leaq	(%rsi,%rdx), %rax
	addq	%r13, %rsi
	.p2align 4,,10
	.p2align 3
.L149:
	movzbl	(%rax), %edx
	incq	%rax
	incw	(%r12,%rdx,2)
	cmpq	%rsi, %rax
	jne	.L149
	jmp	.L148
.L147:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L152:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16980:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16980-.LLSDACSB16980
.LLSDACSB16980:
.LLSDACSE16980:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIttE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIttE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIttE10accumulateItEEvPT_y._omp_fn.0:
.LFB16981:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	8(%rcx), %rax
	movl	24(%rcx), %esi
	movq	16(%rcx), %rbx
	movl	28(%rcx), %r15d
	movq	%rax, -88(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -96(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%esi, %edx, %edx
	movslq	%edx, %r12
	leaq	15(%r12,%r12), %rax
	leaq	-1(%r12), %rdi
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r13
	cmpl	$15, %edx
	jbe	.L166
	leaq	-16(%r12), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L155:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rax, %rdx
	ja	.L155
	movq	%rdx, %rax
	salq	$5, %rdx
	salq	$4, %rax
	addq	%rsi, %rdx
	cmpq	%rax, %r12
	je	.L173
	xorl	%r9d, %r9d
	movw	%r9w, (%rdx)
	leaq	1(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L174
	xorl	%r8d, %r8d
	leaq	2(%rax), %r9
	movw	%r8w, 2(%rdx)
	cmpq	%r9, %rdi
	jb	.L175
	xorl	%ecx, %ecx
	leaq	3(%rax), %r9
	movw	%cx, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L176
	xorl	%r14d, %r14d
	leaq	4(%rax), %r9
	movw	%r14w, 6(%rdx)
	cmpq	%r9, %rdi
	jb	.L177
	xorl	%r11d, %r11d
	leaq	5(%rax), %r9
	movw	%r11w, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L178
	xorl	%r10d, %r10d
	leaq	6(%rax), %r9
	movw	%r10w, 10(%rdx)
	cmpq	%r9, %rdi
	jb	.L179
	xorl	%r9d, %r9d
	movw	%r9w, 12(%rdx)
	leaq	7(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L180
	xorl	%r8d, %r8d
	leaq	8(%rax), %r9
	movw	%r8w, 14(%rdx)
	cmpq	%r9, %rdi
	jb	.L181
	xorl	%ecx, %ecx
	leaq	9(%rax), %r9
	movw	%cx, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L182
	xorl	%r14d, %r14d
	leaq	10(%rax), %r9
	movw	%r14w, 18(%rdx)
	cmpq	%r9, %rdi
	jb	.L183
	xorl	%r11d, %r11d
	leaq	11(%rax), %r9
	movw	%r11w, 20(%rdx)
	cmpq	%r9, %rdi
	jb	.L184
	xorl	%r10d, %r10d
	leaq	12(%rax), %r9
	movw	%r10w, 22(%rdx)
	cmpq	%r9, %rdi
	jb	.L185
	xorl	%r9d, %r9d
	movw	%r9w, 24(%rdx)
	leaq	13(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L186
	xorl	%r8d, %r8d
	addq	$14, %rax
	movw	%r8w, 26(%rdx)
	cmpq	%rax, %rdi
	jb	.L187
	xorl	%ecx, %ecx
	movw	%cx, 28(%rdx)
	vzeroupper
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L166:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L154:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L154
	jmp	.L157
.L173:
	vzeroupper
	jmp	.L157
.L174:
	vzeroupper
	jmp	.L157
.L175:
	vzeroupper
	jmp	.L157
.L176:
	vzeroupper
	jmp	.L157
.L177:
	vzeroupper
	jmp	.L157
.L178:
	vzeroupper
	jmp	.L157
.L179:
	vzeroupper
	jmp	.L157
.L180:
	vzeroupper
	jmp	.L157
.L181:
	vzeroupper
	jmp	.L157
.L182:
	vzeroupper
	jmp	.L157
.L183:
	vzeroupper
	jmp	.L157
.L184:
	vzeroupper
	jmp	.L157
.L185:
	vzeroupper
	jmp	.L157
.L186:
	vzeroupper
	jmp	.L157
.L187:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L157:
	cmpq	$0, -88(%rbp)
	jne	.L158
	.p2align 4,,10
	.p2align 3
.L163:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L167
	leaq	-16(%r12), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %r8
	incq	%r8
	.p2align 4,,10
	.p2align 3
.L160:
	vmovdqu	(%rsi,%rax), %ymm1
	vpaddw	(%rbx,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%r8, %rdx
	jb	.L160
	movq	%r8, %rax
	salq	$5, %r8
	salq	$4, %rax
	leaq	(%rsi,%r8), %r13
	addq	%r8, %rbx
	cmpq	%rax, %r12
	jne	.L188
	vzeroupper
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L167:
	xorl	%eax, %eax
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L188:
	vzeroupper
.L159:
	movzwl	0(%r13), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	2(%r13), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	4(%r13), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	6(%r13), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	8(%r13), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	10(%r13), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	12(%r13), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	14(%r13), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	16(%r13), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	18(%r13), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	20(%r13), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	22(%r13), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	movzwl	24(%r13), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L161
	addq	$14, %rax
	movzwl	26(%r13), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L161
	movzwl	28(%r13), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L161:
	call	GOMP_atomic_end
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L158:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L162
.L165:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L163
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L164:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incw	(%rsi,%rax,2)
	cmpq	%r9, %rdx
	jne	.L164
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L162:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L172:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16981:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16981-.LLSDACSB16981
.LLSDACSB16981:
.LLSDACSE16981:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramItaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB16982:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %rsi
	movq	8(%rcx), %rbx
	movq	(%rcx), %r13
	call	_Z22manage_thread_affinityv
	subq	$512, %rsp
	movl	$64, %ecx
	xorl	%eax, %eax
	leaq	32(%rsp), %r12
	movq	%r12, %rdi
	rep stosq
	testq	%r13, %r13
	jne	.L190
	.p2align 4,,10
	.p2align 3
.L192:
	call	GOMP_atomic_start
	vmovdqu	(%rbx), %ymm1
	vpaddw	(%r12), %ymm1, %ymm0
	vmovdqu	32(%r12), %ymm2
	vmovdqu	64(%r12), %ymm3
	vmovdqu	%ymm0, (%rbx)
	vpaddw	32(%rbx), %ymm2, %ymm0
	vmovdqu	96(%rbx), %ymm4
	vmovdqu	128(%rbx), %ymm5
	vmovdqu	160(%rbx), %ymm1
	vmovdqu	%ymm0, 32(%rbx)
	vpaddw	64(%rbx), %ymm3, %ymm0
	vmovdqu	192(%rbx), %ymm2
	vmovdqu	224(%rbx), %ymm3
	vmovdqu	%ymm0, 64(%rbx)
	vpaddw	96(%r12), %ymm4, %ymm0
	vmovdqu	256(%rbx), %ymm4
	vmovdqu	%ymm0, 96(%rbx)
	vpaddw	128(%r12), %ymm5, %ymm0
	vmovdqu	288(%rbx), %ymm5
	vmovdqu	%ymm0, 128(%rbx)
	vpaddw	160(%r12), %ymm1, %ymm0
	vmovdqu	320(%rbx), %ymm1
	vmovdqu	%ymm0, 160(%rbx)
	vpaddw	192(%r12), %ymm2, %ymm0
	vmovdqu	%ymm0, 192(%rbx)
	vpaddw	224(%r12), %ymm3, %ymm0
	vmovdqu	%ymm0, 224(%rbx)
	vpaddw	256(%r12), %ymm4, %ymm0
	vmovdqu	%ymm0, 256(%rbx)
	vpaddw	288(%r12), %ymm5, %ymm0
	vmovdqu	%ymm0, 288(%rbx)
	vpaddw	320(%r12), %ymm1, %ymm0
	vmovdqu	%ymm0, 320(%rbx)
	vmovdqu	352(%rbx), %ymm2
	vpaddw	352(%r12), %ymm2, %ymm0
	vmovdqu	384(%rbx), %ymm3
	vmovdqu	416(%rbx), %ymm4
	vmovdqu	%ymm0, 352(%rbx)
	vmovdqu	448(%rbx), %ymm5
	vpaddw	384(%r12), %ymm3, %ymm0
	vmovdqu	%ymm0, 384(%rbx)
	vpaddw	416(%r12), %ymm4, %ymm0
	vmovdqu	%ymm0, 416(%rbx)
	vpaddw	448(%r12), %ymm5, %ymm0
	vmovdqu	%ymm0, 448(%rbx)
	vmovdqu	480(%r12), %ymm0
	vpaddw	480(%rbx), %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L196
.L190:
	call	omp_get_num_threads
	movl	%eax, %edi
	call	omp_get_thread_num
	movslq	%edi, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%r8
	movq	%rax, %r13
	cmpq	%rdx, %rcx
	jb	.L191
.L194:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L192
	leaq	(%rsi,%rdx), %rax
	addq	%r13, %rsi
	.p2align 4,,10
	.p2align 3
.L193:
	movzbl	(%rax), %edx
	incq	%rax
	incw	(%r12,%rdx,2)
	cmpq	%rsi, %rax
	jne	.L193
	jmp	.L192
.L191:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L196:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16982:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16982-.LLSDACSB16982
.LLSDACSB16982:
.LLSDACSE16982:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItsE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItsE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramItsE10accumulateIsEEvPT_y._omp_fn.0:
.LFB16983:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %rax
	movl	24(%rcx), %esi
	movq	8(%rcx), %rbx
	movl	28(%rcx), %r15d
	movq	%rax, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%esi, %edx, %edx
	movslq	%edx, %r12
	leaq	15(%r12,%r12), %rax
	leaq	-1(%r12), %rdi
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r13
	cmpl	$15, %edx
	jbe	.L210
	leaq	-16(%r12), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L199:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rax, %rdx
	ja	.L199
	movq	%rdx, %rax
	salq	$5, %rdx
	salq	$4, %rax
	addq	%rsi, %rdx
	cmpq	%rax, %r12
	je	.L217
	xorl	%r9d, %r9d
	movw	%r9w, (%rdx)
	leaq	1(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L218
	xorl	%r8d, %r8d
	leaq	2(%rax), %r9
	movw	%r8w, 2(%rdx)
	cmpq	%r9, %rdi
	jb	.L219
	xorl	%ecx, %ecx
	leaq	3(%rax), %r9
	movw	%cx, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L220
	xorl	%r14d, %r14d
	leaq	4(%rax), %r9
	movw	%r14w, 6(%rdx)
	cmpq	%r9, %rdi
	jb	.L221
	xorl	%r11d, %r11d
	leaq	5(%rax), %r9
	movw	%r11w, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L222
	xorl	%r10d, %r10d
	leaq	6(%rax), %r9
	movw	%r10w, 10(%rdx)
	cmpq	%r9, %rdi
	jb	.L223
	xorl	%r9d, %r9d
	movw	%r9w, 12(%rdx)
	leaq	7(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L224
	xorl	%r8d, %r8d
	leaq	8(%rax), %r9
	movw	%r8w, 14(%rdx)
	cmpq	%r9, %rdi
	jb	.L225
	xorl	%ecx, %ecx
	leaq	9(%rax), %r9
	movw	%cx, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L226
	xorl	%r14d, %r14d
	leaq	10(%rax), %r9
	movw	%r14w, 18(%rdx)
	cmpq	%r9, %rdi
	jb	.L227
	xorl	%r11d, %r11d
	leaq	11(%rax), %r9
	movw	%r11w, 20(%rdx)
	cmpq	%r9, %rdi
	jb	.L228
	xorl	%r10d, %r10d
	leaq	12(%rax), %r9
	movw	%r10w, 22(%rdx)
	cmpq	%r9, %rdi
	jb	.L229
	xorl	%r9d, %r9d
	movw	%r9w, 24(%rdx)
	leaq	13(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L230
	xorl	%r8d, %r8d
	addq	$14, %rax
	movw	%r8w, 26(%rdx)
	cmpq	%rax, %rdi
	jb	.L231
	xorl	%ecx, %ecx
	movw	%cx, 28(%rdx)
	vzeroupper
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L210:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L198:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L198
	jmp	.L201
.L217:
	vzeroupper
	jmp	.L201
.L218:
	vzeroupper
	jmp	.L201
.L219:
	vzeroupper
	jmp	.L201
.L220:
	vzeroupper
	jmp	.L201
.L221:
	vzeroupper
	jmp	.L201
.L222:
	vzeroupper
	jmp	.L201
.L223:
	vzeroupper
	jmp	.L201
.L224:
	vzeroupper
	jmp	.L201
.L225:
	vzeroupper
	jmp	.L201
.L226:
	vzeroupper
	jmp	.L201
.L227:
	vzeroupper
	jmp	.L201
.L228:
	vzeroupper
	jmp	.L201
.L229:
	vzeroupper
	jmp	.L201
.L230:
	vzeroupper
	jmp	.L201
.L231:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L201:
	cmpq	$0, -88(%rbp)
	jne	.L202
	.p2align 4,,10
	.p2align 3
.L207:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L211
	leaq	-16(%r12), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %r8
	incq	%r8
	.p2align 4,,10
	.p2align 3
.L204:
	vmovdqu	(%rsi,%rax), %ymm1
	vpaddw	(%rbx,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%r8, %rdx
	jb	.L204
	movq	%r8, %rax
	salq	$5, %r8
	salq	$4, %rax
	leaq	(%rsi,%r8), %r13
	addq	%r8, %rbx
	cmpq	%rax, %r12
	jne	.L232
	vzeroupper
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L211:
	xorl	%eax, %eax
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L232:
	vzeroupper
.L203:
	movzwl	0(%r13), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	2(%r13), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	4(%r13), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	6(%r13), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	8(%r13), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	10(%r13), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	12(%r13), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	14(%r13), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	16(%r13), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	18(%r13), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	20(%r13), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	22(%r13), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	movzwl	24(%r13), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L205
	addq	$14, %rax
	movzwl	26(%r13), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L205
	movzwl	28(%r13), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L205:
	call	GOMP_atomic_end
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L202:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L206
.L209:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L207
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L208:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incw	(%rsi,%rax,2)
	cmpq	%r9, %rdx
	jne	.L208
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L206:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L216:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16983:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16983-.LLSDACSB16983
.LLSDACSB16983:
.LLSDACSE16983:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhdE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhdE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramIhdE10accumulateIdEEvPT_y._omp_fn.0:
.LFB16984:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	32(%rcx), %rbx
	vmovsd	24(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r15d
	leaq	15(%r15), %rax
	movq	%r15, %r9
	leaq	-1(%r15), %r12
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdi
	cmpl	$31, %r15d
	jbe	.L255
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L235:
	movq	%rdx, %r10
	incq	%rdx
	salq	$5, %r10
	vmovdqu	%ymm0, (%rsi,%r10)
	cmpq	%rdx, %rax
	ja	.L235
	salq	$5, %rax
	cmpq	%rax, %r15
	je	.L268
	.p2align 4,,10
	.p2align 3
.L237:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L237
	vzeroupper
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L255:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L234:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L234
	jmp	.L238
.L268:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L238:
	cmpq	$0, -72(%rbp)
	jne	.L239
	.p2align 4,,10
	.p2align 3
.L245:
	call	GOMP_atomic_start
	cmpq	$30, %r12
	jbe	.L256
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L241:
	vmovdqu	(%rbx,%rdx), %ymm4
	vpaddb	(%rsi,%rdx), %ymm4, %ymm0
	incq	%r9
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r9
	jb	.L241
	salq	$5, %rax
	leaq	(%rsi,%rax), %rdi
	addq	%rax, %rbx
	cmpq	%rax, %r15
	jne	.L269
	vzeroupper
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L256:
	xorl	%eax, %eax
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L269:
	vzeroupper
.L240:
	subq	%rax, %rbx
	subq	%rax, %rdi
	.p2align 4,,10
	.p2align 3
.L243:
	movzbl	(%rdi,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L243
.L242:
	call	GOMP_atomic_end
	jmp	.L265
	.p2align 4,,10
	.p2align 3
.L239:
	movl	%r9d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r13
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r9d
	movslq	%eax, %r10
	movq	-72(%rbp), %rax
	divq	%r13
	cmpq	%rdx, %r10
	jb	.L244
.L254:
	imulq	%rax, %r10
	addq	%r10, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L245
	vmovsd	48(%r14), %xmm1
	movq	-88(%rbp), %rcx
	decl	%r9d
	movabsq	$-9223372036854775808, %r11
	vmovsd	.LC1(%rip), %xmm3
	addq	%rsi, %r9
	vmovapd	%xmm1, %xmm2
	vxorpd	.LC0(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,8), %rdx
	leaq	(%rcx,%rax,8), %r10
	.p2align 4,,10
	.p2align 3
.L253:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L266
	incb	(%r9)
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L266:
	vcomisd	%xmm0, %xmm2
	jbe	.L267
	incb	(%rsi)
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L267:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L251
	vcvttsd2siq	%xmm0, %rax
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L251:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L252:
	incb	(%rsi,%rax)
.L248:
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jne	.L253
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L244:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L265:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16984:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16984-.LLSDACSB16984
.LLSDACSB16984:
.LLSDACSE16984:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramIhfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB16985:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	24(%rcx), %rbx
	vmovss	32(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r15d
	leaq	15(%r15), %rax
	movq	%r15, %r9
	leaq	-1(%r15), %r12
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdi
	cmpl	$31, %r15d
	jbe	.L292
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L272:
	movq	%rdx, %r10
	incq	%rdx
	salq	$5, %r10
	vmovdqu	%ymm0, (%rsi,%r10)
	cmpq	%rdx, %rax
	ja	.L272
	salq	$5, %rax
	cmpq	%rax, %r15
	je	.L305
	.p2align 4,,10
	.p2align 3
.L274:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L274
	vzeroupper
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L292:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L271:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L271
	jmp	.L275
.L305:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L275:
	cmpq	$0, -72(%rbp)
	jne	.L276
	.p2align 4,,10
	.p2align 3
.L282:
	call	GOMP_atomic_start
	cmpq	$30, %r12
	jbe	.L293
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L278:
	vmovdqu	(%rbx,%rdx), %ymm4
	vpaddb	(%rsi,%rdx), %ymm4, %ymm0
	incq	%r9
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r9
	jb	.L278
	salq	$5, %rax
	leaq	(%rsi,%rax), %rdi
	addq	%rax, %rbx
	cmpq	%rax, %r15
	jne	.L306
	vzeroupper
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L293:
	xorl	%eax, %eax
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L306:
	vzeroupper
.L277:
	subq	%rax, %rbx
	subq	%rax, %rdi
	.p2align 4,,10
	.p2align 3
.L280:
	movzbl	(%rdi,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L280
.L279:
	call	GOMP_atomic_end
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L276:
	movl	%r9d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r13
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r9d
	movslq	%eax, %r10
	movq	-72(%rbp), %rax
	divq	%r13
	cmpq	%rdx, %r10
	jb	.L281
.L291:
	imulq	%rax, %r10
	addq	%r10, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L282
	vmovss	48(%r14), %xmm1
	movq	-88(%rbp), %rcx
	decl	%r9d
	movabsq	$-9223372036854775808, %r11
	vmovss	.LC3(%rip), %xmm3
	addq	%rsi, %r9
	vmovaps	%xmm1, %xmm2
	vxorps	.LC2(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,4), %rdx
	leaq	(%rcx,%rax,4), %r10
	.p2align 4,,10
	.p2align 3
.L290:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L303
	incb	(%r9)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L303:
	vcomiss	%xmm0, %xmm2
	jbe	.L304
	incb	(%rsi)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L304:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L288
	vcvttss2siq	%xmm0, %rax
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L288:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L289:
	incb	(%rsi,%rax)
.L285:
	addq	$4, %rdx
	cmpq	%rdx, %r10
	jne	.L290
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L281:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L302:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16985-.LLSDACSB16985
.LLSDACSB16985:
.LLSDACSE16985:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhhE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhhE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIhhE10accumulateIhEEvPT_y._omp_fn.0:
.LFB16986:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %r12
	movq	8(%rcx), %r13
	movq	(%rcx), %rbx
	call	_Z22manage_thread_affinityv
	subq	$256, %rsp
	movl	$32, %ecx
	xorl	%eax, %eax
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdi
	rep stosq
	testq	%r13, %r13
	jne	.L308
	.p2align 4,,10
	.p2align 3
.L310:
	call	GOMP_atomic_start
	vmovdqu	(%r12), %ymm1
	vpaddb	(%rsi), %ymm1, %ymm0
	vmovdqu	32(%rsi), %ymm2
	vmovdqu	64(%r12), %ymm3
	vmovdqu	%ymm0, (%r12)
	vpaddb	32(%r12), %ymm2, %ymm0
	vmovdqu	96(%r12), %ymm4
	vmovdqu	128(%r12), %ymm5
	vmovdqu	160(%r12), %ymm1
	vmovdqu	%ymm0, 32(%r12)
	vpaddb	64(%rsi), %ymm3, %ymm0
	vmovdqu	192(%r12), %ymm2
	vmovdqu	%ymm0, 64(%r12)
	vpaddb	96(%rsi), %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%r12)
	vpaddb	128(%rsi), %ymm5, %ymm0
	vmovdqu	%ymm0, 128(%r12)
	vpaddb	160(%rsi), %ymm1, %ymm0
	vmovdqu	%ymm0, 160(%r12)
	vpaddb	192(%rsi), %ymm2, %ymm0
	vmovdqu	%ymm0, 192(%r12)
	vmovdqu	224(%rsi), %ymm0
	vpaddb	224(%r12), %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%r12)
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L314
.L308:
	call	omp_get_num_threads
	movl	%eax, %edi
	call	omp_get_thread_num
	movslq	%edi, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%r8
	movq	%rax, %r13
	cmpq	%rdx, %rcx
	jb	.L309
.L312:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L310
	leaq	(%rbx,%rdx), %rax
	addq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L311:
	movzbl	(%rax), %edx
	incq	%rax
	incb	(%rsi,%rdx)
	cmpq	%rbx, %rax
	jne	.L311
	jmp	.L310
.L309:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L314:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16986:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16986-.LLSDACSB16986
.LLSDACSB16986:
.LLSDACSE16986:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhtE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhtE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIhtE10accumulateItEEvPT_y._omp_fn.0:
.LFB16987:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	8(%rcx), %rax
	movl	24(%rcx), %esi
	movq	16(%rcx), %rbx
	movl	28(%rcx), %r15d
	movq	%rax, -88(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -96(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%esi, %edx, %edx
	movslq	%edx, %r13
	leaq	15(%r13), %rax
	leaq	-1(%r13), %rdi
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r12
	cmpl	$31, %edx
	jbe	.L330
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L317:
	movq	%rdx, %r9
	incq	%rdx
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rdx, %rax
	ja	.L317
	salq	$5, %rax
	cmpq	%rax, %r13
	je	.L339
	.p2align 4,,10
	.p2align 3
.L319:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L319
	vzeroupper
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L330:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L316:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L316
	jmp	.L320
.L339:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L320:
	cmpq	$0, -88(%rbp)
	jne	.L321
	.p2align 4,,10
	.p2align 3
.L327:
	call	GOMP_atomic_start
	cmpq	$30, %rdi
	jbe	.L331
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L323:
	vmovdqu	(%rsi,%rdx), %ymm1
	vpaddb	(%rbx,%rdx), %ymm1, %ymm0
	incq	%r8
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r8
	jb	.L323
	salq	$5, %rax
	leaq	(%rsi,%rax), %r12
	addq	%rax, %rbx
	cmpq	%rax, %r13
	jne	.L340
	vzeroupper
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L331:
	xorl	%eax, %eax
	jmp	.L322
	.p2align 4,,10
	.p2align 3
.L340:
	vzeroupper
.L322:
	subq	%rax, %rbx
	subq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L325:
	movzbl	(%r12,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L325
.L324:
	call	GOMP_atomic_end
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L321:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L326
.L329:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L327
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L328:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incb	(%rsi,%rax)
	cmpq	%rdx, %r9
	jne	.L328
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L326:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L338:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16987:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16987-.LLSDACSB16987
.LLSDACSB16987:
.LLSDACSE16987:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramIhaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB16988:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %rbx
	movq	8(%rcx), %r12
	movq	(%rcx), %r13
	call	_Z22manage_thread_affinityv
	subq	$256, %rsp
	movl	$32, %ecx
	xorl	%eax, %eax
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdi
	rep stosq
	testq	%r13, %r13
	jne	.L342
	.p2align 4,,10
	.p2align 3
.L344:
	call	GOMP_atomic_start
	vmovdqu	(%r12), %ymm1
	vpaddb	(%rsi), %ymm1, %ymm0
	vmovdqu	32(%rsi), %ymm2
	vmovdqu	64(%r12), %ymm3
	vmovdqu	%ymm0, (%r12)
	vpaddb	32(%r12), %ymm2, %ymm0
	vmovdqu	96(%r12), %ymm4
	vmovdqu	128(%r12), %ymm5
	vmovdqu	160(%r12), %ymm1
	vmovdqu	%ymm0, 32(%r12)
	vpaddb	64(%rsi), %ymm3, %ymm0
	vmovdqu	192(%r12), %ymm2
	vmovdqu	%ymm0, 64(%r12)
	vpaddb	96(%rsi), %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%r12)
	vpaddb	128(%rsi), %ymm5, %ymm0
	vmovdqu	%ymm0, 128(%r12)
	vpaddb	160(%rsi), %ymm1, %ymm0
	vmovdqu	%ymm0, 160(%r12)
	vpaddb	192(%rsi), %ymm2, %ymm0
	vmovdqu	%ymm0, 192(%r12)
	vmovdqu	224(%rsi), %ymm0
	vpaddb	224(%r12), %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%r12)
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L348
.L342:
	call	omp_get_num_threads
	movl	%eax, %edi
	call	omp_get_thread_num
	movslq	%edi, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%r8
	movq	%rax, %r13
	cmpq	%rdx, %rcx
	jb	.L343
.L346:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L344
	leaq	(%rbx,%rdx), %rax
	addq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L345:
	movzbl	(%rax), %edx
	incq	%rax
	incb	(%rsi,%rdx)
	cmpq	%rbx, %rax
	jne	.L345
	jmp	.L344
.L343:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L348:
	leaq	-88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16988:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16988-.LLSDACSB16988
.LLSDACSB16988:
.LLSDACSE16988:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhsE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhsE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramIhsE10accumulateIsEEvPT_y._omp_fn.0:
.LFB16989:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	16(%rcx), %rax
	movl	24(%rcx), %esi
	movq	8(%rcx), %rbx
	movl	28(%rcx), %r15d
	movq	%rax, -96(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	$1, %edx
	shlx	%esi, %edx, %edx
	movslq	%edx, %r13
	leaq	15(%r13), %rax
	leaq	-1(%r13), %rdi
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r12
	cmpl	$31, %edx
	jbe	.L364
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L351:
	movq	%rdx, %r9
	incq	%rdx
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rdx, %rax
	ja	.L351
	salq	$5, %rax
	cmpq	%rax, %r13
	je	.L373
	.p2align 4,,10
	.p2align 3
.L353:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L353
	vzeroupper
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L364:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L350:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L350
	jmp	.L354
.L373:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L354:
	cmpq	$0, -88(%rbp)
	jne	.L355
	.p2align 4,,10
	.p2align 3
.L361:
	call	GOMP_atomic_start
	cmpq	$30, %rdi
	jbe	.L365
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L357:
	vmovdqu	(%rsi,%rdx), %ymm1
	vpaddb	(%rbx,%rdx), %ymm1, %ymm0
	incq	%r8
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r8
	jb	.L357
	salq	$5, %rax
	leaq	(%rsi,%rax), %r12
	addq	%rax, %rbx
	cmpq	%rax, %r13
	jne	.L374
	vzeroupper
	jmp	.L358
	.p2align 4,,10
	.p2align 3
.L365:
	xorl	%eax, %eax
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L374:
	vzeroupper
.L356:
	subq	%rax, %rbx
	subq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L359:
	movzbl	(%r12,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L359
.L358:
	call	GOMP_atomic_end
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L355:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L360
.L363:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L361
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L362:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incb	(%rsi,%rax)
	cmpq	%rdx, %r9
	jne	.L362
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L360:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L363
	.p2align 4,,10
	.p2align 3
.L372:
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16989:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16989-.LLSDACSB16989
.LLSDACSB16989:
.LLSDACSE16989:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIydE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIydE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramIydE10accumulateIdEEvPT_y._omp_fn.0:
.LFB16966:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	32(%rcx), %rsi
	vmovsd	24(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r15d
	leaq	15(,%r15,8), %rax
	movq	%r15, %r10
	leaq	-1(%r15), %r13
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$6, %r15d
	jbe	.L395
	leaq	-4(%r15), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L377:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rbx,%rdx)
	cmpq	%rcx, %rax
	ja	.L377
	leaq	0(,%rax,4), %rdx
	salq	$5, %rax
	addq	%rbx, %rax
	cmpq	%rdx, %r15
	je	.L406
	leaq	1(%rdx), %rcx
	movq	$0, (%rax)
	cmpq	%rcx, %r13
	jb	.L407
	addq	$2, %rdx
	movq	$0, 8(%rax)
	cmpq	%rdx, %r13
	jb	.L408
	movq	$0, 16(%rax)
	vzeroupper
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L395:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L376:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r13
	jnb	.L376
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L406:
	vzeroupper
	jmp	.L379
.L407:
	vzeroupper
	jmp	.L379
.L408:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L379:
	cmpq	$0, -72(%rbp)
	jne	.L380
	.p2align 4,,10
	.p2align 3
.L385:
	call	GOMP_atomic_start
	cmpq	$2, %r13
	jbe	.L396
	leaq	-4(%r15), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L382:
	vmovdqu	(%rsi,%rax), %ymm4
	vpaddq	(%rbx,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L382
	leaq	0(,%rcx,4), %rax
	salq	$5, %rcx
	leaq	(%rbx,%rcx), %rdi
	addq	%rcx, %rsi
	cmpq	%rax, %r15
	jne	.L409
	vzeroupper
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L396:
	xorl	%eax, %eax
	jmp	.L381
	.p2align 4,,10
	.p2align 3
.L409:
	vzeroupper
.L381:
	movq	(%rdi), %rdx
	addq	%rdx, (%rsi)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %r13
	jb	.L383
	addq	$2, %rax
	movq	8(%rdi), %rdx
	addq	%rdx, 8(%rsi)
	cmpq	%rax, %r13
	jb	.L383
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L383:
	call	GOMP_atomic_end
	jmp	.L403
	.p2align 4,,10
	.p2align 3
.L380:
	movl	%r10d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r12
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r10d
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	divq	%r12
	cmpq	%rdx, %rcx
	jb	.L384
.L394:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L385
	leal	-1(%r10), %ecx
	vmovsd	48(%r14), %xmm1
	vmovsd	.LC1(%rip), %xmm3
	movabsq	$-9223372036854775808, %r11
	leaq	(%rbx,%rcx,8), %r10
	movq	-88(%rbp), %rcx
	vmovapd	%xmm1, %xmm2
	vxorpd	.LC0(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,8), %rdx
	leaq	(%rcx,%rax,8), %rcx
	.p2align 4,,10
	.p2align 3
.L393:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L404
	incq	(%r10)
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L404:
	vcomisd	%xmm0, %xmm2
	jbe	.L405
	incq	(%rbx)
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L405:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L391
	vcvttsd2siq	%xmm0, %rax
	jmp	.L392
	.p2align 4,,10
	.p2align 3
.L391:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L392:
	incq	(%rbx,%rax,8)
.L388:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L393
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L384:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L403:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16966:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16966-.LLSDACSB16966
.LLSDACSB16966:
.LLSDACSE16966:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIyfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramIyfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB16967:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	24(%rcx), %rsi
	vmovss	32(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r15d
	leaq	15(,%r15,8), %rax
	movq	%r15, %r10
	leaq	-1(%r15), %r13
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$6, %r15d
	jbe	.L430
	leaq	-4(%r15), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L412:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rbx,%rdx)
	cmpq	%rcx, %rax
	ja	.L412
	leaq	0(,%rax,4), %rdx
	salq	$5, %rax
	addq	%rbx, %rax
	cmpq	%rdx, %r15
	je	.L441
	leaq	1(%rdx), %rcx
	movq	$0, (%rax)
	cmpq	%rcx, %r13
	jb	.L442
	addq	$2, %rdx
	movq	$0, 8(%rax)
	cmpq	%rdx, %r13
	jb	.L443
	movq	$0, 16(%rax)
	vzeroupper
	jmp	.L414
	.p2align 4,,10
	.p2align 3
.L430:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L411:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r13
	jnb	.L411
	jmp	.L414
	.p2align 4,,10
	.p2align 3
.L441:
	vzeroupper
	jmp	.L414
.L442:
	vzeroupper
	jmp	.L414
.L443:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L414:
	cmpq	$0, -72(%rbp)
	jne	.L415
	.p2align 4,,10
	.p2align 3
.L420:
	call	GOMP_atomic_start
	cmpq	$2, %r13
	jbe	.L431
	leaq	-4(%r15), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L417:
	vmovdqu	(%rsi,%rax), %ymm4
	vpaddq	(%rbx,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L417
	leaq	0(,%rcx,4), %rax
	salq	$5, %rcx
	leaq	(%rbx,%rcx), %rdi
	addq	%rcx, %rsi
	cmpq	%rax, %r15
	jne	.L444
	vzeroupper
	jmp	.L418
	.p2align 4,,10
	.p2align 3
.L431:
	xorl	%eax, %eax
	jmp	.L416
	.p2align 4,,10
	.p2align 3
.L444:
	vzeroupper
.L416:
	movq	(%rdi), %rdx
	addq	%rdx, (%rsi)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %r13
	jb	.L418
	addq	$2, %rax
	movq	8(%rdi), %rdx
	addq	%rdx, 8(%rsi)
	cmpq	%rax, %r13
	jb	.L418
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L418:
	call	GOMP_atomic_end
	jmp	.L438
	.p2align 4,,10
	.p2align 3
.L415:
	movl	%r10d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r12
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r10d
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	divq	%r12
	cmpq	%rdx, %rcx
	jb	.L419
.L429:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L420
	leal	-1(%r10), %ecx
	vmovss	48(%r14), %xmm1
	vmovss	.LC3(%rip), %xmm3
	movabsq	$-9223372036854775808, %r11
	leaq	(%rbx,%rcx,8), %r10
	movq	-88(%rbp), %rcx
	vmovaps	%xmm1, %xmm2
	vxorps	.LC2(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,4), %rdx
	leaq	(%rcx,%rax,4), %rcx
	.p2align 4,,10
	.p2align 3
.L428:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L439
	incq	(%r10)
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L439:
	vcomiss	%xmm0, %xmm2
	jbe	.L440
	incq	(%rbx)
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L440:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L426
	vcvttss2siq	%xmm0, %rax
	jmp	.L427
	.p2align 4,,10
	.p2align 3
.L426:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L427:
	incq	(%rbx,%rax,8)
.L423:
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L428
	jmp	.L420
	.p2align 4,,10
	.p2align 3
.L419:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L429
	.p2align 4,,10
	.p2align 3
.L438:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16967:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16967-.LLSDACSB16967
.LLSDACSB16967:
.LLSDACSE16967:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjdE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjdE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramIjdE10accumulateIdEEvPT_y._omp_fn.0:
.LFB16972:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	32(%rcx), %rbx
	vmovsd	24(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r13d
	leaq	15(,%r13,4), %rax
	movq	%r13, %r10
	leaq	-1(%r13), %rdi
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r12
	cmpl	$7, %r13d
	jbe	.L465
	leaq	-8(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L447:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L447
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L476
	leaq	1(%rdx), %rcx
	movl	$0, (%rax)
	cmpq	%rcx, %rdi
	jb	.L477
	leaq	2(%rdx), %rcx
	movl	$0, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L478
	leaq	3(%rdx), %rcx
	movl	$0, 8(%rax)
	cmpq	%rcx, %rdi
	jb	.L479
	leaq	4(%rdx), %rcx
	movl	$0, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L480
	leaq	5(%rdx), %rcx
	movl	$0, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L481
	addq	$6, %rdx
	movl	$0, 20(%rax)
	cmpq	%rdx, %rdi
	jb	.L482
	movl	$0, 24(%rax)
	vzeroupper
	jmp	.L449
	.p2align 4,,10
	.p2align 3
.L465:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L446:
	movl	$0, (%rsi,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L446
	jmp	.L449
	.p2align 4,,10
	.p2align 3
.L476:
	vzeroupper
	jmp	.L449
.L477:
	vzeroupper
	jmp	.L449
.L478:
	vzeroupper
	jmp	.L449
.L479:
	vzeroupper
	jmp	.L449
.L480:
	vzeroupper
	jmp	.L449
.L481:
	vzeroupper
	jmp	.L449
.L482:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L449:
	cmpq	$0, -72(%rbp)
	jne	.L450
	.p2align 4,,10
	.p2align 3
.L455:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L466
	leaq	-8(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L452:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddd	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L452
	leaq	0(,%rcx,8), %rax
	salq	$5, %rcx
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L483
	vzeroupper
	jmp	.L453
	.p2align 4,,10
	.p2align 3
.L466:
	xorl	%eax, %eax
	jmp	.L451
	.p2align 4,,10
	.p2align 3
.L483:
	vzeroupper
.L451:
	movl	(%r12), %edx
	addl	%edx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L453
	movl	4(%r12), %edx
	addl	%edx, 4(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L453
	movl	8(%r12), %edx
	addl	%edx, 8(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L453
	movl	12(%r12), %edx
	addl	%edx, 12(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L453
	movl	16(%r12), %edx
	addl	%edx, 16(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L453
	addq	$6, %rax
	movl	20(%r12), %edx
	addl	%edx, 20(%rbx)
	cmpq	%rax, %rdi
	jb	.L453
	movl	24(%r12), %eax
	addl	%eax, 24(%rbx)
.L453:
	call	GOMP_atomic_end
	jmp	.L473
	.p2align 4,,10
	.p2align 3
.L450:
	movl	%r10d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r15
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r10d
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	divq	%r15
	cmpq	%rdx, %rcx
	jb	.L454
.L464:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L455
	leal	-1(%r10), %ecx
	vmovsd	48(%r14), %xmm1
	vmovsd	.LC1(%rip), %xmm3
	movabsq	$-9223372036854775808, %r11
	leaq	(%rsi,%rcx,4), %r10
	movq	-88(%rbp), %rcx
	vmovapd	%xmm1, %xmm2
	vxorpd	.LC0(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,8), %rdx
	leaq	(%rcx,%rax,8), %rcx
	.p2align 4,,10
	.p2align 3
.L463:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L474
	incl	(%r10)
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L474:
	vcomisd	%xmm0, %xmm2
	jbe	.L475
	incl	(%rsi)
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L475:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L461
	vcvttsd2siq	%xmm0, %rax
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L461:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L462:
	incl	(%rsi,%rax,4)
.L458:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L463
	jmp	.L455
	.p2align 4,,10
	.p2align 3
.L454:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L464
	.p2align 4,,10
	.p2align 3
.L473:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16972:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16972-.LLSDACSB16972
.LLSDACSB16972:
.LLSDACSE16972:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramIjfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB16973:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	24(%rcx), %rbx
	vmovss	32(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r13d
	leaq	15(,%r13,4), %rax
	movq	%r13, %r10
	leaq	-1(%r13), %rdi
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r12
	cmpl	$7, %r13d
	jbe	.L504
	leaq	-8(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L486:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L486
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L515
	leaq	1(%rdx), %rcx
	movl	$0, (%rax)
	cmpq	%rcx, %rdi
	jb	.L516
	leaq	2(%rdx), %rcx
	movl	$0, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L517
	leaq	3(%rdx), %rcx
	movl	$0, 8(%rax)
	cmpq	%rcx, %rdi
	jb	.L518
	leaq	4(%rdx), %rcx
	movl	$0, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L519
	leaq	5(%rdx), %rcx
	movl	$0, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L520
	addq	$6, %rdx
	movl	$0, 20(%rax)
	cmpq	%rdx, %rdi
	jb	.L521
	movl	$0, 24(%rax)
	vzeroupper
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L504:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L485:
	movl	$0, (%rsi,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L485
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L515:
	vzeroupper
	jmp	.L488
.L516:
	vzeroupper
	jmp	.L488
.L517:
	vzeroupper
	jmp	.L488
.L518:
	vzeroupper
	jmp	.L488
.L519:
	vzeroupper
	jmp	.L488
.L520:
	vzeroupper
	jmp	.L488
.L521:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L488:
	cmpq	$0, -72(%rbp)
	jne	.L489
	.p2align 4,,10
	.p2align 3
.L494:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L505
	leaq	-8(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L491:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddd	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L491
	leaq	0(,%rcx,8), %rax
	salq	$5, %rcx
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L522
	vzeroupper
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L505:
	xorl	%eax, %eax
	jmp	.L490
	.p2align 4,,10
	.p2align 3
.L522:
	vzeroupper
.L490:
	movl	(%r12), %edx
	addl	%edx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L492
	movl	4(%r12), %edx
	addl	%edx, 4(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L492
	movl	8(%r12), %edx
	addl	%edx, 8(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L492
	movl	12(%r12), %edx
	addl	%edx, 12(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L492
	movl	16(%r12), %edx
	addl	%edx, 16(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L492
	addq	$6, %rax
	movl	20(%r12), %edx
	addl	%edx, 20(%rbx)
	cmpq	%rax, %rdi
	jb	.L492
	movl	24(%r12), %eax
	addl	%eax, 24(%rbx)
.L492:
	call	GOMP_atomic_end
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L489:
	movl	%r10d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r15
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r10d
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	divq	%r15
	cmpq	%rdx, %rcx
	jb	.L493
.L503:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L494
	leal	-1(%r10), %ecx
	vmovss	48(%r14), %xmm1
	vmovss	.LC3(%rip), %xmm3
	movabsq	$-9223372036854775808, %r11
	leaq	(%rsi,%rcx,4), %r10
	movq	-88(%rbp), %rcx
	vmovaps	%xmm1, %xmm2
	vxorps	.LC2(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,4), %rdx
	leaq	(%rcx,%rax,4), %rcx
	.p2align 4,,10
	.p2align 3
.L502:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L513
	incl	(%r10)
	jmp	.L497
	.p2align 4,,10
	.p2align 3
.L513:
	vcomiss	%xmm0, %xmm2
	jbe	.L514
	incl	(%rsi)
	jmp	.L497
	.p2align 4,,10
	.p2align 3
.L514:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L500
	vcvttss2siq	%xmm0, %rax
	jmp	.L501
	.p2align 4,,10
	.p2align 3
.L500:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L501:
	incl	(%rsi,%rax,4)
.L497:
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L502
	jmp	.L494
	.p2align 4,,10
	.p2align 3
.L493:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L503
	.p2align 4,,10
	.p2align 3
.L512:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16973:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16973-.LLSDACSB16973
.LLSDACSB16973:
.LLSDACSE16973:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItdE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItdE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramItdE10accumulateIdEEvPT_y._omp_fn.0:
.LFB16978:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	32(%rcx), %rbx
	vmovsd	24(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r13d
	leaq	15(%r13,%r13), %rax
	movq	%r13, %r10
	leaq	-1(%r13), %rdi
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r12
	cmpl	$15, %r13d
	jbe	.L543
	leaq	-16(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L525:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L525
	movq	%rax, %rdx
	salq	$5, %rax
	salq	$4, %rdx
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L554
	xorl	%r15d, %r15d
	leaq	1(%rdx), %rcx
	movw	%r15w, (%rax)
	cmpq	%rcx, %rdi
	jb	.L555
	xorl	%r11d, %r11d
	leaq	2(%rdx), %rcx
	movw	%r11w, 2(%rax)
	cmpq	%rcx, %rdi
	jb	.L556
	xorl	%r9d, %r9d
	leaq	3(%rdx), %rcx
	movw	%r9w, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L557
	xorl	%r8d, %r8d
	leaq	4(%rdx), %rcx
	movw	%r8w, 6(%rax)
	cmpq	%rcx, %rdi
	jb	.L558
	xorl	%ecx, %ecx
	movw	%cx, 8(%rax)
	leaq	5(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L559
	xorl	%r15d, %r15d
	leaq	6(%rdx), %rcx
	movw	%r15w, 10(%rax)
	cmpq	%rcx, %rdi
	jb	.L560
	xorl	%r11d, %r11d
	leaq	7(%rdx), %rcx
	movw	%r11w, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L561
	xorl	%r9d, %r9d
	leaq	8(%rdx), %rcx
	movw	%r9w, 14(%rax)
	cmpq	%rcx, %rdi
	jb	.L562
	xorl	%r8d, %r8d
	leaq	9(%rdx), %rcx
	movw	%r8w, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L563
	xorl	%ecx, %ecx
	movw	%cx, 18(%rax)
	leaq	10(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L564
	xorl	%r15d, %r15d
	leaq	11(%rdx), %rcx
	movw	%r15w, 20(%rax)
	cmpq	%rcx, %rdi
	jb	.L565
	xorl	%r11d, %r11d
	leaq	12(%rdx), %rcx
	movw	%r11w, 22(%rax)
	cmpq	%rcx, %rdi
	jb	.L566
	xorl	%r9d, %r9d
	leaq	13(%rdx), %rcx
	movw	%r9w, 24(%rax)
	cmpq	%rcx, %rdi
	jb	.L567
	xorl	%r8d, %r8d
	addq	$14, %rdx
	movw	%r8w, 26(%rax)
	cmpq	%rdx, %rdi
	jb	.L568
	xorl	%ecx, %ecx
	movw	%cx, 28(%rax)
	vzeroupper
	jmp	.L527
	.p2align 4,,10
	.p2align 3
.L543:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L524:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L524
	jmp	.L527
.L554:
	vzeroupper
	jmp	.L527
.L555:
	vzeroupper
	jmp	.L527
.L556:
	vzeroupper
	jmp	.L527
.L557:
	vzeroupper
	jmp	.L527
.L558:
	vzeroupper
	jmp	.L527
.L559:
	vzeroupper
	jmp	.L527
.L560:
	vzeroupper
	jmp	.L527
.L561:
	vzeroupper
	jmp	.L527
.L562:
	vzeroupper
	jmp	.L527
.L563:
	vzeroupper
	jmp	.L527
.L564:
	vzeroupper
	jmp	.L527
.L565:
	vzeroupper
	jmp	.L527
.L566:
	vzeroupper
	jmp	.L527
.L567:
	vzeroupper
	jmp	.L527
.L568:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L527:
	cmpq	$0, -72(%rbp)
	jne	.L528
	.p2align 4,,10
	.p2align 3
.L533:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L544
	leaq	-16(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L530:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddw	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L530
	movq	%rcx, %rax
	salq	$5, %rcx
	salq	$4, %rax
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L569
	vzeroupper
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L544:
	xorl	%eax, %eax
	jmp	.L529
	.p2align 4,,10
	.p2align 3
.L569:
	vzeroupper
.L529:
	movzwl	(%r12), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	2(%r12), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	4(%r12), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	6(%r12), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	8(%r12), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	10(%r12), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	12(%r12), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	14(%r12), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	16(%r12), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	18(%r12), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	20(%r12), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	22(%r12), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	movzwl	24(%r12), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L531
	addq	$14, %rax
	movzwl	26(%r12), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L531
	movzwl	28(%r12), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L531:
	call	GOMP_atomic_end
	jmp	.L551
	.p2align 4,,10
	.p2align 3
.L528:
	movl	%r10d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r15
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r10d
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	divq	%r15
	cmpq	%rdx, %rcx
	jb	.L532
.L542:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L533
	leal	-1(%r10), %ecx
	vmovsd	48(%r14), %xmm1
	vmovsd	.LC1(%rip), %xmm3
	movabsq	$-9223372036854775808, %r11
	leaq	(%rsi,%rcx,2), %r10
	movq	-88(%rbp), %rcx
	vmovapd	%xmm1, %xmm2
	vxorpd	.LC0(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,8), %rdx
	leaq	(%rcx,%rax,8), %rcx
	.p2align 4,,10
	.p2align 3
.L541:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L552
	incw	(%r10)
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L552:
	vcomisd	%xmm0, %xmm2
	jbe	.L553
	incw	(%rsi)
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L553:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L539
	vcvttsd2siq	%xmm0, %rax
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L539:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L540:
	incw	(%rsi,%rax,2)
.L536:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L541
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L532:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L542
	.p2align 4,,10
	.p2align 3
.L551:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16978:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16978-.LLSDACSB16978
.LLSDACSB16978:
.LLSDACSE16978:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramItfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB16979:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	vmovaps	%xmm6, -64(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	16(%rcx), %r14
	movq	24(%rcx), %rbx
	vmovss	32(%rcx), %xmm6
	movq	%rax, -72(%rbp)
	movq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	call	_Z22manage_thread_affinityv
	movl	(%r14), %r13d
	leaq	15(%r13,%r13), %rax
	movq	%r13, %r10
	leaq	-1(%r13), %rdi
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rsi
	movq	%rsi, %r12
	cmpl	$15, %r13d
	jbe	.L590
	leaq	-16(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L572:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L572
	movq	%rax, %rdx
	salq	$5, %rax
	salq	$4, %rdx
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L601
	xorl	%r15d, %r15d
	leaq	1(%rdx), %rcx
	movw	%r15w, (%rax)
	cmpq	%rcx, %rdi
	jb	.L602
	xorl	%r11d, %r11d
	leaq	2(%rdx), %rcx
	movw	%r11w, 2(%rax)
	cmpq	%rcx, %rdi
	jb	.L603
	xorl	%r9d, %r9d
	leaq	3(%rdx), %rcx
	movw	%r9w, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L604
	xorl	%r8d, %r8d
	leaq	4(%rdx), %rcx
	movw	%r8w, 6(%rax)
	cmpq	%rcx, %rdi
	jb	.L605
	xorl	%ecx, %ecx
	movw	%cx, 8(%rax)
	leaq	5(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L606
	xorl	%r15d, %r15d
	leaq	6(%rdx), %rcx
	movw	%r15w, 10(%rax)
	cmpq	%rcx, %rdi
	jb	.L607
	xorl	%r11d, %r11d
	leaq	7(%rdx), %rcx
	movw	%r11w, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L608
	xorl	%r9d, %r9d
	leaq	8(%rdx), %rcx
	movw	%r9w, 14(%rax)
	cmpq	%rcx, %rdi
	jb	.L609
	xorl	%r8d, %r8d
	leaq	9(%rdx), %rcx
	movw	%r8w, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L610
	xorl	%ecx, %ecx
	movw	%cx, 18(%rax)
	leaq	10(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L611
	xorl	%r15d, %r15d
	leaq	11(%rdx), %rcx
	movw	%r15w, 20(%rax)
	cmpq	%rcx, %rdi
	jb	.L612
	xorl	%r11d, %r11d
	leaq	12(%rdx), %rcx
	movw	%r11w, 22(%rax)
	cmpq	%rcx, %rdi
	jb	.L613
	xorl	%r9d, %r9d
	leaq	13(%rdx), %rcx
	movw	%r9w, 24(%rax)
	cmpq	%rcx, %rdi
	jb	.L614
	xorl	%r8d, %r8d
	addq	$14, %rdx
	movw	%r8w, 26(%rax)
	cmpq	%rdx, %rdi
	jb	.L615
	xorl	%ecx, %ecx
	movw	%cx, 28(%rax)
	vzeroupper
	jmp	.L574
	.p2align 4,,10
	.p2align 3
.L590:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L571:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L571
	jmp	.L574
.L601:
	vzeroupper
	jmp	.L574
.L602:
	vzeroupper
	jmp	.L574
.L603:
	vzeroupper
	jmp	.L574
.L604:
	vzeroupper
	jmp	.L574
.L605:
	vzeroupper
	jmp	.L574
.L606:
	vzeroupper
	jmp	.L574
.L607:
	vzeroupper
	jmp	.L574
.L608:
	vzeroupper
	jmp	.L574
.L609:
	vzeroupper
	jmp	.L574
.L610:
	vzeroupper
	jmp	.L574
.L611:
	vzeroupper
	jmp	.L574
.L612:
	vzeroupper
	jmp	.L574
.L613:
	vzeroupper
	jmp	.L574
.L614:
	vzeroupper
	jmp	.L574
.L615:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L574:
	cmpq	$0, -72(%rbp)
	jne	.L575
	.p2align 4,,10
	.p2align 3
.L580:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L591
	leaq	-16(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L577:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddw	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L577
	movq	%rcx, %rax
	salq	$5, %rcx
	salq	$4, %rax
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L616
	vzeroupper
	jmp	.L578
	.p2align 4,,10
	.p2align 3
.L591:
	xorl	%eax, %eax
	jmp	.L576
	.p2align 4,,10
	.p2align 3
.L616:
	vzeroupper
.L576:
	movzwl	(%r12), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	2(%r12), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	4(%r12), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	6(%r12), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	8(%r12), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	10(%r12), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	12(%r12), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	14(%r12), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	16(%r12), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	18(%r12), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	20(%r12), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	22(%r12), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	movzwl	24(%r12), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L578
	addq	$14, %rax
	movzwl	26(%r12), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L578
	movzwl	28(%r12), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L578:
	call	GOMP_atomic_end
	jmp	.L598
	.p2align 4,,10
	.p2align 3
.L575:
	movl	%r10d, -76(%rbp)
	call	omp_get_num_threads
	movslq	%eax, %r15
	call	omp_get_thread_num
	xorl	%edx, %edx
	movl	-76(%rbp), %r10d
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	divq	%r15
	cmpq	%rdx, %rcx
	jb	.L579
.L589:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L580
	leal	-1(%r10), %ecx
	vmovss	48(%r14), %xmm1
	vmovss	.LC3(%rip), %xmm3
	movabsq	$-9223372036854775808, %r11
	leaq	(%rsi,%rcx,2), %r10
	movq	-88(%rbp), %rcx
	vmovaps	%xmm1, %xmm2
	vxorps	.LC2(%rip), %xmm2, %xmm2
	leaq	(%rcx,%rdx,4), %rdx
	leaq	(%rcx,%rax,4), %rcx
	.p2align 4,,10
	.p2align 3
.L588:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L599
	incw	(%r10)
	jmp	.L583
	.p2align 4,,10
	.p2align 3
.L599:
	vcomiss	%xmm0, %xmm2
	jbe	.L600
	incw	(%rsi)
	jmp	.L583
	.p2align 4,,10
	.p2align 3
.L600:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L586
	vcvttss2siq	%xmm0, %rax
	jmp	.L587
	.p2align 4,,10
	.p2align 3
.L586:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L587:
	incw	(%rsi,%rax,2)
.L583:
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L588
	jmp	.L580
	.p2align 4,,10
	.p2align 3
.L579:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L589
	.p2align 4,,10
	.p2align 3
.L598:
	vmovaps	-64(%rbp), %xmm6
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16979-.LLSDACSB16979
.LLSDACSB16979:
.LLSDACSE16979:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIydE10accumulateIdEEvPT_y
	.def	_ZN9HistogramIydE10accumulateIdEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIydE10accumulateIdEEvPT_y
_ZN9HistogramIydE10accumulateIdEEvPT_y:
.LFB12812:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	xorl	%r9d, %r9d
	vmovsd	48(%rcx), %xmm0
	movl	(%rcx), %eax
	vaddsd	%xmm0, %xmm0, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	24(%rcx), %rax
	movq	%rcx, 48(%rsp)
	leaq	_ZN9HistogramIydE10accumulateIdEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	vdivsd	%xmm0, %xmm1, %xmm0
	movq	%rax, 64(%rsp)
	vmovsd	%xmm0, 56(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIyfE10accumulateIfEEvPT_y
	.def	_ZN9HistogramIyfE10accumulateIfEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyfE10accumulateIfEEvPT_y
_ZN9HistogramIyfE10accumulateIfEEvPT_y:
.LFB12813:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%r9d, %r9d
	movl	(%rcx), %eax
	vcvtss2sd	48(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	movq	%rcx, 48(%rsp)
	vcvtsi2sdq	%rax, %xmm2, %xmm0
	movq	24(%rcx), %rax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramIyfE10accumulateIfEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 32(%rsp)
	xorl	%r8d, %r8d
	leaq	32(%rsp), %rdx
	movq	%rax, 56(%rsp)
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 64(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIyhE10accumulateIhEEvPT_y
	.def	_ZN9HistogramIyhE10accumulateIhEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyhE10accumulateIhEEvPT_y
_ZN9HistogramIyhE10accumulateIhEEvPT_y:
.LFB12814:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramIyhE10accumulateIhEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 48(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIytE10accumulateItEEvPT_y
	.def	_ZN9HistogramIytE10accumulateItEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIytE10accumulateItEEvPT_y
_ZN9HistogramIytE10accumulateItEEvPT_y:
.LFB12815:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 48(%rsp)
	movl	$16, %eax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramIytE10accumulateItEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r8d, %r8d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r9, 32(%rsp)
	xorl	%r9d, %r9d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIyaE10accumulateIaEEvPT_y
	.def	_ZN9HistogramIyaE10accumulateIaEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyaE10accumulateIaEEvPT_y
_ZN9HistogramIyaE10accumulateIaEEvPT_y:
.LFB12816:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramIyaE10accumulateIaEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 48(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rax, 40(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIysE10accumulateIsEEvPT_y
	.def	_ZN9HistogramIysE10accumulateIsEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIysE10accumulateIsEEvPT_y
_ZN9HistogramIysE10accumulateIsEEvPT_y:
.LFB12817:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 40(%rsp)
	movl	$16, %eax
	movq	%r9, 48(%rsp)
	leaq	_ZN9HistogramIysE10accumulateIsEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r9d, %r9d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIjdE10accumulateIdEEvPT_y
	.def	_ZN9HistogramIjdE10accumulateIdEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjdE10accumulateIdEEvPT_y
_ZN9HistogramIjdE10accumulateIdEEvPT_y:
.LFB12818:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	xorl	%r9d, %r9d
	vmovsd	48(%rcx), %xmm0
	movl	(%rcx), %eax
	vaddsd	%xmm0, %xmm0, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	24(%rcx), %rax
	movq	%rcx, 48(%rsp)
	leaq	_ZN9HistogramIjdE10accumulateIdEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	vdivsd	%xmm0, %xmm1, %xmm0
	movq	%rax, 64(%rsp)
	vmovsd	%xmm0, 56(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIjfE10accumulateIfEEvPT_y
	.def	_ZN9HistogramIjfE10accumulateIfEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjfE10accumulateIfEEvPT_y
_ZN9HistogramIjfE10accumulateIfEEvPT_y:
.LFB12819:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%r9d, %r9d
	movl	(%rcx), %eax
	vcvtss2sd	48(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	movq	%rcx, 48(%rsp)
	vcvtsi2sdq	%rax, %xmm2, %xmm0
	movq	24(%rcx), %rax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramIjfE10accumulateIfEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 32(%rsp)
	xorl	%r8d, %r8d
	leaq	32(%rsp), %rdx
	movq	%rax, 56(%rsp)
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 64(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIjhE10accumulateIhEEvPT_y
	.def	_ZN9HistogramIjhE10accumulateIhEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjhE10accumulateIhEEvPT_y
_ZN9HistogramIjhE10accumulateIhEEvPT_y:
.LFB12820:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramIjhE10accumulateIhEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 48(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIjtE10accumulateItEEvPT_y
	.def	_ZN9HistogramIjtE10accumulateItEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjtE10accumulateItEEvPT_y
_ZN9HistogramIjtE10accumulateItEEvPT_y:
.LFB12821:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 48(%rsp)
	movl	$16, %eax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramIjtE10accumulateItEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r8d, %r8d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r9, 32(%rsp)
	xorl	%r9d, %r9d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIjaE10accumulateIaEEvPT_y
	.def	_ZN9HistogramIjaE10accumulateIaEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjaE10accumulateIaEEvPT_y
_ZN9HistogramIjaE10accumulateIaEEvPT_y:
.LFB12822:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramIjaE10accumulateIaEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 48(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rax, 40(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIjsE10accumulateIsEEvPT_y
	.def	_ZN9HistogramIjsE10accumulateIsEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjsE10accumulateIsEEvPT_y
_ZN9HistogramIjsE10accumulateIsEEvPT_y:
.LFB12823:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 40(%rsp)
	movl	$16, %eax
	movq	%r9, 48(%rsp)
	leaq	_ZN9HistogramIjsE10accumulateIsEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r9d, %r9d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramItdE10accumulateIdEEvPT_y
	.def	_ZN9HistogramItdE10accumulateIdEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItdE10accumulateIdEEvPT_y
_ZN9HistogramItdE10accumulateIdEEvPT_y:
.LFB12824:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	xorl	%r9d, %r9d
	vmovsd	48(%rcx), %xmm0
	movl	(%rcx), %eax
	vaddsd	%xmm0, %xmm0, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	24(%rcx), %rax
	movq	%rcx, 48(%rsp)
	leaq	_ZN9HistogramItdE10accumulateIdEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	vdivsd	%xmm0, %xmm1, %xmm0
	movq	%rax, 64(%rsp)
	vmovsd	%xmm0, 56(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramItfE10accumulateIfEEvPT_y
	.def	_ZN9HistogramItfE10accumulateIfEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItfE10accumulateIfEEvPT_y
_ZN9HistogramItfE10accumulateIfEEvPT_y:
.LFB12825:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%r9d, %r9d
	movl	(%rcx), %eax
	vcvtss2sd	48(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	movq	%rcx, 48(%rsp)
	vcvtsi2sdq	%rax, %xmm2, %xmm0
	movq	24(%rcx), %rax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramItfE10accumulateIfEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 32(%rsp)
	xorl	%r8d, %r8d
	leaq	32(%rsp), %rdx
	movq	%rax, 56(%rsp)
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 64(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIthE10accumulateIhEEvPT_y
	.def	_ZN9HistogramIthE10accumulateIhEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIthE10accumulateIhEEvPT_y
_ZN9HistogramIthE10accumulateIhEEvPT_y:
.LFB12826:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramIthE10accumulateIhEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 48(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIttE10accumulateItEEvPT_y
	.def	_ZN9HistogramIttE10accumulateItEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIttE10accumulateItEEvPT_y
_ZN9HistogramIttE10accumulateItEEvPT_y:
.LFB12827:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 48(%rsp)
	movl	$16, %eax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramIttE10accumulateItEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r8d, %r8d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r9, 32(%rsp)
	xorl	%r9d, %r9d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramItaE10accumulateIaEEvPT_y
	.def	_ZN9HistogramItaE10accumulateIaEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItaE10accumulateIaEEvPT_y
_ZN9HistogramItaE10accumulateIaEEvPT_y:
.LFB12828:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramItaE10accumulateIaEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 48(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rax, 40(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramItsE10accumulateIsEEvPT_y
	.def	_ZN9HistogramItsE10accumulateIsEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItsE10accumulateIsEEvPT_y
_ZN9HistogramItsE10accumulateIsEEvPT_y:
.LFB12829:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 40(%rsp)
	movl	$16, %eax
	movq	%r9, 48(%rsp)
	leaq	_ZN9HistogramItsE10accumulateIsEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r9d, %r9d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIhdE10accumulateIdEEvPT_y
	.def	_ZN9HistogramIhdE10accumulateIdEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhdE10accumulateIdEEvPT_y
_ZN9HistogramIhdE10accumulateIdEEvPT_y:
.LFB12830:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	xorl	%r9d, %r9d
	vmovsd	48(%rcx), %xmm0
	movl	(%rcx), %eax
	vaddsd	%xmm0, %xmm0, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	24(%rcx), %rax
	movq	%rcx, 48(%rsp)
	leaq	_ZN9HistogramIhdE10accumulateIdEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	vdivsd	%xmm0, %xmm1, %xmm0
	movq	%rax, 64(%rsp)
	vmovsd	%xmm0, 56(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIhfE10accumulateIfEEvPT_y
	.def	_ZN9HistogramIhfE10accumulateIfEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhfE10accumulateIfEEvPT_y
_ZN9HistogramIhfE10accumulateIfEEvPT_y:
.LFB12831:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%r9d, %r9d
	movl	(%rcx), %eax
	vcvtss2sd	48(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	movq	%rcx, 48(%rsp)
	vcvtsi2sdq	%rax, %xmm2, %xmm0
	movq	24(%rcx), %rax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramIhfE10accumulateIfEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 32(%rsp)
	xorl	%r8d, %r8d
	leaq	32(%rsp), %rdx
	movq	%rax, 56(%rsp)
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 64(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIhhE10accumulateIhEEvPT_y
	.def	_ZN9HistogramIhhE10accumulateIhEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhhE10accumulateIhEEvPT_y
_ZN9HistogramIhhE10accumulateIhEEvPT_y:
.LFB12832:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramIhhE10accumulateIhEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%r8, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rax, 48(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIhtE10accumulateItEEvPT_y
	.def	_ZN9HistogramIhtE10accumulateItEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhtE10accumulateItEEvPT_y
_ZN9HistogramIhtE10accumulateItEEvPT_y:
.LFB12833:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 48(%rsp)
	movl	$16, %eax
	movq	%r8, 40(%rsp)
	leaq	_ZN9HistogramIhtE10accumulateItEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r8d, %r8d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r9, 32(%rsp)
	xorl	%r9d, %r9d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIhaE10accumulateIaEEvPT_y
	.def	_ZN9HistogramIhaE10accumulateIaEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhaE10accumulateIaEEvPT_y
_ZN9HistogramIhaE10accumulateIaEEvPT_y:
.LFB12834:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	24(%rcx), %rax
	leaq	_ZN9HistogramIhaE10accumulateIaEEvPT_y._omp_fn.0(%rip), %rcx
	movq	%rdx, 48(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rax, 40(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN9HistogramIhsE10accumulateIsEEvPT_y
	.def	_ZN9HistogramIhsE10accumulateIsEEvPT_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhsE10accumulateIsEEvPT_y
_ZN9HistogramIhsE10accumulateIsEEvPT_y:
.LFB12835:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	24(%rcx), %rax
	movq	%rdx, %r9
	movl	52(%rcx), %edx
	movq	%rax, 40(%rsp)
	movl	$16, %eax
	movq	%r9, 48(%rsp)
	leaq	_ZN9HistogramIhsE10accumulateIsEEvPT_y._omp_fn.0(%rip), %rcx
	xorl	%r9d, %r9d
	subl	%edx, %eax
	movl	%edx, 56(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r8, 32(%rsp)
	xorl	%r8d, %r8d
	movl	%eax, 60(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC1:
	.long	0
	.long	1138753536
	.align 16
.LC2:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC3:
	.long	1593835520
	.ident	"GCC: (GNU) 9.2.0"
	.def	_Z22manage_thread_affinityv;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	GOMP_atomic_start;	.scl	2;	.type	32;	.endef
	.def	GOMP_atomic_end;	.scl	2;	.type	32;	.endef
	.def	omp_get_num_threads;	.scl	2;	.type	32;	.endef
	.def	omp_get_thread_num;	.scl	2;	.type	32;	.endef
	.def	GOMP_parallel;	.scl	2;	.type	32;	.endef
