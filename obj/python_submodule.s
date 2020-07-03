	.file	"python_submodule.cpp"
	.text
	.section	.text$pybind11_static_get,"x"
	.linkonce discard
	.p2align 4
	.globl	pybind11_static_get
	.def	pybind11_static_get;	.scl	2;	.type	32;	.endef
	.seh_proc	pybind11_static_get
pybind11_static_get:
.LFB10833:
	.seh_endprologue
	movq	__imp_PyProperty_Type(%rip), %rax
	movq	272(%rax), %rax
	movq	%r8, %rdx
	rex.W jmp	*%rax
	.seh_endproc
	.section	.text$pybind11_static_set,"x"
	.linkonce discard
	.p2align 4
	.globl	pybind11_static_set
	.def	pybind11_static_set;	.scl	2;	.type	32;	.endef
	.seh_proc	pybind11_static_set
pybind11_static_set:
.LFB10834:
	.seh_endprologue
	movq	8(%rdx), %rax
	movl	168(%rax), %r9d
	testl	%r9d, %r9d
	cmovns	%rax, %rdx
	movq	__imp_PyProperty_Type(%rip), %rax
	rex.W jmp	*280(%rax)
	.seh_endproc
	.text
	.p2align 4
	.def	_ZN9HistogramIyhE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyhE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIyhE10accumulateIhEEvPT_y._omp_fn.0:
.LFB17038:
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
	jne	.L6
	.p2align 4,,10
	.p2align 3
.L9:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L7:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$2048, %rax
	jne	.L7
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L14
.L6:
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
	jb	.L8
.L11:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L9
	leaq	(%rdi,%rdx), %rax
	addq	%r12, %rdi
	.p2align 4,,10
	.p2align 3
.L10:
	movzbl	(%rax), %edx
	incq	%rax
	incq	(%rsi,%rdx,8)
	cmpq	%rdi, %rax
	jne	.L10
	jmp	.L9
.L8:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L11
.L14:
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
.LLSDA17038:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17038-.LLSDACSB17038
.LLSDACSB17038:
.LLSDACSE17038:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIytE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIytE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIytE10accumulateItEEvPT_y._omp_fn.0:
.LFB17039:
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
	jbe	.L28
	leaq	-4(%r13), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L17:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L17
	leaq	0(,%rdx,4), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r13
	je	.L35
	leaq	1(%rax), %r9
	movq	$0, (%rdx)
	cmpq	%r9, %r14
	jb	.L36
	addq	$2, %rax
	movq	$0, 8(%rdx)
	cmpq	%rax, %r14
	jb	.L37
	movq	$0, 16(%rdx)
	vzeroupper
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L28:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L16:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r14
	jnb	.L16
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L35:
	vzeroupper
	jmp	.L19
.L36:
	vzeroupper
	jmp	.L19
.L37:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L19:
	cmpq	$0, -88(%rbp)
	jne	.L20
	.p2align 4,,10
	.p2align 3
.L25:
	call	GOMP_atomic_start
	cmpq	$2, %r14
	jbe	.L29
	leaq	-4(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L22:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L22
	movq	%rcx, %rax
	leaq	0(,%rcx,4), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	%rax, %rsi
	cmpq	%rdx, %r13
	jne	.L38
	vzeroupper
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L29:
	xorl	%edx, %edx
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L38:
	vzeroupper
.L21:
	movq	(%rdi), %rax
	addq	%rax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %r14
	jb	.L23
	addq	$2, %rdx
	movq	8(%rdi), %rax
	addq	%rax, 8(%rsi)
	cmpq	%rdx, %r14
	jb	.L23
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L23:
	call	GOMP_atomic_end
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L20:
	call	omp_get_num_threads
	movslq	%eax, %r12
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r12
	cmpq	%rdx, %r9
	jb	.L24
.L27:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L25
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L26:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incq	(%rbx,%rax,8)
	cmpq	%r9, %rdx
	jne	.L26
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L24:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L34:
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
.LLSDA17039:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17039-.LLSDACSB17039
.LLSDACSB17039:
.LLSDACSE17039:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIyaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramIyaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB17040:
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
	jne	.L40
	.p2align 4,,10
	.p2align 3
.L43:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L41:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$2048, %rax
	jne	.L41
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L48
.L40:
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
	jb	.L42
.L45:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L43
	leaq	(%rdi,%rdx), %rax
	addq	%r12, %rdi
	.p2align 4,,10
	.p2align 3
.L44:
	movzbl	(%rax), %edx
	incq	%rax
	incq	(%rsi,%rdx,8)
	cmpq	%rdi, %rax
	jne	.L44
	jmp	.L43
.L42:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L45
.L48:
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
.LLSDA17040:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17040-.LLSDACSB17040
.LLSDACSB17040:
.LLSDACSE17040:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIysE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIysE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramIysE10accumulateIsEEvPT_y._omp_fn.0:
.LFB17041:
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
	jbe	.L62
	leaq	-4(%r13), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L51
	leaq	0(,%rdx,4), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r13
	je	.L69
	leaq	1(%rax), %r9
	movq	$0, (%rdx)
	cmpq	%r9, %r14
	jb	.L70
	addq	$2, %rax
	movq	$0, 8(%rdx)
	cmpq	%rax, %r14
	jb	.L71
	movq	$0, 16(%rdx)
	vzeroupper
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L62:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L50:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r14
	jnb	.L50
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L69:
	vzeroupper
	jmp	.L53
.L70:
	vzeroupper
	jmp	.L53
.L71:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L53:
	cmpq	$0, -88(%rbp)
	jne	.L54
	.p2align 4,,10
	.p2align 3
.L59:
	call	GOMP_atomic_start
	cmpq	$2, %r14
	jbe	.L63
	leaq	-4(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L56:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddq	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L56
	movq	%rcx, %rax
	leaq	0(,%rcx,4), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	%rax, %rsi
	cmpq	%rdx, %r13
	jne	.L72
	vzeroupper
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L63:
	xorl	%edx, %edx
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L72:
	vzeroupper
.L55:
	movq	(%rdi), %rax
	addq	%rax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %r14
	jb	.L57
	addq	$2, %rdx
	movq	8(%rdi), %rax
	addq	%rax, 8(%rsi)
	cmpq	%rdx, %r14
	jb	.L57
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L57:
	call	GOMP_atomic_end
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L54:
	call	omp_get_num_threads
	movslq	%eax, %r12
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r12
	cmpq	%rdx, %r9
	jb	.L58
.L61:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L59
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L60:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incq	(%rbx,%rax,8)
	cmpq	%r9, %rdx
	jne	.L60
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L58:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L68:
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
.LLSDA17041:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17041-.LLSDACSB17041
.LLSDACSB17041:
.LLSDACSE17041:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjhE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjhE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIjhE10accumulateIhEEvPT_y._omp_fn.0:
.LFB17044:
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
	jne	.L74
	.p2align 4,,10
	.p2align 3
.L77:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L75:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rdi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$1024, %rax
	jne	.L75
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L82
.L74:
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
	jb	.L76
.L79:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L77
	leaq	(%rsi,%rdx), %rax
	addq	%r12, %rsi
	.p2align 4,,10
	.p2align 3
.L78:
	movzbl	(%rax), %edx
	incq	%rax
	incl	(%rdi,%rdx,4)
	cmpq	%rsi, %rax
	jne	.L78
	jmp	.L77
.L76:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L79
.L82:
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
.LLSDA17044:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17044-.LLSDACSB17044
.LLSDACSB17044:
.LLSDACSE17044:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjtE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjtE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIjtE10accumulateItEEvPT_y._omp_fn.0:
.LFB17045:
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
	jbe	.L96
	leaq	-8(%r14), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L85:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L85
	leaq	0(,%rdx,8), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r14
	je	.L103
	leaq	1(%rax), %r9
	movl	$0, (%rdx)
	cmpq	%r9, %rdi
	jb	.L104
	leaq	2(%rax), %r9
	movl	$0, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L105
	leaq	3(%rax), %r9
	movl	$0, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L106
	leaq	4(%rax), %r9
	movl	$0, 12(%rdx)
	cmpq	%r9, %rdi
	jb	.L107
	leaq	5(%rax), %r9
	movl	$0, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L108
	addq	$6, %rax
	movl	$0, 20(%rdx)
	cmpq	%rax, %rdi
	jb	.L109
	movl	$0, 24(%rdx)
	vzeroupper
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L96:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L84:
	movl	$0, (%rbx,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L84
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L103:
	vzeroupper
	jmp	.L87
.L104:
	vzeroupper
	jmp	.L87
.L105:
	vzeroupper
	jmp	.L87
.L106:
	vzeroupper
	jmp	.L87
.L107:
	vzeroupper
	jmp	.L87
.L108:
	vzeroupper
	jmp	.L87
.L109:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L87:
	cmpq	$0, -88(%rbp)
	jne	.L88
	.p2align 4,,10
	.p2align 3
.L93:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L97
	leaq	-8(%r14), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L90:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L90
	movq	%rcx, %rax
	leaq	0(,%rcx,8), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %r12
	addq	%rax, %rsi
	cmpq	%rdx, %r14
	jne	.L110
	vzeroupper
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L97:
	xorl	%edx, %edx
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L110:
	vzeroupper
.L89:
	movl	(%r12), %eax
	addl	%eax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L91
	movl	4(%r12), %eax
	addl	%eax, 4(%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L91
	movl	8(%r12), %eax
	addl	%eax, 8(%rsi)
	leaq	3(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L91
	movl	12(%r12), %eax
	addl	%eax, 12(%rsi)
	leaq	4(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L91
	movl	16(%r12), %eax
	addl	%eax, 16(%rsi)
	leaq	5(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L91
	addq	$6, %rdx
	movl	20(%r12), %eax
	addl	%eax, 20(%rsi)
	cmpq	%rdx, %rdi
	jb	.L91
	movl	24(%r12), %eax
	addl	%eax, 24(%rsi)
.L91:
	call	GOMP_atomic_end
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L88:
	call	omp_get_num_threads
	movslq	%eax, %r13
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r13
	cmpq	%rdx, %r9
	jb	.L92
.L95:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L93
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L94:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incl	(%rbx,%rax,4)
	cmpq	%r9, %rdx
	jne	.L94
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L92:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L102:
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
.LLSDA17045:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17045-.LLSDACSB17045
.LLSDACSB17045:
.LLSDACSE17045:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramIjaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB17046:
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
	jne	.L112
	.p2align 4,,10
	.p2align 3
.L115:
	call	GOMP_atomic_start
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L113:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rdi,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	$1024, %rax
	jne	.L113
	vzeroupper
	call	GOMP_atomic_end
	jmp	.L120
.L112:
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
	jb	.L114
.L117:
	imulq	%r12, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r12
	cmpq	%r12, %rdx
	jnb	.L115
	leaq	(%rsi,%rdx), %rax
	addq	%r12, %rsi
	.p2align 4,,10
	.p2align 3
.L116:
	movzbl	(%rax), %edx
	incq	%rax
	incl	(%rdi,%rdx,4)
	cmpq	%rsi, %rax
	jne	.L116
	jmp	.L115
.L114:
	incq	%r12
	xorl	%edx, %edx
	jmp	.L117
.L120:
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
.LLSDA17046:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17046-.LLSDACSB17046
.LLSDACSB17046:
.LLSDACSE17046:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjsE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjsE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramIjsE10accumulateIsEEvPT_y._omp_fn.0:
.LFB17047:
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
	jbe	.L134
	leaq	-8(%r14), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rbx,%r9)
	cmpq	%rax, %rdx
	ja	.L123
	leaq	0(,%rdx,8), %rax
	salq	$5, %rdx
	addq	%rbx, %rdx
	cmpq	%rax, %r14
	je	.L141
	leaq	1(%rax), %r9
	movl	$0, (%rdx)
	cmpq	%r9, %rdi
	jb	.L142
	leaq	2(%rax), %r9
	movl	$0, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L143
	leaq	3(%rax), %r9
	movl	$0, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L144
	leaq	4(%rax), %r9
	movl	$0, 12(%rdx)
	cmpq	%r9, %rdi
	jb	.L145
	leaq	5(%rax), %r9
	movl	$0, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L146
	addq	$6, %rax
	movl	$0, 20(%rdx)
	cmpq	%rax, %rdi
	jb	.L147
	movl	$0, 24(%rdx)
	vzeroupper
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L134:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L122:
	movl	$0, (%rbx,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L122
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L141:
	vzeroupper
	jmp	.L125
.L142:
	vzeroupper
	jmp	.L125
.L143:
	vzeroupper
	jmp	.L125
.L144:
	vzeroupper
	jmp	.L125
.L145:
	vzeroupper
	jmp	.L125
.L146:
	vzeroupper
	jmp	.L125
.L147:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L125:
	cmpq	$0, -88(%rbp)
	jne	.L126
	.p2align 4,,10
	.p2align 3
.L131:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L135
	leaq	-8(%r14), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L128:
	vmovdqu	(%rbx,%rax), %ymm1
	vpaddd	(%rsi,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L128
	movq	%rcx, %rax
	leaq	0(,%rcx,8), %rdx
	salq	$5, %rax
	leaq	(%rbx,%rax), %r12
	addq	%rax, %rsi
	cmpq	%rdx, %r14
	jne	.L148
	vzeroupper
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L135:
	xorl	%edx, %edx
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L148:
	vzeroupper
.L127:
	movl	(%r12), %eax
	addl	%eax, (%rsi)
	leaq	1(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L129
	movl	4(%r12), %eax
	addl	%eax, 4(%rsi)
	leaq	2(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L129
	movl	8(%r12), %eax
	addl	%eax, 8(%rsi)
	leaq	3(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L129
	movl	12(%r12), %eax
	addl	%eax, 12(%rsi)
	leaq	4(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L129
	movl	16(%r12), %eax
	addl	%eax, 16(%rsi)
	leaq	5(%rdx), %rax
	cmpq	%rax, %rdi
	jb	.L129
	addq	$6, %rdx
	movl	20(%r12), %eax
	addl	%eax, 20(%rsi)
	cmpq	%rdx, %rdi
	jb	.L129
	movl	24(%r12), %eax
	addl	%eax, 24(%rsi)
.L129:
	call	GOMP_atomic_end
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L126:
	call	omp_get_num_threads
	movslq	%eax, %r13
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r13
	cmpq	%rdx, %r9
	jb	.L130
.L133:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L131
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L132:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incl	(%rbx,%rax,4)
	cmpq	%r9, %rdx
	jne	.L132
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L130:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L140:
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
.LLSDA17047:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17047-.LLSDACSB17047
.LLSDACSB17047:
.LLSDACSE17047:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIthE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIthE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIthE10accumulateIhEEvPT_y._omp_fn.0:
.LFB17050:
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
	jne	.L150
	.p2align 4,,10
	.p2align 3
.L152:
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
	jmp	.L156
.L150:
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
	jb	.L151
.L154:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L152
	leaq	(%rsi,%rdx), %rax
	addq	%r13, %rsi
	.p2align 4,,10
	.p2align 3
.L153:
	movzbl	(%rax), %edx
	incq	%rax
	incw	(%r12,%rdx,2)
	cmpq	%rsi, %rax
	jne	.L153
	jmp	.L152
.L151:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L156:
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
.LLSDA17050:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17050-.LLSDACSB17050
.LLSDACSB17050:
.LLSDACSE17050:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIttE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIttE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIttE10accumulateItEEvPT_y._omp_fn.0:
.LFB17051:
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
	jbe	.L170
	leaq	-16(%r12), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L159:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rax, %rdx
	ja	.L159
	movq	%rdx, %rax
	salq	$5, %rdx
	salq	$4, %rax
	addq	%rsi, %rdx
	cmpq	%rax, %r12
	je	.L177
	xorl	%r9d, %r9d
	movw	%r9w, (%rdx)
	leaq	1(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L178
	xorl	%r8d, %r8d
	leaq	2(%rax), %r9
	movw	%r8w, 2(%rdx)
	cmpq	%r9, %rdi
	jb	.L179
	xorl	%ecx, %ecx
	leaq	3(%rax), %r9
	movw	%cx, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L180
	xorl	%r14d, %r14d
	leaq	4(%rax), %r9
	movw	%r14w, 6(%rdx)
	cmpq	%r9, %rdi
	jb	.L181
	xorl	%r11d, %r11d
	leaq	5(%rax), %r9
	movw	%r11w, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L182
	xorl	%r10d, %r10d
	leaq	6(%rax), %r9
	movw	%r10w, 10(%rdx)
	cmpq	%r9, %rdi
	jb	.L183
	xorl	%r9d, %r9d
	movw	%r9w, 12(%rdx)
	leaq	7(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L184
	xorl	%r8d, %r8d
	leaq	8(%rax), %r9
	movw	%r8w, 14(%rdx)
	cmpq	%r9, %rdi
	jb	.L185
	xorl	%ecx, %ecx
	leaq	9(%rax), %r9
	movw	%cx, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L186
	xorl	%r14d, %r14d
	leaq	10(%rax), %r9
	movw	%r14w, 18(%rdx)
	cmpq	%r9, %rdi
	jb	.L187
	xorl	%r11d, %r11d
	leaq	11(%rax), %r9
	movw	%r11w, 20(%rdx)
	cmpq	%r9, %rdi
	jb	.L188
	xorl	%r10d, %r10d
	leaq	12(%rax), %r9
	movw	%r10w, 22(%rdx)
	cmpq	%r9, %rdi
	jb	.L189
	xorl	%r9d, %r9d
	movw	%r9w, 24(%rdx)
	leaq	13(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L190
	xorl	%r8d, %r8d
	addq	$14, %rax
	movw	%r8w, 26(%rdx)
	cmpq	%rax, %rdi
	jb	.L191
	xorl	%ecx, %ecx
	movw	%cx, 28(%rdx)
	vzeroupper
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L170:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L158:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L158
	jmp	.L161
.L177:
	vzeroupper
	jmp	.L161
.L178:
	vzeroupper
	jmp	.L161
.L179:
	vzeroupper
	jmp	.L161
.L180:
	vzeroupper
	jmp	.L161
.L181:
	vzeroupper
	jmp	.L161
.L182:
	vzeroupper
	jmp	.L161
.L183:
	vzeroupper
	jmp	.L161
.L184:
	vzeroupper
	jmp	.L161
.L185:
	vzeroupper
	jmp	.L161
.L186:
	vzeroupper
	jmp	.L161
.L187:
	vzeroupper
	jmp	.L161
.L188:
	vzeroupper
	jmp	.L161
.L189:
	vzeroupper
	jmp	.L161
.L190:
	vzeroupper
	jmp	.L161
.L191:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L161:
	cmpq	$0, -88(%rbp)
	jne	.L162
	.p2align 4,,10
	.p2align 3
.L167:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L171
	leaq	-16(%r12), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %r8
	incq	%r8
	.p2align 4,,10
	.p2align 3
.L164:
	vmovdqu	(%rsi,%rax), %ymm1
	vpaddw	(%rbx,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%r8, %rdx
	jb	.L164
	movq	%r8, %rax
	salq	$5, %r8
	salq	$4, %rax
	leaq	(%rsi,%r8), %r13
	addq	%r8, %rbx
	cmpq	%rax, %r12
	jne	.L192
	vzeroupper
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L171:
	xorl	%eax, %eax
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L192:
	vzeroupper
.L163:
	movzwl	0(%r13), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	2(%r13), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	4(%r13), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	6(%r13), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	8(%r13), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	10(%r13), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	12(%r13), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	14(%r13), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	16(%r13), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	18(%r13), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	20(%r13), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	22(%r13), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	movzwl	24(%r13), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L165
	addq	$14, %rax
	movzwl	26(%r13), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L165
	movzwl	28(%r13), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L165:
	call	GOMP_atomic_end
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L162:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L166
.L169:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L167
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L168:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incw	(%rsi,%rax,2)
	cmpq	%r9, %rdx
	jne	.L168
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L166:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L176:
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
.LLSDA17051:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17051-.LLSDACSB17051
.LLSDACSB17051:
.LLSDACSE17051:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramItaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB17052:
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
	jne	.L194
	.p2align 4,,10
	.p2align 3
.L196:
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
	jmp	.L200
.L194:
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
	jb	.L195
.L198:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L196
	leaq	(%rsi,%rdx), %rax
	addq	%r13, %rsi
	.p2align 4,,10
	.p2align 3
.L197:
	movzbl	(%rax), %edx
	incq	%rax
	incw	(%r12,%rdx,2)
	cmpq	%rsi, %rax
	jne	.L197
	jmp	.L196
.L195:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L200:
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
.LLSDA17052:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17052-.LLSDACSB17052
.LLSDACSB17052:
.LLSDACSE17052:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItsE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItsE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramItsE10accumulateIsEEvPT_y._omp_fn.0:
.LFB17053:
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
	jbe	.L214
	leaq	-16(%r12), %rdx
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rdx
	incq	%rdx
	.p2align 4,,10
	.p2align 3
.L203:
	movq	%rax, %r9
	incq	%rax
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rax, %rdx
	ja	.L203
	movq	%rdx, %rax
	salq	$5, %rdx
	salq	$4, %rax
	addq	%rsi, %rdx
	cmpq	%rax, %r12
	je	.L221
	xorl	%r9d, %r9d
	movw	%r9w, (%rdx)
	leaq	1(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L222
	xorl	%r8d, %r8d
	leaq	2(%rax), %r9
	movw	%r8w, 2(%rdx)
	cmpq	%r9, %rdi
	jb	.L223
	xorl	%ecx, %ecx
	leaq	3(%rax), %r9
	movw	%cx, 4(%rdx)
	cmpq	%r9, %rdi
	jb	.L224
	xorl	%r14d, %r14d
	leaq	4(%rax), %r9
	movw	%r14w, 6(%rdx)
	cmpq	%r9, %rdi
	jb	.L225
	xorl	%r11d, %r11d
	leaq	5(%rax), %r9
	movw	%r11w, 8(%rdx)
	cmpq	%r9, %rdi
	jb	.L226
	xorl	%r10d, %r10d
	leaq	6(%rax), %r9
	movw	%r10w, 10(%rdx)
	cmpq	%r9, %rdi
	jb	.L227
	xorl	%r9d, %r9d
	movw	%r9w, 12(%rdx)
	leaq	7(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L228
	xorl	%r8d, %r8d
	leaq	8(%rax), %r9
	movw	%r8w, 14(%rdx)
	cmpq	%r9, %rdi
	jb	.L229
	xorl	%ecx, %ecx
	leaq	9(%rax), %r9
	movw	%cx, 16(%rdx)
	cmpq	%r9, %rdi
	jb	.L230
	xorl	%r14d, %r14d
	leaq	10(%rax), %r9
	movw	%r14w, 18(%rdx)
	cmpq	%r9, %rdi
	jb	.L231
	xorl	%r11d, %r11d
	leaq	11(%rax), %r9
	movw	%r11w, 20(%rdx)
	cmpq	%r9, %rdi
	jb	.L232
	xorl	%r10d, %r10d
	leaq	12(%rax), %r9
	movw	%r10w, 22(%rdx)
	cmpq	%r9, %rdi
	jb	.L233
	xorl	%r9d, %r9d
	movw	%r9w, 24(%rdx)
	leaq	13(%rax), %r9
	cmpq	%r9, %rdi
	jb	.L234
	xorl	%r8d, %r8d
	addq	$14, %rax
	movw	%r8w, 26(%rdx)
	cmpq	%rax, %rdi
	jb	.L235
	xorl	%ecx, %ecx
	movw	%cx, 28(%rdx)
	vzeroupper
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L214:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L202:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L202
	jmp	.L205
.L221:
	vzeroupper
	jmp	.L205
.L222:
	vzeroupper
	jmp	.L205
.L223:
	vzeroupper
	jmp	.L205
.L224:
	vzeroupper
	jmp	.L205
.L225:
	vzeroupper
	jmp	.L205
.L226:
	vzeroupper
	jmp	.L205
.L227:
	vzeroupper
	jmp	.L205
.L228:
	vzeroupper
	jmp	.L205
.L229:
	vzeroupper
	jmp	.L205
.L230:
	vzeroupper
	jmp	.L205
.L231:
	vzeroupper
	jmp	.L205
.L232:
	vzeroupper
	jmp	.L205
.L233:
	vzeroupper
	jmp	.L205
.L234:
	vzeroupper
	jmp	.L205
.L235:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L205:
	cmpq	$0, -88(%rbp)
	jne	.L206
	.p2align 4,,10
	.p2align 3
.L211:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L215
	leaq	-16(%r12), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %r8
	incq	%r8
	.p2align 4,,10
	.p2align 3
.L208:
	vmovdqu	(%rsi,%rax), %ymm1
	vpaddw	(%rbx,%rax), %ymm1, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%r8, %rdx
	jb	.L208
	movq	%r8, %rax
	salq	$5, %r8
	salq	$4, %rax
	leaq	(%rsi,%r8), %r13
	addq	%r8, %rbx
	cmpq	%rax, %r12
	jne	.L236
	vzeroupper
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L215:
	xorl	%eax, %eax
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L236:
	vzeroupper
.L207:
	movzwl	0(%r13), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	2(%r13), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	4(%r13), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	6(%r13), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	8(%r13), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	10(%r13), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	12(%r13), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	14(%r13), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	16(%r13), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	18(%r13), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	20(%r13), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	22(%r13), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	movzwl	24(%r13), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L209
	addq	$14, %rax
	movzwl	26(%r13), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L209
	movzwl	28(%r13), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L209:
	call	GOMP_atomic_end
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L206:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L210
.L213:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L211
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L212:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incw	(%rsi,%rax,2)
	cmpq	%r9, %rdx
	jne	.L212
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L210:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L220:
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
.LLSDA17053:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17053-.LLSDACSB17053
.LLSDACSB17053:
.LLSDACSE17053:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhdE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhdE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramIhdE10accumulateIdEEvPT_y._omp_fn.0:
.LFB17054:
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
	jbe	.L259
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L239:
	movq	%rdx, %r10
	incq	%rdx
	salq	$5, %r10
	vmovdqu	%ymm0, (%rsi,%r10)
	cmpq	%rdx, %rax
	ja	.L239
	salq	$5, %rax
	cmpq	%rax, %r15
	je	.L272
	.p2align 4,,10
	.p2align 3
.L241:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L241
	vzeroupper
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L259:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L238:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L238
	jmp	.L242
.L272:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L242:
	cmpq	$0, -72(%rbp)
	jne	.L243
	.p2align 4,,10
	.p2align 3
.L249:
	call	GOMP_atomic_start
	cmpq	$30, %r12
	jbe	.L260
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L245:
	vmovdqu	(%rbx,%rdx), %ymm4
	vpaddb	(%rsi,%rdx), %ymm4, %ymm0
	incq	%r9
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r9
	jb	.L245
	salq	$5, %rax
	leaq	(%rsi,%rax), %rdi
	addq	%rax, %rbx
	cmpq	%rax, %r15
	jne	.L273
	vzeroupper
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L260:
	xorl	%eax, %eax
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L273:
	vzeroupper
.L244:
	subq	%rax, %rbx
	subq	%rax, %rdi
	.p2align 4,,10
	.p2align 3
.L247:
	movzbl	(%rdi,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L247
.L246:
	call	GOMP_atomic_end
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L243:
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
	jb	.L248
.L258:
	imulq	%rax, %r10
	addq	%r10, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L249
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
.L257:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L270
	incb	(%r9)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L270:
	vcomisd	%xmm0, %xmm2
	jbe	.L271
	incb	(%rsi)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L271:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L255
	vcvttsd2siq	%xmm0, %rax
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L255:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L256:
	incb	(%rsi,%rax)
.L252:
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jne	.L257
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L248:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L269:
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
.LLSDA17054:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17054-.LLSDACSB17054
.LLSDACSB17054:
.LLSDACSE17054:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramIhfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB17055:
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
	jbe	.L296
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L276:
	movq	%rdx, %r10
	incq	%rdx
	salq	$5, %r10
	vmovdqu	%ymm0, (%rsi,%r10)
	cmpq	%rdx, %rax
	ja	.L276
	salq	$5, %rax
	cmpq	%rax, %r15
	je	.L309
	.p2align 4,,10
	.p2align 3
.L278:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L278
	vzeroupper
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L296:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L275:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L275
	jmp	.L279
.L309:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L279:
	cmpq	$0, -72(%rbp)
	jne	.L280
	.p2align 4,,10
	.p2align 3
.L286:
	call	GOMP_atomic_start
	cmpq	$30, %r12
	jbe	.L297
	leaq	-32(%r15), %rax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L282:
	vmovdqu	(%rbx,%rdx), %ymm4
	vpaddb	(%rsi,%rdx), %ymm4, %ymm0
	incq	%r9
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r9
	jb	.L282
	salq	$5, %rax
	leaq	(%rsi,%rax), %rdi
	addq	%rax, %rbx
	cmpq	%rax, %r15
	jne	.L310
	vzeroupper
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L297:
	xorl	%eax, %eax
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L310:
	vzeroupper
.L281:
	subq	%rax, %rbx
	subq	%rax, %rdi
	.p2align 4,,10
	.p2align 3
.L284:
	movzbl	(%rdi,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %r12
	jnb	.L284
.L283:
	call	GOMP_atomic_end
	jmp	.L306
	.p2align 4,,10
	.p2align 3
.L280:
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
	jb	.L285
.L295:
	imulq	%rax, %r10
	addq	%r10, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L286
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
.L294:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L307
	incb	(%r9)
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L307:
	vcomiss	%xmm0, %xmm2
	jbe	.L308
	incb	(%rsi)
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L308:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L292
	vcvttss2siq	%xmm0, %rax
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L292:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L293:
	incb	(%rsi,%rax)
.L289:
	addq	$4, %rdx
	cmpq	%rdx, %r10
	jne	.L294
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L285:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L306:
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
.LLSDA17055:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17055-.LLSDACSB17055
.LLSDACSB17055:
.LLSDACSE17055:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhhE10accumulateIhEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhhE10accumulateIhEEvPT_y._omp_fn.0
_ZN9HistogramIhhE10accumulateIhEEvPT_y._omp_fn.0:
.LFB17056:
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
	jne	.L312
	.p2align 4,,10
	.p2align 3
.L314:
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
	jmp	.L318
.L312:
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
	jb	.L313
.L316:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L314
	leaq	(%rbx,%rdx), %rax
	addq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L315:
	movzbl	(%rax), %edx
	incq	%rax
	incb	(%rsi,%rdx)
	cmpq	%rbx, %rax
	jne	.L315
	jmp	.L314
.L313:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L316
	.p2align 4,,10
	.p2align 3
.L318:
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
.LLSDA17056:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17056-.LLSDACSB17056
.LLSDACSB17056:
.LLSDACSE17056:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhtE10accumulateItEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhtE10accumulateItEEvPT_y._omp_fn.0
_ZN9HistogramIhtE10accumulateItEEvPT_y._omp_fn.0:
.LFB17057:
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
	jbe	.L334
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L321:
	movq	%rdx, %r9
	incq	%rdx
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rdx, %rax
	ja	.L321
	salq	$5, %rax
	cmpq	%rax, %r13
	je	.L343
	.p2align 4,,10
	.p2align 3
.L323:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L323
	vzeroupper
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L334:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L320:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L320
	jmp	.L324
.L343:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L324:
	cmpq	$0, -88(%rbp)
	jne	.L325
	.p2align 4,,10
	.p2align 3
.L331:
	call	GOMP_atomic_start
	cmpq	$30, %rdi
	jbe	.L335
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L327:
	vmovdqu	(%rsi,%rdx), %ymm1
	vpaddb	(%rbx,%rdx), %ymm1, %ymm0
	incq	%r8
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r8
	jb	.L327
	salq	$5, %rax
	leaq	(%rsi,%rax), %r12
	addq	%rax, %rbx
	cmpq	%rax, %r13
	jne	.L344
	vzeroupper
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L335:
	xorl	%eax, %eax
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L344:
	vzeroupper
.L326:
	subq	%rax, %rbx
	subq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L329:
	movzbl	(%r12,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L329
.L328:
	call	GOMP_atomic_end
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L325:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L330
.L333:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L331
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L332:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incb	(%rsi,%rax)
	cmpq	%rdx, %r9
	jne	.L332
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L330:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L333
	.p2align 4,,10
	.p2align 3
.L342:
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
.LLSDA17057:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17057-.LLSDACSB17057
.LLSDACSB17057:
.LLSDACSE17057:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhaE10accumulateIaEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhaE10accumulateIaEEvPT_y._omp_fn.0
_ZN9HistogramIhaE10accumulateIaEEvPT_y._omp_fn.0:
.LFB17058:
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
	jne	.L346
	.p2align 4,,10
	.p2align 3
.L348:
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
	jmp	.L352
.L346:
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
	jb	.L347
.L350:
	imulq	%r13, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %r13
	cmpq	%r13, %rdx
	jnb	.L348
	leaq	(%rbx,%rdx), %rax
	addq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L349:
	movzbl	(%rax), %edx
	incq	%rax
	incb	(%rsi,%rdx)
	cmpq	%rbx, %rax
	jne	.L349
	jmp	.L348
.L347:
	incq	%r13
	xorl	%edx, %edx
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L352:
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
.LLSDA17058:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17058-.LLSDACSB17058
.LLSDACSB17058:
.LLSDACSE17058:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIhsE10accumulateIsEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIhsE10accumulateIsEEvPT_y._omp_fn.0
_ZN9HistogramIhsE10accumulateIsEEvPT_y._omp_fn.0:
.LFB17059:
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
	jbe	.L368
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L355:
	movq	%rdx, %r9
	incq	%rdx
	salq	$5, %r9
	vmovdqu	%ymm0, (%rsi,%r9)
	cmpq	%rdx, %rax
	ja	.L355
	salq	$5, %rax
	cmpq	%rax, %r13
	je	.L377
	.p2align 4,,10
	.p2align 3
.L357:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L357
	vzeroupper
	jmp	.L358
	.p2align 4,,10
	.p2align 3
.L368:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L354:
	movb	$0, (%rsi,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L354
	jmp	.L358
.L377:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L358:
	cmpq	$0, -88(%rbp)
	jne	.L359
	.p2align 4,,10
	.p2align 3
.L365:
	call	GOMP_atomic_start
	cmpq	$30, %rdi
	jbe	.L369
	leaq	-32(%r13), %rax
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	shrq	$5, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L361:
	vmovdqu	(%rsi,%rdx), %ymm1
	vpaddb	(%rbx,%rdx), %ymm1, %ymm0
	incq	%r8
	vmovdqu	%ymm0, (%rbx,%rdx)
	addq	$32, %rdx
	cmpq	%rax, %r8
	jb	.L361
	salq	$5, %rax
	leaq	(%rsi,%rax), %r12
	addq	%rax, %rbx
	cmpq	%rax, %r13
	jne	.L378
	vzeroupper
	jmp	.L362
	.p2align 4,,10
	.p2align 3
.L369:
	xorl	%eax, %eax
	jmp	.L360
	.p2align 4,,10
	.p2align 3
.L378:
	vzeroupper
.L360:
	subq	%rax, %rbx
	subq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L363:
	movzbl	(%r12,%rax), %edx
	addb	%dl, (%rbx,%rax)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L363
.L362:
	call	GOMP_atomic_end
	jmp	.L376
	.p2align 4,,10
	.p2align 3
.L359:
	call	omp_get_num_threads
	movslq	%eax, %r14
	call	omp_get_thread_num
	xorl	%edx, %edx
	movslq	%eax, %r9
	movq	-88(%rbp), %rax
	divq	%r14
	cmpq	%rdx, %r9
	jb	.L364
.L367:
	imulq	%rax, %r9
	addq	%r9, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L365
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx,2), %rdx
	leaq	(%rcx,%rax,2), %r9
	.p2align 4,,10
	.p2align 3
.L366:
	movzwl	(%rdx), %eax
	addq	$2, %rdx
	sarx	%r15d, %eax, %eax
	cltq
	incb	(%rsi,%rax)
	cmpq	%rdx, %r9
	jne	.L366
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L364:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L376:
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
.LLSDA17059:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17059-.LLSDACSB17059
.LLSDACSB17059:
.LLSDACSE17059:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y._omp_fn.0:
.LFB17060:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	16(%rcx), %rbp
	vmovsd	32(%rcx), %xmm6
	movq	24(%rcx), %rbx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rdi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	jne	.L380
.L382:
	vmovaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	GOMP_barrier
	.p2align 4,,10
	.p2align 3
.L380:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L381
.L392:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L382
	vmovq	.LC0(%rip), %xmm4
	salq	$3, %r9
	vmovapd	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L391:
	vmovsd	64(%rbx), %xmm0
	vmovsd	(%rdi,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm2
	movl	(%rbx), %r8d
	vcomisd	%xmm0, %xmm1
	jb	.L396
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L396:
	vmovapd	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorpd	%xmm4, %xmm3, %xmm3
	vcomisd	%xmm1, %xmm3
	ja	.L385
	vaddsd	%xmm1, %xmm0, %xmm1
	vdivsd	%xmm6, %xmm1, %xmm1
	vcvttsd2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L385:
	vcomisd	%xmm0, %xmm2
	jb	.L397
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L397:
	vmovapd	%xmm0, %xmm1
	vxorpd	%xmm5, %xmm1, %xmm1
	vcomisd	%xmm2, %xmm1
	ja	.L388
	vaddsd	%xmm2, %xmm0, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcvttsd2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L388:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L389
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L391
	jmp	.L382
	.p2align 4,,10
	.p2align 3
.L389:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L391
	jmp	.L382
	.p2align 4,,10
	.p2align 3
.L381:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L392
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17060:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17060-.LLSDACSB17060
.LLSDACSB17060:
.LLSDACSE17060:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIydE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIydE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIydE19reduction_and_resetEv._omp_fn.0:
.LFB17061:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L398
	.p2align 4,,10
	.p2align 3
.L399:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L400
	.p2align 4,,10
	.p2align 3
.L403:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L399
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L400:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L402
.L405:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L403
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L404:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L404
	jmp	.L403
	.p2align 4,,10
	.p2align 3
.L402:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L405
	.p2align 4,,10
	.p2align 3
.L398:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17061:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17061-.LLSDACSB17061
.LLSDACSB17061:
.LLSDACSE17061:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y._omp_fn.0:
.LFB17062:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	16(%rcx), %rbp
	vmovss	32(%rcx), %xmm6
	movq	24(%rcx), %rbx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rdi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	jne	.L410
.L412:
	vmovaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	GOMP_barrier
	.p2align 4,,10
	.p2align 3
.L410:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L411
.L422:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L412
	vmovss	.LC2(%rip), %xmm4
	salq	$3, %r9
	vmovaps	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L421:
	vmovss	64(%rbx), %xmm0
	vmovss	(%rdi,%rdx,4), %xmm1
	vmovss	(%rsi,%rdx,4), %xmm2
	movl	(%rbx), %r8d
	vcomiss	%xmm0, %xmm1
	jb	.L426
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L426:
	vmovaps	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorps	%xmm4, %xmm3, %xmm3
	vcomiss	%xmm1, %xmm3
	ja	.L415
	vaddss	%xmm1, %xmm0, %xmm1
	vdivss	%xmm6, %xmm1, %xmm1
	vcvttss2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L415:
	vcomiss	%xmm0, %xmm2
	jb	.L427
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L418
	.p2align 4,,10
	.p2align 3
.L427:
	vmovaps	%xmm0, %xmm1
	vxorps	%xmm5, %xmm1, %xmm1
	vcomiss	%xmm2, %xmm1
	ja	.L418
	vaddss	%xmm2, %xmm0, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcvttss2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L418:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L419
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L421
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L419:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L421
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L411:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L422
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17062:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17062-.LLSDACSB17062
.LLSDACSB17062:
.LLSDACSE17062:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIyfE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyfE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIyfE19reduction_and_resetEv._omp_fn.0:
.LFB17063:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L428
	.p2align 4,,10
	.p2align 3
.L429:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L430
	.p2align 4,,10
	.p2align 3
.L433:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L429
	jmp	.L428
	.p2align 4,,10
	.p2align 3
.L430:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L432
.L435:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L433
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L434:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L434
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L432:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L428:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17063:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17063-.LLSDACSB17063
.LLSDACSB17063:
.LLSDACSE17063:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y._omp_fn.0:
.LFB17064:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	16(%rcx), %rbp
	movq	24(%rcx), %rbx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rdi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	je	.L439
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L441
.L446:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L439
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L445:
	movzbl	(%rdi,%rdx), %ecx
	movzbl	(%rsi,%rdx), %r8d
	sall	$8, %ecx
	addl	%r8d, %ecx
	movq	56(%rbx), %r8
	movslq	%ecx, %rcx
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L443
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L445
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L443:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L445
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L441:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L446
	.p2align 4,,10
	.p2align 3
.L439:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17064:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17064-.LLSDACSB17064
.LLSDACSB17064:
.LLSDACSE17064:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIyhE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyhE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIyhE19reduction_and_resetEv._omp_fn.0:
.LFB17065:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L447
	.p2align 4,,10
	.p2align 3
.L448:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L449
	.p2align 4,,10
	.p2align 3
.L452:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L448
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L449:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L451
.L454:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L452
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L453:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L453
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L451:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L454
	.p2align 4,,10
	.p2align 3
.L447:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17065:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17065-.LLSDACSB17065
.LLSDACSB17065:
.LLSDACSE17065:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y._omp_fn.0:
.LFB17066:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	16(%rcx), %r13
	movl	36(%rcx), %ebx
	movl	32(%rcx), %edi
	movq	24(%rcx), %rsi
	movq	8(%rcx), %rbp
	movq	(%rcx), %r12
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r14d
	testq	%r13, %r13
	je	.L458
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L460
.L465:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L458
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L464:
	movzwl	(%r12,%rdx,2), %ecx
	movzwl	0(%rbp,%rdx,2), %r8d
	sarx	%ebx, %ecx, %ecx
	sarx	%ebx, %r8d, %r8d
	shlx	%edi, %ecx, %ecx
	addl	%ecx, %r8d
	movq	56(%rsi), %rcx
	movq	(%rcx,%r9), %r10
	addq	%r8, %r10
	movzbl	(%r10), %ecx
	cmpb	$-1, %cl
	jne	.L462
	movq	24(%rsi), %rcx
	lock addq	$256, (%rcx,%r8,8)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L464
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L462:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L464
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L460:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L465
	.p2align 4,,10
	.p2align 3
.L458:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17066:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17066-.LLSDACSB17066
.LLSDACSB17066:
.LLSDACSE17066:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIytE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIytE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIytE19reduction_and_resetEv._omp_fn.0:
.LFB17067:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L466
	.p2align 4,,10
	.p2align 3
.L467:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L468
	.p2align 4,,10
	.p2align 3
.L471:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L467
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L468:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L470
.L473:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L471
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L472:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L472
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L470:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L473
	.p2align 4,,10
	.p2align 3
.L466:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17067:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17067-.LLSDACSB17067
.LLSDACSB17067:
.LLSDACSE17067:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y._omp_fn.0:
.LFB17068:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rbp
	movq	24(%rcx), %rsi
	movq	16(%rcx), %rdi
	movq	8(%rcx), %rbx
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	je	.L477
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L479
.L484:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L477
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L483:
	movzbl	(%rdi,%rdx), %ecx
	movzbl	(%rsi,%rdx), %r8d
	sall	$8, %ecx
	addl	%r8d, %ecx
	movq	56(%rbx), %r8
	movslq	%ecx, %rcx
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L481
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L483
	jmp	.L477
	.p2align 4,,10
	.p2align 3
.L481:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L483
	jmp	.L477
	.p2align 4,,10
	.p2align 3
.L479:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L484
	.p2align 4,,10
	.p2align 3
.L477:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17068:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17068-.LLSDACSB17068
.LLSDACSB17068:
.LLSDACSE17068:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIyaE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyaE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIyaE19reduction_and_resetEv._omp_fn.0:
.LFB17069:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L485
	.p2align 4,,10
	.p2align 3
.L486:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L487
	.p2align 4,,10
	.p2align 3
.L490:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L486
	jmp	.L485
	.p2align 4,,10
	.p2align 3
.L487:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L489
.L492:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L490
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L491:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L491
	jmp	.L490
	.p2align 4,,10
	.p2align 3
.L489:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L485:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17069:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17069-.LLSDACSB17069
.LLSDACSB17069:
.LLSDACSE17069:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y._omp_fn.0:
.LFB17070:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %r13
	movl	36(%rcx), %ebx
	movl	32(%rcx), %edi
	movq	24(%rcx), %rbp
	movq	16(%rcx), %r12
	movq	8(%rcx), %rsi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r14d
	testq	%r13, %r13
	je	.L496
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L498
.L503:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L496
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L502:
	movzbl	(%r12,%rdx), %ecx
	movzbl	0(%rbp,%rdx), %r8d
	sarx	%ebx, %ecx, %ecx
	sarx	%ebx, %r8d, %r8d
	shlx	%edi, %ecx, %ecx
	addl	%ecx, %r8d
	movq	56(%rsi), %rcx
	movq	(%rcx,%r9), %r10
	addq	%r8, %r10
	movzbl	(%r10), %ecx
	cmpb	$-1, %cl
	jne	.L500
	movq	24(%rsi), %rcx
	lock addq	$256, (%rcx,%r8,8)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L502
	jmp	.L496
	.p2align 4,,10
	.p2align 3
.L500:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L502
	jmp	.L496
	.p2align 4,,10
	.p2align 3
.L498:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L503
	.p2align 4,,10
	.p2align 3
.L496:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17070:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17070-.LLSDACSB17070
.LLSDACSB17070:
.LLSDACSE17070:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIysE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIysE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIysE19reduction_and_resetEv._omp_fn.0:
.LFB17071:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L504
	.p2align 4,,10
	.p2align 3
.L505:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L506
	.p2align 4,,10
	.p2align 3
.L509:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L505
	jmp	.L504
	.p2align 4,,10
	.p2align 3
.L506:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L508
.L511:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L509
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L510:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L510
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L508:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L511
	.p2align 4,,10
	.p2align 3
.L504:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17071:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17071-.LLSDACSB17071
.LLSDACSB17071:
.LLSDACSE17071:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y._omp_fn.0:
.LFB17072:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	16(%rcx), %rbp
	vmovsd	32(%rcx), %xmm6
	movq	24(%rcx), %rbx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rdi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	jne	.L516
.L518:
	vmovaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	GOMP_barrier
	.p2align 4,,10
	.p2align 3
.L516:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L517
.L528:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L518
	vmovq	.LC0(%rip), %xmm4
	salq	$3, %r9
	vmovapd	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L527:
	vmovsd	64(%rbx), %xmm0
	vmovsd	(%rdi,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm2
	movl	(%rbx), %r8d
	vcomisd	%xmm0, %xmm1
	jb	.L532
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L532:
	vmovapd	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorpd	%xmm4, %xmm3, %xmm3
	vcomisd	%xmm1, %xmm3
	ja	.L521
	vaddsd	%xmm1, %xmm0, %xmm1
	vdivsd	%xmm6, %xmm1, %xmm1
	vcvttsd2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L521:
	vcomisd	%xmm0, %xmm2
	jb	.L533
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L524
	.p2align 4,,10
	.p2align 3
.L533:
	vmovapd	%xmm0, %xmm1
	vxorpd	%xmm5, %xmm1, %xmm1
	vcomisd	%xmm2, %xmm1
	ja	.L524
	vaddsd	%xmm2, %xmm0, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcvttsd2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L524:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L525
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L527
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L525:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L527
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L517:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L528
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17072:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17072-.LLSDACSB17072
.LLSDACSB17072:
.LLSDACSE17072:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjdE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjdE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjdE19reduction_and_resetEv._omp_fn.0:
.LFB17073:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L534
	.p2align 4,,10
	.p2align 3
.L535:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L536
	.p2align 4,,10
	.p2align 3
.L539:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L535
	jmp	.L534
	.p2align 4,,10
	.p2align 3
.L536:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L538
.L541:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L539
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L540:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L540
	jmp	.L539
	.p2align 4,,10
	.p2align 3
.L538:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L541
	.p2align 4,,10
	.p2align 3
.L534:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17073:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17073-.LLSDACSB17073
.LLSDACSB17073:
.LLSDACSE17073:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y._omp_fn.0:
.LFB17074:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	16(%rcx), %rbp
	vmovss	32(%rcx), %xmm6
	movq	24(%rcx), %rbx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rdi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	jne	.L546
.L548:
	vmovaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	GOMP_barrier
	.p2align 4,,10
	.p2align 3
.L546:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L547
.L558:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L548
	vmovss	.LC2(%rip), %xmm4
	salq	$3, %r9
	vmovaps	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L557:
	vmovss	64(%rbx), %xmm0
	vmovss	(%rdi,%rdx,4), %xmm1
	vmovss	(%rsi,%rdx,4), %xmm2
	movl	(%rbx), %r8d
	vcomiss	%xmm0, %xmm1
	jb	.L562
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L551
	.p2align 4,,10
	.p2align 3
.L562:
	vmovaps	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorps	%xmm4, %xmm3, %xmm3
	vcomiss	%xmm1, %xmm3
	ja	.L551
	vaddss	%xmm1, %xmm0, %xmm1
	vdivss	%xmm6, %xmm1, %xmm1
	vcvttss2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L551:
	vcomiss	%xmm0, %xmm2
	jb	.L563
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L563:
	vmovaps	%xmm0, %xmm1
	vxorps	%xmm5, %xmm1, %xmm1
	vcomiss	%xmm2, %xmm1
	ja	.L554
	vaddss	%xmm2, %xmm0, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcvttss2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L554:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L555
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L557
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L555:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L557
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L547:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L558
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17074:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17074-.LLSDACSB17074
.LLSDACSB17074:
.LLSDACSE17074:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjfE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjfE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjfE19reduction_and_resetEv._omp_fn.0:
.LFB17075:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L564
	.p2align 4,,10
	.p2align 3
.L565:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L566
	.p2align 4,,10
	.p2align 3
.L569:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L565
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L566:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L568
.L571:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L569
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L570:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L570
	jmp	.L569
	.p2align 4,,10
	.p2align 3
.L568:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L571
	.p2align 4,,10
	.p2align 3
.L564:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17075:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17075-.LLSDACSB17075
.LLSDACSB17075:
.LLSDACSE17075:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y._omp_fn.0:
.LFB17076:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	16(%rcx), %rbp
	movq	24(%rcx), %rbx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rdi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	je	.L575
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L577
.L582:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L575
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L581:
	movzbl	(%rdi,%rdx), %ecx
	movzbl	(%rsi,%rdx), %r8d
	sall	$8, %ecx
	addl	%r8d, %ecx
	movq	56(%rbx), %r8
	movslq	%ecx, %rcx
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L579
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L581
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L579:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L581
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L577:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L582
	.p2align 4,,10
	.p2align 3
.L575:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17076:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17076-.LLSDACSB17076
.LLSDACSB17076:
.LLSDACSE17076:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjhE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjhE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjhE19reduction_and_resetEv._omp_fn.0:
.LFB17077:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L583
	.p2align 4,,10
	.p2align 3
.L584:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L585
	.p2align 4,,10
	.p2align 3
.L588:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L584
	jmp	.L583
	.p2align 4,,10
	.p2align 3
.L585:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L587
.L590:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L588
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L589:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L589
	jmp	.L588
	.p2align 4,,10
	.p2align 3
.L587:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L590
	.p2align 4,,10
	.p2align 3
.L583:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17077:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17077-.LLSDACSB17077
.LLSDACSB17077:
.LLSDACSE17077:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y._omp_fn.0:
.LFB17078:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	16(%rcx), %r13
	movl	36(%rcx), %ebx
	movl	32(%rcx), %edi
	movq	24(%rcx), %rsi
	movq	8(%rcx), %rbp
	movq	(%rcx), %r12
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r14d
	testq	%r13, %r13
	je	.L594
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L596
.L601:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L594
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L600:
	movzwl	(%r12,%rdx,2), %ecx
	movzwl	0(%rbp,%rdx,2), %r8d
	sarx	%ebx, %ecx, %ecx
	sarx	%ebx, %r8d, %r8d
	shlx	%edi, %ecx, %ecx
	addl	%ecx, %r8d
	movq	56(%rsi), %rcx
	movq	(%rcx,%r9), %r10
	addq	%r8, %r10
	movzbl	(%r10), %ecx
	cmpb	$-1, %cl
	jne	.L598
	movq	24(%rsi), %rcx
	lock addl	$256, (%rcx,%r8,4)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L600
	jmp	.L594
	.p2align 4,,10
	.p2align 3
.L598:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L600
	jmp	.L594
	.p2align 4,,10
	.p2align 3
.L596:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L601
	.p2align 4,,10
	.p2align 3
.L594:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17078:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17078-.LLSDACSB17078
.LLSDACSB17078:
.LLSDACSE17078:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjtE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjtE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjtE19reduction_and_resetEv._omp_fn.0:
.LFB17079:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L602
	.p2align 4,,10
	.p2align 3
.L603:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L604
	.p2align 4,,10
	.p2align 3
.L607:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L603
	jmp	.L602
	.p2align 4,,10
	.p2align 3
.L604:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L606
.L609:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L607
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L608:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L608
	jmp	.L607
	.p2align 4,,10
	.p2align 3
.L606:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L609
	.p2align 4,,10
	.p2align 3
.L602:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17079:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17079-.LLSDACSB17079
.LLSDACSB17079:
.LLSDACSE17079:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y._omp_fn.0:
.LFB17080:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rbp
	movq	24(%rcx), %rsi
	movq	16(%rcx), %rdi
	movq	8(%rcx), %rbx
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r12d
	testq	%rbp, %rbp
	je	.L613
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L615
.L620:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L613
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L619:
	movzbl	(%rdi,%rdx), %ecx
	movzbl	(%rsi,%rdx), %r8d
	sall	$8, %ecx
	addl	%r8d, %ecx
	movq	56(%rbx), %r8
	movslq	%ecx, %rcx
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L617
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L619
	jmp	.L613
	.p2align 4,,10
	.p2align 3
.L617:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L619
	jmp	.L613
	.p2align 4,,10
	.p2align 3
.L615:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L620
	.p2align 4,,10
	.p2align 3
.L613:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17080:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17080-.LLSDACSB17080
.LLSDACSB17080:
.LLSDACSE17080:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjaE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjaE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjaE19reduction_and_resetEv._omp_fn.0:
.LFB17081:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L621
	.p2align 4,,10
	.p2align 3
.L622:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L623
	.p2align 4,,10
	.p2align 3
.L626:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L622
	jmp	.L621
	.p2align 4,,10
	.p2align 3
.L623:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L625
.L628:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L626
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L627:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L627
	jmp	.L626
	.p2align 4,,10
	.p2align 3
.L625:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L628
	.p2align 4,,10
	.p2align 3
.L621:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17081:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17081-.LLSDACSB17081
.LLSDACSB17081:
.LLSDACSE17081:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y._omp_fn.0:
.LFB17082:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %r13
	movl	36(%rcx), %ebx
	movl	32(%rcx), %edi
	movq	24(%rcx), %rbp
	movq	16(%rcx), %r12
	movq	8(%rcx), %rsi
	call	_Z22manage_thread_affinityv
	call	omp_get_thread_num
	movl	%eax, %r14d
	testq	%r13, %r13
	je	.L632
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L634
.L639:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L632
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L638:
	movzbl	(%r12,%rdx), %ecx
	movzbl	0(%rbp,%rdx), %r8d
	sarx	%ebx, %ecx, %ecx
	sarx	%ebx, %r8d, %r8d
	shlx	%edi, %ecx, %ecx
	addl	%ecx, %r8d
	movq	56(%rsi), %rcx
	movq	(%rcx,%r9), %r10
	addq	%r8, %r10
	movzbl	(%r10), %ecx
	cmpb	$-1, %cl
	jne	.L636
	movq	24(%rsi), %rcx
	lock addl	$256, (%rcx,%r8,4)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L638
	jmp	.L632
	.p2align 4,,10
	.p2align 3
.L636:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L638
	jmp	.L632
	.p2align 4,,10
	.p2align 3
.L634:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L639
	.p2align 4,,10
	.p2align 3
.L632:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17082-.LLSDACSB17082
.LLSDACSB17082:
.LLSDACSE17082:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjsE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjsE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjsE19reduction_and_resetEv._omp_fn.0:
.LFB17083:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rdi
	xorl	%esi, %esi
	call	_Z22manage_thread_affinityv
	movl	4(%rdi), %eax
	testl	%eax, %eax
	jle	.L640
	.p2align 4,,10
	.p2align 3
.L641:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L642
	.p2align 4,,10
	.p2align 3
.L645:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L641
	jmp	.L640
	.p2align 4,,10
	.p2align 3
.L642:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L644
.L647:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L645
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L646:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L646
	jmp	.L645
	.p2align 4,,10
	.p2align 3
.L644:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L647
	.p2align 4,,10
	.p2align 3
.L640:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17083:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17083-.LLSDACSB17083
.LLSDACSB17083:
.LLSDACSE17083:
	.text
	.seh_endproc
	.section	.text$_ZNK8pybind1110cast_error9set_errorEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNK8pybind1110cast_error9set_errorEv
	.def	_ZNK8pybind1110cast_error9set_errorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK8pybind1110cast_error9set_errorEv
_ZNK8pybind1110cast_error9set_errorEv:
.LFB9255:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_RuntimeError(%rip), %rax
	movq	(%rax), %rcx
	addq	$40, %rsp
	rex.W jmp	*__imp_PyErr_SetString(%rip)
	.seh_endproc
	.section	.text$_ZN8pybind1110cast_errorD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1110cast_errorD1Ev
	.def	_ZN8pybind1110cast_errorD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1110cast_errorD1Ev
_ZN8pybind1110cast_errorD1Ev:
.LFB16998:
	.seh_endprologue
	leaq	16+_ZTVN8pybind1117builtin_exceptionE(%rip), %rax
	movq	%rax, (%rcx)
	jmp	_ZNSt13runtime_errorD2Ev
	.seh_endproc
	.section	.text$_ZN8pybind1110cast_errorD0Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1110cast_errorD0Ev
	.def	_ZN8pybind1110cast_errorD0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1110cast_errorD0Ev
_ZN8pybind1110cast_errorD0Ev:
.LFB16999:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	16+_ZTVN8pybind1117builtin_exceptionE(%rip), %rax
	movq	%rax, (%rcx)
	movq	%rcx, %r12
	call	_ZNSt13runtime_errorD2Ev
	movl	$16, %edx
	movq	%r12, %rcx
	addq	$32, %rsp
	popq	%r12
	jmp	_ZdlPvy
	.seh_endproc
	.section	.text$_ZZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoyENUlPvE_4_FUNESB_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoyENUlPvE_4_FUNESB_
	.def	_ZZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoyENUlPvE_4_FUNESB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoyENUlPvE_4_FUNESB_
_ZZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoyENUlPvE_4_FUNESB_:
.LFB10951:
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
	.seh_endprologue
	movq	%rcx, %r12
	testq	%rcx, %rcx
	je	.L684
	.p2align 4,,10
	.p2align 3
.L667:
	movq	80(%r12), %rax
	movq	120(%r12), %rsi
	testq	%rax, %rax
	je	.L656
	movq	%r12, %rcx
	call	*%rax
.L656:
	movq	(%r12), %rcx
	call	free
	movq	8(%r12), %rcx
	call	free
	movq	16(%r12), %rcx
	call	free
	movq	24(%r12), %rbx
	movq	32(%r12), %rdi
	cmpq	%rdi, %rbx
	je	.L657
	.p2align 4,,10
	.p2align 3
.L661:
	movq	(%rbx), %rcx
	call	free
	movq	8(%rbx), %rcx
	call	free
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L659
	decq	(%rcx)
	jne	.L659
	movq	8(%rcx), %rax
	call	*48(%rax)
.L659:
	addq	$32, %rbx
	cmpq	%rbx, %rdi
	jne	.L661
.L657:
	movq	96(%r12), %rax
	testq	%rax, %rax
	je	.L663
	movq	24(%rax), %rcx
	call	free
	movq	96(%r12), %rcx
	testq	%rcx, %rcx
	je	.L663
	movl	$32, %edx
	call	_ZdlPvy
.L663:
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	je	.L665
	call	_ZdlPv
.L665:
	movl	$128, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	testq	%rsi, %rsi
	je	.L684
	movq	%rsi, %r12
	jmp	.L667
	.p2align 4,,10
	.p2align 3
.L684:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "Caught an unknown exception!\0"
	.section	.text$_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_
	.def	_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_
_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_:
.LFB10354:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	cmpq	$0, (%rcx)
	je	.L685
	leaq	40(%rsp), %r13
	movq	%rcx, %rdx
	movq	%r13, %rcx
	call	_ZNSt15__exception_ptr13exception_ptrC1ERKS0_
	movq	%r13, %rcx
.LEHB0:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE
.LEHE0:
.L720:
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	leaq	-1(%rbx), %rax
	cmpq	$8, %rax
	ja	.L688
	leaq	.L690(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L690:
	.long	.L698-.L690
	.long	.L697-.L690
	.long	.L696-.L690
	.long	.L695-.L690
	.long	.L694-.L690
	.long	.L693-.L690
	.long	.L692-.L690
	.long	.L691-.L690
	.long	.L689-.L690
	.section	.text$_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_,"x"
	.linkonce discard
.L698:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	vpxor	%xmm0, %xmm0, %xmm0
	movq	32(%rax), %r8
	movq	24(%rax), %rdx
	movq	$0, 32(%rax)
	movq	16(%rax), %rcx
	vmovups	%xmm0, 16(%rax)
.LEHB1:
	call	*__imp_PyErr_Restore(%rip)
.LEHE1:
.L699:
.LEHB2:
	call	__cxa_end_catch
.LEHE2:
	jmp	.L685
.L697:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
.LEHB3:
	call	*24(%rax)
.LEHE3:
	jmp	.L699
.L696:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_MemoryError(%rip), %rax
	movq	(%rax), %rcx
.LEHB4:
	call	*__imp_PyErr_SetString(%rip)
.LEHE4:
	jmp	.L699
.L695:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_ValueError(%rip), %rax
	movq	(%rax), %rcx
.LEHB5:
	call	*__imp_PyErr_SetString(%rip)
.LEHE5:
	jmp	.L699
.L694:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_ValueError(%rip), %rax
	movq	(%rax), %rcx
.LEHB6:
	call	*__imp_PyErr_SetString(%rip)
.LEHE6:
	jmp	.L699
.L693:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_ValueError(%rip), %rax
	movq	(%rax), %rcx
.LEHB7:
	call	*__imp_PyErr_SetString(%rip)
.LEHE7:
	jmp	.L699
.L692:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_IndexError(%rip), %rax
	movq	(%rax), %rcx
.LEHB8:
	call	*__imp_PyErr_SetString(%rip)
.LEHE8:
	jmp	.L699
.L691:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_ValueError(%rip), %rax
	movq	(%rax), %rcx
.LEHB9:
	call	*__imp_PyErr_SetString(%rip)
.LEHE9:
	jmp	.L699
.L689:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_RuntimeError(%rip), %rax
	movq	(%rax), %rcx
.LEHB10:
	call	*__imp_PyErr_SetString(%rip)
.LEHE10:
	jmp	.L699
.L688:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	__imp_PyExc_RuntimeError(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	(%rax), %rcx
.LEHB11:
	call	*__imp_PyErr_SetString(%rip)
.LEHE11:
	jmp	.L699
.L719:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
.LEHB12:
	call	_Unwind_Resume
.L718:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.L717:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.L716:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.L715:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.L714:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.L713:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.L712:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.L711:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
	call	_Unwind_Resume
.LEHE12:
.L710:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
.LEHB13:
	call	_Unwind_Resume
	nop
.LEHE13:
	.p2align 4,,10
	.p2align 3
.L685:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA10354:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10354-.LLSDATTD10354
.LLSDATTD10354:
	.byte	0x1
	.uleb128 .LLSDACSE10354-.LLSDACSB10354
.LLSDACSB10354:
	.uleb128 .LEHB0-.LFB10354
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L720-.LFB10354
	.uleb128 0x15
	.uleb128 .LEHB1-.LFB10354
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L719-.LFB10354
	.uleb128 0
	.uleb128 .LEHB2-.LFB10354
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB10354
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L718-.LFB10354
	.uleb128 0
	.uleb128 .LEHB4-.LFB10354
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L717-.LFB10354
	.uleb128 0
	.uleb128 .LEHB5-.LFB10354
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L716-.LFB10354
	.uleb128 0
	.uleb128 .LEHB6-.LFB10354
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L715-.LFB10354
	.uleb128 0
	.uleb128 .LEHB7-.LFB10354
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L714-.LFB10354
	.uleb128 0
	.uleb128 .LEHB8-.LFB10354
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L713-.LFB10354
	.uleb128 0
	.uleb128 .LEHB9-.LFB10354
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L712-.LFB10354
	.uleb128 0
	.uleb128 .LEHB10-.LFB10354
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L711-.LFB10354
	.uleb128 0
	.uleb128 .LEHB11-.LFB10354
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L710-.LFB10354
	.uleb128 0
	.uleb128 .LEHB12-.LFB10354
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB10354
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE10354:
	.byte	0xa
	.byte	0
	.byte	0x9
	.byte	0x7d
	.byte	0x8
	.byte	0x7d
	.byte	0x7
	.byte	0x7d
	.byte	0x6
	.byte	0x7d
	.byte	0x5
	.byte	0x7d
	.byte	0x4
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.byte	0x7d
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

	.long	.LDFCM0-.
	.long	.LDFCM1-.
	.long	.LDFCM2-.
	.long	.LDFCM3-.
	.long	.LDFCM4-.
	.long	.LDFCM5-.
	.long	.LDFCM6-.
	.long	.LDFCM7-.
	.long	.LDFCM8-.
.LLSDATT10354:
	.section	.text$_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_,"x"
	.linkonce discard
	.seh_endproc
	.text
	.p2align 4
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB10357:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	16+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rbx
	testq	%rbx, %rbx
	je	.L722
	.p2align 4,,10
	.p2align 3
.L723:
	movq	%rbx, %rcx
	movq	(%rbx), %rbx
	call	_ZdlPv
	testq	%rbx, %rbx
	jne	.L723
.L722:
	movq	8+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %r8
	movq	_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rcx
	xorl	%edx, %edx
	salq	$3, %r8
	call	memset
	movq	_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rcx
	leaq	48+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rax
	movq	$0, 24+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movq	$0, 16+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	cmpq	%rax, %rcx
	je	.L729
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L729:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.def	_ZL9vsnprintfPcyPKcS_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL9vsnprintfPcyPKcS_
_ZL9vsnprintfPcyPKcS_:
.LFB6876:
	.seh_endprologue
	jmp	__mingw_vsnprintf
	.seh_endproc
	.section	.text$_ZZN8pybind117capsuleC4EPKvPFvPvEENUlP7_objectE_4_FUNES7_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZZN8pybind117capsuleC4EPKvPFvPvEENUlP7_objectE_4_FUNES7_
	.def	_ZZN8pybind117capsuleC4EPKvPFvPvEENUlP7_objectE_4_FUNES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN8pybind117capsuleC4EPKvPFvPvEENUlP7_objectE_4_FUNES7_
_ZZN8pybind117capsuleC4EPKvPFvPvEENUlP7_objectE_4_FUNES7_:
.LFB9810:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r12
	call	*__imp_PyCapsule_GetContext(%rip)
	movq	%r12, %rcx
	xorl	%edx, %edx
	movq	%rax, %rbx
	call	*__imp_PyCapsule_GetPointer(%rip)
	movq	%rax, %rcx
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	rex.W jmp	*%rax
	.seh_endproc
	.text
	.p2align 4
	.def	_ZN9HistogramIydE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIydE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramIydE10accumulateIdEEvPT_y._omp_fn.0:
.LFB17036:
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
	jbe	.L752
	leaq	-4(%r15), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L734:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rbx,%rdx)
	cmpq	%rcx, %rax
	ja	.L734
	leaq	0(,%rax,4), %rdx
	salq	$5, %rax
	addq	%rbx, %rax
	cmpq	%rdx, %r15
	je	.L763
	leaq	1(%rdx), %rcx
	movq	$0, (%rax)
	cmpq	%rcx, %r13
	jb	.L764
	addq	$2, %rdx
	movq	$0, 8(%rax)
	cmpq	%rdx, %r13
	jb	.L765
	movq	$0, 16(%rax)
	vzeroupper
	jmp	.L736
	.p2align 4,,10
	.p2align 3
.L752:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L733:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r13
	jnb	.L733
	jmp	.L736
	.p2align 4,,10
	.p2align 3
.L763:
	vzeroupper
	jmp	.L736
.L764:
	vzeroupper
	jmp	.L736
.L765:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L736:
	cmpq	$0, -72(%rbp)
	jne	.L737
	.p2align 4,,10
	.p2align 3
.L742:
	call	GOMP_atomic_start
	cmpq	$2, %r13
	jbe	.L753
	leaq	-4(%r15), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L739:
	vmovdqu	(%rsi,%rax), %ymm4
	vpaddq	(%rbx,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L739
	leaq	0(,%rcx,4), %rax
	salq	$5, %rcx
	leaq	(%rbx,%rcx), %rdi
	addq	%rcx, %rsi
	cmpq	%rax, %r15
	jne	.L766
	vzeroupper
	jmp	.L740
	.p2align 4,,10
	.p2align 3
.L753:
	xorl	%eax, %eax
	jmp	.L738
	.p2align 4,,10
	.p2align 3
.L766:
	vzeroupper
.L738:
	movq	(%rdi), %rdx
	addq	%rdx, (%rsi)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %r13
	jb	.L740
	addq	$2, %rax
	movq	8(%rdi), %rdx
	addq	%rdx, 8(%rsi)
	cmpq	%rax, %r13
	jb	.L740
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L740:
	call	GOMP_atomic_end
	jmp	.L760
	.p2align 4,,10
	.p2align 3
.L737:
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
	jb	.L741
.L751:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L742
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
.L750:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L761
	incq	(%r10)
	jmp	.L745
	.p2align 4,,10
	.p2align 3
.L761:
	vcomisd	%xmm0, %xmm2
	jbe	.L762
	incq	(%rbx)
	jmp	.L745
	.p2align 4,,10
	.p2align 3
.L762:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L748
	vcvttsd2siq	%xmm0, %rax
	jmp	.L749
	.p2align 4,,10
	.p2align 3
.L748:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L749:
	incq	(%rbx,%rax,8)
.L745:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L750
	jmp	.L742
	.p2align 4,,10
	.p2align 3
.L741:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L751
	.p2align 4,,10
	.p2align 3
.L760:
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
.LLSDA17036:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17036-.LLSDACSB17036
.LLSDACSB17036:
.LLSDACSE17036:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIyfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIyfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramIyfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB17037:
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
	jbe	.L787
	leaq	-4(%r15), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$2, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L769:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rbx,%rdx)
	cmpq	%rcx, %rax
	ja	.L769
	leaq	0(,%rax,4), %rdx
	salq	$5, %rax
	addq	%rbx, %rax
	cmpq	%rdx, %r15
	je	.L798
	leaq	1(%rdx), %rcx
	movq	$0, (%rax)
	cmpq	%rcx, %r13
	jb	.L799
	addq	$2, %rdx
	movq	$0, 8(%rax)
	cmpq	%rdx, %r13
	jb	.L800
	movq	$0, 16(%rax)
	vzeroupper
	jmp	.L771
	.p2align 4,,10
	.p2align 3
.L787:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L768:
	movq	$0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r13
	jnb	.L768
	jmp	.L771
	.p2align 4,,10
	.p2align 3
.L798:
	vzeroupper
	jmp	.L771
.L799:
	vzeroupper
	jmp	.L771
.L800:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L771:
	cmpq	$0, -72(%rbp)
	jne	.L772
	.p2align 4,,10
	.p2align 3
.L777:
	call	GOMP_atomic_start
	cmpq	$2, %r13
	jbe	.L788
	leaq	-4(%r15), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$2, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L774:
	vmovdqu	(%rsi,%rax), %ymm4
	vpaddq	(%rbx,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L774
	leaq	0(,%rcx,4), %rax
	salq	$5, %rcx
	leaq	(%rbx,%rcx), %rdi
	addq	%rcx, %rsi
	cmpq	%rax, %r15
	jne	.L801
	vzeroupper
	jmp	.L775
	.p2align 4,,10
	.p2align 3
.L788:
	xorl	%eax, %eax
	jmp	.L773
	.p2align 4,,10
	.p2align 3
.L801:
	vzeroupper
.L773:
	movq	(%rdi), %rdx
	addq	%rdx, (%rsi)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %r13
	jb	.L775
	addq	$2, %rax
	movq	8(%rdi), %rdx
	addq	%rdx, 8(%rsi)
	cmpq	%rax, %r13
	jb	.L775
	movq	16(%rdi), %rax
	addq	%rax, 16(%rsi)
.L775:
	call	GOMP_atomic_end
	jmp	.L795
	.p2align 4,,10
	.p2align 3
.L772:
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
	jb	.L776
.L786:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L777
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
.L785:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L796
	incq	(%r10)
	jmp	.L780
	.p2align 4,,10
	.p2align 3
.L796:
	vcomiss	%xmm0, %xmm2
	jbe	.L797
	incq	(%rbx)
	jmp	.L780
	.p2align 4,,10
	.p2align 3
.L797:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L783
	vcvttss2siq	%xmm0, %rax
	jmp	.L784
	.p2align 4,,10
	.p2align 3
.L783:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L784:
	incq	(%rbx,%rax,8)
.L780:
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L785
	jmp	.L777
	.p2align 4,,10
	.p2align 3
.L776:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L786
	.p2align 4,,10
	.p2align 3
.L795:
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
.LLSDA17037:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17037-.LLSDACSB17037
.LLSDACSB17037:
.LLSDACSE17037:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjdE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjdE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramIjdE10accumulateIdEEvPT_y._omp_fn.0:
.LFB17042:
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
	jbe	.L822
	leaq	-8(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L804:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L804
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L833
	leaq	1(%rdx), %rcx
	movl	$0, (%rax)
	cmpq	%rcx, %rdi
	jb	.L834
	leaq	2(%rdx), %rcx
	movl	$0, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L835
	leaq	3(%rdx), %rcx
	movl	$0, 8(%rax)
	cmpq	%rcx, %rdi
	jb	.L836
	leaq	4(%rdx), %rcx
	movl	$0, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L837
	leaq	5(%rdx), %rcx
	movl	$0, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L838
	addq	$6, %rdx
	movl	$0, 20(%rax)
	cmpq	%rdx, %rdi
	jb	.L839
	movl	$0, 24(%rax)
	vzeroupper
	jmp	.L806
	.p2align 4,,10
	.p2align 3
.L822:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L803:
	movl	$0, (%rsi,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L803
	jmp	.L806
	.p2align 4,,10
	.p2align 3
.L833:
	vzeroupper
	jmp	.L806
.L834:
	vzeroupper
	jmp	.L806
.L835:
	vzeroupper
	jmp	.L806
.L836:
	vzeroupper
	jmp	.L806
.L837:
	vzeroupper
	jmp	.L806
.L838:
	vzeroupper
	jmp	.L806
.L839:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L806:
	cmpq	$0, -72(%rbp)
	jne	.L807
	.p2align 4,,10
	.p2align 3
.L812:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L823
	leaq	-8(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L809:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddd	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L809
	leaq	0(,%rcx,8), %rax
	salq	$5, %rcx
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L840
	vzeroupper
	jmp	.L810
	.p2align 4,,10
	.p2align 3
.L823:
	xorl	%eax, %eax
	jmp	.L808
	.p2align 4,,10
	.p2align 3
.L840:
	vzeroupper
.L808:
	movl	(%r12), %edx
	addl	%edx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L810
	movl	4(%r12), %edx
	addl	%edx, 4(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L810
	movl	8(%r12), %edx
	addl	%edx, 8(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L810
	movl	12(%r12), %edx
	addl	%edx, 12(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L810
	movl	16(%r12), %edx
	addl	%edx, 16(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L810
	addq	$6, %rax
	movl	20(%r12), %edx
	addl	%edx, 20(%rbx)
	cmpq	%rax, %rdi
	jb	.L810
	movl	24(%r12), %eax
	addl	%eax, 24(%rbx)
.L810:
	call	GOMP_atomic_end
	jmp	.L830
	.p2align 4,,10
	.p2align 3
.L807:
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
	jb	.L811
.L821:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L812
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
.L820:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L831
	incl	(%r10)
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L831:
	vcomisd	%xmm0, %xmm2
	jbe	.L832
	incl	(%rsi)
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L832:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L818
	vcvttsd2siq	%xmm0, %rax
	jmp	.L819
	.p2align 4,,10
	.p2align 3
.L818:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L819:
	incl	(%rsi,%rax,4)
.L815:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L820
	jmp	.L812
	.p2align 4,,10
	.p2align 3
.L811:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L821
	.p2align 4,,10
	.p2align 3
.L830:
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
.LLSDA17042:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17042-.LLSDACSB17042
.LLSDACSB17042:
.LLSDACSE17042:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramIjfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramIjfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramIjfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB17043:
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
	jbe	.L861
	leaq	-8(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$3, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L843:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L843
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L872
	leaq	1(%rdx), %rcx
	movl	$0, (%rax)
	cmpq	%rcx, %rdi
	jb	.L873
	leaq	2(%rdx), %rcx
	movl	$0, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L874
	leaq	3(%rdx), %rcx
	movl	$0, 8(%rax)
	cmpq	%rcx, %rdi
	jb	.L875
	leaq	4(%rdx), %rcx
	movl	$0, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L876
	leaq	5(%rdx), %rcx
	movl	$0, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L877
	addq	$6, %rdx
	movl	$0, 20(%rax)
	cmpq	%rdx, %rdi
	jb	.L878
	movl	$0, 24(%rax)
	vzeroupper
	jmp	.L845
	.p2align 4,,10
	.p2align 3
.L861:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L842:
	movl	$0, (%rsi,%rax,4)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L842
	jmp	.L845
	.p2align 4,,10
	.p2align 3
.L872:
	vzeroupper
	jmp	.L845
.L873:
	vzeroupper
	jmp	.L845
.L874:
	vzeroupper
	jmp	.L845
.L875:
	vzeroupper
	jmp	.L845
.L876:
	vzeroupper
	jmp	.L845
.L877:
	vzeroupper
	jmp	.L845
.L878:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L845:
	cmpq	$0, -72(%rbp)
	jne	.L846
	.p2align 4,,10
	.p2align 3
.L851:
	call	GOMP_atomic_start
	cmpq	$6, %rdi
	jbe	.L862
	leaq	-8(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$3, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L848:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddd	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L848
	leaq	0(,%rcx,8), %rax
	salq	$5, %rcx
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L879
	vzeroupper
	jmp	.L849
	.p2align 4,,10
	.p2align 3
.L862:
	xorl	%eax, %eax
	jmp	.L847
	.p2align 4,,10
	.p2align 3
.L879:
	vzeroupper
.L847:
	movl	(%r12), %edx
	addl	%edx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L849
	movl	4(%r12), %edx
	addl	%edx, 4(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L849
	movl	8(%r12), %edx
	addl	%edx, 8(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L849
	movl	12(%r12), %edx
	addl	%edx, 12(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L849
	movl	16(%r12), %edx
	addl	%edx, 16(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L849
	addq	$6, %rax
	movl	20(%r12), %edx
	addl	%edx, 20(%rbx)
	cmpq	%rax, %rdi
	jb	.L849
	movl	24(%r12), %eax
	addl	%eax, 24(%rbx)
.L849:
	call	GOMP_atomic_end
	jmp	.L869
	.p2align 4,,10
	.p2align 3
.L846:
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
	jb	.L850
.L860:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L851
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
.L859:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L870
	incl	(%r10)
	jmp	.L854
	.p2align 4,,10
	.p2align 3
.L870:
	vcomiss	%xmm0, %xmm2
	jbe	.L871
	incl	(%rsi)
	jmp	.L854
	.p2align 4,,10
	.p2align 3
.L871:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L857
	vcvttss2siq	%xmm0, %rax
	jmp	.L858
	.p2align 4,,10
	.p2align 3
.L857:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L858:
	incl	(%rsi,%rax,4)
.L854:
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L859
	jmp	.L851
	.p2align 4,,10
	.p2align 3
.L850:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L860
	.p2align 4,,10
	.p2align 3
.L869:
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
.LLSDA17043:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17043-.LLSDACSB17043
.LLSDACSB17043:
.LLSDACSE17043:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItdE10accumulateIdEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItdE10accumulateIdEEvPT_y._omp_fn.0
_ZN9HistogramItdE10accumulateIdEEvPT_y._omp_fn.0:
.LFB17048:
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
	jbe	.L900
	leaq	-16(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L882:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L882
	movq	%rax, %rdx
	salq	$5, %rax
	salq	$4, %rdx
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L911
	xorl	%r15d, %r15d
	leaq	1(%rdx), %rcx
	movw	%r15w, (%rax)
	cmpq	%rcx, %rdi
	jb	.L912
	xorl	%r11d, %r11d
	leaq	2(%rdx), %rcx
	movw	%r11w, 2(%rax)
	cmpq	%rcx, %rdi
	jb	.L913
	xorl	%r9d, %r9d
	leaq	3(%rdx), %rcx
	movw	%r9w, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L914
	xorl	%r8d, %r8d
	leaq	4(%rdx), %rcx
	movw	%r8w, 6(%rax)
	cmpq	%rcx, %rdi
	jb	.L915
	xorl	%ecx, %ecx
	movw	%cx, 8(%rax)
	leaq	5(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L916
	xorl	%r15d, %r15d
	leaq	6(%rdx), %rcx
	movw	%r15w, 10(%rax)
	cmpq	%rcx, %rdi
	jb	.L917
	xorl	%r11d, %r11d
	leaq	7(%rdx), %rcx
	movw	%r11w, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L918
	xorl	%r9d, %r9d
	leaq	8(%rdx), %rcx
	movw	%r9w, 14(%rax)
	cmpq	%rcx, %rdi
	jb	.L919
	xorl	%r8d, %r8d
	leaq	9(%rdx), %rcx
	movw	%r8w, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L920
	xorl	%ecx, %ecx
	movw	%cx, 18(%rax)
	leaq	10(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L921
	xorl	%r15d, %r15d
	leaq	11(%rdx), %rcx
	movw	%r15w, 20(%rax)
	cmpq	%rcx, %rdi
	jb	.L922
	xorl	%r11d, %r11d
	leaq	12(%rdx), %rcx
	movw	%r11w, 22(%rax)
	cmpq	%rcx, %rdi
	jb	.L923
	xorl	%r9d, %r9d
	leaq	13(%rdx), %rcx
	movw	%r9w, 24(%rax)
	cmpq	%rcx, %rdi
	jb	.L924
	xorl	%r8d, %r8d
	addq	$14, %rdx
	movw	%r8w, 26(%rax)
	cmpq	%rdx, %rdi
	jb	.L925
	xorl	%ecx, %ecx
	movw	%cx, 28(%rax)
	vzeroupper
	jmp	.L884
	.p2align 4,,10
	.p2align 3
.L900:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L881:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L881
	jmp	.L884
.L911:
	vzeroupper
	jmp	.L884
.L912:
	vzeroupper
	jmp	.L884
.L913:
	vzeroupper
	jmp	.L884
.L914:
	vzeroupper
	jmp	.L884
.L915:
	vzeroupper
	jmp	.L884
.L916:
	vzeroupper
	jmp	.L884
.L917:
	vzeroupper
	jmp	.L884
.L918:
	vzeroupper
	jmp	.L884
.L919:
	vzeroupper
	jmp	.L884
.L920:
	vzeroupper
	jmp	.L884
.L921:
	vzeroupper
	jmp	.L884
.L922:
	vzeroupper
	jmp	.L884
.L923:
	vzeroupper
	jmp	.L884
.L924:
	vzeroupper
	jmp	.L884
.L925:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L884:
	cmpq	$0, -72(%rbp)
	jne	.L885
	.p2align 4,,10
	.p2align 3
.L890:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L901
	leaq	-16(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L887:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddw	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L887
	movq	%rcx, %rax
	salq	$5, %rcx
	salq	$4, %rax
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L926
	vzeroupper
	jmp	.L888
	.p2align 4,,10
	.p2align 3
.L901:
	xorl	%eax, %eax
	jmp	.L886
	.p2align 4,,10
	.p2align 3
.L926:
	vzeroupper
.L886:
	movzwl	(%r12), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	2(%r12), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	4(%r12), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	6(%r12), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	8(%r12), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	10(%r12), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	12(%r12), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	14(%r12), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	16(%r12), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	18(%r12), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	20(%r12), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	22(%r12), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	movzwl	24(%r12), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L888
	addq	$14, %rax
	movzwl	26(%r12), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L888
	movzwl	28(%r12), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L888:
	call	GOMP_atomic_end
	jmp	.L908
	.p2align 4,,10
	.p2align 3
.L885:
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
	jb	.L889
.L899:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L890
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
.L898:
	vmovsd	(%rdx), %xmm0
	vcomisd	%xmm1, %xmm0
	jb	.L909
	incw	(%r10)
	jmp	.L893
	.p2align 4,,10
	.p2align 3
.L909:
	vcomisd	%xmm0, %xmm2
	jbe	.L910
	incw	(%rsi)
	jmp	.L893
	.p2align 4,,10
	.p2align 3
.L910:
	vaddsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcomisd	%xmm3, %xmm0
	jnb	.L896
	vcvttsd2siq	%xmm0, %rax
	jmp	.L897
	.p2align 4,,10
	.p2align 3
.L896:
	vsubsd	%xmm3, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %rax
	xorq	%r11, %rax
.L897:
	incw	(%rsi,%rax,2)
.L893:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.L898
	jmp	.L890
	.p2align 4,,10
	.p2align 3
.L889:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L899
	.p2align 4,,10
	.p2align 3
.L908:
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
.LLSDA17048:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17048-.LLSDACSB17048
.LLSDACSB17048:
.LLSDACSE17048:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN9HistogramItfE10accumulateIfEEvPT_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9HistogramItfE10accumulateIfEEvPT_y._omp_fn.0
_ZN9HistogramItfE10accumulateIfEEvPT_y._omp_fn.0:
.LFB17049:
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
	jbe	.L947
	leaq	-16(%r13), %rax
	xorl	%ecx, %ecx
	vpxor	%xmm0, %xmm0, %xmm0
	shrq	$4, %rax
	incq	%rax
	.p2align 4,,10
	.p2align 3
.L929:
	movq	%rcx, %rdx
	incq	%rcx
	salq	$5, %rdx
	vmovdqu	%ymm0, (%rsi,%rdx)
	cmpq	%rcx, %rax
	ja	.L929
	movq	%rax, %rdx
	salq	$5, %rax
	salq	$4, %rdx
	addq	%rsi, %rax
	cmpq	%rdx, %r13
	je	.L958
	xorl	%r15d, %r15d
	leaq	1(%rdx), %rcx
	movw	%r15w, (%rax)
	cmpq	%rcx, %rdi
	jb	.L959
	xorl	%r11d, %r11d
	leaq	2(%rdx), %rcx
	movw	%r11w, 2(%rax)
	cmpq	%rcx, %rdi
	jb	.L960
	xorl	%r9d, %r9d
	leaq	3(%rdx), %rcx
	movw	%r9w, 4(%rax)
	cmpq	%rcx, %rdi
	jb	.L961
	xorl	%r8d, %r8d
	leaq	4(%rdx), %rcx
	movw	%r8w, 6(%rax)
	cmpq	%rcx, %rdi
	jb	.L962
	xorl	%ecx, %ecx
	movw	%cx, 8(%rax)
	leaq	5(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L963
	xorl	%r15d, %r15d
	leaq	6(%rdx), %rcx
	movw	%r15w, 10(%rax)
	cmpq	%rcx, %rdi
	jb	.L964
	xorl	%r11d, %r11d
	leaq	7(%rdx), %rcx
	movw	%r11w, 12(%rax)
	cmpq	%rcx, %rdi
	jb	.L965
	xorl	%r9d, %r9d
	leaq	8(%rdx), %rcx
	movw	%r9w, 14(%rax)
	cmpq	%rcx, %rdi
	jb	.L966
	xorl	%r8d, %r8d
	leaq	9(%rdx), %rcx
	movw	%r8w, 16(%rax)
	cmpq	%rcx, %rdi
	jb	.L967
	xorl	%ecx, %ecx
	movw	%cx, 18(%rax)
	leaq	10(%rdx), %rcx
	cmpq	%rcx, %rdi
	jb	.L968
	xorl	%r15d, %r15d
	leaq	11(%rdx), %rcx
	movw	%r15w, 20(%rax)
	cmpq	%rcx, %rdi
	jb	.L969
	xorl	%r11d, %r11d
	leaq	12(%rdx), %rcx
	movw	%r11w, 22(%rax)
	cmpq	%rcx, %rdi
	jb	.L970
	xorl	%r9d, %r9d
	leaq	13(%rdx), %rcx
	movw	%r9w, 24(%rax)
	cmpq	%rcx, %rdi
	jb	.L971
	xorl	%r8d, %r8d
	addq	$14, %rdx
	movw	%r8w, 26(%rax)
	cmpq	%rdx, %rdi
	jb	.L972
	xorl	%ecx, %ecx
	movw	%cx, 28(%rax)
	vzeroupper
	jmp	.L931
	.p2align 4,,10
	.p2align 3
.L947:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L928:
	xorl	%edx, %edx
	movw	%dx, (%rsi,%rax,2)
	incq	%rax
	cmpq	%rax, %rdi
	jnb	.L928
	jmp	.L931
.L958:
	vzeroupper
	jmp	.L931
.L959:
	vzeroupper
	jmp	.L931
.L960:
	vzeroupper
	jmp	.L931
.L961:
	vzeroupper
	jmp	.L931
.L962:
	vzeroupper
	jmp	.L931
.L963:
	vzeroupper
	jmp	.L931
.L964:
	vzeroupper
	jmp	.L931
.L965:
	vzeroupper
	jmp	.L931
.L966:
	vzeroupper
	jmp	.L931
.L967:
	vzeroupper
	jmp	.L931
.L968:
	vzeroupper
	jmp	.L931
.L969:
	vzeroupper
	jmp	.L931
.L970:
	vzeroupper
	jmp	.L931
.L971:
	vzeroupper
	jmp	.L931
.L972:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L931:
	cmpq	$0, -72(%rbp)
	jne	.L932
	.p2align 4,,10
	.p2align 3
.L937:
	call	GOMP_atomic_start
	cmpq	$14, %rdi
	jbe	.L948
	leaq	-16(%r13), %rcx
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %rcx
	incq	%rcx
	.p2align 4,,10
	.p2align 3
.L934:
	vmovdqu	(%rbx,%rax), %ymm4
	vpaddw	(%rsi,%rax), %ymm4, %ymm0
	incq	%rdx
	vmovdqu	%ymm0, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.L934
	movq	%rcx, %rax
	salq	$5, %rcx
	salq	$4, %rax
	leaq	(%rsi,%rcx), %r12
	addq	%rcx, %rbx
	cmpq	%rax, %r13
	jne	.L973
	vzeroupper
	jmp	.L935
	.p2align 4,,10
	.p2align 3
.L948:
	xorl	%eax, %eax
	jmp	.L933
	.p2align 4,,10
	.p2align 3
.L973:
	vzeroupper
.L933:
	movzwl	(%r12), %edx
	addw	%dx, (%rbx)
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	2(%r12), %edx
	addw	%dx, 2(%rbx)
	leaq	2(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	4(%r12), %edx
	addw	%dx, 4(%rbx)
	leaq	3(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	6(%r12), %edx
	addw	%dx, 6(%rbx)
	leaq	4(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	8(%r12), %edx
	addw	%dx, 8(%rbx)
	leaq	5(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	10(%r12), %edx
	addw	%dx, 10(%rbx)
	leaq	6(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	12(%r12), %edx
	addw	%dx, 12(%rbx)
	leaq	7(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	14(%r12), %edx
	addw	%dx, 14(%rbx)
	leaq	8(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	16(%r12), %edx
	addw	%dx, 16(%rbx)
	leaq	9(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	18(%r12), %edx
	addw	%dx, 18(%rbx)
	leaq	10(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	20(%r12), %edx
	addw	%dx, 20(%rbx)
	leaq	11(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	22(%r12), %edx
	addw	%dx, 22(%rbx)
	leaq	12(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	movzwl	24(%r12), %edx
	addw	%dx, 24(%rbx)
	leaq	13(%rax), %rdx
	cmpq	%rdx, %rdi
	jb	.L935
	addq	$14, %rax
	movzwl	26(%r12), %edx
	addw	%dx, 26(%rbx)
	cmpq	%rax, %rdi
	jb	.L935
	movzwl	28(%r12), %eax
	addw	%ax, 28(%rbx)
	.p2align 4,,10
	.p2align 3
.L935:
	call	GOMP_atomic_end
	jmp	.L955
	.p2align 4,,10
	.p2align 3
.L932:
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
	jb	.L936
.L946:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L937
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
.L945:
	vmovss	(%rdx), %xmm0
	vcomiss	%xmm1, %xmm0
	jb	.L956
	incw	(%r10)
	jmp	.L940
	.p2align 4,,10
	.p2align 3
.L956:
	vcomiss	%xmm0, %xmm2
	jbe	.L957
	incw	(%rsi)
	jmp	.L940
	.p2align 4,,10
	.p2align 3
.L957:
	vaddss	%xmm0, %xmm1, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcomiss	.LC3(%rip), %xmm0
	jnb	.L943
	vcvttss2siq	%xmm0, %rax
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L943:
	vsubss	%xmm3, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	xorq	%r11, %rax
.L944:
	incw	(%rsi,%rax,2)
.L940:
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L945
	jmp	.L937
	.p2align 4,,10
	.p2align 3
.L936:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L946
	.p2align 4,,10
	.p2align 3
.L955:
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
.LLSDA17049:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17049-.LLSDACSB17049
.LLSDACSB17049:
.LLSDACSE17049:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZN8pybind1112cpp_function20make_function_recordEv.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8pybind1112cpp_function20make_function_recordEv.isra.0
_ZN8pybind1112cpp_function20make_function_recordEv.isra.0:
.LFB17300:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$128, %ecx
	call	_Znwy
	vpxor	%xmm0, %xmm0, %xmm0
	andw	$-32768, 88(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	vmovdqu	%ymm0, (%rax)
	vmovdqu	%ymm0, 96(%rax)
	vzeroupper
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "%i.%i\0"
	.text
	.p2align 4
	.def	_ZL6sscanfPKcS0_z.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL6sscanfPKcS0_z.constprop.0
_ZL6sscanfPKcS0_z.constprop.0:
.LFB17650:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	.LC5(%rip), %rdx
	movq	%r8, 80(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 88(%rsp)
	movq	%r8, 40(%rsp)
	call	__mingw_vsscanf
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4
	.def	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.0
_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.0:
.LFB17651:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%r8, %rdx
	movq	%rcx, %r12
	movq	%r9, %r8
	leaq	31(%rdx), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	movq	%rbp, %r9
	movq	%rbp, -96(%rbp)
	leaq	63(%rsp), %r13
	andq	$-32, %r13
	movq	%r13, %rcx
	call	__mingw_vsnprintf
	leaq	16(%r12), %rcx
	movslq	%eax, %rbx
	movq	%rcx, (%r12)
	movq	%rbx, -88(%rbp)
	cmpq	$15, %rbx
	ja	.L984
	cmpq	$1, %rbx
	jne	.L979
	movzbl	0(%r13), %eax
	movb	%al, 16(%r12)
.L980:
	movq	%r12, %rax
	movq	%rbx, 8(%r12)
	movb	$0, (%rcx,%rbx)
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L979:
	testq	%rbx, %rbx
	je	.L980
	jmp	.L978
	.p2align 4,,10
	.p2align 3
.L984:
	movq	%r12, %rcx
	leaq	-88(%rbp), %rdx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, (%r12)
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rax, 16(%r12)
.L978:
	movq	%rbx, %r8
	movq	%r13, %rdx
	call	memcpy
	movq	-88(%rbp), %rbx
	movq	(%r12), %rcx
	jmp	.L980
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "basic_string::append\0"
.LC7:
	.ascii ": No constructor defined!\0"
	.section	.text$pybind11_object_init,"x"
	.linkonce discard
	.p2align 4
	.globl	pybind11_object_init
	.def	pybind11_object_init;	.scl	2;	.type	32;	.endef
	.seh_proc	pybind11_object_init
pybind11_object_init:
.LFB10845:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	8(%rcx), %rax
	leaq	48(%rsp), %rbx
	movb	$0, 48(%rsp)
	leaq	32(%rsp), %r13
	movq	%rbx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	24(%rax), %r12
	movq	%r12, %rcx
	call	strlen
	movq	%rax, %r8
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %r8
	jbe	.L986
	leaq	.LC6(%rip), %rcx
.LEHB14:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L986:
	movq	%r12, %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movabsq	$4611686018427387903, %rax
	subq	40(%rsp), %rax
	cmpq	$24, %rax
	ja	.L987
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L987:
	movl	$25, %r8d
	leaq	.LC7(%rip), %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	__imp_PyExc_TypeError(%rip), %rax
	movq	32(%rsp), %rdx
	movq	(%rax), %rcx
	call	*__imp_PyErr_SetString(%rip)
.LEHE14:
	movq	32(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L992
	call	_ZdlPv
	jmp	.L992
.L991:
	movq	32(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rbx, %rcx
	je	.L993
	vzeroupper
	call	_ZdlPv
	jmp	.L990
.L993:
	vzeroupper
.L990:
	movq	%r12, %rcx
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
	.p2align 4,,10
	.p2align 3
.L992:
	movl	$-1, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10845:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10845-.LLSDACSB10845
.LLSDACSB10845:
	.uleb128 .LEHB14-.LFB10845
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L991-.LFB10845
	.uleb128 0
	.uleb128 .LEHB15-.LFB10845
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE10845:
	.section	.text$pybind11_object_init,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 2
	.p2align 4
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0:
.LFB17419:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	16(%rcx), %r13
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r13, (%rcx)
	testq	%rdx, %rdx
	je	.L1003
	movq	%rdx, %rcx
	call	strlen
	movq	%rax, 40(%rsp)
	movq	%rax, %rsi
	cmpq	$15, %rax
	ja	.L1004
	cmpq	$1, %rax
	jne	.L998
	movzbl	(%r12), %edx
	movb	%dl, 16(%rbx)
.L999:
	movq	%rax, 8(%rbx)
	movb	$0, 0(%r13,%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L998:
	testq	%rax, %rax
	je	.L999
	jmp	.L997
	.p2align 4,,10
	.p2align 3
.L1004:
	leaq	40(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, (%rbx)
	movq	%rax, %r13
	movq	40(%rsp), %rax
	movq	%rax, 16(%rbx)
.L997:
	movq	%r13, %rcx
	movq	%rsi, %r8
	movq	%r12, %rdx
	call	memcpy
	movq	40(%rsp), %rax
	movq	(%rbx), %r13
	jmp	.L999
	.p2align 4,,10
	.p2align 3
.L1003:
	leaq	.LC8(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZN8pybind1113pybind11_failEPKc,"x"
	.linkonce discard
	.globl	_ZN8pybind1113pybind11_failEPKc
	.def	_ZN8pybind1113pybind11_failEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1113pybind11_failEPKc
_ZN8pybind1113pybind11_failEPKc:
.LFB9263:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r13
	movl	$16, %ecx
	call	__cxa_allocate_exception
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB16:
	call	_ZNSt13runtime_errorC1EPKc
.LEHE16:
	leaq	_ZNSt13runtime_errorD1Ev(%rip), %r8
	leaq	_ZTISt13runtime_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB17:
	call	__cxa_throw
.L1007:
	movq	%rax, %r13
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	movq	%r13, %rcx
	call	_Unwind_Resume
	nop
.LEHE17:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9263:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9263-.LLSDACSB9263
.LLSDACSB9263:
	.uleb128 .LEHB16-.LFB9263
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L1007-.LFB9263
	.uleb128 0
	.uleb128 .LEHB17-.LFB9263
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE9263:
	.section	.text$_ZN8pybind1113pybind11_failEPKc,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.globl	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB9264:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r13
	movl	$16, %ecx
	call	__cxa_allocate_exception
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB18:
	call	_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE18:
	leaq	_ZNSt13runtime_errorD1Ev(%rip), %r8
	leaq	_ZTISt13runtime_error(%rip), %rdx
	movq	%r12, %rcx
.LEHB19:
	call	__cxa_throw
.L1010:
	movq	%rax, %r13
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	movq	%r13, %rcx
	call	_Unwind_Resume
	nop
.LEHE19:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9264:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9264-.LLSDACSB9264
.LLSDACSB9264:
	.uleb128 .LEHB18-.LFB9264
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L1010-.LFB9264
	.uleb128 0
	.uleb128 .LEHB19-.LFB9264
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE9264:
	.section	.text$_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "Unable to extract string contents! (encoding issue)\0"
	.align 8
.LC10:
	.ascii "Unable to extract string contents! (invalid type)\0"
	.section	.text$_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
	.def	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv:
.LFB9593:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	(%rdx), %r12
	movq	%rcx, %r13
	testq	%r12, %r12
	je	.L1012
	incq	(%r12)
.L1012:
	movq	8(%r12), %rax
	testb	$16, 171(%rax)
	je	.L1013
	movq	%r12, %rcx
.LEHB20:
	call	*__imp_PyUnicodeUCS2_AsUTF8String(%rip)
.LEHE20:
	decq	(%r12)
	movq	%rax, %rbx
	jne	.L1014
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L1014:
	testq	%rbx, %rbx
	jne	.L1026
	leaq	.LC9(%rip), %rcx
.LEHB21:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE21:
	.p2align 4,,10
	.p2align 3
.L1026:
	movq	%rbx, %r12
.L1013:
	leaq	40(%rsp), %rdx
	leaq	48(%rsp), %r8
	movq	%r12, %rcx
.LEHB22:
	call	*__imp_PyString_AsStringAndSize(%rip)
	testl	%eax, %eax
	je	.L1015
	leaq	.LC10(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L1015:
	movq	40(%rsp), %r14
	movq	48(%rsp), %rbx
	leaq	16(%r13), %rcx
	movq	%rcx, 0(%r13)
	movq	%r14, %rax
	addq	%rbx, %rax
	je	.L1016
	testq	%r14, %r14
	jne	.L1016
	leaq	.LC8(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L1016:
	movq	%rbx, 56(%rsp)
	cmpq	$15, %rbx
	jbe	.L1017
	leaq	56(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE22:
	movq	%rax, 0(%r13)
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movq	%rax, 16(%r13)
	jmp	.L1018
	.p2align 4,,10
	.p2align 3
.L1017:
	cmpq	$1, %rbx
	jne	.L1019
	movzbl	(%r14), %eax
	movb	%al, 16(%r13)
	jmp	.L1020
	.p2align 4,,10
	.p2align 3
.L1019:
	testq	%rbx, %rbx
	je	.L1020
	.p2align 4,,10
	.p2align 3
.L1018:
	movq	%rbx, %r8
	movq	%r14, %rdx
	call	memcpy
	movq	56(%rsp), %rbx
	movq	0(%r13), %rcx
	jmp	.L1020
	.p2align 4,,10
	.p2align 3
.L1044:
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
	jmp	.L1011
.L1028:
	movq	%rax, %r13
	vzeroupper
	jmp	.L1022
.L1027:
	decq	(%r12)
	movq	%rax, %r13
	jne	.L1045
	movq	8(%r12), %rax
	movq	%r12, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L1022
.L1045:
	vzeroupper
.L1022:
	movq	%r13, %rcx
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
	.p2align 4,,10
	.p2align 3
.L1020:
	movq	%rbx, 8(%r13)
	movb	$0, (%rcx,%rbx)
	decq	(%r12)
	je	.L1044
.L1011:
	movq	%r13, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9593:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9593-.LLSDACSB9593
.LLSDACSB9593:
	.uleb128 .LEHB20-.LFB9593
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L1027-.LFB9593
	.uleb128 0
	.uleb128 .LEHB21-.LFB9593
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L1028-.LFB9593
	.uleb128 0
	.uleb128 .LEHB22-.LFB9593
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L1027-.LFB9593
	.uleb128 0
	.uleb128 .LEHB23-.LFB9593
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE9593:
	.section	.text$_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "basic_string::erase\0"
	.align 8
.LC12:
	.ascii "%s: __pos (which is %zu) > this->size() (which is %zu)\0"
	.section	.text$_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.def	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB10132:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movq	%rcx, %rsi
	movq	(%rcx), %rcx
	xorl	%edx, %edx
	leaq	60(%rsp), %r9
	xorl	%r8d, %r8d
	movl	$0, 60(%rsp)
.LEHB24:
	call	__cxa_demangle
.LEHE24:
	movl	60(%rsp), %edx
	movq	%rax, %r12
	testl	%edx, %edx
	je	.L1047
.L1049:
	leaq	80(%rsp), %rdi
	movb	$0, 90(%rsp)
	movl	$10, %r9d
	xorl	%ebx, %ebx
	movabsq	$3544724807094532464, %rax
	movq	%rdi, 64(%rsp)
	movq	%rdi, %rdx
	movq	%rax, 80(%rsp)
	movl	$14906, %eax
	movw	%ax, 88(%rsp)
	movq	$10, 72(%rsp)
	jmp	.L1048
	.p2align 4,,10
	.p2align 3
.L1047:
	movq	%rax, %rcx
	call	strlen
	movq	8(%rsi), %r8
	movq	%r12, %r9
	xorl	%edx, %edx
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
.LEHB25:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE25:
	jmp	.L1049
	.p2align 4,,10
	.p2align 3
.L1053:
	movq	64(%rsp), %rdx
.L1048:
	movq	%rbx, %r8
	movq	%rsi, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcyy
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.L1050
	movq	8(%rsi), %r8
	movq	72(%rsp), %r9
	cmpq	%r8, %rax
	jbe	.L1051
	movq	%r8, %r9
	leaq	.LC11(%rip), %rdx
	movq	%rax, %r8
	leaq	.LC12(%rip), %rcx
.LEHB26:
	call	_ZSt24__throw_out_of_range_fmtPKcz
	.p2align 4,,10
	.p2align 3
.L1051:
	cmpq	$-1, %r9
	jne	.L1052
	movq	%rax, 8(%rsi)
	movq	(%rsi), %rax
	movb	$0, (%rax,%rbx)
	movq	72(%rsp), %r9
	jmp	.L1053
	.p2align 4,,10
	.p2align 3
.L1052:
	testq	%r9, %r9
	je	.L1053
	subq	%rax, %r8
	movq	%rax, %rdx
	movq	%rsi, %rcx
	cmpq	%r9, %r8
	cmova	%r9, %r8
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEyy
.LEHE26:
	movq	72(%rsp), %r9
	jmp	.L1053
	.p2align 4,,10
	.p2align 3
.L1050:
	movq	64(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L1054
	call	_ZdlPv
.L1054:
	testq	%r12, %r12
	je	.L1046
	movq	%r12, %rcx
	call	free
	jmp	.L1046
.L1061:
	movq	64(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%rdi, %rcx
	je	.L1069
	vzeroupper
	call	_ZdlPv
	jmp	.L1057
.L1069:
	vzeroupper
.L1057:
	testq	%r12, %r12
	je	.L1059
	jmp	.L1058
.L1062:
	movq	%rax, %rbx
	vzeroupper
.L1058:
	movq	%r12, %rcx
	call	free
.L1059:
	movq	%rbx, %rcx
.LEHB27:
	call	_Unwind_Resume
	nop
.LEHE27:
	.p2align 4,,10
	.p2align 3
.L1046:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10132:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10132-.LLSDACSB10132
.LLSDACSB10132:
	.uleb128 .LEHB24-.LFB10132
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB10132
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L1062-.LFB10132
	.uleb128 0
	.uleb128 .LEHB26-.LFB10132
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L1061-.LFB10132
	.uleb128 0
	.uleb128 .LEHB27-.LFB10132
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE10132:
	.section	.text$_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN8pybind11L7type_idIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8pybind11L7type_idIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv
_ZN8pybind11L7type_idIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv:
.LFB15965:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	.refptr._ZTIb(%rip), %rax
	movq	%rcx, %r12
	movq	8(%rax), %rdx
	cmpb	$42, (%rdx)
	jne	.L1071
	incq	%rdx
.L1071:
	movq	%r12, %rcx
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0
.LEHE28:
	movq	%r12, %rcx
.LEHB29:
	call	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE29:
	jmp	.L1075
.L1074:
	movq	(%r12), %rcx
	addq	$16, %r12
	movq	%rax, %r13
	cmpq	%r12, %rcx
	je	.L1076
	vzeroupper
	call	_ZdlPv
	jmp	.L1073
.L1076:
	vzeroupper
.L1073:
	movq	%r13, %rcx
.LEHB30:
	call	_Unwind_Resume
.LEHE30:
.L1075:
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15965:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15965-.LLSDACSB15965
.LLSDACSB15965:
	.uleb128 .LEHB28-.LFB15965
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB15965
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L1074-.LFB15965
	.uleb128 0
	.uleb128 .LEHB30-.LFB15965
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE15965:
	.section	.text.unlikely,"x"
	.seh_endproc
	.def	_ZN8pybind11L7type_idINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_v;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8pybind11L7type_idINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_v
_ZN8pybind11L7type_idINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_v:
.LFB15639:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r12
	leaq	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rdx
.LEHB31:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0
.LEHE31:
	movq	%r12, %rcx
.LEHB32:
	call	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE32:
	jmp	.L1081
.L1080:
	movq	(%r12), %rcx
	addq	$16, %r12
	movq	%rax, %r13
	cmpq	%r12, %rcx
	je	.L1082
	vzeroupper
	call	_ZdlPv
	jmp	.L1079
.L1082:
	vzeroupper
.L1079:
	movq	%r13, %rcx
.LEHB33:
	call	_Unwind_Resume
.LEHE33:
.L1081:
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15639:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15639-.LLSDACSB15639
.LLSDACSB15639:
	.uleb128 .LEHB31-.LFB15639
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB15639
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L1080-.LFB15639
	.uleb128 0
	.uleb128 .LEHB33-.LFB15639
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSE15639:
	.section	.text.unlikely,"x"
	.seh_endproc
	.section	.text$_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev
	.def	_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev
_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev:
.LFB10172:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1085
	decq	(%rcx)
	jne	.L1085
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1085:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1083
	decq	(%rcx)
	jne	.L1083
	movq	8(%rcx), %rax
	call	*48(%rax)
	nop
.L1083:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10172-.LLSDACSB10172
.LLSDACSB10172:
.LLSDACSE10172:
	.section	.text$_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind116detail8instance17deallocate_layoutEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind116detail8instance17deallocate_layoutEv
	.def	_ZN8pybind116detail8instance17deallocate_layoutEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail8instance17deallocate_layoutEv
_ZN8pybind116detail8instance17deallocate_layoutEv:
.LFB10434:
	.seh_endprologue
	testb	$2, 48(%rcx)
	je	.L1093
	ret
	.p2align 4,,10
	.p2align 3
.L1093:
	movq	16(%rcx), %rcx
	rex.W jmp	*__imp_PyMem_Free(%rip)
	.seh_endproc
	.section	.text$_ZN8pybind116detail13function_callD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind116detail13function_callD1Ev
	.def	_ZN8pybind116detail13function_callD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail13function_callD1Ev
_ZN8pybind116detail13function_callD1Ev:
.LFB10969:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	80(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1096
	decq	(%rcx)
	jne	.L1096
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1096:
	movq	72(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1099
	decq	(%rcx)
	jne	.L1099
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1099:
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1101
	call	_ZdlPv
.L1101:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1094
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L1094:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10969:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10969-.LLSDACSB10969
.LLSDACSB10969:
.LLSDACSE10969:
	.section	.text$_ZN8pybind116detail13function_callD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.text
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
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y
	.def	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y
_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y:
.LFB12857:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vmovsd	64(%rcx), %xmm0
	movl	(%rcx), %eax
	vaddsd	%xmm0, %xmm0, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovq	%rdx, %xmm2
	leaq	32(%rsp), %r12
	movq	%rcx, 56(%rsp)
	movq	%rcx, %rbx
	movq	%r9, 48(%rsp)
	movq	%r12, %rdx
	xorl	%r9d, %r9d
	leaq	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y._omp_fn.0(%rip), %rcx
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 64(%rsp)
	vpinsrq	$1, %r8, %xmm2, %xmm0
	xorl	%r8d, %r8d
	vmovaps	%xmm0, 32(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIydE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y
	.def	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y
_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y:
.LFB12858:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vxorps	%xmm2, %xmm2, %xmm2
	movl	(%rcx), %eax
	vcvtss2sd	64(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	vmovq	%rdx, %xmm3
	leaq	32(%rsp), %r12
	vcvtsi2sdq	%rax, %xmm2, %xmm0
	movq	%rcx, 56(%rsp)
	movq	%rcx, %rbx
	movq	%r12, %rdx
	movq	%r9, 48(%rsp)
	leaq	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y._omp_fn.0(%rip), %rcx
	xorl	%r9d, %r9d
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 64(%rsp)
	vpinsrq	$1, %r8, %xmm3, %xmm0
	xorl	%r8d, %r8d
	vmovaps	%xmm0, 32(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIyfE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y
	.def	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y
_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y:
.LFB12859:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	vmovq	%rdx, %xmm1
	leaq	32(%rsp), %r12
	movq	%rcx, 56(%rsp)
	movq	%rcx, %rbx
	vpinsrq	$1, %r8, %xmm1, %xmm0
	movq	%r9, 48(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y._omp_fn.0(%rip), %rcx
	vmovaps	%xmm0, 32(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIyhE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y
	.def	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y
_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y:
.LFB12860:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movl	$16, %eax
	movq	%rcx, %rbx
	movl	68(%rcx), %ecx
	vmovq	%rdx, %xmm1
	leaq	32(%rsp), %r12
	vpinsrq	$1, %r8, %xmm1, %xmm0
	movq	%r9, 48(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	subl	%ecx, %eax
	movl	%ecx, 64(%rsp)
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y._omp_fn.0(%rip), %rcx
	movl	%eax, 68(%rsp)
	vmovaps	%xmm0, 32(%rsp)
	movq	%rbx, 56(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIytE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y
	.def	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y
_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y:
.LFB12861:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	vmovq	%rcx, %xmm1
	leaq	32(%rsp), %r12
	movq	%r8, 56(%rsp)
	movq	%rcx, %rbx
	vpinsrq	$1, %rdx, %xmm1, %xmm0
	movq	%r9, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y._omp_fn.0(%rip), %rcx
	vmovups	%xmm0, 40(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIyaE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y
	.def	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y
_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y:
.LFB12862:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movl	$16, %eax
	movq	%rcx, %rbx
	movl	68(%rcx), %ecx
	leaq	32(%rsp), %r12
	movq	%r8, 56(%rsp)
	vmovq	%rbx, %xmm1
	movq	%r9, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	subl	%ecx, %eax
	vpinsrq	$1, %rdx, %xmm1, %xmm0
	movl	%ecx, 64(%rsp)
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y._omp_fn.0(%rip), %rcx
	movl	%eax, 68(%rsp)
	vmovups	%xmm0, 40(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIysE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y
	.def	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y
_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y:
.LFB12863:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vmovsd	64(%rcx), %xmm0
	movl	(%rcx), %eax
	vaddsd	%xmm0, %xmm0, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovq	%rdx, %xmm2
	leaq	32(%rsp), %r12
	movq	%rcx, 56(%rsp)
	movq	%rcx, %rbx
	movq	%r9, 48(%rsp)
	movq	%r12, %rdx
	xorl	%r9d, %r9d
	leaq	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y._omp_fn.0(%rip), %rcx
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 64(%rsp)
	vpinsrq	$1, %r8, %xmm2, %xmm0
	xorl	%r8d, %r8d
	vmovaps	%xmm0, 32(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjdE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y
	.def	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y
_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y:
.LFB12864:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	vxorps	%xmm2, %xmm2, %xmm2
	movl	(%rcx), %eax
	vcvtss2sd	64(%rcx), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	vmovq	%rdx, %xmm3
	leaq	32(%rsp), %r12
	vcvtsi2sdq	%rax, %xmm2, %xmm0
	movq	%rcx, 56(%rsp)
	movq	%rcx, %rbx
	movq	%r12, %rdx
	movq	%r9, 48(%rsp)
	leaq	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y._omp_fn.0(%rip), %rcx
	xorl	%r9d, %r9d
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 64(%rsp)
	vpinsrq	$1, %r8, %xmm3, %xmm0
	xorl	%r8d, %r8d
	vmovaps	%xmm0, 32(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjfE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y
	.def	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y
_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y:
.LFB12865:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	vmovq	%rdx, %xmm1
	leaq	32(%rsp), %r12
	movq	%rcx, 56(%rsp)
	movq	%rcx, %rbx
	vpinsrq	$1, %r8, %xmm1, %xmm0
	movq	%r9, 48(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y._omp_fn.0(%rip), %rcx
	vmovaps	%xmm0, 32(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjhE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y
	.def	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y
_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y:
.LFB12866:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movl	$16, %eax
	movq	%rcx, %rbx
	movl	68(%rcx), %ecx
	vmovq	%rdx, %xmm1
	leaq	32(%rsp), %r12
	vpinsrq	$1, %r8, %xmm1, %xmm0
	movq	%r9, 48(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	subl	%ecx, %eax
	movl	%ecx, 64(%rsp)
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y._omp_fn.0(%rip), %rcx
	movl	%eax, 68(%rsp)
	vmovaps	%xmm0, 32(%rsp)
	movq	%rbx, 56(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjtE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y
	.def	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y
_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y:
.LFB12867:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	vmovq	%rcx, %xmm1
	leaq	32(%rsp), %r12
	movq	%r8, 56(%rsp)
	movq	%rcx, %rbx
	vpinsrq	$1, %rdx, %xmm1, %xmm0
	movq	%r9, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y._omp_fn.0(%rip), %rcx
	vmovups	%xmm0, 40(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjaE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y
	.def	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y
_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y:
.LFB12868:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movl	$16, %eax
	movq	%rcx, %rbx
	movl	68(%rcx), %ecx
	leaq	32(%rsp), %r12
	movq	%r8, 56(%rsp)
	vmovq	%rbx, %xmm1
	movq	%r9, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	subl	%ecx, %eax
	vpinsrq	$1, %rdx, %xmm1, %xmm0
	movl	%ecx, 64(%rsp)
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y._omp_fn.0(%rip), %rcx
	movl	%eax, 68(%rsp)
	vmovups	%xmm0, 40(%rsp)
	call	GOMP_parallel
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	leaq	_ZN11Histogram2DIjsE19reduction_and_resetEv._omp_fn.0(%rip), %rcx
	movq	%rbx, 32(%rsp)
	call	GOMP_parallel
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.def	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:
.LFB13414:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %r12
	movq	%r8, %rsi
	movq	%rdx, %rcx
	movq	%rdx, %r13
	call	strlen
	leaq	16(%r12), %rdi
	movb	$0, 16(%r12)
	movq	%r12, %rcx
	movq	$0, 8(%r12)
	movq	8(%rsi), %rdx
	movq	%rax, %rbx
	movq	%rdi, (%r12)
	addq	%rax, %rdx
.LEHB34:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movabsq	$4611686018427387903, %rax
	subq	8(%r12), %rax
	cmpq	%rax, %rbx
	jbe	.L1168
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L1168:
	movq	%rbx, %r8
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	8(%rsi), %r8
	movq	(%rsi), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE34:
	jmp	.L1172
.L1171:
	movq	(%r12), %rcx
	movq	%rax, %r13
	cmpq	%rcx, %rdi
	je	.L1173
	vzeroupper
	call	_ZdlPv
	jmp	.L1170
.L1173:
	vzeroupper
.L1170:
	movq	%r13, %rcx
.LEHB35:
	call	_Unwind_Resume
.LEHE35:
	.p2align 4,,10
	.p2align 3
.L1172:
	movq	%r12, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA13414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13414-.LLSDACSB13414
.LLSDACSB13414:
	.uleb128 .LEHB34-.LFB13414
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L1171-.LFB13414
	.uleb128 0
	.uleb128 .LEHB35-.LFB13414
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE13414:
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
	.def	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:
.LFB13415:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %r12
	movq	%r8, %rcx
	movq	%rdx, %r13
	movq	%r8, %r14
	call	strlen
	movq	%rax, %r8
	movabsq	$4611686018427387903, %rax
	subq	8(%r13), %rax
	cmpq	%rax, %r8
	ja	.L1178
	movq	%r14, %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	leaq	16(%r12), %rdx
	movq	%rdx, (%r12)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L1179
	movq	%rcx, (%r12)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r12)
.L1177:
	movq	8(%rax), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	%rcx, 8(%r12)
	movb	$0, 16(%rax)
	movq	%r12, %rax
	addq	$32, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L1179:
	vmovdqu	16(%rax), %xmm0
	vmovups	%xmm0, 16(%r12)
	jmp	.L1177
.L1178:
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
	.def	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_:
.LFB13419:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %rcx
	movq	%rdx, %rbx
	movq	%r8, %r13
	call	strlen
	xorl	%edx, %edx
	movq	%r13, %rcx
	movq	%rbx, %r9
	movq	%rax, 32(%rsp)
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	leaq	16(%r12), %rdx
	movq	%rdx, (%r12)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L1183
	movq	%rcx, (%r12)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r12)
.L1182:
	movq	8(%rax), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	%rcx, 8(%r12)
	movb	$0, 16(%rax)
	movq	%r12, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L1183:
	vmovdqu	16(%rax), %xmm0
	vmovups	%xmm0, 16(%r12)
	jmp	.L1182
	.seh_endproc
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
	.def	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:
.LFB13420:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	8(%rdx), %r11
	movq	(%rdx), %r9
	movq	%r8, %r10
	movq	8(%r8), %r8
	movq	%rcx, %r12
	movq	%rdx, %rcx
	leaq	16(%rdx), %rdx
	leaq	(%r11,%r8), %rax
	cmpq	%rdx, %r9
	je	.L1191
	movq	16(%rcx), %rbx
.L1185:
	movq	(%r10), %rdx
	cmpq	%rbx, %rax
	jbe	.L1186
	leaq	16(%r10), %rbx
	cmpq	%rbx, %rdx
	je	.L1192
	movq	16(%r10), %rbx
.L1187:
	cmpq	%rbx, %rax
	jbe	.L1193
.L1186:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.L1188:
	leaq	16(%r12), %rdx
	movq	%rdx, (%r12)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L1194
	movq	%rcx, (%r12)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r12)
.L1190:
	movq	8(%rax), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	%rcx, 8(%r12)
	movb	$0, 16(%rax)
	movq	%r12, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L1193:
	movq	%r11, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r10, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L1188
	.p2align 4,,10
	.p2align 3
.L1194:
	vmovdqu	16(%rax), %xmm0
	vmovups	%xmm0, 16(%r12)
	jmp	.L1190
	.p2align 4,,10
	.p2align 3
.L1191:
	movl	$15, %ebx
	jmp	.L1185
	.p2align 4,,10
	.p2align 3
.L1192:
	movl	$15, %ebx
	jmp	.L1187
	.seh_endproc
	.section	.text$_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EED1Ev
	.def	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EED1Ev
_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EED1Ev:
.LFB13586:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rcx), %rbx
	movq	(%rcx), %r12
	movq	%rcx, %rsi
	cmpq	%r12, %rbx
	je	.L1196
	.p2align 4,,10
	.p2align 3
.L1208:
	movq	80(%r12), %rcx
	testq	%rcx, %rcx
	je	.L1198
	decq	(%rcx)
	jne	.L1198
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1198:
	movq	72(%r12), %rcx
	testq	%rcx, %rcx
	je	.L1201
	decq	(%rcx)
	jne	.L1201
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1201:
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.L1203
	call	_ZdlPv
.L1203:
	movq	8(%r12), %rcx
	testq	%rcx, %rcx
	je	.L1205
	call	_ZdlPv
	addq	$104, %r12
	cmpq	%r12, %rbx
	jne	.L1208
	jmp	.L1206
	.p2align 4,,10
	.p2align 3
.L1205:
	addq	$104, %r12
	cmpq	%r12, %rbx
	jne	.L1208
.L1206:
	movq	(%rsi), %r12
.L1196:
	testq	%r12, %r12
	je	.L1195
	movq	%r12, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L1195:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA13586:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13586-.LLSDACSB13586
.LLSDACSB13586:
.LLSDACSE13586:
	.section	.text$_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorIPN8pybind116detail9type_infoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIPN8pybind116detail9type_infoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.def	_ZNSt6vectorIPN8pybind116detail9type_infoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIPN8pybind116detail9type_infoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
_ZNSt6vectorIPN8pybind116detail9type_infoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
.LFB14211:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	8(%rcx), %rdi
	movq	(%rcx), %r13
	movq	%rdi, %rax
	subq	%r13, %rax
	movq	%rdx, %r12
	sarq	$3, %rax
	movq	%rcx, %rbx
	movq	%r8, %r15
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	je	.L1227
	movq	%r12, %r14
	subq	%r13, %r14
	testq	%rax, %rax
	je	.L1223
	movabsq	$9223372036854775800, %rbp
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L1228
.L1215:
	movq	%rbp, %rcx
	call	_Znwy
	movq	%rax, %rsi
	addq	%rax, %rbp
.L1222:
	movq	(%r15), %rax
	leaq	8(%rsi,%r14), %r9
	subq	%r12, %rdi
	leaq	(%r9,%rdi), %r15
	movq	%rax, (%rsi,%r14)
	testq	%r14, %r14
	jg	.L1229
	testq	%rdi, %rdi
	jg	.L1218
	testq	%r13, %r13
	jne	.L1221
.L1219:
	vmovq	%rsi, %xmm1
	movq	%rbp, 16(%rbx)
	vpinsrq	$1, %r15, %xmm1, %xmm0
	vmovups	%xmm0, (%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L1229:
	movq	%r14, %r8
	movq	%r13, %rdx
	movq	%rsi, %rcx
	movq	%r9, 40(%rsp)
	call	memmove
	testq	%rdi, %rdi
	movq	40(%rsp), %r9
	jg	.L1218
.L1221:
	movq	%r13, %rcx
	call	_ZdlPv
	jmp	.L1219
	.p2align 4,,10
	.p2align 3
.L1228:
	testq	%rcx, %rcx
	jne	.L1216
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	jmp	.L1222
	.p2align 4,,10
	.p2align 3
.L1218:
	movq	%rdi, %r8
	movq	%r12, %rdx
	movq	%r9, %rcx
	call	memcpy
	testq	%r13, %r13
	je	.L1219
	jmp	.L1221
	.p2align 4,,10
	.p2align 3
.L1223:
	movl	$8, %ebp
	jmp	.L1215
.L1227:
	leaq	.LC13(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L1216:
	cmpq	%rdx, %rcx
	cmovbe	%rcx, %rdx
	movq	%rdx, %rbp
	salq	$3, %rbp
	jmp	.L1215
	.seh_endproc
	.section	.text$_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_
	.def	_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_
_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_:
.LFB14215:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rdx), %rax
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	8(%rax), %r12
	xorl	%eax, %eax
	cmpb	$42, (%r12)
	sete	%al
	addq	%rax, %r12
	movq	%r12, %rcx
	call	strlen
	movq	%r12, %rcx
	movl	$3339675911, %r8d
	movq	%rax, %rdx
	call	_ZSt11_Hash_bytesPKvyy
	xorl	%edx, %edx
	divq	8(%rbx)
	movq	(%rbx), %rax
	movq	(%rax,%rdx,8), %r12
	movq	%rdx, %rbp
	testq	%r12, %r12
	je	.L1232
	movq	(%r12), %rsi
	movl	$3339675911, %r13d
	.p2align 4,,10
	.p2align 3
.L1235:
	movq	8(%rsi), %rdx
	movq	(%rdi), %rcx
	call	_ZNKSt9type_infoeqERKS_
	testb	%al, %al
	jne	.L1233
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.L1232
	movq	8(%rax), %rax
	movq	8(%rbx), %r14
	movq	8(%rax), %r12
	xorl	%eax, %eax
	cmpb	$42, (%r12)
	sete	%al
	addq	%rax, %r12
	movq	%r12, %rcx
	call	strlen
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rax, %rdx
	call	_ZSt11_Hash_bytesPKvyy
	xorl	%edx, %edx
	divq	%r14
	cmpq	%rdx, %rbp
	jne	.L1232
	movq	%rsi, %r12
	movq	(%rsi), %rsi
	jmp	.L1235
	.p2align 4,,10
	.p2align 3
.L1232:
	xorl	%eax, %eax
	jmp	.L1242
	.p2align 4,,10
	.p2align 3
.L1233:
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.L1232
.L1242:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA14215:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14215-.LLSDACSB14215
.LLSDACSB14215:
.LLSDACSE14215:
	.section	.text$_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	.def	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv:
.LFB14298:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1251
	call	_ZdlPv
	movq	$0, 16(%rbx)
	movl	$0, 24(%rbx)
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	movq	$0, 32(%rbx)
.L1251:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC14:
	.ascii "vector<bool>::_M_insert_aux\0"
	.section	.text$_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.def	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:
.LFB14383:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	24(%rcx), %eax
	movq	(%rdx), %rbp
	movl	8(%rdx), %esi
	movq	%rax, %r10
	movl	%r8d, %r13d
	movq	%rcx, %rbx
	movq	16(%rcx), %r8
	cmpq	32(%rcx), %r8
	je	.L1253
	leaq	1(%rax), %rdx
	movq	%r8, %r12
	movl	%r10d, %r9d
	movl	$1, %r14d
	movq	%rdx, %rcx
	andl	$31, %edx
	sarq	$5, %rcx
	leaq	(%r8,%rcx,4), %r11
	movq	%r8, %rcx
	subq	%rbp, %rcx
	leaq	(%rax,%rcx,8), %rax
	movl	%esi, %ecx
	subq	%rcx, %rax
	testq	%rax, %rax
	jle	.L1263
	.p2align 4,,10
	.p2align 3
.L1255:
	testl	%r9d, %r9d
	je	.L1258
.L1314:
	decl	%r9d
	shlx	%r9d, %r14d, %r15d
	testl	%edx, %edx
	je	.L1260
.L1315:
	decl	%edx
	shlx	%edx, %r14d, %ecx
.L1261:
	movl	(%r11), %edi
	testl	%r15d, (%r12)
	je	.L1262
	orl	%edi, %ecx
	movl	%ecx, (%r11)
	decq	%rax
	jne	.L1255
.L1263:
	movl	$1, %eax
	shlx	%esi, %eax, %esi
	movl	0(%rbp), %eax
	andn	%eax, %esi, %edx
	orl	%eax, %esi
	testb	%r13b, %r13b
	cmove	%edx, %esi
	movl	%esi, 0(%rbp)
	cmpl	$31, %r10d
	je	.L1313
	incl	%r10d
	movl	%r10d, 24(%rbx)
.L1311:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L1262:
	andn	%edi, %ecx, %ecx
	movl	%ecx, (%r11)
	decq	%rax
	je	.L1263
	testl	%r9d, %r9d
	jne	.L1314
.L1258:
	subq	$4, %r12
	movl	$-2147483648, %r15d
	movl	$31, %r9d
	testl	%edx, %edx
	jne	.L1315
.L1260:
	subq	$4, %r11
	movl	$-2147483648, %ecx
	movl	$31, %edx
	jmp	.L1261
	.p2align 4,,10
	.p2align 3
.L1313:
	addq	$4, %r8
	movl	$0, 24(%rbx)
	movq	%r8, 16(%rbx)
	jmp	.L1311
	.p2align 4,,10
	.p2align 3
.L1253:
	subq	(%rcx), %r8
	movabsq	$9223372036854775776, %rcx
	leaq	(%rax,%r8,8), %rax
	cmpq	%rcx, %rax
	je	.L1316
	movl	$4, %r12d
	testq	%rax, %rax
	je	.L1270
	movabsq	$1152921504606846972, %r12
	leaq	(%rax,%rax), %rdx
	cmpq	%rdx, %rax
	ja	.L1270
	cmpq	%rcx, %rdx
	cmovbe	%rdx, %rcx
	movq	%rcx, %r12
	addq	$31, %r12
	shrq	$5, %r12
	salq	$2, %r12
.L1270:
	movq	%r12, %rcx
	movq	%rbp, %rdi
	call	_Znwy
	movq	(%rbx), %r15
	movq	%rax, %r14
	subq	%r15, %rdi
	cmpq	%r15, %rbp
	je	.L1272
	movq	%rdi, %r8
	movq	%r15, %rdx
	movq	%rax, %rcx
	call	memmove
.L1272:
	movl	%esi, %r8d
	leaq	(%r14,%rdi), %rcx
	movq	%r8, 40(%rsp)
	testq	%r8, %r8
	je	.L1273
	movq	%rbp, %r10
	xorl	%edx, %edx
	movl	$1, %r11d
	jmp	.L1279
	.p2align 4,,10
	.p2align 3
.L1318:
	leal	1(%rdx), %r9d
	leal	2(%rdx), %edi
	shlx	%r9d, %r11d, %eax
	movl	%r9d, %edx
	decq	%r8
	je	.L1317
.L1279:
	movl	(%rcx), %eax
	shlx	%edx, %r11d, %r9d
	movl	%r9d, %edi
	orl	%eax, %edi
	andn	%eax, %r9d, %eax
	testl	%r9d, (%r10)
	cmovne	%edi, %eax
	movl	%eax, (%rcx)
	cmpl	$31, %edx
	jne	.L1318
	addq	$4, %r10
	addq	$4, %rcx
	movl	$1, %eax
	xorl	%edx, %edx
	movl	$1, %edi
	decq	%r8
	jne	.L1279
.L1317:
	movq	%rcx, %r8
	cmpl	$31, %edx
	je	.L1319
.L1280:
	movl	(%rcx), %edx
	movl	%eax, %r9d
	orl	%edx, %r9d
	andn	%edx, %eax, %eax
	testb	%r13b, %r13b
	movl	24(%rbx), %edx
	cmovne	%r9d, %eax
	movl	%eax, (%rcx)
	movq	16(%rbx), %rax
	subq	%rbp, %rax
	leaq	(%rdx,%rax,8), %rdx
	subq	40(%rsp), %rdx
	testq	%rdx, %rdx
	jle	.L1283
	movl	$1, %r9d
	jmp	.L1290
	.p2align 4,,10
	.p2align 3
.L1288:
	incl	%edi
	decq	%rdx
	je	.L1283
.L1290:
	movl	(%r8), %ecx
	shlx	%edi, %r9d, %eax
	movl	%eax, %r10d
	shlx	%esi, %r9d, %r11d
	orl	%ecx, %r10d
	andn	%ecx, %eax, %eax
	testl	%r11d, 0(%rbp)
	cmovne	%r10d, %eax
	movl	%eax, (%r8)
	cmpl	$31, %esi
	je	.L1320
	incl	%esi
.L1287:
	cmpl	$31, %edi
	jne	.L1288
	addq	$4, %r8
	xorl	%edi, %edi
	decq	%rdx
	jne	.L1290
.L1283:
	testq	%r15, %r15
	je	.L1291
	movq	%r15, %rcx
	movq	%r8, 40(%rsp)
	call	_ZdlPv
	movq	$0, 16(%rbx)
	movq	40(%rsp), %r8
	movl	$0, 24(%rbx)
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
.L1291:
	addq	%r14, %r12
	movq	%r14, (%rbx)
	movq	%r12, 32(%rbx)
	movl	$0, 8(%rbx)
	movq	%r8, 16(%rbx)
	movl	%edi, 24(%rbx)
	jmp	.L1311
	.p2align 4,,10
	.p2align 3
.L1320:
	addq	$4, %rbp
	xorl	%esi, %esi
	jmp	.L1287
	.p2align 4,,10
	.p2align 3
.L1319:
	leaq	4(%rcx), %r8
	xorl	%edi, %edi
	jmp	.L1280
	.p2align 4,,10
	.p2align 3
.L1273:
	movq	%rcx, %r8
	movl	$1, %eax
	movl	$1, %edi
	jmp	.L1280
.L1316:
	leaq	.LC14(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB14387:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	8(%rcx), %r14
	movq	(%rcx), %r12
	movq	%r14, %rax
	subq	%r12, %rax
	movq	%rdx, %r13
	sarq	$3, %rax
	movq	%rcx, %rdi
	movq	%r8, %r15
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	je	.L1351
	movq	%r13, %r8
	subq	%r12, %r8
	testq	%rax, %rax
	je	.L1333
	movabsq	$9223372036854775800, %rbp
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L1352
.L1323:
	movq	%rbp, %rcx
	movq	%r8, 40(%rsp)
	call	_Znwy
	movq	40(%rsp), %r8
	movq	%rax, %rbx
	addq	%rax, %rbp
	leaq	8(%rax), %rsi
.L1332:
	movq	(%r15), %rax
	movq	%rax, (%rbx,%r8)
	cmpq	%r12, %r13
	je	.L1325
	leaq	-8(%r13), %r8
	leaq	31(%rbx), %rax
	subq	%r12, %r8
	subq	%r12, %rax
	movq	%r8, %rcx
	shrq	$3, %rcx
	cmpq	$62, %rax
	jbe	.L1335
	movabsq	$2305843009213693948, %rax
	testq	%rax, %rcx
	je	.L1335
	incq	%rcx
	xorl	%eax, %eax
	movq	%rcx, %rdx
	shrq	$2, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L1327:
	vmovdqu	(%r12,%rax), %ymm1
	vmovdqu	%ymm1, (%rbx,%rax)
	addq	$32, %rax
	cmpq	%rdx, %rax
	jne	.L1327
	movq	%rcx, %rdx
	andq	$-4, %rdx
	leaq	0(,%rdx,8), %rax
	leaq	(%r12,%rax), %r9
	addq	%rbx, %rax
	cmpq	%rdx, %rcx
	je	.L1349
	movq	(%r9), %rdx
	movq	%rdx, (%rax)
	leaq	8(%r9), %rdx
	cmpq	%rdx, %r13
	je	.L1349
	movq	8(%r9), %rdx
	movq	%rdx, 8(%rax)
	leaq	16(%r9), %rdx
	cmpq	%rdx, %r13
	je	.L1349
	movq	16(%r9), %rdx
	movq	%rdx, 16(%rax)
	vzeroupper
.L1329:
	leaq	16(%rbx,%r8), %rsi
.L1325:
	cmpq	%r14, %r13
	je	.L1330
	subq	%r13, %r14
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	%r14, %r8
	addq	%r14, %rsi
	call	memcpy
.L1330:
	testq	%r12, %r12
	je	.L1331
	movq	%r12, %rcx
	call	_ZdlPv
.L1331:
	vmovq	%rbx, %xmm2
	movq	%rbp, 16(%rdi)
	vpinsrq	$1, %rsi, %xmm2, %xmm0
	vmovups	%xmm0, (%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L1352:
	testq	%rcx, %rcx
	jne	.L1324
	movl	$8, %esi
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	.L1332
	.p2align 4,,10
	.p2align 3
.L1349:
	vzeroupper
	jmp	.L1329
	.p2align 4,,10
	.p2align 3
.L1333:
	movl	$8, %ebp
	jmp	.L1323
	.p2align 4,,10
	.p2align 3
.L1335:
	movq	%rbx, %rdx
	movq	%r12, %rax
	.p2align 4,,10
	.p2align 3
.L1326:
	movq	(%rax), %rcx
	addq	$8, %rax
	addq	$8, %rdx
	movq	%rcx, -8(%rdx)
	cmpq	%rax, %r13
	jne	.L1326
	jmp	.L1329
.L1324:
	cmpq	%rdx, %rcx
	cmovbe	%rcx, %rdx
	movq	%rdx, %rbp
	salq	$3, %rbp
	jmp	.L1323
.L1351:
	leaq	.LC13(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZNSt6vectorIP7_objectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIP7_objectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorIP7_objectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP7_objectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorIP7_objectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB14882:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	8(%rcx), %rdi
	movq	(%rcx), %r13
	movq	%rdi, %rax
	subq	%r13, %rax
	movq	%rdx, %r12
	sarq	$3, %rax
	movq	%rcx, %rbx
	movq	%r8, %r15
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	je	.L1367
	movq	%r12, %r14
	subq	%r13, %r14
	testq	%rax, %rax
	je	.L1363
	movabsq	$9223372036854775800, %rbp
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L1368
.L1355:
	movq	%rbp, %rcx
	call	_Znwy
	movq	%rax, %rsi
	addq	%rax, %rbp
.L1362:
	movq	(%r15), %rax
	leaq	8(%rsi,%r14), %r9
	subq	%r12, %rdi
	leaq	(%r9,%rdi), %r15
	movq	%rax, (%rsi,%r14)
	testq	%r14, %r14
	jg	.L1369
	testq	%rdi, %rdi
	jg	.L1358
	testq	%r13, %r13
	jne	.L1361
.L1359:
	vmovq	%rsi, %xmm1
	movq	%rbp, 16(%rbx)
	vpinsrq	$1, %r15, %xmm1, %xmm0
	vmovups	%xmm0, (%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L1369:
	movq	%r14, %r8
	movq	%r13, %rdx
	movq	%rsi, %rcx
	movq	%r9, 40(%rsp)
	call	memmove
	testq	%rdi, %rdi
	movq	40(%rsp), %r9
	jg	.L1358
.L1361:
	movq	%r13, %rcx
	call	_ZdlPv
	jmp	.L1359
	.p2align 4,,10
	.p2align 3
.L1368:
	testq	%rcx, %rcx
	jne	.L1356
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	jmp	.L1362
	.p2align 4,,10
	.p2align 3
.L1358:
	movq	%rdi, %r8
	movq	%r12, %rdx
	movq	%r9, %rcx
	call	memcpy
	testq	%r13, %r13
	je	.L1359
	jmp	.L1361
	.p2align 4,,10
	.p2align 3
.L1363:
	movl	$8, %ebp
	jmp	.L1355
.L1367:
	leaq	.LC13(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L1356:
	cmpq	%rdx, %rcx
	cmovbe	%rcx, %rdx
	movq	%rdx, %rbp
	salq	$3, %rbp
	jmp	.L1355
	.seh_endproc
	.section	.text$_ZNSt6vectorIP11_typeobjectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIP11_typeobjectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorIP11_typeobjectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP11_typeobjectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorIP11_typeobjectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB14896:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	8(%rcx), %rdi
	movq	(%rcx), %r13
	movq	%rdi, %rax
	subq	%r13, %rax
	movq	%rdx, %r12
	sarq	$3, %rax
	movq	%rcx, %rbx
	movq	%r8, %r15
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	je	.L1384
	movq	%r12, %r14
	subq	%r13, %r14
	testq	%rax, %rax
	je	.L1380
	movabsq	$9223372036854775800, %rbp
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L1385
.L1372:
	movq	%rbp, %rcx
	call	_Znwy
	movq	%rax, %rsi
	addq	%rax, %rbp
.L1379:
	movq	(%r15), %rax
	leaq	8(%rsi,%r14), %r9
	subq	%r12, %rdi
	leaq	(%r9,%rdi), %r15
	movq	%rax, (%rsi,%r14)
	testq	%r14, %r14
	jg	.L1386
	testq	%rdi, %rdi
	jg	.L1375
	testq	%r13, %r13
	jne	.L1378
.L1376:
	vmovq	%rsi, %xmm1
	movq	%rbp, 16(%rbx)
	vpinsrq	$1, %r15, %xmm1, %xmm0
	vmovups	%xmm0, (%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L1386:
	movq	%r14, %r8
	movq	%r13, %rdx
	movq	%rsi, %rcx
	movq	%r9, 40(%rsp)
	call	memmove
	testq	%rdi, %rdi
	movq	40(%rsp), %r9
	jg	.L1375
.L1378:
	movq	%r13, %rcx
	call	_ZdlPv
	jmp	.L1376
	.p2align 4,,10
	.p2align 3
.L1385:
	testq	%rcx, %rcx
	jne	.L1373
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	jmp	.L1379
	.p2align 4,,10
	.p2align 3
.L1375:
	movq	%rdi, %r8
	movq	%r12, %rdx
	movq	%r9, %rcx
	call	memcpy
	testq	%r13, %r13
	je	.L1376
	jmp	.L1378
	.p2align 4,,10
	.p2align 3
.L1380:
	movl	$8, %ebp
	jmp	.L1372
.L1384:
	leaq	.LC13(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L1373:
	cmpq	%rdx, %rcx
	cmovbe	%rcx, %rdx
	movq	%rdx, %rbp
	salq	$3, %rbp
	jmp	.L1372
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "vector<bool>::_M_fill_insert\0"
	.section	.text$_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratoryb,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratoryb
	.def	_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratoryb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratoryb
_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratoryb:
.LFB15109:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	%r9d, 32(%rsp)
	movq	%rcx, %rbx
	movq	%r8, %rsi
	testq	%r8, %r8
	je	.L1464
	movq	(%rcx), %rax
	movq	16(%rcx), %r11
	movq	32(%rbx), %r14
	movq	(%rdx), %r12
	movl	8(%rdx), %edi
	movl	24(%rcx), %edx
	movq	%r11, %rcx
	subq	%rax, %r14
	subq	%rax, %rcx
	movq	%r14, %rax
	leaq	(%rdx,%rcx,8), %rcx
	movq	%rdx, %r8
	salq	$3, %rax
	subq	%rcx, %rax
	cmpq	%rsi, %rax
	jb	.L1389
	leaq	(%rsi,%rdx), %rax
	testq	%rax, %rax
	leaq	31(%rax), %rcx
	cmovns	%rax, %rcx
	sarq	$5, %rcx
	leaq	(%r11,%rcx,4), %r15
	movq	%rax, %rcx
	sarq	$63, %rcx
	movq	%r15, %r10
	shrq	$59, %rcx
	addq	%rcx, %rax
	andl	$31, %eax
	subq	%rcx, %rax
	movq	%rax, %rcx
	jns	.L1391
	leaq	32(%rax), %rcx
	leaq	-4(%r15), %r10
.L1391:
	movq	%r11, %r9
	movl	%edi, %r14d
	subq	%r12, %r9
	movq	%r14, 40(%rsp)
	leaq	(%rdx,%r9,8), %rdx
	subq	%r14, %rdx
	movl	$1, %r14d
	testq	%rdx, %rdx
	jle	.L1400
	.p2align 4,,10
	.p2align 3
.L1392:
	testl	%r8d, %r8d
	je	.L1395
.L1474:
	decl	%r8d
	shlx	%r8d, %r14d, %r13d
	testl	%ecx, %ecx
	je	.L1397
.L1475:
	decl	%ecx
	shlx	%ecx, %r14d, %r9d
.L1398:
	movl	(%r10), %ebp
	testl	%r13d, (%r11)
	je	.L1399
	orl	%ebp, %r9d
	movl	%r9d, (%r10)
	decq	%rdx
	jne	.L1392
.L1400:
	movq	40(%rsp), %rdx
	addq	%rsi, %rdx
	leaq	31(%rdx), %rcx
	cmovns	%rdx, %rcx
	sarq	$5, %rcx
	leaq	(%r12,%rcx,4), %r14
	movq	%rdx, %rcx
	sarq	$63, %rcx
	shrq	$59, %rcx
	leaq	(%rdx,%rcx), %r13
	andl	$31, %r13d
	subq	%rcx, %r13
	jns	.L1394
	addq	$32, %r13
	subq	$4, %r14
.L1394:
	movl	%r13d, %ebp
	cmpq	%r12, %r14
	je	.L1402
	testl	%edi, %edi
	jne	.L1470
	movq	%r14, %r8
	subq	%r12, %r8
	cmpb	$0, 32(%rsp)
	je	.L1406
.L1405:
	movl	$-1, %edx
	movq	%r12, %rcx
	call	memset
	testq	%r13, %r13
	je	.L1465
	movl	$32, %eax
	subl	%ebp, %eax
	movl	%eax, %edx
	movl	$-1, %eax
	shrx	%edx, %eax, %eax
	orl	%eax, (%r14)
.L1465:
	movl	24(%rbx), %r8d
	movq	16(%rbx), %rdx
	addq	%r8, %rsi
	leaq	31(%rsi), %rax
	cmovns	%rsi, %rax
	sarq	$5, %rax
	leaq	(%rdx,%rax,4), %r15
	movq	%rsi, %rdx
	sarq	$63, %rdx
	shrq	$59, %rdx
	leaq	(%rsi,%rdx), %rax
	andl	$31, %eax
	subq	%rdx, %rax
.L1408:
	testq	%rax, %rax
	jns	.L1466
	addq	$32, %rax
	subq	$4, %r15
.L1466:
	movq	%r15, 16(%rbx)
	movl	%eax, 24(%rbx)
.L1464:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L1389:
	movabsq	$9223372036854775776, %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmpq	%rdx, %rsi
	ja	.L1471
	cmpq	%rcx, %rsi
	movq	%rcx, %rdx
	cmovnb	%rsi, %rdx
	addq	%rdx, %rcx
	jc	.L1415
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	addq	$31, %rcx
	shrq	$5, %rcx
	leaq	0(,%rcx,4), %rax
	movq	%rax, 40(%rsp)
	movq	%rax, %rcx
.L1416:
	call	_Znwy
	movq	(%rbx), %r14
	movq	%r12, %r13
	movq	%rax, %rbp
	subq	%r14, %r13
	cmpq	%r12, %r14
	je	.L1418
	movq	%r13, %r8
	movq	%r14, %rdx
	movq	%rax, %rcx
	call	memmove
.L1418:
	leaq	0(%rbp,%r13), %rcx
	movl	%edi, %r13d
	testq	%r13, %r13
	je	.L1447
	movq	%r12, %r10
	movq	%r13, %r9
	xorl	%edx, %edx
	movl	$1, %r15d
	jmp	.L1424
	.p2align 4,,10
	.p2align 3
.L1422:
	incl	%edx
	decq	%r9
	je	.L1472
.L1424:
	movl	(%rcx), %eax
	shlx	%edx, %r15d, %r8d
	movl	%eax, %r11d
	andn	%eax, %r8d, %eax
	orl	%r8d, %r11d
	testl	%r8d, (%r10)
	cmovne	%r11d, %eax
	movl	%eax, (%rcx)
	cmpl	$31, %edx
	jne	.L1422
	addq	$4, %r10
	addq	$4, %rcx
	xorl	%edx, %edx
	decq	%r9
	jne	.L1424
.L1472:
	movl	%edx, %r8d
.L1419:
	addq	%rsi, %r8
	leaq	31(%r8), %rax
	cmovns	%r8, %rax
	sarq	$5, %rax
	leaq	(%rcx,%rax,4), %rsi
	movq	%r8, %rax
	sarq	$63, %rax
	shrq	$59, %rax
	leaq	(%r8,%rax), %r9
	andl	$31, %r9d
	subq	%rax, %r9
	jns	.L1425
	addq	$32, %r9
	subq	$4, %rsi
.L1425:
	movl	%r9d, %r15d
	cmpq	%rcx, %rsi
	je	.L1426
	testl	%edx, %edx
	je	.L1427
	leaq	4(%rcx), %r10
	movq	%rsi, %r8
	movl	$-1, %eax
	subq	%r10, %r8
	cmpb	$0, 32(%rsp)
	shlx	%edx, %eax, %edx
	movl	(%rcx), %eax
	je	.L1428
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movq	%r10, %rcx
.L1429:
	movl	$-1, %edx
	movq	%r9, 32(%rsp)
	call	memset
	movq	32(%rsp), %r9
	testq	%r9, %r9
	jne	.L1431
.L1468:
	movq	(%rbx), %r14
.L1432:
	movq	16(%rbx), %rax
	movl	24(%rbx), %edx
	subq	%r12, %rax
	leaq	(%rdx,%rax,8), %rdx
	subq	%r13, %rdx
	testq	%rdx, %rdx
	jle	.L1435
	movl	$1, %r8d
	jmp	.L1442
	.p2align 4,,10
	.p2align 3
.L1438:
	incl	%edi
	cmpl	$31, %r15d
	je	.L1473
.L1440:
	incl	%r15d
	decq	%rdx
	je	.L1435
.L1442:
	movl	(%rsi), %ecx
	shlx	%r15d, %r8d, %eax
	shlx	%edi, %r8d, %r10d
	movl	%ecx, %r9d
	orl	%eax, %r9d
	andn	%ecx, %eax, %eax
	testl	%r10d, (%r12)
	cmovne	%r9d, %eax
	movl	%eax, (%rsi)
	cmpl	$31, %edi
	jne	.L1438
	addq	$4, %r12
	xorl	%edi, %edi
	cmpl	$31, %r15d
	jne	.L1440
.L1473:
	addq	$4, %rsi
	xorl	%r15d, %r15d
	decq	%rdx
	jne	.L1442
.L1435:
	testq	%r14, %r14
	je	.L1443
	movq	%r14, %rcx
	call	_ZdlPv
	movq	$0, 16(%rbx)
	movl	$0, 24(%rbx)
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
.L1443:
	movq	40(%rsp), %rax
	movq	%rbp, (%rbx)
	movl	$0, 8(%rbx)
	addq	%rbp, %rax
	movq	%rsi, 16(%rbx)
	movq	%rax, 32(%rbx)
	movl	%r15d, 24(%rbx)
	jmp	.L1464
	.p2align 4,,10
	.p2align 3
.L1399:
	andn	%ebp, %r9d, %r9d
	movl	%r9d, (%r10)
	decq	%rdx
	je	.L1400
	testl	%r8d, %r8d
	jne	.L1474
.L1395:
	subq	$4, %r11
	movl	$-2147483648, %r13d
	movl	$31, %r8d
	testl	%ecx, %ecx
	jne	.L1475
.L1397:
	subq	$4, %r10
	movl	$-2147483648, %r9d
	movl	$31, %ecx
	jmp	.L1398
	.p2align 4,,10
	.p2align 3
.L1470:
	leaq	4(%r12), %rdx
	movq	%r14, %r8
	movl	$-1, %eax
	subq	%rdx, %r8
	cmpb	$0, 32(%rsp)
	shlx	%edi, %eax, %edi
	movl	(%r12), %eax
	je	.L1404
	orl	%eax, %edi
	movl	%edi, (%r12)
	movq	%rdx, %r12
	jmp	.L1405
	.p2align 4,,10
	.p2align 3
.L1404:
	andn	%eax, %edi, %edi
	movl	%edi, (%r12)
	movq	%rdx, %r12
.L1406:
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	memset
	testq	%r13, %r13
	je	.L1465
	movl	$32, %eax
	subl	%ebp, %eax
	movl	%eax, %edx
	movl	$-1, %eax
	shrx	%edx, %eax, %eax
	notl	%eax
	andl	%eax, (%r14)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L1402:
	cmpl	%edi, %r13d
	je	.L1408
	movl	$32, %edx
	movl	$-1, %ecx
	subl	%r13d, %edx
	shlx	%edi, %ecx, %edi
	shrx	%edx, %ecx, %edx
	andl	%edx, %edi
	movl	(%r14), %edx
	andn	%edx, %edi, %ecx
	orl	%edx, %edi
	cmpb	$0, 32(%rsp)
	cmove	%ecx, %edi
	movl	%edi, (%r14)
	jmp	.L1408
	.p2align 4,,10
	.p2align 3
.L1427:
	movq	%rsi, %r8
	subq	%rcx, %r8
	cmpb	$0, 32(%rsp)
	jne	.L1429
.L1430:
	xorl	%edx, %edx
	movq	%r9, 32(%rsp)
	call	memset
	movq	32(%rsp), %r9
	testq	%r9, %r9
	je	.L1468
	movl	$32, %eax
	subl	%r15d, %eax
	movl	%eax, %edx
	movl	$-1, %eax
	shrx	%edx, %eax, %eax
	notl	%eax
	andl	%eax, (%rsi)
	jmp	.L1468
	.p2align 4,,10
	.p2align 3
.L1426:
	cmpl	%edx, %r9d
	je	.L1432
	movl	$32, %eax
	movl	$-1, %ecx
	subl	%r9d, %eax
	shlx	%edx, %ecx, %edx
	shrx	%eax, %ecx, %eax
	andl	%eax, %edx
	movl	(%rsi), %eax
	andn	%eax, %edx, %ecx
	orl	%eax, %edx
	cmpb	$0, 32(%rsp)
	movl	%ecx, %eax
	cmovne	%edx, %eax
	movl	%eax, (%rsi)
	jmp	.L1432
	.p2align 4,,10
	.p2align 3
.L1431:
	movl	$32, %eax
	subl	%r15d, %eax
	movl	%eax, %edx
	movl	$-1, %eax
	shrx	%edx, %eax, %eax
	orl	%eax, (%rsi)
	jmp	.L1468
	.p2align 4,,10
	.p2align 3
.L1428:
	andn	%eax, %edx, %edx
	movl	%edx, (%rcx)
	movq	%r10, %rcx
	jmp	.L1430
	.p2align 4,,10
	.p2align 3
.L1447:
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	jmp	.L1419
.L1471:
	leaq	.LC15(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L1415:
	movabsq	$1152921504606846972, %rax
	movq	%rax, 40(%rsp)
	movq	%rax, %rcx
	jmp	.L1416
	.seh_endproc
	.section	.text$_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
	.def	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:
.LFB15112:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	vmovaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	8(%rcx), %r14
	movq	(%rcx), %r12
	movq	%rdx, %rsi
	movq	%rcx, %rbp
	movabsq	$5675921253449092805, %rdx
	movq	%r8, %r15
	movabsq	$88686269585142075, %rcx
	movq	%r14, %rax
	subq	%r12, %rax
	sarq	$3, %rax
	imulq	%rdx, %rax
	cmpq	%rcx, %rax
	jne	.L1477
	leaq	.LC13(%rip), %rcx
.LEHB36:
	call	_ZSt20__throw_length_errorPKc
.LEHE36:
	.p2align 4,,10
	.p2align 3
.L1477:
	movq	%rsi, %rdx
	subq	%r12, %rdx
	testq	%rax, %rax
	je	.L1500
	movabsq	$9223372036854775800, %r13
	leaq	(%rax,%rax), %r8
	cmpq	%r8, %rax
	ja	.L1478
	testq	%r8, %r8
	jne	.L1479
	movl	$104, %ebx
	xorl	%r13d, %r13d
	xorl	%edi, %edi
.L1499:
	leaq	(%rdi,%rdx), %rax
	movq	64(%r15), %rdx
	vmovdqu	(%r15), %ymm6
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 24(%r15)
	movq	%rdx, 64(%rax)
	movq	72(%r15), %rdx
	vmovdqu	%ymm6, (%rax)
	vmovdqu	32(%r15), %xmm6
	movq	%rdx, 72(%rax)
	movq	80(%r15), %rdx
	vmovups	%xmm6, 32(%rax)
	vmovdqu	48(%r15), %xmm6
	movq	%rdx, 80(%rax)
	movq	88(%r15), %rdx
	movq	$0, 16(%r15)
	movq	%rdx, 88(%rax)
	movq	96(%r15), %rdx
	movq	$0, 8(%r15)
	movq	$0, 48(%r15)
	movl	$0, 56(%r15)
	movq	$0, 32(%r15)
	movl	$0, 40(%r15)
	movq	$0, 80(%r15)
	movq	%rdx, 96(%rax)
	vmovups	%xmm6, 48(%rax)
	vmovups	%xmm0, 64(%r15)
	cmpq	%r12, %rsi
	je	.L1480
	movq	%rdi, %r15
	movq	%r12, %rbx
	vmovdqa	%xmm0, %xmm6
	.p2align 4,,10
	.p2align 3
.L1492:
	movq	(%rbx), %rax
	vmovdqu	32(%rbx), %xmm1
	movq	%rax, (%r15)
	movq	8(%rbx), %rax
	movq	%rax, 8(%r15)
	movq	16(%rbx), %rax
	movq	%rax, 16(%r15)
	movq	24(%rbx), %rax
	movq	%rax, 24(%r15)
	movq	$0, 24(%rbx)
	vmovups	%xmm6, 8(%rbx)
	vmovups	%xmm1, 32(%r15)
	vmovdqu	48(%rbx), %xmm2
	vmovups	%xmm2, 48(%r15)
	movq	64(%rbx), %rax
	movq	%rax, 64(%r15)
	movq	72(%rbx), %rax
	movq	$0, 48(%rbx)
	movl	$0, 56(%rbx)
	movq	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 72(%r15)
	movq	80(%rbx), %rax
	movq	$0, 72(%rbx)
	movq	%rax, 80(%r15)
	movq	88(%rbx), %rax
	movq	$0, 80(%rbx)
	movq	%rax, 88(%r15)
	movq	96(%rbx), %rax
	movq	%rax, 96(%r15)
	movq	80(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1482
	decq	(%rcx)
	jne	.L1482
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
.L1482:
	movq	72(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1485
	decq	(%rcx)
	jne	.L1485
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
.L1485:
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1487
	vzeroupper
	call	_ZdlPv
.L1487:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1489
	vzeroupper
	call	_ZdlPv
	addq	$104, %rbx
	addq	$104, %r15
	cmpq	%rbx, %rsi
	jne	.L1492
	jmp	.L1490
	.p2align 4,,10
	.p2align 3
.L1489:
	addq	$104, %rbx
	addq	$104, %r15
	cmpq	%rbx, %rsi
	jne	.L1492
.L1490:
	movabsq	$1064235235021704901, %rax
	leaq	-104(%rsi), %rbx
	subq	%r12, %rbx
	shrq	$3, %rbx
	imulq	%rax, %rbx
	movabsq	$2305843009213693951, %rax
	andq	%rax, %rbx
	addq	$2, %rbx
	imulq	$104, %rbx, %rbx
	addq	%rdi, %rbx
.L1480:
	cmpq	%r14, %rsi
	je	.L1493
	movq	%rsi, %rax
	movq	%rbx, %rdx
	.p2align 4,,10
	.p2align 3
.L1497:
	movq	64(%rax), %rcx
	vmovdqu	(%rax), %ymm3
	movq	$0, 64(%rax)
	addq	$104, %rax
	vmovdqu	-72(%rax), %xmm4
	vmovdqu	-56(%rax), %xmm5
	movq	$0, -80(%rax)
	addq	$104, %rdx
	movq	%rcx, -40(%rdx)
	movq	-16(%rax), %rcx
	vmovdqu	-32(%rax), %xmm0
	vmovdqu	%ymm3, -104(%rdx)
	movq	%rcx, -16(%rdx)
	movq	-8(%rax), %rcx
	movq	$0, -88(%rax)
	movq	$0, -96(%rax)
	vmovups	%xmm4, -72(%rdx)
	vmovups	%xmm5, -56(%rdx)
	movq	$0, -56(%rax)
	movl	$0, -48(%rax)
	movq	$0, -72(%rax)
	movl	$0, -64(%rax)
	vmovups	%xmm0, -32(%rdx)
	movq	%rcx, -8(%rdx)
	cmpq	%r14, %rax
	jne	.L1497
	movabsq	$1064235235021704901, %rdx
	subq	%rsi, %rax
	subq	$104, %rax
	shrq	$3, %rax
	imulq	%rdx, %rax
	movabsq	$2305843009213693951, %rdx
	andq	%rdx, %rax
	incq	%rax
	imulq	$104, %rax, %rax
	addq	%rax, %rbx
.L1493:
	testq	%r12, %r12
	je	.L1509
	movq	%r12, %rcx
	vzeroupper
	call	_ZdlPv
	jmp	.L1498
	.p2align 4,,10
	.p2align 3
.L1509:
	vzeroupper
.L1498:
	vmovq	%rdi, %xmm6
	movq	%r13, 16(%rbp)
	vpinsrq	$1, %rbx, %xmm6, %xmm0
	vmovups	%xmm0, 0(%rbp)
	jmp	.L1508
.L1479:
	cmpq	%rcx, %r8
	cmovbe	%r8, %rcx
	imulq	$104, %rcx, %r13
	jmp	.L1478
	.p2align 4,,10
	.p2align 3
.L1500:
	movl	$104, %r13d
.L1478:
	movq	%r13, %rcx
	movq	%rdx, 40(%rsp)
.LEHB37:
	call	_Znwy
.LEHE37:
	movq	40(%rsp), %rdx
	movq	%rax, %rdi
	addq	%rax, %r13
	leaq	104(%rax), %rbx
	jmp	.L1499
	.p2align 4,,10
	.p2align 3
.L1508:
	vmovaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15112:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15112-.LLSDACSB15112
.LLSDACSB15112:
	.uleb128 .LEHB36-.LFB15112
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB15112
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE15112:
	.section	.text$_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC16:
	.ascii "utf-8\0"
	.align 8
.LC17:
	.ascii "Unable to cast Python instance of type \0"
.LC18:
	.ascii " to C++ type '\0"
.LC19:
	.ascii "'\0"
	.section	.text$_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
	.def	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE:
.LFB15554:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$256, %rsp
	.seh_stackalloc	256
	.seh_endprologue
	movq	%rcx, %r12
	movq	(%rdx), %rcx
	movq	%rdx, %rbx
	testq	%rcx, %rcx
	je	.L1526
	movq	8(%rcx), %rax
	movl	168(%rax), %eax
	testl	$268435456, %eax
	jne	.L1512
	testl	$134217728, %eax
	je	.L1526
	movq	%rcx, 40(%rsp)
.LEHB38:
	call	*__imp_PyString_AsString(%rip)
	movq	40(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L1526
	call	*__imp_PyString_Size(%rip)
	leaq	240(%rsp), %rsi
	leaq	224(%rsp), %rcx
	movq	%rsi, 224(%rsp)
	movq	%rax, %rbx
	movq	%rax, 192(%rsp)
	cmpq	$15, %rax
	jbe	.L1514
	leaq	192(%rsp), %rdx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, 224(%rsp)
	movq	%rax, %rcx
	movq	192(%rsp), %rax
	movq	%rax, 240(%rsp)
	jmp	.L1515
	.p2align 4,,10
	.p2align 3
.L1514:
	cmpq	$1, %rax
	jne	.L1516
	movzbl	0(%r13), %eax
	movb	%al, 240(%rsp)
	movq	%rsi, %rax
	jmp	.L1517
	.p2align 4,,10
	.p2align 3
.L1516:
	testq	%rax, %rax
	je	.L1573
	movq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L1515:
	movq	%rbx, %r8
	movq	%r13, %rdx
	call	memcpy
	movq	192(%rsp), %rbx
	movq	224(%rsp), %rax
	jmp	.L1517
	.p2align 4,,10
	.p2align 3
.L1573:
	movq	%rsi, %rax
.L1517:
	movq	%rbx, 232(%rsp)
	movb	$0, (%rax,%rbx)
	movq	224(%rsp), %rdx
	movq	(%r12), %rcx
	cmpq	%rsi, %rdx
	jne	.L1518
	movq	232(%rsp), %r8
	testq	%r8, %r8
	je	.L1519
	cmpq	$1, %r8
	jne	.L1520
	movzbl	240(%rsp), %eax
	movb	%al, (%rcx)
	movq	232(%rsp), %r8
	movq	(%r12), %rcx
	jmp	.L1519
.L1520:
	movq	%rsi, %rdx
	call	memcpy
	movq	232(%rsp), %r8
	movq	(%r12), %rcx
.L1519:
	movq	%r8, 8(%r12)
	movb	$0, (%rcx,%r8)
	movq	224(%rsp), %rcx
	jmp	.L1521
	.p2align 4,,10
	.p2align 3
.L1518:
	leaq	16(%r12), %r8
	movq	240(%rsp), %r9
	movq	232(%rsp), %rax
	cmpq	%r8, %rcx
	jne	.L1522
	vmovq	%rax, %xmm4
	movq	%rdx, (%r12)
	vpinsrq	$1, %r9, %xmm4, %xmm0
	vmovups	%xmm0, 8(%r12)
	jmp	.L1523
	.p2align 4,,10
	.p2align 3
.L1522:
	vmovq	%rax, %xmm3
	movq	16(%r12), %r8
	movq	%rdx, (%r12)
	vpinsrq	$1, %r9, %xmm3, %xmm0
	vmovups	%xmm0, 8(%r12)
	testq	%rcx, %rcx
	je	.L1523
	movq	%rcx, 224(%rsp)
	movq	%r8, 240(%rsp)
	jmp	.L1521
	.p2align 4,,10
	.p2align 3
.L1523:
	movq	%rsi, 224(%rsp)
	leaq	240(%rsp), %rsi
	movq	%rsi, %rcx
.L1521:
	movq	$0, 232(%rsp)
	movb	$0, (%rcx)
	movq	224(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L1594
	call	_ZdlPv
	jmp	.L1594
	.p2align 4,,10
	.p2align 3
.L1512:
	xorl	%r8d, %r8d
	leaq	.LC16(%rip), %rdx
	call	*__imp_PyUnicodeUCS2_AsEncodedString(%rip)
.LEHE38:
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L1527
.LEHB39:
	call	*__imp_PyErr_Clear(%rip)
.LEHE39:
	jmp	.L1526
	.p2align 4,,10
	.p2align 3
.L1527:
	movq	%rax, %rcx
.LEHB40:
	call	*__imp_PyString_AsString(%rip)
	movq	%rax, %r14
	movq	%r13, %rcx
	call	*__imp_PyString_Size(%rip)
	movq	%r14, %rdx
	leaq	240(%rsp), %rsi
	movq	%rax, %rbx
	addq	%rax, %rdx
	movq	%rsi, 224(%rsp)
	je	.L1528
	testq	%r14, %r14
	jne	.L1528
	leaq	.LC8(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L1528:
	movq	%rbx, 192(%rsp)
	cmpq	$15, %rbx
	jbe	.L1529
	leaq	192(%rsp), %rdx
	leaq	224(%rsp), %rcx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE40:
	movq	%rax, 224(%rsp)
	movq	%rax, %rcx
	movq	192(%rsp), %rax
	movq	%rax, 240(%rsp)
	jmp	.L1530
	.p2align 4,,10
	.p2align 3
.L1529:
	cmpq	$1, %rbx
	jne	.L1531
	movzbl	(%r14), %edx
	movb	%dl, 240(%rsp)
	movq	%rsi, %rdx
	jmp	.L1532
	.p2align 4,,10
	.p2align 3
.L1531:
	testq	%rbx, %rbx
	je	.L1574
	movq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L1530:
	movq	%r14, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	192(%rsp), %rax
	movq	224(%rsp), %rdx
	jmp	.L1532
	.p2align 4,,10
	.p2align 3
.L1574:
	movq	%rsi, %rdx
.L1532:
	movq	%rax, 232(%rsp)
	movb	$0, (%rdx,%rax)
	movq	224(%rsp), %rdx
	movq	(%r12), %rcx
	cmpq	%rsi, %rdx
	jne	.L1533
	movq	232(%rsp), %r8
	testq	%r8, %r8
	je	.L1534
	cmpq	$1, %r8
	jne	.L1535
	movzbl	240(%rsp), %eax
	movb	%al, (%rcx)
	movq	232(%rsp), %r8
	movq	(%r12), %rcx
	jmp	.L1534
	.p2align 4,,10
	.p2align 3
.L1535:
	movq	%rsi, %rdx
	call	memcpy
	movq	232(%rsp), %r8
	movq	(%r12), %rcx
.L1534:
	movq	%r8, 8(%r12)
	movb	$0, (%rcx,%r8)
	movq	224(%rsp), %rcx
	jmp	.L1536
	.p2align 4,,10
	.p2align 3
.L1533:
	leaq	16(%r12), %r9
	movq	232(%rsp), %rax
	movq	240(%rsp), %r8
	cmpq	%r9, %rcx
	jne	.L1537
	vmovq	%rax, %xmm2
	movq	%rdx, (%r12)
	vpinsrq	$1, %r8, %xmm2, %xmm0
	vmovups	%xmm0, 8(%r12)
	jmp	.L1538
	.p2align 4,,10
	.p2align 3
.L1537:
	vmovq	%rax, %xmm1
	movq	16(%r12), %r9
	movq	%rdx, (%r12)
	vpinsrq	$1, %r8, %xmm1, %xmm0
	vmovups	%xmm0, 8(%r12)
	testq	%rcx, %rcx
	je	.L1538
	movq	%rcx, 224(%rsp)
	movq	%r9, 240(%rsp)
	jmp	.L1536
	.p2align 4,,10
	.p2align 3
.L1538:
	movq	%rsi, 224(%rsp)
	leaq	240(%rsp), %rsi
	movq	%rsi, %rcx
.L1536:
	movq	$0, 232(%rsp)
	movb	$0, (%rcx)
	movq	224(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L1539
	call	_ZdlPv
	jmp	.L1539
	.p2align 4,,10
	.p2align 3
.L1613:
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
	jmp	.L1594
.L1584:
	movq	%rax, %r12
	vzeroupper
	jmp	.L1542
.L1614:
	movq	8(%r13), %rax
	movq	%r13, %rcx
	vzeroupper
	call	*48(%rax)
.L1542:
	movq	%r12, %rcx
.LEHB41:
	call	_Unwind_Resume
.LEHE41:
.L1526:
	movl	$16, %ecx
	leaq	160(%rsp), %rsi
	call	__cxa_allocate_exception
	movq	%rsi, %rcx
	movq	%rax, %r12
.LEHB42:
	call	_ZN8pybind11L7type_idINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_v
.LEHE42:
	movq	(%rbx), %rax
	movq	8(%rax), %rcx
.LEHB43:
	call	_ZN8pybind113str7raw_strEP7_object
.LEHE43:
	leaq	64(%rsp), %rbx
	leaq	56(%rsp), %rdx
	movq	%rax, 56(%rsp)
	movq	%rbx, %rcx
.LEHB44:
	call	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
.LEHE44:
	leaq	96(%rsp), %r14
	movq	%rbx, %r8
	leaq	.LC17(%rip), %rdx
	movq	%r14, %rcx
.LEHB45:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.LEHE45:
	leaq	128(%rsp), %r13
	leaq	.LC18(%rip), %r8
	movq	%r14, %rdx
	movq	%r13, %rcx
.LEHB46:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE46:
	leaq	192(%rsp), %r14
	movq	%rsi, %r8
	movq	%r13, %rdx
	movq	%r14, %rcx
.LEHB47:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE47:
	leaq	224(%rsp), %r13
	leaq	.LC19(%rip), %r8
	movq	%r14, %rdx
	movq	%r13, %rcx
.LEHB48:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE48:
	movq	%r13, %rdx
	movq	%r12, %rcx
.LEHB49:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE49:
	leaq	16+_ZTVN8pybind1110cast_errorE(%rip), %rax
	movq	224(%rsp), %rcx
	movq	%rax, (%r12)
	leaq	240(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1543
	call	_ZdlPv
.L1543:
	movq	192(%rsp), %rcx
	leaq	208(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1544
	call	_ZdlPv
.L1544:
	movq	128(%rsp), %rcx
	leaq	144(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1545
	call	_ZdlPv
.L1545:
	movq	96(%rsp), %rcx
	leaq	112(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1546
	call	_ZdlPv
.L1546:
	movq	64(%rsp), %rcx
	leaq	80(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1547
	call	_ZdlPv
.L1547:
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1549
	decq	(%rcx)
	jne	.L1549
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1549:
	movq	160(%rsp), %rcx
	leaq	176(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1551
	call	_ZdlPv
.L1551:
	leaq	_ZN8pybind1110cast_errorD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1110cast_errorE(%rip), %rdx
	movq	%r12, %rcx
.LEHB50:
	call	__cxa_throw
.LEHE50:
.L1582:
	movq	224(%rsp), %rcx
	movq	%rax, %rbx
	leaq	240(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1615
	vzeroupper
	call	_ZdlPv
	jmp	.L1553
.L1615:
	vzeroupper
.L1553:
	jmp	.L1554
.L1581:
	movq	%rax, %rbx
	vzeroupper
.L1554:
	movq	192(%rsp), %rcx
	leaq	208(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1555
	call	_ZdlPv
.L1555:
	jmp	.L1556
.L1580:
	movq	%rax, %rbx
	vzeroupper
.L1556:
	movq	128(%rsp), %rcx
	leaq	144(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1557
	call	_ZdlPv
.L1557:
	jmp	.L1558
.L1579:
	movq	%rax, %rbx
	vzeroupper
.L1558:
	movq	96(%rsp), %rcx
	leaq	112(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1559
	call	_ZdlPv
.L1559:
	jmp	.L1560
.L1578:
	movq	%rax, %rbx
	vzeroupper
.L1560:
	movq	64(%rsp), %rcx
	leaq	80(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1561
	call	_ZdlPv
.L1561:
	jmp	.L1562
.L1577:
	movq	%rax, %rbx
	vzeroupper
.L1562:
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1564
	decq	(%rcx)
	jne	.L1564
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1564:
	jmp	.L1566
.L1576:
	movq	%rax, %rbx
	vzeroupper
.L1566:
	movq	160(%rsp), %rcx
	leaq	176(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1567
	call	_ZdlPv
.L1567:
	jmp	.L1568
.L1575:
	movq	%rax, %rbx
	vzeroupper
.L1568:
	movq	%r12, %rcx
	call	__cxa_free_exception
	movq	%rbx, %rcx
.LEHB51:
	call	_Unwind_Resume
.LEHE51:
	.p2align 4,,10
	.p2align 3
.L1539:
	decq	0(%r13)
	jne	.L1594
	jmp	.L1613
.L1583:
	decq	0(%r13)
	movq	%rax, %r12
	je	.L1614
	vzeroupper
	jmp	.L1542
	.p2align 4,,10
	.p2align 3
.L1594:
	movq	%r12, %rax
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15554:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15554-.LLSDACSB15554
.LLSDACSB15554:
	.uleb128 .LEHB38-.LFB15554
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB15554
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L1584-.LFB15554
	.uleb128 0
	.uleb128 .LEHB40-.LFB15554
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L1583-.LFB15554
	.uleb128 0
	.uleb128 .LEHB41-.LFB15554
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB15554
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L1575-.LFB15554
	.uleb128 0
	.uleb128 .LEHB43-.LFB15554
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L1576-.LFB15554
	.uleb128 0
	.uleb128 .LEHB44-.LFB15554
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L1577-.LFB15554
	.uleb128 0
	.uleb128 .LEHB45-.LFB15554
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L1578-.LFB15554
	.uleb128 0
	.uleb128 .LEHB46-.LFB15554
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L1579-.LFB15554
	.uleb128 0
	.uleb128 .LEHB47-.LFB15554
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L1580-.LFB15554
	.uleb128 0
	.uleb128 .LEHB48-.LFB15554
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L1581-.LFB15554
	.uleb128 0
	.uleb128 .LEHB49-.LFB15554
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L1582-.LFB15554
	.uleb128 0
	.uleb128 .LEHB50-.LFB15554
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB15554
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE15554:
	.section	.text$_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "Unknown internal error occurred\0"
.LC21:
	.ascii "__name__\0"
.LC22:
	.ascii ": \0"
.LC23:
	.ascii "\12\12At:\12\0"
.LC24:
	.ascii "%d\0"
.LC25:
	.ascii "  \0"
.LC26:
	.ascii "(\0"
.LC27:
	.ascii "): \0"
.LC28:
	.ascii "\12\0"
	.section	.text$_ZN8pybind116detail12error_stringB5cxx11Ev,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail12error_stringB5cxx11Ev
	.def	_ZN8pybind116detail12error_stringB5cxx11Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail12error_stringB5cxx11Ev
_ZN8pybind116detail12error_stringB5cxx11Ev:
.LFB10436:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$472, %rsp
	.seh_stackalloc	472
	.seh_endprologue
	movq	%rcx, 544(%rsp)
.LEHB52:
	call	*__imp_PyErr_Occurred(%rip)
	testq	%rax, %rax
	jne	.L1617
	movq	__imp_PyExc_RuntimeError(%rip), %rax
	leaq	.LC20(%rip), %rdx
	movabsq	$7809644666444607081, %rsi
	movq	(%rax), %rcx
	call	*__imp_PyErr_SetString(%rip)
	movq	544(%rsp), %rax
	movq	544(%rsp), %rbx
	xorl	%r8d, %r8d
	leaq	432(%rsp), %rdx
	movq	$31, 432(%rsp)
	addq	$16, %rax
	movq	%rbx, %rcx
	movq	%rax, (%rbx)
	movabsq	$2336936577129475669, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	432(%rsp), %rdx
	movq	544(%rsp), %rdi
	movq	%rax, (%rdi)
	movq	%rdx, 16(%rdi)
	movl	$25970, %edx
	movq	%rsi, 8(%rax)
	movabsq	$8007525960451777824, %rsi
	movq	%rbx, (%rax)
	movq	%rsi, 16(%rax)
	movl	$1920295779, 24(%rax)
	movw	%dx, 28(%rax)
	movb	$100, 30(%rax)
	movq	432(%rsp), %rax
	movq	(%rdi), %rdx
	movq	%rax, 8(%rdi)
	movb	$0, (%rdx,%rax)
	jmp	.L1616
	.p2align 4,,10
	.p2align 3
.L1617:
	leaq	112(%rsp), %r14
	leaq	128(%rsp), %rdi
	leaq	120(%rsp), %r15
	movq	%r14, %rcx
	movq	%rdi, %r8
	movq	%r15, %rdx
	call	*__imp_PyErr_Fetch(%rip)
.LEHE52:
	movq	112(%rsp), %rcx
	leaq	160(%rsp), %rax
	movq	$0, 152(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rax, 144(%rsp)
	movb	$0, 160(%rsp)
	testq	%rcx, %rcx
	je	.L1619
	leaq	.LC21(%rip), %rdx
	movq	%rcx, 376(%rsp)
	movq	%rdx, 384(%rsp)
	movq	$0, 392(%rsp)
.LEHB53:
	call	*__imp_PyObject_GetAttrString(%rip)
.LEHE53:
	testq	%rax, %rax
	jne	.L1620
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB54:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE54:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB55:
	call	__cxa_throw
.LEHE55:
	.p2align 4,,10
	.p2align 3
.L1620:
	movq	392(%rsp), %rcx
	movq	%rax, 392(%rsp)
	testq	%rcx, %rcx
	jne	.L1621
	jmp	.L1622
.L1757:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1624
	.p2align 4,,10
	.p2align 3
.L1621:
	decq	(%rcx)
	jne	.L1622
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1622:
	leaq	448(%rsp), %rsi
	leaq	432(%rsp), %rcx
	movq	$0, 440(%rsp)
	leaq	392(%rsp), %rdx
	movq	%rsi, 432(%rsp)
	movb	$0, 448(%rsp)
.LEHB56:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE56:
	jmp	.L1793
.L1758:
	movq	432(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rsi, %rcx
	je	.L1801
	vzeroupper
	call	_ZdlPv
	jmp	.L1628
.L1801:
	vzeroupper
.L1628:
	jmp	.L1624
	.p2align 4,,10
	.p2align 3
.L1793:
	movq	432(%rsp), %rdx
	leaq	416(%rsp), %r13
	movq	%r13, 400(%rsp)
	cmpq	%rsi, %rdx
	jne	.L1629
	vmovdqa	448(%rsp), %xmm3
	movq	%r13, %rdx
	vmovaps	%xmm3, 416(%rsp)
	jmp	.L1630
	.p2align 4,,10
	.p2align 3
.L1629:
	movq	448(%rsp), %rax
	movq	%rdx, 400(%rsp)
	movq	%rax, 416(%rsp)
.L1630:
	leaq	144(%rsp), %rax
	movq	440(%rsp), %r8
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	movq	%r8, 408(%rsp)
.LEHB57:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE57:
	movq	400(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L1631
	call	_ZdlPv
.L1631:
	movq	392(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1633
	decq	(%rcx)
	jne	.L1633
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1633:
	movabsq	$4611686018427387903, %rax
	subq	152(%rsp), %rax
	cmpq	$1, %rax
	ja	.L1635
	leaq	.LC6(%rip), %rcx
.LEHB58:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L1635:
	movq	80(%rsp), %rcx
	movl	$2, %r8d
	leaq	.LC22(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.L1619:
	movq	120(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1636
	call	*__imp_PyObject_Str(%rip)
.LEHE58:
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L1637
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB59:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE59:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB60:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L1637:
	xorl	%r8d, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_PyUnicodeUCS2_FromEncodedObject(%rip)
	decq	0(%r13)
	movq	%rax, %r12
	jne	.L1638
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.LEHE60:
.L1638:
	testq	%r12, %r12
	jne	.L1794
	jmp	.L1639
.L1759:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1642
	.p2align 4,,10
	.p2align 3
.L1794:
	incq	(%r12)
.L1639:
	movq	8(%r12), %rax
	testb	$16, 171(%rax)
	je	.L1739
	movq	%r12, %rcx
.LEHB61:
	call	*__imp_PyUnicodeUCS2_AsUTF8String(%rip)
.LEHE61:
	decq	(%r12)
	movq	%rax, %r13
	jne	.L1644
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L1644:
	testq	%r13, %r13
	jne	.L1643
	leaq	.LC9(%rip), %rcx
.LEHB62:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE62:
	.p2align 4,,10
	.p2align 3
.L1739:
	movq	%r12, %r13
.L1643:
	leaq	336(%rsp), %rdx
	leaq	368(%rsp), %r8
	movq	%r13, %rcx
.LEHB63:
	call	*__imp_PyString_AsStringAndSize(%rip)
	testl	%eax, %eax
	je	.L1645
	leaq	.LC10(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L1645:
	movq	336(%rsp), %rbp
	movq	368(%rsp), %rbx
	leaq	448(%rsp), %rsi
	movq	%rsi, 432(%rsp)
	movq	%rbp, %rax
	addq	%rbx, %rax
	je	.L1646
	testq	%rbp, %rbp
	jne	.L1646
	leaq	.LC8(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L1646:
	movq	%rbx, 400(%rsp)
	cmpq	$15, %rbx
	jbe	.L1647
	leaq	400(%rsp), %rdx
	leaq	432(%rsp), %rcx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE63:
	movq	%rax, 432(%rsp)
	movq	%rax, %rcx
	movq	400(%rsp), %rax
	movq	%rax, 448(%rsp)
	jmp	.L1648
	.p2align 4,,10
	.p2align 3
.L1647:
	cmpq	$1, %rbx
	jne	.L1649
	movzbl	0(%rbp), %eax
	movb	%al, 448(%rsp)
	movq	%rsi, %rax
	jmp	.L1650
	.p2align 4,,10
	.p2align 3
.L1649:
	testq	%rbx, %rbx
	je	.L1740
	movq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L1648:
	movq	%rbx, %r8
	movq	%rbp, %rdx
	call	memcpy
	movq	400(%rsp), %rbx
	movq	432(%rsp), %rax
	jmp	.L1650
	.p2align 4,,10
	.p2align 3
.L1800:
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L1737:
	movq	440(%rsp), %r8
	movq	432(%rsp), %rdx
	leaq	144(%rsp), %rcx
.LEHB64:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE64:
	jmp	.L1795
.L1763:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1653
.L1764:
	movq	%rax, %rbx
	movq	%r12, %r13
	jmp	.L1655
.L1760:
	movq	%rax, %rbx
.L1655:
	decq	0(%r13)
	jne	.L1802
	movq	8(%r13), %rax
	movq	%r13, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L1653
.L1802:
	vzeroupper
.L1653:
	jmp	.L1656
	.p2align 4,,10
	.p2align 3
.L1795:
	movq	432(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L1657
	call	_ZdlPv
	jmp	.L1657
	.p2align 4,,10
	.p2align 3
.L1799:
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L1636:
	movq	%rdi, %r8
	movq	%r15, %rdx
	movq	%r14, %rcx
.LEHB65:
	call	*__imp_PyErr_NormalizeException(%rip)
	movq	128(%rsp), %r8
	testq	%r8, %r8
	je	.L1658
	.p2align 4,,10
	.p2align 3
.L1659:
	movq	%r8, %rax
	movq	16(%r8), %r8
	testq	%r8, %r8
	jne	.L1659
	movq	24(%rax), %rbx
	movabsq	$4611686018427387903, %rax
	subq	152(%rsp), %rax
	cmpq	$5, %rax
	ja	.L1660
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L1660:
	leaq	144(%rsp), %rax
	movl	$6, %r8d
	leaq	.LC23(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	leaq	432(%rsp), %rax
	movq	128(%rsp), %r8
	leaq	448(%rsp), %rsi
	movq	%rax, 56(%rsp)
	testq	%rbx, %rbx
	je	.L1658
	.p2align 4,,10
	.p2align 3
.L1661:
	movq	%rbx, %rcx
	call	*__imp_PyFrame_GetLineNumber(%rip)
.LEHE65:
	movl	%eax, %edi
	movq	32(%rbx), %rax
	movq	56(%rsp), %rcx
	leaq	104(%rsp), %rdx
	movq	88(%rax), %rax
	movq	%rsi, 432(%rsp)
	movq	$0, 440(%rsp)
	movq	%rax, 104(%rsp)
	movb	$0, 448(%rsp)
.LEHB66:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE66:
	jmp	.L1796
.L1761:
	movq	432(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rsi, %rcx
	je	.L1803
	vzeroupper
	call	_ZdlPv
	jmp	.L1664
.L1803:
	vzeroupper
.L1664:
	jmp	.L1642
	.p2align 4,,10
	.p2align 3
.L1796:
	movq	432(%rsp), %rax
	leaq	384(%rsp), %r12
	movq	%r12, 368(%rsp)
	cmpq	%rsi, %rax
	jne	.L1665
	vmovdqa	448(%rsp), %xmm0
	vmovaps	%xmm0, 384(%rsp)
	jmp	.L1666
	.p2align 4,,10
	.p2align 3
.L1665:
	movq	%rax, 368(%rsp)
	movq	448(%rsp), %rax
	movq	%rax, 384(%rsp)
.L1666:
	movl	%edi, 32(%rsp)
	movq	440(%rsp), %rax
	leaq	272(%rsp), %r13
	leaq	.LC24(%rip), %r9
	movl	$16, %r8d
	leaq	_ZL9vsnprintfPcyPKcS_(%rip), %rdx
	movq	%r13, %rcx
	movq	%rax, 376(%rsp)
.LEHB67:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.0
.LEHE67:
	movq	32(%rbx), %rax
	movq	56(%rsp), %rcx
	leaq	96(%rsp), %rdx
	movq	80(%rax), %rax
	movq	%rsi, 432(%rsp)
	movq	$0, 440(%rsp)
	movq	%rax, 96(%rsp)
	movb	$0, 448(%rsp)
.LEHB68:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE68:
	jmp	.L1797
.L1762:
	movq	432(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	je	.L1804
	vzeroupper
	call	_ZdlPv
	jmp	.L1669
.L1804:
	vzeroupper
.L1669:
	leaq	288(%rsp), %rax
	movq	%rax, 64(%rsp)
	jmp	.L1670
	.p2align 4,,10
	.p2align 3
.L1797:
	leaq	192(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	%rax, 176(%rsp)
	movq	432(%rsp), %rax
	cmpq	%rsi, %rax
	jne	.L1671
	vmovdqa	448(%rsp), %xmm1
	vmovaps	%xmm1, 192(%rsp)
	jmp	.L1672
	.p2align 4,,10
	.p2align 3
.L1671:
	movq	%rax, 176(%rsp)
	movq	448(%rsp), %rax
	movq	%rax, 192(%rsp)
.L1672:
	movq	$2, 32(%rsp)
	leaq	.LC25(%rip), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	440(%rsp), %rax
	leaq	176(%rsp), %rcx
	movq	%rax, 184(%rsp)
.LEHB69:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE69:
	leaq	224(%rsp), %r14
	leaq	16(%rax), %rdx
	movq	%r14, 208(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L1673
	vmovdqu	16(%rax), %xmm2
	vmovaps	%xmm2, 224(%rsp)
	jmp	.L1674
	.p2align 4,,10
	.p2align 3
.L1673:
	movq	%rcx, 208(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 224(%rsp)
.L1674:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 216(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, 216(%rsp)
	jne	.L1675
	leaq	.LC6(%rip), %rcx
.LEHB70:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L1675:
	leaq	208(%rsp), %rcx
	movl	$1, %r8d
	leaq	.LC26(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE70:
	leaq	256(%rsp), %rdi
	leaq	16(%rax), %rdx
	movq	%rdi, 240(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L1676
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 256(%rsp)
	jmp	.L1677
	.p2align 4,,10
	.p2align 3
.L1676:
	movq	%rcx, 240(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 256(%rsp)
.L1677:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 248(%rsp)
	movq	%rdx, (%rax)
	movq	240(%rsp), %r9
	movq	$0, 8(%rax)
	movl	$15, %eax
	movq	248(%rsp), %rcx
	movq	280(%rsp), %r8
	cmpq	%rdi, %r9
	movq	%rax, %r11
	cmovne	256(%rsp), %r11
	movq	272(%rsp), %r10
	leaq	(%rcx,%r8), %rdx
	cmpq	%r11, %rdx
	ja	.L1798
	leaq	288(%rsp), %rax
	movq	%rax, 64(%rsp)
	jmp	.L1679
	.p2align 4,,10
	.p2align 3
.L1798:
	leaq	288(%rsp), %r15
	cmpq	%r15, %r10
	movq	%r15, 64(%rsp)
	cmovne	288(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L1679
	movq	%rcx, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
.LEHB71:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L1681
	.p2align 4,,10
	.p2align 3
.L1679:
	leaq	240(%rsp), %rcx
	movq	%r10, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE71:
.L1681:
	leaq	320(%rsp), %r15
	leaq	16(%rax), %rdx
	movq	%r15, 304(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L1682
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 320(%rsp)
	jmp	.L1683
	.p2align 4,,10
	.p2align 3
.L1682:
	movq	%rcx, 304(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 320(%rsp)
.L1683:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 312(%rsp)
	movq	$0, 8(%rax)
	movq	%rdx, (%rax)
	movabsq	$4611686018427387903, %rax
	subq	312(%rsp), %rax
	cmpq	$2, %rax
	ja	.L1684
	leaq	.LC6(%rip), %rcx
.LEHB72:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L1684:
	leaq	304(%rsp), %rcx
	movl	$3, %r8d
	leaq	.LC27(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE72:
	leaq	352(%rsp), %rbp
	leaq	16(%rax), %rdx
	movq	%rbp, 336(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L1685
	vmovdqu	16(%rax), %xmm5
	vmovaps	%xmm5, 352(%rsp)
	jmp	.L1686
	.p2align 4,,10
	.p2align 3
.L1685:
	movq	%rcx, 336(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 352(%rsp)
.L1686:
	movq	8(%rax), %rcx
	movq	%rcx, 344(%rsp)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	336(%rsp), %r9
	movq	$0, 8(%rax)
	movl	$15, %eax
	movq	344(%rsp), %rcx
	movq	376(%rsp), %r8
	cmpq	%rbp, %r9
	movq	%rax, %r11
	cmovne	352(%rsp), %r11
	movq	368(%rsp), %r10
	leaq	(%rcx,%r8), %rdx
	cmpq	%r11, %rdx
	jbe	.L1688
	cmpq	%r12, %r10
	cmovne	384(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L1688
	movq	%rcx, 32(%rsp)
	leaq	368(%rsp), %r10
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r10, %rcx
.LEHB73:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L1690
	.p2align 4,,10
	.p2align 3
.L1688:
	leaq	336(%rsp), %rcx
	movq	%r10, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE73:
.L1690:
	leaq	416(%rsp), %r13
	leaq	16(%rax), %rdx
	movq	%r13, 400(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L1691
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	jmp	.L1692
	.p2align 4,,10
	.p2align 3
.L1691:
	movq	%rcx, 400(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 416(%rsp)
.L1692:
	movq	8(%rax), %rcx
	movq	%rcx, 408(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, 408(%rsp)
	jne	.L1693
	leaq	.LC6(%rip), %rcx
.LEHB74:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L1693:
	leaq	400(%rsp), %rcx
	movl	$1, %r8d
	leaq	.LC28(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE74:
	movq	%rsi, 432(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L1694
	vmovdqu	16(%rax), %xmm1
	vmovaps	%xmm1, 448(%rsp)
	jmp	.L1695
	.p2align 4,,10
	.p2align 3
.L1694:
	movq	%rcx, 432(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 448(%rsp)
.L1695:
	movq	8(%rax), %rcx
	movq	%rcx, 440(%rsp)
	movq	80(%rsp), %rcx
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	432(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	440(%rsp), %r8
.LEHB75:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE75:
	movq	432(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L1696
	call	_ZdlPv
.L1696:
	movq	400(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L1697
	call	_ZdlPv
.L1697:
	movq	336(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.L1698
	call	_ZdlPv
.L1698:
	movq	304(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L1699
	call	_ZdlPv
.L1699:
	movq	240(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L1700
	call	_ZdlPv
.L1700:
	movq	208(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L1701
	call	_ZdlPv
.L1701:
	movq	176(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L1702
	call	_ZdlPv
.L1702:
	movq	272(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	je	.L1703
	call	_ZdlPv
.L1703:
	movq	368(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L1704
	call	_ZdlPv
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1661
	jmp	.L1705
	.p2align 4,,10
	.p2align 3
.L1704:
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1661
.L1705:
	movq	128(%rsp), %r8
.L1658:
	movq	544(%rsp), %rax
	movq	544(%rsp), %rbx
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	144(%rsp), %rax
	cmpq	88(%rsp), %rax
	jne	.L1707
	vmovdqa	160(%rsp), %xmm2
	vmovups	%xmm2, 16(%rbx)
	jmp	.L1708
	.p2align 4,,10
	.p2align 3
.L1707:
	movq	%rax, (%rbx)
	movq	160(%rsp), %rax
	movq	%rax, 16(%rbx)
.L1708:
	movq	152(%rsp), %rax
	movq	120(%rsp), %rdx
	movq	112(%rsp), %rcx
	movq	%rax, 8(%rbx)
	call	*__imp_PyErr_Restore(%rip)
	jmp	.L1616
.L1746:
	movq	400(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%r13, %rcx
	je	.L1805
	vzeroupper
	call	_ZdlPv
	jmp	.L1710
.L1805:
	vzeroupper
.L1710:
	jmp	.L1624
.L1745:
	movq	%rax, %r12
	vzeroupper
.L1624:
	movq	392(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1712
	decq	(%rcx)
	jne	.L1712
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1712:
	jmp	.L1642
.L1748:
	movq	432(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	je	.L1806
	vzeroupper
	call	_ZdlPv
	jmp	.L1715
.L1806:
	vzeroupper
.L1715:
.L1656:
	decq	(%r12)
	jne	.L1716
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L1716:
	movq	%rbx, %r12
	jmp	.L1642
.L1756:
	movq	432(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	je	.L1807
	vzeroupper
	call	_ZdlPv
	jmp	.L1718
.L1807:
	vzeroupper
.L1718:
	jmp	.L1719
.L1755:
	movq	%rax, %rbx
	vzeroupper
.L1719:
	movq	400(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L1720
	call	_ZdlPv
.L1720:
	jmp	.L1721
.L1754:
	movq	%rax, %rbx
	vzeroupper
.L1721:
	movq	336(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.L1722
	call	_ZdlPv
.L1722:
	jmp	.L1723
.L1753:
	movq	%rax, %rbx
	vzeroupper
.L1723:
	movq	304(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L1724
	call	_ZdlPv
.L1724:
	jmp	.L1725
.L1752:
	movq	%rax, %rbx
	vzeroupper
.L1725:
	movq	240(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L1726
	call	_ZdlPv
.L1726:
	jmp	.L1727
.L1751:
	movq	%rax, %rbx
	leaq	288(%rsp), %rax
	movq	%rax, 64(%rsp)
	vzeroupper
.L1727:
	movq	208(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L1728
	call	_ZdlPv
.L1728:
	jmp	.L1729
.L1750:
	movq	%rax, %rbx
	leaq	288(%rsp), %rax
	movq	%rax, 64(%rsp)
	vzeroupper
.L1729:
	movq	176(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L1730
	call	_ZdlPv
.L1730:
.L1670:
	movq	272(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	je	.L1731
	call	_ZdlPv
.L1731:
	jmp	.L1732
.L1749:
	movq	%rax, %rbx
	vzeroupper
.L1732:
	movq	368(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L1733
	call	_ZdlPv
.L1733:
	movq	%rbx, %r12
	jmp	.L1642
.L1747:
	movq	%rax, %r12
	vzeroupper
.L1642:
	movq	144(%rsp), %rcx
	cmpq	88(%rsp), %rcx
	je	.L1734
	call	_ZdlPv
.L1734:
	movq	112(%rsp), %rcx
	movq	128(%rsp), %r8
	movq	120(%rsp), %rdx
	call	*__imp_PyErr_Restore(%rip)
	movq	%r12, %rcx
.LEHB76:
	call	_Unwind_Resume
.LEHE76:
	.p2align 4,,10
	.p2align 3
.L1657:
	decq	(%r12)
	jne	.L1636
	jmp	.L1799
	.p2align 4,,10
	.p2align 3
.L1740:
	movq	%rsi, %rax
.L1650:
	movq	%rbx, 440(%rsp)
	movb	$0, (%rax,%rbx)
	decq	0(%r13)
	jne	.L1737
	jmp	.L1800
	.p2align 4,,10
	.p2align 3
.L1616:
	movq	544(%rsp), %rax
	addq	$472, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10436-.LLSDACSB10436
.LLSDACSB10436:
	.uleb128 .LEHB52-.LFB10436
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB10436
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L1745-.LFB10436
	.uleb128 0
	.uleb128 .LEHB54-.LFB10436
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L1757-.LFB10436
	.uleb128 0
	.uleb128 .LEHB55-.LFB10436
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L1745-.LFB10436
	.uleb128 0
	.uleb128 .LEHB56-.LFB10436
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L1758-.LFB10436
	.uleb128 0
	.uleb128 .LEHB57-.LFB10436
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L1746-.LFB10436
	.uleb128 0
	.uleb128 .LEHB58-.LFB10436
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L1747-.LFB10436
	.uleb128 0
	.uleb128 .LEHB59-.LFB10436
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L1759-.LFB10436
	.uleb128 0
	.uleb128 .LEHB60-.LFB10436
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L1747-.LFB10436
	.uleb128 0
	.uleb128 .LEHB61-.LFB10436
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1764-.LFB10436
	.uleb128 0
	.uleb128 .LEHB62-.LFB10436
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1763-.LFB10436
	.uleb128 0
	.uleb128 .LEHB63-.LFB10436
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L1760-.LFB10436
	.uleb128 0
	.uleb128 .LEHB64-.LFB10436
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1748-.LFB10436
	.uleb128 0
	.uleb128 .LEHB65-.LFB10436
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1747-.LFB10436
	.uleb128 0
	.uleb128 .LEHB66-.LFB10436
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1761-.LFB10436
	.uleb128 0
	.uleb128 .LEHB67-.LFB10436
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1749-.LFB10436
	.uleb128 0
	.uleb128 .LEHB68-.LFB10436
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1762-.LFB10436
	.uleb128 0
	.uleb128 .LEHB69-.LFB10436
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1750-.LFB10436
	.uleb128 0
	.uleb128 .LEHB70-.LFB10436
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1751-.LFB10436
	.uleb128 0
	.uleb128 .LEHB71-.LFB10436
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1752-.LFB10436
	.uleb128 0
	.uleb128 .LEHB72-.LFB10436
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1753-.LFB10436
	.uleb128 0
	.uleb128 .LEHB73-.LFB10436
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1754-.LFB10436
	.uleb128 0
	.uleb128 .LEHB74-.LFB10436
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1755-.LFB10436
	.uleb128 0
	.uleb128 .LEHB75-.LFB10436
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1756-.LFB10436
	.uleb128 0
	.uleb128 .LEHB76-.LFB10436
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
.LLSDACSE10436:
	.section	.text$_ZN8pybind116detail12error_stringB5cxx11Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind1117error_already_setC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1117error_already_setC1Ev
	.def	_ZN8pybind1117error_already_setC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1117error_already_setC1Ev
_ZN8pybind1117error_already_setC1Ev:
.LFB9389:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	leaq	32(%rsp), %r13
	movq	%rcx, %r12
	movq	%r13, %rcx
.LEHB77:
	call	_ZN8pybind116detail12error_stringB5cxx11Ev
.LEHE77:
	movq	%r13, %rdx
	movq	%r12, %rcx
.LEHB78:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE78:
	movq	32(%rsp), %rcx
	leaq	48(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1809
	call	_ZdlPv
.L1809:
	leaq	16+_ZTVN8pybind1117error_already_setE(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	24(%r12), %rdx
	movq	$0, 32(%r12)
	movq	%rax, (%r12)
	leaq	16(%r12), %rcx
	leaq	32(%r12), %r8
	vmovups	%xmm0, 16(%r12)
.LEHB79:
	call	*__imp_PyErr_Fetch(%rip)
.LEHE79:
	jmp	.L1824
.L1822:
	movq	32(%rsp), %rcx
	movq	%rax, %r12
	leaq	48(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1825
	vzeroupper
	call	_ZdlPv
	jmp	.L1811
.L1825:
	vzeroupper
.L1811:
	movq	%r12, %rcx
.LEHB80:
	call	_Unwind_Resume
.LEHE80:
.L1823:
	movq	32(%r12), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L1826
	decq	(%rcx)
	jne	.L1827
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L1814
.L1826:
	vzeroupper
	jmp	.L1814
.L1827:
	vzeroupper
.L1814:
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	je	.L1817
	decq	(%rcx)
	jne	.L1817
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1817:
	movq	16(%r12), %rcx
	testq	%rcx, %rcx
	je	.L1820
	decq	(%rcx)
	jne	.L1820
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1820:
	movq	%r12, %rcx
	call	_ZNSt13runtime_errorD2Ev
	movq	%r13, %rcx
.LEHB81:
	call	_Unwind_Resume
	nop
.LEHE81:
	.p2align 4,,10
	.p2align 3
.L1824:
	addq	$72, %rsp
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9389-.LLSDACSB9389
.LLSDACSB9389:
	.uleb128 .LEHB77-.LFB9389
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB9389
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1822-.LFB9389
	.uleb128 0
	.uleb128 .LEHB79-.LFB9389
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1823-.LFB9389
	.uleb128 0
	.uleb128 .LEHB80-.LFB9389
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB9389
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
.LLSDACSE9389:
	.section	.text$_ZN8pybind1117error_already_setC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv
	.def	_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv
_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv:
.LFB14229:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	cmpq	$0, 24(%rcx)
	movq	%rcx, %rbx
	jne	.L1829
	movq	16(%rcx), %rdx
	movq	8(%rcx), %rcx
.LEHB82:
	call	*__imp_PyObject_GetAttrString(%rip)
.LEHE82:
	testq	%rax, %rax
	jne	.L1830
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB83:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE83:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB84:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L1830:
	movq	24(%rbx), %rcx
	movq	%rax, 24(%rbx)
	testq	%rcx, %rcx
	jne	.L1831
	jmp	.L1829
.L1835:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	movq	%r12, %rcx
	call	_Unwind_Resume
.LEHE84:
	.p2align 4,,10
	.p2align 3
.L1831:
	decq	(%rcx)
	jne	.L1829
	movq	8(%rcx), %rax
	call	*48(%rax)
	.p2align 4,,10
	.p2align 3
.L1829:
	leaq	24(%rbx), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA14229:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14229-.LLSDACSB14229
.LLSDACSB14229:
	.uleb128 .LEHB82-.LFB14229
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB14229
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1835-.LFB14229
	.uleb128 0
	.uleb128 .LEHB84-.LFB14229
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
.LLSDACSE14229:
	.section	.text$_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind113str7raw_strEP7_object,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind113str7raw_strEP7_object
	.def	_ZN8pybind113str7raw_strEP7_object;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind113str7raw_strEP7_object
_ZN8pybind113str7raw_strEP7_object:
.LFB9595:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
.LEHB85:
	call	*__imp_PyObject_Str(%rip)
.LEHE85:
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L1837
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB86:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE86:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r12, %rcx
.LEHB87:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L1837:
	xorl	%r8d, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_PyUnicodeUCS2_FromEncodedObject(%rip)
	decq	(%r12)
	movq	%rax, %r13
	jne	.L1836
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
	jmp	.L1836
.L1840:
	movq	%rax, %r13
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	movq	%r13, %rcx
	call	_Unwind_Resume
.LEHE87:
	.p2align 4,,10
	.p2align 3
.L1836:
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9595:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9595-.LLSDACSB9595
.LLSDACSB9595:
	.uleb128 .LEHB85-.LFB9595
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB9595
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1840-.LFB9595
	.uleb128 0
	.uleb128 .LEHB87-.LFB9595
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
.LLSDACSE9595:
	.section	.text$_ZN8pybind113str7raw_strEP7_object,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC29:
	.ascii "Unable to move from Python \0"
.LC30:
	.ascii " instance to C++ \0"
	.align 8
.LC31:
	.ascii " instance: instance has multiple references\0"
	.section	.text$_ZN8pybind114moveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsrNS_6detail8negationINS9_ISt7is_sameINS8_5boolsIJXsrNS9_INS8_11move_alwaysIT_vEEEE5valueEXsrNS9_INS8_20move_if_unreferencedISD_vEEEE5valueELb1EEEENSB_IJLb1EXsrSF_5valueEXsrSI_5valueEEEEEEEEE5valueESD_E4typeEONS_6objectE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind114moveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsrNS_6detail8negationINS9_ISt7is_sameINS8_5boolsIJXsrNS9_INS8_11move_alwaysIT_vEEEE5valueEXsrNS9_INS8_20move_if_unreferencedISD_vEEEE5valueELb1EEEENSB_IJLb1EXsrSF_5valueEXsrSI_5valueEEEEEEEEE5valueESD_E4typeEONS_6objectE
	.def	_ZN8pybind114moveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsrNS_6detail8negationINS9_ISt7is_sameINS8_5boolsIJXsrNS9_INS8_11move_alwaysIT_vEEEE5valueEXsrNS9_INS8_20move_if_unreferencedISD_vEEEE5valueELb1EEEENSB_IJLb1EXsrSF_5valueEXsrSI_5valueEEEEEEEEE5valueESD_E4typeEONS_6objectE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind114moveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsrNS_6detail8negationINS9_ISt7is_sameINS8_5boolsIJXsrNS9_INS8_11move_alwaysIT_vEEEE5valueEXsrNS9_INS8_20move_if_unreferencedISD_vEEEE5valueELb1EEEENSB_IJLb1EXsrSF_5valueEXsrSI_5valueEEEEEEEEE5valueESD_E4typeEONS_6objectE
_ZN8pybind114moveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsrNS_6detail8negationINS9_ISt7is_sameINS8_5boolsIJXsrNS9_INS8_11move_alwaysIT_vEEEE5valueEXsrNS9_INS8_20move_if_unreferencedISD_vEEEE5valueELb1EEEENSB_IJLb1EXsrSF_5valueEXsrSI_5valueEEEEEEEEE5valueESD_E4typeEONS_6objectE:
.LFB15077:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$240, %rsp
	.seh_stackalloc	240
	.seh_endprologue
	movq	(%rdx), %rax
	movq	%rcx, %r12
	movq	%rdx, %r13
	cmpl	$1, (%rax)
	jle	.L1842
	movl	$16, %ecx
	leaq	144(%rsp), %rsi
	call	__cxa_allocate_exception
	movq	%rsi, %rcx
	movq	%rax, %r12
.LEHB88:
	call	_ZN8pybind11L7type_idINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_v
.LEHE88:
	movq	0(%r13), %rax
	movq	8(%rax), %rcx
.LEHB89:
	call	_ZN8pybind113str7raw_strEP7_object
.LEHE89:
	leaq	48(%rsp), %r13
	leaq	40(%rsp), %rdx
	movq	%rax, 40(%rsp)
	movq	%r13, %rcx
.LEHB90:
	call	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
.LEHE90:
	leaq	80(%rsp), %r14
	movq	%r13, %r8
	leaq	.LC29(%rip), %rdx
	movq	%r14, %rcx
.LEHB91:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.LEHE91:
	leaq	112(%rsp), %r13
	leaq	.LC30(%rip), %r8
	movq	%r14, %rdx
	movq	%r13, %rcx
.LEHB92:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE92:
	leaq	176(%rsp), %r14
	movq	%rsi, %r8
	movq	%r13, %rdx
	movq	%r14, %rcx
.LEHB93:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE93:
	leaq	208(%rsp), %r13
	leaq	.LC31(%rip), %r8
	movq	%r14, %rdx
	movq	%r13, %rcx
.LEHB94:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE94:
	movq	%r13, %rdx
	movq	%r12, %rcx
.LEHB95:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE95:
	leaq	16+_ZTVN8pybind1110cast_errorE(%rip), %rax
	movq	208(%rsp), %rcx
	movq	%rax, (%r12)
	leaq	224(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1843
	call	_ZdlPv
.L1843:
	movq	176(%rsp), %rcx
	leaq	192(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1844
	call	_ZdlPv
.L1844:
	movq	112(%rsp), %rcx
	leaq	128(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1845
	call	_ZdlPv
.L1845:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1846
	call	_ZdlPv
.L1846:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1847
	call	_ZdlPv
.L1847:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1849
	decq	(%rcx)
	jne	.L1849
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1849:
	movq	144(%rsp), %rcx
	leaq	160(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1851
	call	_ZdlPv
.L1851:
	leaq	_ZN8pybind1110cast_errorD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1110cast_errorE(%rip), %rdx
	movq	%r12, %rcx
.LEHB96:
	call	__cxa_throw
.LEHE96:
	.p2align 4,,10
	.p2align 3
.L1842:
	leaq	224(%rsp), %rbx
	leaq	208(%rsp), %rcx
	movq	$0, 216(%rsp)
	movq	%rbx, 208(%rsp)
	movb	$0, 224(%rsp)
.LEHB97:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE97:
	jmp	.L1883
.L1882:
	movq	208(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rbx, %rcx
	je	.L1885
	vzeroupper
	call	_ZdlPv
	jmp	.L1854
.L1885:
	vzeroupper
.L1854:
	movq	%r12, %rcx
.LEHB98:
	call	_Unwind_Resume
.LEHE98:
	.p2align 4,,10
	.p2align 3
.L1883:
	leaq	16(%r12), %rax
	movq	%rax, (%r12)
	movq	208(%rsp), %rax
	cmpq	%rbx, %rax
	jne	.L1855
	vmovdqa	224(%rsp), %xmm0
	vmovups	%xmm0, 16(%r12)
	jmp	.L1856
	.p2align 4,,10
	.p2align 3
.L1855:
	movq	%rax, (%r12)
	movq	224(%rsp), %rax
	movq	%rax, 16(%r12)
.L1856:
	movq	216(%rsp), %rax
	movq	%rax, 8(%r12)
	jmp	.L1884
.L1881:
	movq	208(%rsp), %rcx
	movq	%rax, %rbx
	leaq	224(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1886
	vzeroupper
	call	_ZdlPv
	jmp	.L1858
.L1886:
	vzeroupper
.L1858:
	jmp	.L1859
.L1880:
	movq	%rax, %rbx
	vzeroupper
.L1859:
	movq	176(%rsp), %rcx
	leaq	192(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1860
	call	_ZdlPv
.L1860:
	jmp	.L1861
.L1879:
	movq	%rax, %rbx
	vzeroupper
.L1861:
	movq	112(%rsp), %rcx
	leaq	128(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1862
	call	_ZdlPv
.L1862:
	jmp	.L1863
.L1878:
	movq	%rax, %rbx
	vzeroupper
.L1863:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1864
	call	_ZdlPv
.L1864:
	jmp	.L1865
.L1877:
	movq	%rax, %rbx
	vzeroupper
.L1865:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1866
	call	_ZdlPv
.L1866:
	jmp	.L1867
.L1876:
	movq	%rax, %rbx
	vzeroupper
.L1867:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1869
	decq	(%rcx)
	jne	.L1869
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1869:
	jmp	.L1871
.L1875:
	movq	%rax, %rbx
	vzeroupper
.L1871:
	movq	144(%rsp), %rcx
	leaq	160(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1872
	call	_ZdlPv
.L1872:
	jmp	.L1873
.L1874:
	movq	%rax, %rbx
	vzeroupper
.L1873:
	movq	%r12, %rcx
	call	__cxa_free_exception
	movq	%rbx, %rcx
.LEHB99:
	call	_Unwind_Resume
.LEHE99:
	.p2align 4,,10
	.p2align 3
.L1884:
	movq	%r12, %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15077:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15077-.LLSDACSB15077
.LLSDACSB15077:
	.uleb128 .LEHB88-.LFB15077
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1874-.LFB15077
	.uleb128 0
	.uleb128 .LEHB89-.LFB15077
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1875-.LFB15077
	.uleb128 0
	.uleb128 .LEHB90-.LFB15077
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1876-.LFB15077
	.uleb128 0
	.uleb128 .LEHB91-.LFB15077
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1877-.LFB15077
	.uleb128 0
	.uleb128 .LEHB92-.LFB15077
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1878-.LFB15077
	.uleb128 0
	.uleb128 .LEHB93-.LFB15077
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1879-.LFB15077
	.uleb128 0
	.uleb128 .LEHB94-.LFB15077
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1880-.LFB15077
	.uleb128 0
	.uleb128 .LEHB95-.LFB15077
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L1881-.LFB15077
	.uleb128 0
	.uleb128 .LEHB96-.LFB15077
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB97-.LFB15077
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1882-.LFB15077
	.uleb128 0
	.uleb128 .LEHB98-.LFB15077
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB99-.LFB15077
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
.LLSDACSE15077:
	.section	.text$_ZN8pybind114moveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsrNS_6detail8negationINS9_ISt7is_sameINS8_5boolsIJXsrNS9_INS8_11move_alwaysIT_vEEEE5valueEXsrNS9_INS8_20move_if_unreferencedISD_vEEEE5valueELb1EEEENSB_IJLb1EXsrSF_5valueEXsrSI_5valueEEEEEEEEE5valueESD_E4typeEONS_6objectE,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC32:
	.ascii "Can't parse Python version.\0"
	.align 8
.LC33:
	.ascii "Python version mismatch: module was compiled for version %i.%i, while the interpreter is running version %i.%i.\0"
.LC34:
	.ascii "histograms\0"
	.align 8
.LC35:
	.ascii "Internal error in module::module()\0"
.LC36:
	.ascii "__doc__\0"
	.text
	.p2align 4
	.globl	inithistograms
	.def	inithistograms;	.scl	2;	.type	32;	.endef
	.seh_proc	inithistograms
inithistograms:
.LFB12876:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
.LEHB100:
	call	*__imp_Py_GetVersion(%rip)
	leaq	60(%rsp), %r9
	leaq	56(%rsp), %r8
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rdx
	call	_ZL6sscanfPKcS0_z.constprop.0
	cmpl	$2, %eax
	je	.L1888
	movq	__imp_PyExc_ImportError(%rip), %rax
	leaq	.LC32(%rip), %rdx
	movq	(%rax), %rcx
	call	*__imp_PyErr_SetString(%rip)
	jmp	.L1887
	.p2align 4,,10
	.p2align 3
.L1888:
	movl	56(%rsp), %eax
	movl	60(%rsp), %edx
	cmpl	$2, %eax
	jne	.L1890
	cmpl	$7, %edx
	je	.L1891
.L1890:
	movl	%eax, 32(%rsp)
	movq	__imp_PyExc_ImportError(%rip), %rax
	movl	$7, %r9d
	movl	$2, %r8d
	movl	%edx, 40(%rsp)
	leaq	.LC33(%rip), %rdx
	movq	(%rax), %rcx
	call	*__imp_PyErr_Format(%rip)
.LEHE100:
	jmp	.L1887
	.p2align 4,,10
	.p2align 3
.L1891:
	movl	$1013, 32(%rsp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	$0, 64(%rsp)
	leaq	.LC34(%rip), %rcx
.LEHB101:
	call	*__imp_Py_InitModule4_64(%rip)
	movq	%rax, 64(%rsp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L1892
	leaq	.LC35(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE101:
	.p2align 4,,10
	.p2align 3
.L1892:
	incq	(%rax)
	leaq	96(%rsp), %rbx
	leaq	80(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	72(%rsp), %rdx
	movq	%rbx, 80(%rsp)
	movq	$60, 72(%rsp)
.LEHB102:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE102:
	movq	72(%rsp), %rdx
	movq	%rax, 80(%rsp)
	xorl	%r8d, %r8d
	movabsq	$2336630925664679027, %rcx
	movl	$695432289, 56(%rax)
	movq	%rdx, 96(%rsp)
	movabsq	$7595356456084391456, %rdx
	movq	%rdx, (%rax)
	movabsq	$2340027244252129644, %rdx
	movq	%rcx, 8(%rax)
	movabsq	$8750038247351152486, %rcx
	movq	%rdx, 16(%rax)
	movabsq	$2891437840287757344, %rdx
	movq	%rcx, 24(%rax)
	movabsq	$8318822956464893545, %rcx
	movq	%rdx, 32(%rax)
	movabsq	$8028904525004693792, %rdx
	movq	%rcx, 40(%rax)
	movq	%rdx, 48(%rax)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movb	$0, (%rdx,%rax)
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rcx
.LEHB103:
	call	*__imp_PyUnicodeUCS2_DecodeUTF8(%rip)
.LEHE103:
	jmp	.L1933
.L1925:
	movq	64(%rsp), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1935
	decq	(%rcx)
	jne	.L1936
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L1896
.L1935:
	vzeroupper
	jmp	.L1896
.L1936:
	vzeroupper
.L1896:
	movq	%r12, %rcx
.LEHB104:
	call	_Unwind_Resume
.LEHE104:
	.p2align 4,,10
	.p2align 3
.L1933:
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L1898
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB105:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE105:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB106:
	call	__cxa_throw
.LEHE106:
	.p2align 4,,10
	.p2align 3
.L1898:
	movq	80(%rsp), %rcx
	cmpq	%rbx, %rcx
	jne	.L1899
	jmp	.L1900
.L1928:
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1902
	.p2align 4,,10
	.p2align 3
.L1899:
	call	_ZdlPv
.L1900:
	movq	%r13, %r8
	leaq	.LC36(%rip), %rdx
	movq	%r12, %rcx
.LEHB107:
	call	*__imp_PyObject_SetAttrString(%rip)
.LEHE107:
	testl	%eax, %eax
	je	.L1906
	jmp	.L1934
.L1927:
	movq	%rax, %r12
	movq	%rdx, %r13
	vzeroupper
.L1902:
	movq	80(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L1904
	call	_ZdlPv
.L1904:
	movq	%r12, %rcx
	movq	%r13, %rax
	jmp	.L1905
.L1934:
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB108:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE108:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB109:
	call	__cxa_throw
.LEHE109:
.L1929:
	movq	%rax, %rbx
	movq	%rdx, %r12
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1908
	.p2align 4,,10
	.p2align 3
.L1906:
	decq	0(%r13)
	jne	.L1909
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L1909:
	leaq	64(%rsp), %rcx
.LEHB110:
	call	_Z15init_HistogramsRN8pybind116moduleE
.LEHE110:
	jmp	.L1917
.L1926:
	movq	%rax, %rbx
	movq	%rdx, %r12
	vzeroupper
.L1908:
	decq	0(%r13)
	jne	.L1911
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L1911:
	movq	%rbx, %rcx
	movq	%r12, %rax
	jmp	.L1905
	.p2align 4,,10
	.p2align 3
.L1917:
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1887
	decq	(%rcx)
	jne	.L1887
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L1887
.L1924:
	movq	%rax, %rcx
	movq	%rdx, %rax
	vzeroupper
.L1905:
	cmpq	$1, %rax
	je	.L1914
	cmpq	$2, %rax
	je	.L1915
	movq	%rcx, %r12
	jmp	.L1916
.L1914:
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_ImportError(%rip), %rax
	movq	(%rax), %rcx
.LEHB111:
	call	*__imp_PyErr_SetString(%rip)
.LEHE111:
.LEHB112:
	call	__cxa_end_catch
.LEHE112:
	jmp	.L1917
.L1915:
	call	__cxa_begin_catch
	movq	%rax, %rcx
	movq	(%rax), %rax
	call	*16(%rax)
	movq	%rax, %rdx
	movq	__imp_PyExc_ImportError(%rip), %rax
	movq	(%rax), %rcx
.LEHB113:
	call	*__imp_PyErr_SetString(%rip)
.LEHE113:
	call	__cxa_end_catch
	jmp	.L1917
.L1923:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	jmp	.L1916
.L1922:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	jmp	.L1916
.L1921:
	movq	%rax, %r12
	vzeroupper
.L1916:
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1920
	decq	(%rcx)
	jne	.L1920
	movq	8(%rcx), %rax
	call	*48(%rax)
.L1920:
	movq	%r12, %rcx
.LEHB114:
	call	_Unwind_Resume
	nop
.LEHE114:
	.p2align 4,,10
	.p2align 3
.L1887:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA12876:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12876-.LLSDATTD12876
.LLSDATTD12876:
	.byte	0x1
	.uleb128 .LLSDACSE12876-.LLSDACSB12876
.LLSDACSB12876:
	.uleb128 .LEHB100-.LFB12876
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB101-.LFB12876
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1925-.LFB12876
	.uleb128 0
	.uleb128 .LEHB102-.LFB12876
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1924-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB103-.LFB12876
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1927-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB104-.LFB12876
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB12876
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1928-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB106-.LFB12876
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1927-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB107-.LFB12876
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1926-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB108-.LFB12876
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L1929-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB109-.LFB12876
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1926-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB110-.LFB12876
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1924-.LFB12876
	.uleb128 0x5
	.uleb128 .LEHB111-.LFB12876
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1923-.LFB12876
	.uleb128 0
	.uleb128 .LEHB112-.LFB12876
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1921-.LFB12876
	.uleb128 0
	.uleb128 .LEHB113-.LFB12876
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1922-.LFB12876
	.uleb128 0
	.uleb128 .LEHB114-.LFB12876
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
.LLSDACSE12876:
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	.LDFCM0-.
	.long	.LDFCM8-.
.LLSDATT12876:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC37:
	.ascii "Could not allocate tuple object!\0"
	.section	.text$_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJEEENS_6objectEDpOT0_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJEEENS_6objectEDpOT0_
	.def	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJEEENS_6objectEDpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJEEENS_6objectEDpOT0_
_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJEEENS_6objectEDpOT0_:
.LFB13562:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r13
	movq	%rdx, %rbx
	xorl	%ecx, %ecx
.LEHB115:
	call	*__imp_PyTuple_New(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L1938
	leaq	.LC37(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE115:
	.p2align 4,,10
	.p2align 3
.L1938:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L1939
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
.LEHB116:
	call	*__imp_PyObject_GetAttrString(%rip)
.LEHE116:
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L1940
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB117:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE117:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB118:
	call	__cxa_throw
.LEHE118:
	.p2align 4,,10
	.p2align 3
.L1940:
	movq	24(%rbx), %r8
	movq	%rax, 24(%rbx)
	testq	%r8, %r8
	jne	.L1956
	jmp	.L1939
.L1951:
	movq	%rax, %r13
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1944
	.p2align 4,,10
	.p2align 3
.L1956:
	decq	(%r8)
	jne	.L1939
	movq	8(%r8), %rax
	movq	%r8, %rcx
	call	*48(%rax)
	movq	24(%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L1939:
	movq	%r12, %rdx
.LEHB119:
	call	*__imp_PyObject_CallObject(%rip)
.LEHE119:
	testq	%rax, %rax
	jne	.L1945
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB120:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE120:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB121:
	call	__cxa_throw
.LEHE121:
	.p2align 4,,10
	.p2align 3
.L1945:
	movq	%rax, 0(%r13)
	decq	(%r12)
	jne	.L1937
	jmp	.L1957
.L1952:
	movq	%rax, %r13
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1944
	.p2align 4,,10
	.p2align 3
.L1957:
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
	jmp	.L1937
.L1950:
	movq	%rax, %r13
	vzeroupper
.L1944:
	decq	(%r12)
	jne	.L1949
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L1949:
	movq	%r13, %rcx
.LEHB122:
	call	_Unwind_Resume
.LEHE122:
	.p2align 4,,10
	.p2align 3
.L1937:
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA13562:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13562-.LLSDACSB13562
.LLSDACSB13562:
	.uleb128 .LEHB115-.LFB13562
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB116-.LFB13562
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1950-.LFB13562
	.uleb128 0
	.uleb128 .LEHB117-.LFB13562
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1951-.LFB13562
	.uleb128 0
	.uleb128 .LEHB118-.LFB13562
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1950-.LFB13562
	.uleb128 0
	.uleb128 .LEHB119-.LFB13562
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1950-.LFB13562
	.uleb128 0
	.uleb128 .LEHB120-.LFB13562
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1952-.LFB13562
	.uleb128 0
	.uleb128 .LEHB121-.LFB13562
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1950-.LFB13562
	.uleb128 0
	.uleb128 .LEHB122-.LFB13562
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
.LLSDACSE13562:
	.section	.text$_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJEEENS_6objectEDpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC38:
	.ascii "pybind11_object\0"
	.align 8
.LC39:
	.ascii "make_object_base_type(): error allocating type!\0"
	.align 8
.LC40:
	.ascii "PyType_Ready failed in make_object_base_type():\0"
.LC41:
	.ascii "pybind11_builtins\0"
	.align 8
.LC42:
	.ascii "Could not allocate string object!\0"
.LC43:
	.ascii "__module__\0"
.LC44:
	.ascii "__qualname__\0"
	.align 8
.LC45:
	.ascii "C:\\Anaconda2\\Include/pybind11/detail/class.h\0"
	.align 8
.LC46:
	.ascii "!PyType_HasFeature(type, Py_TPFLAGS_HAVE_GC)\0"
	.section	.text$_ZN8pybind116detail21make_object_base_typeEP11_typeobject,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail21make_object_base_typeEP11_typeobject
	.def	_ZN8pybind116detail21make_object_base_typeEP11_typeobject;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail21make_object_base_typeEP11_typeobject
_ZN8pybind116detail21make_object_base_typeEP11_typeobject:
.LFB10856:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, %r12
	leaq	.LC38(%rip), %rcx
.LEHB123:
	call	*__imp_PyString_FromString(%rip)
.LEHE123:
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%rax, %r13
.LEHB124:
	call	*304(%r12)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L1959
	leaq	.LC39(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L1959:
	testq	%r13, %r13
	je	.L1960
	incq	0(%r13)
.L1960:
	leaq	.LC38(%rip), %rax
	movq	%r12, %rcx
	movq	%r13, 856(%r12)
	movq	%rax, 24(%r12)
	movq	__imp_PyBaseObject_Type(%rip), %rax
	movq	$56, 32(%r12)
	incq	(%rax)
	movq	%rax, 256(%r12)
	leaq	pybind11_object_new(%rip), %rax
	movq	%rax, 312(%r12)
	leaq	pybind11_object_init(%rip), %rax
	movq	%rax, 296(%r12)
	leaq	pybind11_object_dealloc(%rip), %rax
	movl	$133099, 168(%r12)
	movq	%rax, 48(%r12)
	movq	$40, 208(%r12)
	call	*__imp_PyType_Ready(%rip)
	testl	%eax, %eax
	jns	.L1961
	leaq	48(%rsp), %r12
	movq	%r12, %rcx
	call	_ZN8pybind116detail12error_stringB5cxx11Ev
.LEHE124:
	leaq	.LC40(%rip), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	$47, 32(%rsp)
.LEHB125:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE125:
	leaq	96(%rsp), %rbx
	leaq	16(%rax), %rdx
	movq	%rbx, 80(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L1962
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	jmp	.L1963
.L1962:
	movq	%rcx, 80(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 96(%rsp)
.L1963:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 88(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
.LEHB126:
	call	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE126:
	.p2align 4,,10
	.p2align 3
.L1961:
	leaq	.LC41(%rip), %rcx
.LEHB127:
	call	*__imp_PyUnicodeUCS2_FromString(%rip)
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.L1964
	leaq	.LC42(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE127:
	.p2align 4,,10
	.p2align 3
.L1964:
	movq	__imp_PyObject_SetAttrString(%rip), %rbx
	movq	%rax, %r8
	leaq	.LC43(%rip), %rdx
	movq	%r12, %rcx
.LEHB128:
	call	*%rbx
.LEHE128:
	testl	%eax, %eax
	je	.L1965
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r15
.LEHB129:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE129:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r15, %rcx
.LEHB130:
	call	__cxa_throw
.LEHE130:
.L1989:
	movq	%rax, %r12
	movq	%r15, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1967
	.p2align 4,,10
	.p2align 3
.L1965:
	decq	(%r14)
	jne	.L1968
	movq	8(%r14), %rax
	movq	%r14, %rcx
	call	*48(%rax)
.L1968:
	movq	%r13, %r8
	leaq	.LC44(%rip), %rdx
	movq	%r12, %rcx
.LEHB131:
	call	*%rbx
.LEHE131:
	testl	%eax, %eax
	je	.L1969
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB132:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE132:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB133:
	call	__cxa_throw
.L1990:
	movq	%rax, %r12
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L1971
	.p2align 4,,10
	.p2align 3
.L1969:
	testb	$64, 169(%r12)
	jne	.L1972
.L1975:
	testq	%r13, %r13
	jne	.L1997
	jmp	.L1958
	.p2align 4,,10
	.p2align 3
.L1972:
	movl	$404, %r8d
	leaq	.LC45(%rip), %rdx
	leaq	.LC46(%rip), %rcx
	call	*__imp__assert(%rip)
.LEHE133:
	jmp	.L1975
	.p2align 4,,10
	.p2align 3
.L1997:
	decq	0(%r13)
	jne	.L1958
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
	jmp	.L1958
.L1987:
	movq	80(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rbx, %rcx
	je	.L1998
	vzeroupper
	call	_ZdlPv
	jmp	.L1978
.L1998:
	vzeroupper
.L1978:
	jmp	.L1979
.L1986:
	movq	%rax, %r12
	vzeroupper
.L1979:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L1980
	call	_ZdlPv
.L1980:
	jmp	.L1971
.L1988:
	movq	%rax, %r12
	vzeroupper
.L1967:
	decq	(%r14)
	jne	.L1981
	movq	8(%r14), %rax
	movq	%r14, %rcx
	call	*48(%rax)
.L1981:
	jmp	.L1971
.L1985:
	movq	%rax, %r12
	vzeroupper
.L1971:
	testq	%r13, %r13
	je	.L1983
	decq	0(%r13)
	jne	.L1983
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L1983:
	movq	%r12, %rcx
.LEHB134:
	call	_Unwind_Resume
.LEHE134:
	.p2align 4,,10
	.p2align 3
.L1958:
	movq	%r12, %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10856:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10856-.LLSDACSB10856
.LLSDACSB10856:
	.uleb128 .LEHB123-.LFB10856
	.uleb128 .LEHE123-.LEHB123
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB124-.LFB10856
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1985-.LFB10856
	.uleb128 0
	.uleb128 .LEHB125-.LFB10856
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1986-.LFB10856
	.uleb128 0
	.uleb128 .LEHB126-.LFB10856
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1987-.LFB10856
	.uleb128 0
	.uleb128 .LEHB127-.LFB10856
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1985-.LFB10856
	.uleb128 0
	.uleb128 .LEHB128-.LFB10856
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1988-.LFB10856
	.uleb128 0
	.uleb128 .LEHB129-.LFB10856
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1989-.LFB10856
	.uleb128 0
	.uleb128 .LEHB130-.LFB10856
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1988-.LFB10856
	.uleb128 0
	.uleb128 .LEHB131-.LFB10856
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1985-.LFB10856
	.uleb128 0
	.uleb128 .LEHB132-.LFB10856
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1990-.LFB10856
	.uleb128 0
	.uleb128 .LEHB133-.LFB10856
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1985-.LFB10856
	.uleb128 0
	.uleb128 .LEHB134-.LFB10856
	.uleb128 .LEHE134-.LEHB134
	.uleb128 0
	.uleb128 0
.LLSDACSE10856:
	.section	.text$_ZN8pybind116detail21make_object_base_typeEP11_typeobject,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10_HashtableIP11_typeobjectSt4pairIKS1_St6vectorIPN8pybind116detail9type_infoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEyRKy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt10_HashtableIP11_typeobjectSt4pairIKS1_St6vectorIPN8pybind116detail9type_infoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEyRKy
	.def	_ZNSt10_HashtableIP11_typeobjectSt4pairIKS1_St6vectorIPN8pybind116detail9type_infoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEyRKy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10_HashtableIP11_typeobjectSt4pairIKS1_St6vectorIPN8pybind116detail9type_infoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEyRKy
_ZNSt10_HashtableIP11_typeobjectSt4pairIKS1_St6vectorIPN8pybind116detail9type_infoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEyRKy:
.LFB15739:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	cmpq	$1, %rdx
	jne	.L2000
	leaq	48(%rcx), %rdi
	movq	$0, 48(%rcx)
	movq	%rdi, %r11
	jmp	.L2001
	.p2align 4,,10
	.p2align 3
.L2000:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rdx
	jbe	.L2002
.LEHB135:
	call	_ZSt17__throw_bad_allocv
	.p2align 4,,10
	.p2align 3
.L2002:
	leaq	0(,%rdx,8), %rbp
	movq	%rbp, %rcx
	call	_Znwy
.LEHE135:
	movq	%rbp, %r8
	xorl	%edx, %edx
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	memset
	leaq	48(%rbx), %r11
.L2001:
	movq	16(%rbx), %r8
	movq	$0, 16(%rbx)
	testq	%r8, %r8
	je	.L2003
	xorl	%r10d, %r10d
	leaq	16(%rbx), %rbp
	.p2align 4,,10
	.p2align 3
.L2006:
	movq	%r8, %rcx
	xorl	%edx, %edx
	movq	(%r8), %r8
	movq	8(%rcx), %rax
	divq	%rsi
	leaq	(%rdi,%rdx,8), %r9
	movq	(%r9), %rax
	testq	%rax, %rax
	jne	.L2004
	movq	16(%rbx), %rax
	movq	%rax, (%rcx)
	movq	%rcx, 16(%rbx)
	movq	%rbp, (%r9)
	cmpq	$0, (%rcx)
	je	.L2010
	movq	%rcx, (%rdi,%r10,8)
	movq	%rdx, %r10
	jmp	.L2005
	.p2align 4,,10
	.p2align 3
.L2004:
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	(%r9), %rax
	movq	%rcx, (%rax)
	jmp	.L2005
	.p2align 4,,10
	.p2align 3
.L2010:
	movq	%rdx, %r10
	.p2align 4,,10
	.p2align 3
.L2005:
	testq	%r8, %r8
	jne	.L2006
.L2003:
	movq	(%rbx), %rcx
	cmpq	%r11, %rcx
	je	.L2007
	call	_ZdlPv
.L2007:
	movq	%rsi, 8(%rbx)
	movq	%rdi, (%rbx)
	jmp	.L2017
.L2011:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	movq	(%rdi), %rax
	movq	%rax, 40(%rbx)
.LEHB136:
	call	__cxa_rethrow
.LEHE136:
.L2012:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
.LEHB137:
	call	_Unwind_Resume
	nop
.LEHE137:
	.p2align 4,,10
	.p2align 3
.L2017:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA15739:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT15739-.LLSDATTD15739
.LLSDATTD15739:
	.byte	0x1
	.uleb128 .LLSDACSE15739-.LLSDACSB15739
.LLSDACSB15739:
	.uleb128 .LEHB135-.LFB15739
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L2011-.LFB15739
	.uleb128 0x1
	.uleb128 .LEHB136-.LFB15739
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L2012-.LFB15739
	.uleb128 0
	.uleb128 .LEHB137-.LFB15739
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
.LLSDACSE15739:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT15739:
	.section	.text$_ZNSt10_HashtableIP11_typeobjectSt4pairIKS1_St6vectorIPN8pybind116detail9type_infoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEyRKy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRKPKcEEENS_5tupleEDpOT0_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRKPKcEEENS_5tupleEDpOT0_
	.def	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRKPKcEEENS_5tupleEDpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRKPKcEEENS_5tupleEDpOT0_
_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRKPKcEEENS_5tupleEDpOT0_:
.LFB15964:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	(%rdx), %r12
	movq	%rcx, %r13
	testq	%r12, %r12
	jne	.L2019
	movq	__imp__Py_NoneStruct(%rip), %rbx
	incq	(%rbx)
	jne	.L2020
	movq	8(%rbx), %rax
	movq	%rbx, %rcx
	call	*48(%rax)
.L2020:
	jmp	.L2021
	.p2align 4,,10
	.p2align 3
.L2019:
	leaq	64(%rsp), %rsi
	movq	%r12, %rcx
	leaq	48(%rsp), %r14
	movq	%rsi, 48(%rsp)
	call	strlen
	movq	%rax, 40(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	jbe	.L2022
	movq	%r14, %rcx
	leaq	40(%rsp), %rdx
	xorl	%r8d, %r8d
.LEHB138:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE138:
	movq	%rax, 48(%rsp)
	movq	%rax, %rcx
	movq	40(%rsp), %rax
	movq	%rax, 64(%rsp)
	jmp	.L2023
	.p2align 4,,10
	.p2align 3
.L2022:
	cmpq	$1, %rax
	jne	.L2024
	movzbl	(%r12), %edx
	movb	%dl, 64(%rsp)
	movq	%rsi, %rdx
	jmp	.L2025
	.p2align 4,,10
	.p2align 3
.L2024:
	testq	%rax, %rax
	je	.L2041
	movq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L2023:
	movq	%r12, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	40(%rsp), %rax
	movq	48(%rsp), %rdx
	jmp	.L2025
	.p2align 4,,10
	.p2align 3
.L2041:
	movq	%rsi, %rdx
.L2025:
	movq	%rax, 56(%rsp)
	xorl	%r8d, %r8d
	movb	$0, (%rdx,%rax)
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
.LEHB139:
	call	*__imp_PyUnicodeUCS2_DecodeUTF8(%rip)
.LEHE139:
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L2026
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB140:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE140:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB141:
	call	__cxa_throw
.LEHE141:
	.p2align 4,,10
	.p2align 3
.L2026:
	movq	48(%rsp), %rcx
	cmpq	%rsi, %rcx
	jne	.L2027
	jmp	.L2021
.L2044:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2030
	.p2align 4,,10
	.p2align 3
.L2027:
	call	_ZdlPv
	jmp	.L2021
.L2043:
	movq	%rax, %r12
	vzeroupper
.L2030:
	movq	48(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L2031
	call	_ZdlPv
.L2031:
	movq	%r12, %rcx
.LEHB142:
	call	_Unwind_Resume
.LEHE142:
	.p2align 4,,10
	.p2align 3
.L2047:
	movq	%rbx, 24(%rax)
	jmp	.L2046
.L2032:
	leaq	.LC37(%rip), %rcx
.LEHB143:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE143:
.L2045:
	movq	0(%r13), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L2049
	decq	(%rcx)
	jne	.L2050
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L2035
.L2049:
	vzeroupper
	jmp	.L2035
.L2050:
	vzeroupper
.L2035:
	jmp	.L2037
.L2048:
	movq	8(%rbx), %rax
	movq	%rbx, %rcx
	call	*48(%rax)
.L2039:
	movq	%r12, %rcx
.LEHB144:
	call	_Unwind_Resume
.LEHE144:
	.p2align 4,,10
	.p2align 3
.L2021:
	movl	$1, %ecx
.LEHB145:
	call	*__imp_PyTuple_New(%rip)
.LEHE145:
	movq	%rax, 0(%r13)
	testq	%rax, %rax
	jne	.L2047
	jmp	.L2032
.L2042:
	movq	%rax, %r12
	vzeroupper
.L2037:
	decq	(%rbx)
	je	.L2048
	jmp	.L2039
	.p2align 4,,10
	.p2align 3
.L2046:
	movq	%r13, %rax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15964:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15964-.LLSDACSB15964
.LLSDACSB15964:
	.uleb128 .LEHB138-.LFB15964
	.uleb128 .LEHE138-.LEHB138
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB139-.LFB15964
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L2043-.LFB15964
	.uleb128 0
	.uleb128 .LEHB140-.LFB15964
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L2044-.LFB15964
	.uleb128 0
	.uleb128 .LEHB141-.LFB15964
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L2043-.LFB15964
	.uleb128 0
	.uleb128 .LEHB142-.LFB15964
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB143-.LFB15964
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L2045-.LFB15964
	.uleb128 0
	.uleb128 .LEHB144-.LFB15964
	.uleb128 .LEHE144-.LEHB144
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB145-.LFB15964
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L2042-.LFB15964
	.uleb128 0
.LLSDACSE15964:
	.section	.text$_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRKPKcEEENS_5tupleEDpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRKPKcEEENS_6objectEDpOT0_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRKPKcEEENS_6objectEDpOT0_
	.def	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRKPKcEEENS_6objectEDpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRKPKcEEENS_6objectEDpOT0_
_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRKPKcEEENS_6objectEDpOT0_:
.LFB14074:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rbx
	movq	%rcx, %r12
	leaq	40(%rsp), %rcx
	movq	%r8, %rdx
.LEHB146:
	call	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRKPKcEEENS_5tupleEDpOT0_
.LEHE146:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L2052
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
.LEHB147:
	call	*__imp_PyObject_GetAttrString(%rip)
.LEHE147:
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L2053
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB148:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE148:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB149:
	call	__cxa_throw
.LEHE149:
	.p2align 4,,10
	.p2align 3
.L2053:
	movq	24(%rbx), %r8
	movq	%rax, 24(%rbx)
	testq	%r8, %r8
	jne	.L2072
	jmp	.L2052
.L2067:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2057
	.p2align 4,,10
	.p2align 3
.L2072:
	decq	(%r8)
	jne	.L2052
	movq	8(%r8), %rax
	movq	%r8, %rcx
	call	*48(%rax)
	movq	24(%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L2052:
	movq	40(%rsp), %rdx
.LEHB150:
	call	*__imp_PyObject_CallObject(%rip)
.LEHE150:
	testq	%rax, %rax
	jne	.L2058
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB151:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE151:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB152:
	call	__cxa_throw
.LEHE152:
	.p2align 4,,10
	.p2align 3
.L2058:
	movq	40(%rsp), %rcx
	movq	%rax, (%r12)
	testq	%rcx, %rcx
	jne	.L2059
	jmp	.L2051
.L2068:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2057
	.p2align 4,,10
	.p2align 3
.L2059:
	decq	(%rcx)
	jne	.L2051
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L2051
.L2066:
	movq	%rax, %r12
	vzeroupper
.L2057:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2064
	decq	(%rcx)
	jne	.L2064
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2064:
	movq	%r12, %rcx
.LEHB153:
	call	_Unwind_Resume
.LEHE153:
	.p2align 4,,10
	.p2align 3
.L2051:
	movq	%r12, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA14074:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14074-.LLSDACSB14074
.LLSDACSB14074:
	.uleb128 .LEHB146-.LFB14074
	.uleb128 .LEHE146-.LEHB146
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB147-.LFB14074
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L2066-.LFB14074
	.uleb128 0
	.uleb128 .LEHB148-.LFB14074
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L2067-.LFB14074
	.uleb128 0
	.uleb128 .LEHB149-.LFB14074
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L2066-.LFB14074
	.uleb128 0
	.uleb128 .LEHB150-.LFB14074
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L2066-.LFB14074
	.uleb128 0
	.uleb128 .LEHB151-.LFB14074
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L2068-.LFB14074
	.uleb128 0
	.uleb128 .LEHB152-.LFB14074
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L2066-.LFB14074
	.uleb128 0
	.uleb128 .LEHB153-.LFB14074
	.uleb128 .LEHE153-.LEHB153
	.uleb128 0
	.uleb128 0
.LLSDACSE14074:
	.section	.text$_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRKPKcEEENS_6objectEDpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC47:
	.ascii "make_tuple(): unable to convert argument of type '\0"
.LC48:
	.ascii "' to Python object\0"
	.section	.text$_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRNS_6handleES3_EEENS_5tupleEDpOT0_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRNS_6handleES3_EEENS_5tupleEDpOT0_
	.def	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRNS_6handleES3_EEENS_5tupleEDpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRNS_6handleES3_EEENS_5tupleEDpOT0_
_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRNS_6handleES3_EEENS_5tupleEDpOT0_:
.LFB16182:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$176, %rsp
	.seh_stackalloc	176
	.seh_endprologue
	movq	(%rdx), %rsi
	movq	(%r8), %rbx
	movq	%rcx, %r12
	testq	%rsi, %rsi
	je	.L2074
	incq	(%rsi)
	movq	%rsi, 32(%rsp)
	testq	%rbx, %rbx
	jne	.L2075
	.p2align 4,,10
	.p2align 3
.L2116:
	movq	$0, 40(%rsp)
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	setne	%bl
.L2115:
	leaq	112(%rsp), %rsi
	leaq	80(%rsp), %r12
	xorl	%r8d, %r8d
	movq	$18, 80(%rsp)
	leaq	128(%rsp), %rdi
	movq	%r12, %rdx
	movq	%rsi, %rcx
	movq	%rdi, 112(%rsp)
.LEHB154:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE154:
	movq	80(%rsp), %rdx
	movq	%rax, 112(%rsp)
	movabsq	$7810489018406547761, %rcx
	movq	%rdx, 128(%rsp)
	movabsq	$7236837522896074830, %rdx
	movq	%rcx, 8(%rax)
	movl	$17765, %ecx
	movq	%rdx, (%rax)
	movq	112(%rsp), %rdx
	movw	%cx, 16(%rax)
	movq	80(%rsp), %rax
	movq	%rsi, %rcx
	movq	%rax, 120(%rsp)
	movb	$0, (%rdx,%rax)
.LEHB155:
	call	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE155:
	jmp	.L2138
.L2124:
	movq	112(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rdi, %rcx
	je	.L2143
	vzeroupper
	call	_ZdlPv
	jmp	.L2078
.L2143:
	vzeroupper
.L2078:
	movl	$1, %eax
	jmp	.L2079
	.p2align 4,,10
	.p2align 3
.L2138:
	leaq	144(%rsp), %r13
	leaq	160(%rsp), %rbp
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rbp, 144(%rsp)
	movq	$18, 80(%rsp)
.LEHB156:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE156:
	movq	80(%rsp), %rdx
	movq	%rax, 144(%rsp)
	movabsq	$7810489018406547761, %rcx
	movq	%rdx, 160(%rsp)
	movabsq	$7236837522896074830, %rdx
	movq	%rdx, (%rax)
	movl	$17765, %edx
	movq	%rcx, 8(%rax)
	movq	%r13, %rcx
	movw	%dx, 16(%rax)
	movq	80(%rsp), %rax
	movq	144(%rsp), %rdx
	movq	%rax, 152(%rsp)
	movb	$0, (%rdx,%rax)
.LEHB157:
	call	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE157:
	jmp	.L2139
.L2118:
	movq	%rax, %r12
	xorl	%eax, %eax
	vzeroupper
	jmp	.L2079
.L2125:
	movq	144(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rbp, %rcx
	je	.L2144
	vzeroupper
	call	_ZdlPv
	jmp	.L2084
.L2144:
	vzeroupper
.L2084:
	xorl	%eax, %eax
	jmp	.L2079
.L2139:
	movl	$16, %ecx
	salq	$5, %rbx
	leaq	48(%rsp), %r13
	call	__cxa_allocate_exception
	movq	%rbx, %r8
	leaq	.LC47(%rip), %rdx
	movq	%r13, %rcx
	addq	%rsi, %r8
	movq	%rax, %r14
.LEHB158:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.LEHE158:
	leaq	.LC48(%rip), %r8
	movq	%r13, %rdx
	movq	%r12, %rcx
.LEHB159:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE159:
	movq	%r12, %rdx
	movq	%r14, %rcx
.LEHB160:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE160:
	leaq	16+_ZTVN8pybind1110cast_errorE(%rip), %rax
	movq	80(%rsp), %rcx
	movq	%rax, (%r14)
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2085
	call	_ZdlPv
.L2085:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2086
	call	_ZdlPv
.L2086:
	leaq	_ZN8pybind1110cast_errorD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1110cast_errorE(%rip), %rdx
	movq	%r14, %rcx
.LEHB161:
	call	__cxa_throw
.LEHE161:
	.p2align 4,,10
	.p2align 3
.L2141:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rsi, 24(%rax)
	movq	(%r12), %rax
	vmovaps	%xmm0, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	%rbx, 32(%rax)
	testq	%rcx, %rcx
	je	.L2089
	decq	(%rcx)
	jne	.L2089
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2089:
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	jne	.L2140
	jmp	.L2073
.L2087:
	leaq	.LC37(%rip), %rcx
.LEHB162:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE162:
.L2126:
	movq	(%r12), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L2145
	decq	(%rcx)
	jne	.L2146
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L2094
.L2145:
	vzeroupper
	jmp	.L2094
.L2146:
	vzeroupper
.L2094:
	movq	%rbx, %r12
	leaq	48(%rsp), %r13
	jmp	.L2096
	.p2align 4,,10
	.p2align 3
.L2140:
	decq	(%rcx)
	jne	.L2073
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L2073
.L2127:
	movq	%rax, %r12
	movl	$1, %eax
	vzeroupper
.L2079:
	movl	$1, %ebx
	subq	%rax, %rbx
	salq	$5, %rbx
	addq	%rsi, %rbx
.L2101:
	cmpq	%rsi, %rbx
	je	.L2099
	subq	$32, %rbx
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L2101
	call	_ZdlPv
	jmp	.L2101
.L2099:
	leaq	48(%rsp), %r13
	jmp	.L2096
.L2121:
	movq	80(%rsp), %rcx
	movq	%rax, %rbx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2147
	vzeroupper
	call	_ZdlPv
	jmp	.L2103
.L2147:
	vzeroupper
.L2103:
	jmp	.L2104
.L2120:
	movq	%rax, %rbx
	vzeroupper
.L2104:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2105
	call	_ZdlPv
.L2105:
	movq	%rbx, %r12
	jmp	.L2106
.L2119:
	movq	%rax, %r12
	vzeroupper
.L2106:
	movq	%r14, %rcx
	call	__cxa_free_exception
	jmp	.L2107
.L2123:
	movq	%rax, %r12
	vzeroupper
.L2107:
	movq	144(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.L2108
	call	_ZdlPv
.L2108:
	movq	112(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L2109
	call	_ZdlPv
.L2109:
	jmp	.L2096
.L2122:
	movq	%rax, %r12
	leaq	48(%rsp), %r13
	vzeroupper
.L2096:
	leaq	32(%rsp), %rbx
.L2113:
	movq	-8(%r13), %rcx
	subq	$8, %r13
	testq	%rcx, %rcx
	je	.L2111
	decq	(%rcx)
	jne	.L2111
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2111:
	cmpq	%rbx, %r13
	jne	.L2113
	movq	%r12, %rcx
.LEHB163:
	call	_Unwind_Resume
.LEHE163:
	.p2align 4,,10
	.p2align 3
.L2075:
	incq	(%rbx)
	movl	$2, %ecx
	movq	%rbx, 40(%rsp)
.LEHB164:
	call	*__imp_PyTuple_New(%rip)
.LEHE164:
	movq	%rax, (%r12)
	testq	%rax, %rax
	jne	.L2141
	jmp	.L2087
	.p2align 4,,10
	.p2align 3
.L2142:
	incq	(%rbx)
	movq	%rbx, 40(%rsp)
	xorl	%ebx, %ebx
	jmp	.L2115
	.p2align 4,,10
	.p2align 3
.L2074:
	movq	$0, 32(%rsp)
	testq	%rbx, %rbx
	je	.L2116
	jmp	.L2142
	.p2align 4,,10
	.p2align 3
.L2073:
	movq	%r12, %rax
	addq	$176, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16182:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16182-.LLSDACSB16182
.LLSDACSB16182:
	.uleb128 .LEHB154-.LFB16182
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L2127-.LFB16182
	.uleb128 0
	.uleb128 .LEHB155-.LFB16182
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L2124-.LFB16182
	.uleb128 0
	.uleb128 .LEHB156-.LFB16182
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L2118-.LFB16182
	.uleb128 0
	.uleb128 .LEHB157-.LFB16182
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L2125-.LFB16182
	.uleb128 0
	.uleb128 .LEHB158-.LFB16182
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L2119-.LFB16182
	.uleb128 0
	.uleb128 .LEHB159-.LFB16182
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L2120-.LFB16182
	.uleb128 0
	.uleb128 .LEHB160-.LFB16182
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L2121-.LFB16182
	.uleb128 0
	.uleb128 .LEHB161-.LFB16182
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L2123-.LFB16182
	.uleb128 0
	.uleb128 .LEHB162-.LFB16182
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L2126-.LFB16182
	.uleb128 0
	.uleb128 .LEHB163-.LFB16182
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB164-.LFB16182
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L2122-.LFB16182
	.uleb128 0
.LLSDACSE16182:
	.section	.text$_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRNS_6handleES3_EEENS_5tupleEDpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRNS_6handleESA_EEENS_6objectEDpOT0_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRNS_6handleESA_EEENS_6objectEDpOT0_
	.def	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRNS_6handleESA_EEENS_6objectEDpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRNS_6handleESA_EEENS_6objectEDpOT0_
_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRNS_6handleESA_EEENS_6objectEDpOT0_:
.LFB14413:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rbx
	movq	%rcx, %r12
	leaq	40(%rsp), %rcx
	movq	%r8, %rdx
	movq	%r9, %r8
.LEHB165:
	call	_ZN8pybind1110make_tupleILNS_19return_value_policyE1EJRNS_6handleES3_EEENS_5tupleEDpOT0_
.LEHE165:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L2149
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
.LEHB166:
	call	*__imp_PyObject_GetAttrString(%rip)
.LEHE166:
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L2150
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB167:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE167:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB168:
	call	__cxa_throw
.LEHE168:
	.p2align 4,,10
	.p2align 3
.L2150:
	movq	24(%rbx), %r8
	movq	%rax, 24(%rbx)
	testq	%r8, %r8
	jne	.L2169
	jmp	.L2149
.L2164:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2169:
	decq	(%r8)
	jne	.L2149
	movq	8(%r8), %rax
	movq	%r8, %rcx
	call	*48(%rax)
	movq	24(%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L2149:
	movq	40(%rsp), %rdx
.LEHB169:
	call	*__imp_PyObject_CallObject(%rip)
.LEHE169:
	testq	%rax, %rax
	jne	.L2155
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB170:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE170:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB171:
	call	__cxa_throw
.LEHE171:
	.p2align 4,,10
	.p2align 3
.L2155:
	movq	40(%rsp), %rcx
	movq	%rax, (%r12)
	testq	%rcx, %rcx
	jne	.L2156
	jmp	.L2148
.L2165:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2154
	.p2align 4,,10
	.p2align 3
.L2156:
	decq	(%rcx)
	jne	.L2148
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L2148
.L2163:
	movq	%rax, %r12
	vzeroupper
.L2154:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2161
	decq	(%rcx)
	jne	.L2161
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2161:
	movq	%r12, %rcx
.LEHB172:
	call	_Unwind_Resume
.LEHE172:
	.p2align 4,,10
	.p2align 3
.L2148:
	movq	%r12, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA14413:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14413-.LLSDACSB14413
.LLSDACSB14413:
	.uleb128 .LEHB165-.LFB14413
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB14413
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2163-.LFB14413
	.uleb128 0
	.uleb128 .LEHB167-.LFB14413
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L2164-.LFB14413
	.uleb128 0
	.uleb128 .LEHB168-.LFB14413
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L2163-.LFB14413
	.uleb128 0
	.uleb128 .LEHB169-.LFB14413
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L2163-.LFB14413
	.uleb128 0
	.uleb128 .LEHB170-.LFB14413
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L2165-.LFB14413
	.uleb128 0
	.uleb128 .LEHB171-.LFB14413
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L2163-.LFB14413
	.uleb128 0
	.uleb128 .LEHB172-.LFB14413
	.uleb128 .LEHE172-.LEHB172
	.uleb128 0
	.uleb128 0
.LLSDACSE14413:
	.section	.text$_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRNS_6handleESA_EEENS_6objectEDpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE
	.def	_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE
_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE:
.LFB16259:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$240, %rsp
	.seh_stackalloc	240
	.seh_endprologue
	movq	%rcx, %r12
	movq	(%rdx), %rcx
	movq	%rdx, %rbx
	testq	%rcx, %rcx
	je	.L2171
	cmpq	__imp__Py_TrueStruct(%rip), %rcx
	jne	.L2172
	movb	$1, (%r12)
	jmp	.L2222
	.p2align 4,,10
	.p2align 3
.L2172:
	cmpq	__imp__Py_ZeroStruct(%rip), %rcx
	jne	.L2174
	movb	$0, (%r12)
	jmp	.L2222
	.p2align 4,,10
	.p2align 3
.L2174:
	cmpq	__imp__Py_NoneStruct(%rip), %rcx
	je	.L2204
	movq	8(%rcx), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L2171
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L2171
.LEHB173:
	call	*%rax
.LEHE173:
	movslq	%eax, %rdx
	cmpq	$1, %rdx
	ja	.L2171
	andl	$1, %eax
	jmp	.L2175
.L2171:
	movl	$16, %ecx
	leaq	144(%rsp), %rsi
	call	__cxa_allocate_exception
	movq	%rsi, %rcx
	movq	%rax, %r12
.LEHB174:
	call	_ZN8pybind11L7type_idIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv
.LEHE174:
	jmp	.L2223
	.p2align 4,,10
	.p2align 3
.L2204:
	xorl	%eax, %eax
.L2175:
	movb	%al, (%r12)
	jmp	.L2222
.L2223:
	movq	(%rbx), %rax
	movq	8(%rax), %rcx
.LEHB175:
	call	_ZN8pybind113str7raw_strEP7_object
.LEHE175:
	leaq	48(%rsp), %rbx
	leaq	40(%rsp), %rdx
	movq	%rax, 40(%rsp)
	movq	%rbx, %rcx
.LEHB176:
	call	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
.LEHE176:
	leaq	80(%rsp), %r13
	movq	%rbx, %r8
	leaq	.LC17(%rip), %rdx
	movq	%r13, %rcx
.LEHB177:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.LEHE177:
	leaq	112(%rsp), %r14
	leaq	.LC18(%rip), %r8
	movq	%r13, %rdx
	movq	%r14, %rcx
.LEHB178:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE178:
	leaq	176(%rsp), %r13
	movq	%rsi, %r8
	movq	%r14, %rdx
	movq	%r13, %rcx
.LEHB179:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE179:
	leaq	208(%rsp), %r14
	leaq	.LC19(%rip), %r8
	movq	%r13, %rdx
	movq	%r14, %rcx
.LEHB180:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE180:
	movq	%r14, %rdx
	movq	%r12, %rcx
.LEHB181:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE181:
	leaq	16+_ZTVN8pybind1110cast_errorE(%rip), %rax
	movq	208(%rsp), %rcx
	movq	%rax, (%r12)
	leaq	224(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2178
	call	_ZdlPv
.L2178:
	movq	176(%rsp), %rcx
	leaq	192(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2179
	call	_ZdlPv
.L2179:
	movq	112(%rsp), %rcx
	leaq	128(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2180
	call	_ZdlPv
.L2180:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2181
	call	_ZdlPv
.L2181:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2182
	call	_ZdlPv
.L2182:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2184
	decq	(%rcx)
	jne	.L2184
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2184:
	movq	144(%rsp), %rcx
	leaq	160(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2186
	call	_ZdlPv
.L2186:
	leaq	_ZN8pybind1110cast_errorD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1110cast_errorE(%rip), %rdx
	movq	%r12, %rcx
.LEHB182:
	call	__cxa_throw
.LEHE182:
.L2212:
	movq	208(%rsp), %rcx
	movq	%rax, %rbx
	leaq	224(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2224
	vzeroupper
	call	_ZdlPv
	jmp	.L2188
.L2224:
	vzeroupper
.L2188:
	jmp	.L2189
.L2211:
	movq	%rax, %rbx
	vzeroupper
.L2189:
	movq	176(%rsp), %rcx
	leaq	192(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2190
	call	_ZdlPv
.L2190:
	jmp	.L2191
.L2210:
	movq	%rax, %rbx
	vzeroupper
.L2191:
	movq	112(%rsp), %rcx
	leaq	128(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2192
	call	_ZdlPv
.L2192:
	jmp	.L2193
.L2209:
	movq	%rax, %rbx
	vzeroupper
.L2193:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2194
	call	_ZdlPv
.L2194:
	jmp	.L2195
.L2208:
	movq	%rax, %rbx
	vzeroupper
.L2195:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2196
	call	_ZdlPv
.L2196:
	jmp	.L2197
.L2207:
	movq	%rax, %rbx
	vzeroupper
.L2197:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2199
	decq	(%rcx)
	jne	.L2199
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2199:
	jmp	.L2201
.L2206:
	movq	%rax, %rbx
	vzeroupper
.L2201:
	movq	144(%rsp), %rcx
	leaq	160(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2202
	call	_ZdlPv
.L2202:
	jmp	.L2203
.L2205:
	movq	%rax, %rbx
	vzeroupper
.L2203:
	movq	%r12, %rcx
	call	__cxa_free_exception
	movq	%rbx, %rcx
.LEHB183:
	call	_Unwind_Resume
.LEHE183:
	.p2align 4,,10
	.p2align 3
.L2222:
	movq	%r12, %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16259:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16259-.LLSDACSB16259
.LLSDACSB16259:
	.uleb128 .LEHB173-.LFB16259
	.uleb128 .LEHE173-.LEHB173
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB174-.LFB16259
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L2205-.LFB16259
	.uleb128 0
	.uleb128 .LEHB175-.LFB16259
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2206-.LFB16259
	.uleb128 0
	.uleb128 .LEHB176-.LFB16259
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L2207-.LFB16259
	.uleb128 0
	.uleb128 .LEHB177-.LFB16259
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L2208-.LFB16259
	.uleb128 0
	.uleb128 .LEHB178-.LFB16259
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L2209-.LFB16259
	.uleb128 0
	.uleb128 .LEHB179-.LFB16259
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2210-.LFB16259
	.uleb128 0
	.uleb128 .LEHB180-.LFB16259
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L2211-.LFB16259
	.uleb128 0
	.uleb128 .LEHB181-.LFB16259
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L2212-.LFB16259
	.uleb128 0
	.uleb128 .LEHB182-.LFB16259
	.uleb128 .LEHE182-.LEHB182
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB183-.LFB16259
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
.LLSDACSE16259:
	.section	.text$_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind114moveIbEENSt9enable_ifIXntsrNS_6detail8negationINS3_ISt7is_sameINS2_5boolsIJXsrNS3_INS2_11move_alwaysIT_vEEEE5valueEXsrNS3_INS2_20move_if_unreferencedIS7_vEEEE5valueELb1EEEENS5_IJLb1EXsrS9_5valueEXsrSC_5valueEEEEEEEEE5valueES7_E4typeEONS_6objectE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind114moveIbEENSt9enable_ifIXntsrNS_6detail8negationINS3_ISt7is_sameINS2_5boolsIJXsrNS3_INS2_11move_alwaysIT_vEEEE5valueEXsrNS3_INS2_20move_if_unreferencedIS7_vEEEE5valueELb1EEEENS5_IJLb1EXsrS9_5valueEXsrSC_5valueEEEEEEEEE5valueES7_E4typeEONS_6objectE
	.def	_ZN8pybind114moveIbEENSt9enable_ifIXntsrNS_6detail8negationINS3_ISt7is_sameINS2_5boolsIJXsrNS3_INS2_11move_alwaysIT_vEEEE5valueEXsrNS3_INS2_20move_if_unreferencedIS7_vEEEE5valueELb1EEEENS5_IJLb1EXsrS9_5valueEXsrSC_5valueEEEEEEEEE5valueES7_E4typeEONS_6objectE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind114moveIbEENSt9enable_ifIXntsrNS_6detail8negationINS3_ISt7is_sameINS2_5boolsIJXsrNS3_INS2_11move_alwaysIT_vEEEE5valueEXsrNS3_INS2_20move_if_unreferencedIS7_vEEEE5valueELb1EEEENS5_IJLb1EXsrS9_5valueEXsrSC_5valueEEEEEEEEE5valueES7_E4typeEONS_6objectE
_ZN8pybind114moveIbEENSt9enable_ifIXntsrNS_6detail8negationINS3_ISt7is_sameINS2_5boolsIJXsrNS3_INS2_11move_alwaysIT_vEEEE5valueEXsrNS3_INS2_20move_if_unreferencedIS7_vEEEE5valueELb1EEEENS5_IJLb1EXsrS9_5valueEXsrSC_5valueEEEEEEEEE5valueES7_E4typeEONS_6objectE:
.LFB15453:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$248, %rsp
	.seh_stackalloc	248
	.seh_endprologue
	movq	(%rcx), %rax
	movq	%rcx, %r12
	cmpl	$1, (%rax)
	jle	.L2226
	movl	$16, %ecx
	leaq	144(%rsp), %rbx
	call	__cxa_allocate_exception
	movq	%rbx, %rcx
	movq	%rax, %r13
.LEHB184:
	call	_ZN8pybind11L7type_idIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv
.LEHE184:
	movq	(%r12), %rax
	movq	8(%rax), %rcx
.LEHB185:
	call	_ZN8pybind113str7raw_strEP7_object
.LEHE185:
	leaq	48(%rsp), %r12
	leaq	40(%rsp), %rdx
	movq	%rax, 40(%rsp)
	movq	%r12, %rcx
.LEHB186:
	call	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
.LEHE186:
	leaq	80(%rsp), %r14
	movq	%r12, %r8
	leaq	.LC29(%rip), %rdx
	movq	%r14, %rcx
.LEHB187:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_
.LEHE187:
	leaq	112(%rsp), %r12
	leaq	.LC30(%rip), %r8
	movq	%r14, %rdx
	movq	%r12, %rcx
.LEHB188:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE188:
	leaq	176(%rsp), %r14
	movq	%rbx, %r8
	movq	%r12, %rdx
	movq	%r14, %rcx
.LEHB189:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE189:
	leaq	208(%rsp), %r12
	leaq	.LC31(%rip), %r8
	movq	%r14, %rdx
	movq	%r12, %rcx
.LEHB190:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE190:
	movq	%r12, %rdx
	movq	%r13, %rcx
.LEHB191:
	call	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE191:
	leaq	16+_ZTVN8pybind1110cast_errorE(%rip), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 0(%r13)
	leaq	224(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2227
	call	_ZdlPv
.L2227:
	movq	176(%rsp), %rcx
	leaq	192(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2228
	call	_ZdlPv
.L2228:
	movq	112(%rsp), %rcx
	leaq	128(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2229
	call	_ZdlPv
.L2229:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2230
	call	_ZdlPv
.L2230:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2231
	call	_ZdlPv
.L2231:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2233
	decq	(%rcx)
	jne	.L2233
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2233:
	movq	144(%rsp), %rcx
	leaq	160(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2235
	call	_ZdlPv
.L2235:
	leaq	_ZN8pybind1110cast_errorD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1110cast_errorE(%rip), %rdx
	movq	%r13, %rcx
.LEHB192:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L2226:
	leaq	208(%rsp), %rcx
	movq	%r12, %rdx
	call	_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE
.LEHE192:
	movzbl	208(%rsp), %eax
	jmp	.L2261
.L2260:
	movq	208(%rsp), %rcx
	movq	%rax, %r12
	leaq	224(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2262
	vzeroupper
	call	_ZdlPv
	jmp	.L2237
.L2262:
	vzeroupper
.L2237:
	jmp	.L2238
.L2259:
	movq	%rax, %r12
	vzeroupper
.L2238:
	movq	176(%rsp), %rcx
	leaq	192(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2239
	call	_ZdlPv
.L2239:
	jmp	.L2240
.L2258:
	movq	%rax, %r12
	vzeroupper
.L2240:
	movq	112(%rsp), %rcx
	leaq	128(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2241
	call	_ZdlPv
.L2241:
	jmp	.L2242
.L2257:
	movq	%rax, %r12
	vzeroupper
.L2242:
	movq	80(%rsp), %rcx
	leaq	96(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2243
	call	_ZdlPv
.L2243:
	jmp	.L2244
.L2256:
	movq	%rax, %r12
	vzeroupper
.L2244:
	movq	48(%rsp), %rcx
	leaq	64(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2245
	call	_ZdlPv
.L2245:
	jmp	.L2246
.L2255:
	movq	%rax, %r12
	vzeroupper
.L2246:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2248
	decq	(%rcx)
	jne	.L2248
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2248:
	jmp	.L2250
.L2254:
	movq	%rax, %r12
	vzeroupper
.L2250:
	movq	144(%rsp), %rcx
	leaq	160(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2251
	call	_ZdlPv
.L2251:
	jmp	.L2252
.L2253:
	movq	%rax, %r12
	vzeroupper
.L2252:
	movq	%r13, %rcx
	call	__cxa_free_exception
	movq	%r12, %rcx
.LEHB193:
	call	_Unwind_Resume
.LEHE193:
	.p2align 4,,10
	.p2align 3
.L2261:
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA15453:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE15453-.LLSDACSB15453
.LLSDACSB15453:
	.uleb128 .LEHB184-.LFB15453
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L2253-.LFB15453
	.uleb128 0
	.uleb128 .LEHB185-.LFB15453
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L2254-.LFB15453
	.uleb128 0
	.uleb128 .LEHB186-.LFB15453
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L2255-.LFB15453
	.uleb128 0
	.uleb128 .LEHB187-.LFB15453
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L2256-.LFB15453
	.uleb128 0
	.uleb128 .LEHB188-.LFB15453
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L2257-.LFB15453
	.uleb128 0
	.uleb128 .LEHB189-.LFB15453
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L2258-.LFB15453
	.uleb128 0
	.uleb128 .LEHB190-.LFB15453
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L2259-.LFB15453
	.uleb128 0
	.uleb128 .LEHB191-.LFB15453
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L2260-.LFB15453
	.uleb128 0
	.uleb128 .LEHB192-.LFB15453
	.uleb128 .LEHE192-.LEHB192
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB193-.LFB15453
	.uleb128 .LEHE193-.LEHB193
	.uleb128 0
	.uleb128 0
.LLSDACSE15453:
	.section	.text$_ZN8pybind114moveIbEENSt9enable_ifIXntsrNS_6detail8negationINS3_ISt7is_sameINS2_5boolsIJXsrNS3_INS2_11move_alwaysIT_vEEEE5valueEXsrNS3_INS2_20move_if_unreferencedIS7_vEEEE5valueELb1EEEENS5_IJLb1EXsrS9_5valueEXsrSC_5valueEEEEEEEEE5valueES7_E4typeEONS_6objectE,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC49:
	.ascii "__contains__\0"
	.section	.text$_ZNK8pybind116detail10object_apiINS_6handleEE8containsIRKPKcEEbOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNK8pybind116detail10object_apiINS_6handleEE8containsIRKPKcEEbOT_
	.def	_ZNK8pybind116detail10object_apiINS_6handleEE8containsIRKPKcEEbOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK8pybind116detail10object_apiINS_6handleEE8containsIRKPKcEEbOT_
_ZNK8pybind116detail10object_apiINS_6handleEE8containsIRKPKcEEbOT_:
.LFB13245:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	(%rcx), %rax
	leaq	40(%rsp), %r12
	movq	%rdx, %r8
	leaq	48(%rsp), %rdx
	movq	$0, 72(%rsp)
	movq	%r12, %rcx
	movq	%rax, 56(%rsp)
	leaq	.LC49(%rip), %rax
	movq	%rax, 64(%rsp)
.LEHB194:
	call	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRKPKcEEENS_6objectEDpOT0_
.LEHE194:
	movq	40(%rsp), %rax
	cmpl	$1, (%rax)
	jle	.L2264
	leaq	39(%rsp), %rcx
	movq	%r12, %rdx
.LEHB195:
	call	_ZN8pybind116detail9load_typeIbvEERNS0_11type_casterIT_T0_EES6_RKNS_6handleE
	movzbl	39(%rsp), %r12d
	jmp	.L2265
	.p2align 4,,10
	.p2align 3
.L2264:
	movq	%r12, %rcx
	call	_ZN8pybind114moveIbEENSt9enable_ifIXntsrNS_6detail8negationINS3_ISt7is_sameINS2_5boolsIJXsrNS3_INS2_11move_alwaysIT_vEEEE5valueEXsrNS3_INS2_20move_if_unreferencedIS7_vEEEE5valueELb1EEEENS5_IJLb1EXsrS9_5valueEXsrSC_5valueEEEEEEEEE5valueES7_E4typeEONS_6objectE
.LEHE195:
	movl	%eax, %r12d
.L2265:
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2267
	decq	(%rcx)
	jne	.L2267
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2267:
	movq	72(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2263
	decq	(%rcx)
	jne	.L2263
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L2263
.L2281:
	movq	40(%rsp), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L2282
	decq	(%rcx)
	jne	.L2283
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L2274
.L2282:
	vzeroupper
	jmp	.L2274
.L2283:
	vzeroupper
.L2274:
	jmp	.L2276
.L2280:
	movq	%rax, %r12
	vzeroupper
.L2276:
	movq	72(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2278
	decq	(%rcx)
	jne	.L2278
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2278:
	movq	%r12, %rcx
.LEHB196:
	call	_Unwind_Resume
.LEHE196:
	.p2align 4,,10
	.p2align 3
.L2263:
	movl	%r12d, %eax
	addq	$80, %rsp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA13245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13245-.LLSDACSB13245
.LLSDACSB13245:
	.uleb128 .LEHB194-.LFB13245
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L2280-.LFB13245
	.uleb128 0
	.uleb128 .LEHB195-.LFB13245
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L2281-.LFB13245
	.uleb128 0
	.uleb128 .LEHB196-.LFB13245
	.uleb128 .LEHE196-.LEHB196
	.uleb128 0
	.uleb128 0
.LLSDACSE13245:
	.section	.text$_ZNK8pybind116detail10object_apiINS_6handleEE8containsIRKPKcEEbOT_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC50:
	.ascii "__pybind11_internals_v2__\0"
	.align 8
.LC51:
	.ascii "Unable to extract capsule contents!\0"
	.align 8
.LC53:
	.ascii "get_internals: could not successfully initialize the TLS key!\0"
	.align 8
.LC54:
	.ascii "Could not allocate capsule object!\0"
.LC55:
	.ascii "pybind11_static_property\0"
	.align 8
.LC56:
	.ascii "make_static_property_type(): error allocating type!\0"
	.align 8
.LC57:
	.ascii "make_static_property_type(): failure in PyType_Ready()!\0"
.LC58:
	.ascii "pybind11_type\0"
	.align 8
.LC59:
	.ascii "make_default_metaclass(): error allocating metaclass!\0"
	.align 8
.LC60:
	.ascii "make_default_metaclass(): failure in PyType_Ready()!\0"
	.section	.text$_ZN8pybind116detail13get_internalsEv,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail13get_internalsEv
	.def	_ZN8pybind116detail13get_internalsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail13get_internalsEv
_ZN8pybind116detail13get_internalsEv:
.LFB10169:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movq	_ZZN8pybind116detail16get_internals_ppEvE12internals_pp(%rip), %rax
	testq	%rax, %rax
	je	.L2285
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2284
.L2285:
	leaq	.LC50(%rip), %rax
	movq	%rax, 48(%rsp)
.LEHB197:
	call	*__imp_PyEval_GetBuiltins(%rip)
.LEHE197:
	leaq	48(%rsp), %rdx
	leaq	56(%rsp), %rcx
	movq	%rax, 56(%rsp)
.LEHB198:
	call	_ZNK8pybind116detail10object_apiINS_6handleEE8containsIRKPKcEEbOT_
.LEHE198:
	movl	%eax, %ebx
	testb	%al, %al
	je	.L2291
	jmp	.L2290
.L2396:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2369
	.p2align 4,,10
	.p2align 3
.L2290:
	movq	__imp_PyUnicodeUCS2_FromString(%rip), %rbp
	leaq	.LC50(%rip), %rcx
.LEHB199:
	call	*%rbp
.LEHE199:
	movq	%rax, %rdx
	testq	%rax, %rax
	jne	.L2292
	leaq	.LC42(%rip), %rcx
.LEHB200:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE200:
.L2397:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2369
	.p2align 4,,10
	.p2align 3
.L2292:
	movq	56(%rsp), %rcx
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	__imp_PyObject_GetItem(%rip), %rsi
	movq	%rcx, 72(%rsp)
.LEHB201:
	call	*%rsi
.LEHE201:
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L2294
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB202:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE202:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB203:
	call	__cxa_throw
.LEHE203:
	.p2align 4,,10
	.p2align 3
.L2294:
	movq	88(%rsp), %r8
	movq	%rax, 88(%rsp)
	testq	%r8, %r8
	jne	.L2432
	jmp	.L2377
.L2384:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2289
	.p2align 4,,10
	.p2align 3
.L2432:
	decq	(%r8)
	jne	.L2377
	movq	8(%r8), %rax
	movq	%r8, %rcx
	xorl	%ebx, %ebx
	call	*48(%rax)
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2298
.L2377:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	cmpq	__imp_PyCapsule_Type(%rip), %rdx
	sete	%bl
	testq	%rax, %rax
	jne	.L2299
	call	*48(%rdx)
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2298
	movq	(%rcx), %rax
.L2299:
	decq	%rax
	movq	%rax, (%rcx)
	jne	.L2298
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2298:
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2301
	decq	(%rcx)
	jne	.L2301
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2301:
	testb	%bl, %bl
	je	.L2291
	leaq	.LC50(%rip), %rcx
.LEHB204:
	call	*%rbp
	movq	%rax, %rdx
	testq	%rax, %rax
	jne	.L2303
	leaq	.LC42(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE204:
	.p2align 4,,10
	.p2align 3
.L2303:
	movq	56(%rsp), %rcx
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	%rcx, 72(%rsp)
.LEHB205:
	call	*%rsi
.LEHE205:
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L2304
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB206:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE206:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB207:
	call	__cxa_throw
.LEHE207:
	.p2align 4,,10
	.p2align 3
.L2304:
	movq	88(%rsp), %rcx
	movq	%rax, 88(%rsp)
	testq	%rcx, %rcx
	jne	.L2433
	jmp	.L2376
.L2385:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2308
	.p2align 4,,10
	.p2align 3
.L2433:
	decq	(%rcx)
	jne	.L2376
	movq	8(%rcx), %rax
	call	*48(%rax)
	movq	88(%rsp), %r12
	testq	%r12, %r12
	je	.L2309
.L2376:
	incq	(%r12)
.L2309:
	movq	%r12, %rcx
.LEHB208:
	call	*__imp_PyCapsule_GetName(%rip)
	movq	%rax, %rdx
	movq	%r12, %rcx
	call	*__imp_PyCapsule_GetPointer(%rip)
	testq	%rax, %rax
	jne	.L2310
	leaq	.LC51(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE208:
	.p2align 4,,10
	.p2align 3
.L2310:
	movq	%rax, _ZZN8pybind116detail16get_internals_ppEvE12internals_pp(%rip)
	testq	%r12, %r12
	je	.L2312
	decq	(%r12)
	jne	.L2312
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L2312:
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2315
	decq	(%rcx)
	jne	.L2315
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2315:
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2320
	decq	(%rcx)
	jne	.L2320
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L2320
	.p2align 4,,10
	.p2align 3
.L2291:
	movq	_ZZN8pybind116detail16get_internals_ppEvE12internals_pp(%rip), %rsi
	testq	%rsi, %rsi
	jne	.L2321
	movl	$8, %ecx
.LEHB209:
	call	_Znwy
	movq	$0, (%rax)
	movq	%rax, %rsi
	movq	%rax, _ZZN8pybind116detail16get_internals_ppEvE12internals_pp(%rip)
	.p2align 4,,10
	.p2align 3
.L2321:
	movl	$472, %ecx
	call	_Znwy
	movl	$59, %ecx
	vmovss	.LC52(%rip), %xmm0
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	%rdx, %rdi
	rep stosq
	leaq	48(%rdx), %rax
	vmovss	%xmm0, 32(%rdx)
	movq	%rax, (%rdx)
	leaq	104(%rdx), %rax
	movq	%rax, 56(%rdx)
	leaq	160(%rdx), %rax
	movq	%rax, 112(%rdx)
	leaq	216(%rdx), %rax
	movq	%rax, 168(%rdx)
	leaq	272(%rdx), %rax
	movq	%rax, 224(%rdx)
	leaq	328(%rdx), %rax
	movq	%rax, 280(%rdx)
	leaq	392(%rdx), %rax
	vmovss	%xmm0, 88(%rdx)
	vmovss	%xmm0, 144(%rdx)
	vmovss	%xmm0, 200(%rdx)
	vmovss	%xmm0, 256(%rdx)
	vmovss	%xmm0, 312(%rdx)
	vmovss	%xmm0, 376(%rdx)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$1, 8(%rdx)
	movq	$1, 64(%rdx)
	movq	$1, 120(%rdx)
	movq	$1, 176(%rdx)
	movq	$1, 232(%rdx)
	movq	$1, 288(%rdx)
	movq	%rax, 344(%rdx)
	movq	$1, 352(%rdx)
	vmovdqu	%ymm0, 392(%rdx)
	movq	%rdx, (%rsi)
	vzeroupper
	call	*__imp_PyEval_InitThreads(%rip)
	call	*__imp_PyThreadState_Get(%rip)
	movq	(%rsi), %rdi
	movq	%rax, %rbx
	call	*__imp_PyThread_create_key(%rip)
	movl	%eax, 456(%rdi)
	movq	(%rsi), %rax
	movl	456(%rax), %ecx
	cmpl	$-1, %ecx
	jne	.L2322
	leaq	.LC53(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2322:
	movq	%rbx, %rdx
	call	*__imp_PyThread_set_key_value(%rip)
	movq	8(%rbx), %rdx
	movq	(%rsi), %rax
	xorl	%r8d, %r8d
	movq	_ZZN8pybind116detail16get_internals_ppEvE12internals_pp(%rip), %rcx
	movq	%rdx, 464(%rax)
	xorl	%edx, %edx
	call	*__imp_PyCapsule_New(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L2323
	leaq	.LC54(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE209:
	.p2align 4,,10
	.p2align 3
.L2323:
	movq	__imp_PyUnicodeUCS2_FromString(%rip), %rbp
	leaq	.LC50(%rip), %rcx
.LEHB210:
	call	*%rbp
	movq	%rax, %rdx
	testq	%rax, %rax
	jne	.L2324
	leaq	.LC42(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE210:
	.p2align 4,,10
	.p2align 3
.L2324:
	movq	56(%rsp), %rcx
	movq	%rax, 80(%rsp)
	movq	%r12, %r8
	movq	$0, 88(%rsp)
	movq	%rcx, 72(%rsp)
.LEHB211:
	call	*__imp_PyObject_SetItem(%rip)
.LEHE211:
	testl	%eax, %eax
	je	.L2325
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB212:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE212:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB213:
	call	__cxa_throw
.LEHE213:
.L2386:
	movq	%rax, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2327
	.p2align 4,,10
	.p2align 3
.L2325:
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2329
	decq	(%rcx)
	jne	.L2329
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2329:
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2332
	decq	(%rcx)
	jne	.L2332
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2332:
	decq	(%r12)
	jne	.L2334
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L2334:
	movq	(%rsi), %rbx
	movl	$16, %ecx
.LEHB214:
	call	_Znwy
	leaq	_ZZN8pybind116detail13get_internalsEvENUlNSt15__exception_ptr13exception_ptrEE_4_FUNES2_(%rip), %rdx
	leaq	.LC55(%rip), %rcx
	movq	__imp_PyString_FromString(%rip), %r15
	movq	%rdx, 8(%rax)
	movq	336(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	%rax, 336(%rbx)
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	call	*%r15
.LEHE214:
	movq	__imp_PyType_Type(%rip), %rdi
	xorl	%edx, %edx
	movq	%rax, %r12
	movq	%rdi, %rcx
.LEHB215:
	call	*304(%rdi)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L2335
	leaq	.LC56(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2335:
	testq	%r12, %r12
	je	.L2336
	incq	(%r12)
.L2336:
	leaq	.LC55(%rip), %rax
	movq	%rbx, %rcx
	leaq	pybind11_static_get(%rip), %rdx
	movq	%r12, 856(%rbx)
	movq	%rax, 24(%rbx)
	vmovq	%rdx, %xmm0
	movq	__imp_PyProperty_Type(%rip), %rax
	movl	$133099, 168(%rbx)
	incq	(%rax)
	movq	%rax, 256(%rbx)
	leaq	pybind11_static_set(%rip), %rax
	vpinsrq	$1, %rax, %xmm0, %xmm0
	movq	__imp_PyType_Ready(%rip), %rax
	vmovups	%xmm0, 272(%rbx)
	movq	%rax, 40(%rsp)
	call	*%rax
	testl	%eax, %eax
	jns	.L2337
	leaq	.LC57(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2337:
	leaq	.LC41(%rip), %rcx
	call	*%rbp
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L2338
	leaq	.LC42(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE215:
	.p2align 4,,10
	.p2align 3
.L2338:
	movq	__imp_PyObject_SetAttrString(%rip), %r14
	movq	%rax, %r8
	leaq	.LC43(%rip), %rdx
	movq	%rbx, %rcx
.LEHB216:
	call	*%r14
.LEHE216:
	testl	%eax, %eax
	je	.L2339
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB217:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE217:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB218:
	call	__cxa_throw
.LEHE218:
.L2391:
	movq	%rax, %rbx
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2341
	.p2align 4,,10
	.p2align 3
.L2339:
	decq	0(%r13)
	jne	.L2342
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L2342:
	movq	%r12, %r8
	leaq	.LC44(%rip), %rdx
	movq	%rbx, %rcx
.LEHB219:
	call	*%r14
.LEHE219:
	testl	%eax, %eax
	je	.L2343
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB220:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE220:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB221:
	call	__cxa_throw
.LEHE221:
.L2392:
	movq	%rax, %r13
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2345
	.p2align 4,,10
	.p2align 3
.L2343:
	testq	%r12, %r12
	je	.L2347
	decq	(%r12)
	jne	.L2347
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L2347:
	movq	32(%rsp), %rax
	leaq	.LC58(%rip), %rcx
	movq	(%rsi), %r12
	movq	%rbx, 432(%rax)
.LEHB222:
	call	*%r15
.LEHE222:
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movq	%rax, %r13
.LEHB223:
	call	*304(%rdi)
.LEHE223:
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L2352
	jmp	.L2434
.L2390:
	movq	%rax, %rbx
	vzeroupper
.L2341:
	decq	0(%r13)
	jne	.L2350
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L2350:
	movq	%rbx, %r13
	jmp	.L2345
.L2389:
	movq	%rax, %r13
	vzeroupper
.L2345:
	testq	%r12, %r12
	je	.L2351
	decq	(%r12)
	jne	.L2351
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L2351:
	movq	%r13, %rcx
.LEHB224:
	call	_Unwind_Resume
.LEHE224:
.L2434:
	leaq	.LC59(%rip), %rcx
.LEHB225:
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2352:
	testq	%r13, %r13
	je	.L2353
	incq	0(%r13)
.L2353:
	leaq	.LC58(%rip), %rax
	incq	(%rdi)
	movq	%rbx, %rcx
	movq	%rax, 24(%rbx)
	leaq	pybind11_meta_setattro(%rip), %rax
	movq	%rax, 152(%rbx)
	movq	40(%rsp), %rax
	movq	%r13, 856(%rbx)
	movq	%rdi, 256(%rbx)
	movl	$133099, 168(%rbx)
	call	*%rax
	testl	%eax, %eax
	jns	.L2354
	leaq	.LC60(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2354:
	leaq	.LC41(%rip), %rcx
	call	*%rbp
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.L2355
	leaq	.LC42(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE225:
	.p2align 4,,10
	.p2align 3
.L2355:
	movq	%rax, %r8
	leaq	.LC43(%rip), %rdx
	movq	%rbx, %rcx
.LEHB226:
	call	*%r14
.LEHE226:
	testl	%eax, %eax
	je	.L2356
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB227:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE227:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB228:
	call	__cxa_throw
.LEHE228:
.L2393:
	movq	%rax, %r12
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2358
	.p2align 4,,10
	.p2align 3
.L2356:
	decq	(%r15)
	jne	.L2359
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L2359:
	movq	%r13, %r8
	leaq	.LC44(%rip), %rdx
	movq	%rbx, %rcx
.LEHB229:
	call	*%r14
.LEHE229:
	testl	%eax, %eax
	je	.L2360
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB230:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE230:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB231:
	call	__cxa_throw
.LEHE231:
.L2394:
	movq	%rax, %r12
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2362
	.p2align 4,,10
	.p2align 3
.L2360:
	testq	%r13, %r13
	je	.L2364
	decq	0(%r13)
	jne	.L2364
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L2364:
	movq	%rbx, 440(%r12)
	movq	(%rsi), %rbx
	movq	440(%rbx), %rcx
.LEHB232:
	call	_ZN8pybind116detail21make_object_base_typeEP11_typeobject
.LEHE232:
	movq	%rax, 448(%rbx)
	jmp	.L2320
.L2388:
	movq	%rax, %r12
	vzeroupper
.L2358:
	decq	(%r15)
	jne	.L2366
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L2366:
	jmp	.L2362
.L2387:
	movq	%rax, %r12
	vzeroupper
.L2362:
	testq	%r13, %r13
	je	.L2367
	decq	0(%r13)
	jne	.L2367
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L2367:
	movq	%r12, %rcx
.LEHB233:
	call	_Unwind_Resume
	.p2align 4,,10
	.p2align 3
.L2320:
	movq	_ZZN8pybind116detail16get_internals_ppEvE12internals_pp(%rip), %rax
	movq	(%rax), %rax
	jmp	.L2284
.L2395:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2369
.L2379:
	movq	%rax, %r12
	vzeroupper
.L2289:
	testb	%bl, %bl
	je	.L2369
	leaq	64(%rsp), %rcx
	call	_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev
.L2369:
	movq	%r12, %rcx
	call	_Unwind_Resume
.LEHE233:
.L2381:
	movq	%rax, %rbx
	testq	%r12, %r12
	je	.L2435
	decq	(%r12)
	jne	.L2436
	movq	8(%r12), %rax
	movq	%r12, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L2372
.L2435:
	vzeroupper
	jmp	.L2372
.L2436:
	vzeroupper
.L2372:
	movq	%rbx, %r12
	jmp	.L2308
.L2380:
	movq	%rax, %r12
	vzeroupper
.L2308:
	leaq	64(%rsp), %rcx
	call	_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev
	movq	%r12, %rcx
.LEHB234:
	call	_Unwind_Resume
.LEHE234:
.L2383:
	movq	%rax, %rbx
	vzeroupper
.L2327:
	leaq	64(%rsp), %rcx
	call	_ZN8pybind116detail8accessorINS0_17accessor_policies12generic_itemEED1Ev
	jmp	.L2374
.L2382:
	movq	%rax, %rbx
	vzeroupper
.L2374:
	decq	(%r12)
	jne	.L2375
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L2375:
	movq	%rbx, %rcx
.LEHB235:
	call	_Unwind_Resume
.LEHE235:
	.p2align 4,,10
	.p2align 3
.L2284:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10169:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10169-.LLSDACSB10169
.LLSDACSB10169:
	.uleb128 .LEHB197-.LFB10169
	.uleb128 .LEHE197-.LEHB197
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB198-.LFB10169
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L2396-.LFB10169
	.uleb128 0
	.uleb128 .LEHB199-.LFB10169
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L2395-.LFB10169
	.uleb128 0
	.uleb128 .LEHB200-.LFB10169
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L2397-.LFB10169
	.uleb128 0
	.uleb128 .LEHB201-.LFB10169
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L2379-.LFB10169
	.uleb128 0
	.uleb128 .LEHB202-.LFB10169
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L2384-.LFB10169
	.uleb128 0
	.uleb128 .LEHB203-.LFB10169
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L2379-.LFB10169
	.uleb128 0
	.uleb128 .LEHB204-.LFB10169
	.uleb128 .LEHE204-.LEHB204
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB205-.LFB10169
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L2380-.LFB10169
	.uleb128 0
	.uleb128 .LEHB206-.LFB10169
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L2385-.LFB10169
	.uleb128 0
	.uleb128 .LEHB207-.LFB10169
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L2380-.LFB10169
	.uleb128 0
	.uleb128 .LEHB208-.LFB10169
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L2381-.LFB10169
	.uleb128 0
	.uleb128 .LEHB209-.LFB10169
	.uleb128 .LEHE209-.LEHB209
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB210-.LFB10169
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L2382-.LFB10169
	.uleb128 0
	.uleb128 .LEHB211-.LFB10169
	.uleb128 .LEHE211-.LEHB211
	.uleb128 .L2383-.LFB10169
	.uleb128 0
	.uleb128 .LEHB212-.LFB10169
	.uleb128 .LEHE212-.LEHB212
	.uleb128 .L2386-.LFB10169
	.uleb128 0
	.uleb128 .LEHB213-.LFB10169
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L2383-.LFB10169
	.uleb128 0
	.uleb128 .LEHB214-.LFB10169
	.uleb128 .LEHE214-.LEHB214
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB215-.LFB10169
	.uleb128 .LEHE215-.LEHB215
	.uleb128 .L2389-.LFB10169
	.uleb128 0
	.uleb128 .LEHB216-.LFB10169
	.uleb128 .LEHE216-.LEHB216
	.uleb128 .L2390-.LFB10169
	.uleb128 0
	.uleb128 .LEHB217-.LFB10169
	.uleb128 .LEHE217-.LEHB217
	.uleb128 .L2391-.LFB10169
	.uleb128 0
	.uleb128 .LEHB218-.LFB10169
	.uleb128 .LEHE218-.LEHB218
	.uleb128 .L2390-.LFB10169
	.uleb128 0
	.uleb128 .LEHB219-.LFB10169
	.uleb128 .LEHE219-.LEHB219
	.uleb128 .L2389-.LFB10169
	.uleb128 0
	.uleb128 .LEHB220-.LFB10169
	.uleb128 .LEHE220-.LEHB220
	.uleb128 .L2392-.LFB10169
	.uleb128 0
	.uleb128 .LEHB221-.LFB10169
	.uleb128 .LEHE221-.LEHB221
	.uleb128 .L2389-.LFB10169
	.uleb128 0
	.uleb128 .LEHB222-.LFB10169
	.uleb128 .LEHE222-.LEHB222
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB223-.LFB10169
	.uleb128 .LEHE223-.LEHB223
	.uleb128 .L2387-.LFB10169
	.uleb128 0
	.uleb128 .LEHB224-.LFB10169
	.uleb128 .LEHE224-.LEHB224
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB225-.LFB10169
	.uleb128 .LEHE225-.LEHB225
	.uleb128 .L2387-.LFB10169
	.uleb128 0
	.uleb128 .LEHB226-.LFB10169
	.uleb128 .LEHE226-.LEHB226
	.uleb128 .L2388-.LFB10169
	.uleb128 0
	.uleb128 .LEHB227-.LFB10169
	.uleb128 .LEHE227-.LEHB227
	.uleb128 .L2393-.LFB10169
	.uleb128 0
	.uleb128 .LEHB228-.LFB10169
	.uleb128 .LEHE228-.LEHB228
	.uleb128 .L2388-.LFB10169
	.uleb128 0
	.uleb128 .LEHB229-.LFB10169
	.uleb128 .LEHE229-.LEHB229
	.uleb128 .L2387-.LFB10169
	.uleb128 0
	.uleb128 .LEHB230-.LFB10169
	.uleb128 .LEHE230-.LEHB230
	.uleb128 .L2394-.LFB10169
	.uleb128 0
	.uleb128 .LEHB231-.LFB10169
	.uleb128 .LEHE231-.LEHB231
	.uleb128 .L2387-.LFB10169
	.uleb128 0
	.uleb128 .LEHB232-.LFB10169
	.uleb128 .LEHE232-.LEHB232
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB233-.LFB10169
	.uleb128 .LEHE233-.LEHB233
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB234-.LFB10169
	.uleb128 .LEHE234-.LEHB234
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB235-.LFB10169
	.uleb128 .LEHE235-.LEHB235
	.uleb128 0
	.uleb128 0
.LLSDACSE10169:
	.section	.text$_ZN8pybind116detail13get_internalsEv,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC61:
	.ascii "scoped_acquire: could not create thread state!\0"
	.section	.text$_ZN8pybind1118gil_scoped_acquireC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1118gil_scoped_acquireC1Ev
	.def	_ZN8pybind1118gil_scoped_acquireC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1118gil_scoped_acquireC1Ev
_ZN8pybind1118gil_scoped_acquireC1Ev:
.LFB11204:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	$0, (%rcx)
	movq	%rcx, %rbx
	movb	$1, 8(%rcx)
	call	_ZN8pybind116detail13get_internalsEv
	movl	456(%rax), %ecx
	movq	%rax, %rsi
	call	*__imp_PyThread_get_key_value(%rip)
	movq	%rax, (%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L2445
	movq	__imp__PyThreadState_Current(%rip), %rax
	cmpq	%rcx, (%rax)
	setne	%al
	movb	%al, 8(%rbx)
.L2440:
	testb	%al, %al
	jne	.L2446
	incl	132(%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L2446:
	call	*__imp_PyEval_AcquireThread(%rip)
	movq	(%rbx), %rcx
	incl	132(%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L2445:
	movq	464(%rsi), %rcx
	call	*__imp_PyThreadState_New(%rip)
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.L2447
	movl	$0, 132(%rax)
	movl	456(%rsi), %ecx
	call	*__imp_PyThread_delete_key_value(%rip)
	movl	456(%rsi), %ecx
	movq	(%rbx), %rdx
	call	*__imp_PyThread_set_key_value(%rip)
	movzbl	8(%rbx), %eax
	movq	(%rbx), %rcx
	jmp	.L2440
.L2447:
	leaq	.LC61(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	nop
	.seh_endproc
	.section	.text$pybind11_meta_setattro,"x"
	.linkonce discard
	.p2align 4
	.globl	pybind11_meta_setattro
	.def	pybind11_meta_setattro;	.scl	2;	.type	32;	.endef
	.seh_proc	pybind11_meta_setattro
pybind11_meta_setattro:
.LFB10836:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%r8, %rbx
	call	*__imp__PyType_Lookup(%rip)
	movq	%rax, %r14
	call	_ZN8pybind116detail13get_internalsEv
	testq	%r14, %r14
	je	.L2449
	movq	432(%rax), %r15
	movq	__imp_PyObject_IsInstance(%rip), %rsi
	movq	%r14, %rcx
	movq	%r15, %rdx
	call	*%rsi
	testl	%eax, %eax
	jne	.L2457
.L2449:
	movq	__imp_PyType_Type(%rip), %rax
	movq	%rbx, %r8
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	152(%rax), %rax
.L2456:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex.W jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L2457:
	movq	%r15, %rdx
	movq	%rbx, %rcx
	call	*%rsi
	testl	%eax, %eax
	jne	.L2449
	movq	8(%r14), %rax
	movq	%rbx, %r8
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	280(%rax), %rax
	jmp	.L2456
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC62:
	.ascii "scoped_acquire::dec_ref(): thread state must be current!\0"
	.align 8
.LC63:
	.ascii "scoped_acquire::dec_ref(): reference count underflow!\0"
	.align 8
.LC64:
	.ascii "scoped_acquire::dec_ref(): internal error!\0"
	.section	.text$_ZN8pybind1118gil_scoped_acquire7dec_refEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1118gil_scoped_acquire7dec_refEv
	.def	_ZN8pybind1118gil_scoped_acquire7dec_refEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1118gil_scoped_acquire7dec_refEv
_ZN8pybind1118gil_scoped_acquire7dec_refEv:
.LFB11206:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	__imp__PyThreadState_Current(%rip), %rdx
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	movl	132(%rcx), %eax
	decl	%eax
	movl	%eax, 132(%rcx)
	cmpq	(%rdx), %rcx
	jne	.L2464
	testl	%eax, %eax
	js	.L2465
	jne	.L2463
	cmpb	$0, 8(%rbx)
	je	.L2466
	call	*__imp_PyThreadState_Clear(%rip)
	call	*__imp_PyThreadState_DeleteCurrent(%rip)
	call	_ZN8pybind116detail13get_internalsEv
	movl	456(%rax), %ecx
	call	*__imp_PyThread_delete_key_value(%rip)
	movb	$0, 8(%rbx)
.L2463:
	addq	$32, %rsp
	popq	%rbx
	ret
.L2464:
	leaq	.LC62(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.L2466:
	leaq	.LC64(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.L2465:
	leaq	.LC63(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	nop
	.seh_endproc
	.section	.text$_ZN8pybind1118gil_scoped_acquireD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1118gil_scoped_acquireD1Ev
	.def	_ZN8pybind1118gil_scoped_acquireD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1118gil_scoped_acquireD1Ev
_ZN8pybind1118gil_scoped_acquireD1Ev:
.LFB11209:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN8pybind1118gil_scoped_acquire7dec_refEv
	cmpb	$0, 8(%rbx)
	je	.L2467
	call	*__imp_PyEval_SaveThread(%rip)
	nop
.L2467:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11209:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11209-.LLSDACSB11209
.LLSDACSB11209:
.LLSDACSE11209:
	.section	.text$_ZN8pybind1118gil_scoped_acquireD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind1117error_already_setD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1117error_already_setD1Ev
	.def	_ZN8pybind1117error_already_setD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1117error_already_setD1Ev
_ZN8pybind1117error_already_setD1Ev:
.LFB11218:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	leaq	16+_ZTVN8pybind1117error_already_setE(%rip), %rax
	cmpq	$0, 16(%rcx)
	movq	%rcx, %r12
	movq	%rax, (%rcx)
	je	.L2470
	leaq	32(%rsp), %r13
	leaq	48(%rsp), %rcx
	leaq	56(%rsp), %rdx
	leaq	64(%rsp), %r8
	call	*__imp_PyErr_Fetch(%rip)
	movq	%r13, %rcx
	call	_ZN8pybind1118gil_scoped_acquireC1Ev
	movq	16(%r12), %rcx
	movq	$0, 16(%r12)
	testq	%rcx, %rcx
	je	.L2472
	decq	(%rcx)
	jne	.L2472
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2472:
	movq	24(%r12), %rcx
	movq	$0, 24(%r12)
	testq	%rcx, %rcx
	je	.L2475
	decq	(%rcx)
	jne	.L2475
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2475:
	movq	32(%r12), %rcx
	movq	$0, 32(%r12)
	testq	%rcx, %rcx
	je	.L2478
	decq	(%rcx)
	jne	.L2478
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2478:
	movq	%r13, %rcx
	call	_ZN8pybind1118gil_scoped_acquireD1Ev
	movq	64(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
	call	*__imp_PyErr_Restore(%rip)
.L2470:
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.L2481
	decq	(%rcx)
	jne	.L2481
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2481:
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	je	.L2484
	decq	(%rcx)
	jne	.L2484
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2484:
	movq	16(%r12), %rcx
	testq	%rcx, %rcx
	je	.L2487
	decq	(%rcx)
	jne	.L2487
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2487:
	movq	%r12, %rcx
	call	_ZNSt13runtime_errorD2Ev
	nop
	addq	$88, %rsp
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11218:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11218-.LLSDACSB11218
.LLSDACSB11218:
.LLSDACSE11218:
	.section	.text$_ZN8pybind1117error_already_setD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind1117error_already_setD0Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1117error_already_setD0Ev
	.def	_ZN8pybind1117error_already_setD0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1117error_already_setD0Ev
_ZN8pybind1117error_already_setD0Ev:
.LFB11219:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	leaq	16+_ZTVN8pybind1117error_already_setE(%rip), %rax
	cmpq	$0, 16(%rcx)
	movq	%rcx, %r12
	movq	%rax, (%rcx)
	je	.L2490
	leaq	32(%rsp), %r13
	leaq	48(%rsp), %rcx
	leaq	56(%rsp), %rdx
	leaq	64(%rsp), %r8
	call	*__imp_PyErr_Fetch(%rip)
	movq	%r13, %rcx
	call	_ZN8pybind1118gil_scoped_acquireC1Ev
	movq	16(%r12), %rcx
	movq	$0, 16(%r12)
	testq	%rcx, %rcx
	je	.L2492
	decq	(%rcx)
	jne	.L2492
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2492:
	movq	24(%r12), %rcx
	movq	$0, 24(%r12)
	testq	%rcx, %rcx
	je	.L2495
	decq	(%rcx)
	jne	.L2495
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2495:
	movq	32(%r12), %rcx
	movq	$0, 32(%r12)
	testq	%rcx, %rcx
	je	.L2498
	decq	(%rcx)
	jne	.L2498
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2498:
	movq	%r13, %rcx
	call	_ZN8pybind1118gil_scoped_acquireD1Ev
	movq	64(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
	call	*__imp_PyErr_Restore(%rip)
.L2490:
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.L2501
	decq	(%rcx)
	jne	.L2501
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2501:
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	je	.L2504
	decq	(%rcx)
	jne	.L2504
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2504:
	movq	16(%r12), %rcx
	testq	%rcx, %rcx
	je	.L2507
	decq	(%rcx)
	jne	.L2507
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2507:
	movq	%r12, %rcx
	call	_ZNSt13runtime_errorD2Ev
	movl	$40, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	nop
	addq	$88, %rsp
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA11219:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11219-.LLSDACSB11219
.LLSDACSB11219:
.LLSDACSE11219:
	.section	.text$_ZN8pybind1117error_already_setD0Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN8pybind116detail24deregister_instance_implEPvPNS0_8instanceE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail24deregister_instance_implEPvPNS0_8instanceE
	.def	_ZN8pybind116detail24deregister_instance_implEPvPNS0_8instanceE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail24deregister_instance_implEPvPNS0_8instanceE
_ZN8pybind116detail24deregister_instance_implEPvPNS0_8instanceE:
.LFB10840:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	call	_ZN8pybind116detail13get_internalsEv
	xorl	%edx, %edx
	movq	120(%rax), %r10
	movq	%rax, %rbp
	movq	%rbx, %rax
	movq	112(%rbp), %r12
	divq	%r10
	movq	(%r12,%rdx,8), %rax
	movq	%rdx, %rdi
	testq	%rax, %rax
	je	.L2510
	movq	(%rax), %rcx
	movq	8(%rcx), %r8
	jmp	.L2512
	.p2align 4,,10
	.p2align 3
.L2546:
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2510
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r10
	cmpq	%rdx, %rdi
	jne	.L2510
.L2512:
	cmpq	%r8, %rbx
	jne	.L2546
	movq	(%rcx), %r8
	movq	%r8, %r9
	testq	%r8, %r8
	jne	.L2514
	jmp	.L2515
	.p2align 4,,10
	.p2align 3
.L2547:
	cmpq	%r11, %rbx
	jne	.L2513
	movq	(%r9), %r9
	testq	%r9, %r9
	je	.L2515
.L2514:
	movq	8(%r9), %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r10
	cmpq	%rdi, %rdx
	je	.L2547
.L2513:
	cmpq	%r9, %rcx
	je	.L2510
.L2524:
	movq	8(%rsi), %rdx
	jmp	.L2523
	.p2align 4,,10
	.p2align 3
.L2516:
	cmpq	%r9, %r8
	je	.L2510
	movq	%r8, %rcx
	movq	(%r8), %r8
.L2523:
	movq	16(%rcx), %rax
	cmpq	8(%rax), %rdx
	jne	.L2516
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	divq	%r10
	leaq	(%r12,%rdx,8), %rbx
	movq	%rdx, %r11
	movq	(%rbx), %rax
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L2517:
	movq	%rdx, %r9
	movq	(%rdx), %rdx
	cmpq	%rcx, %rdx
	jne	.L2517
	cmpq	%r9, %rax
	je	.L2548
	testq	%r8, %r8
	je	.L2520
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L2520
	movq	%r9, (%r12,%rdx,8)
	movq	(%rcx), %r8
.L2520:
	movq	%r8, (%r9)
	call	_ZdlPv
	decq	136(%rbp)
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L2510:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L2515:
	xorl	%r9d, %r9d
	jmp	.L2524
	.p2align 4,,10
	.p2align 3
.L2548:
	testq	%r8, %r8
	je	.L2525
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L2520
	movq	%r9, (%r12,%rdx,8)
	movq	(%rbx), %rax
.L2519:
	leaq	128(%rbp), %rdx
	cmpq	%rdx, %rax
	je	.L2549
.L2521:
	movq	$0, (%rbx)
	movq	(%rcx), %r8
	jmp	.L2520
.L2525:
	movq	%r9, %rax
	jmp	.L2519
.L2549:
	movq	%r8, 128(%rbp)
	jmp	.L2521
	.seh_endproc
	.section	.text$_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE
	.def	_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE
_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE:
.LFB10375:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	336(%rcx), %r12
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdx, %rbx
	movq	$0, 64(%rsp)
	vmovaps	%xmm0, 48(%rsp)
	testq	%r12, %r12
	je	.L2551
	incq	(%r12)
.L2551:
	movq	8(%r12), %rax
	leaq	24(%r12), %rsi
	testb	$2, 171(%rax)
	je	.L2553
	movq	24(%r12), %rsi
.L2553:
	movq	16(%r12), %rax
	leaq	(%rsi,%rax,8), %rdi
	cmpq	%rsi, %rdi
	je	.L2554
	xorl	%ecx, %ecx
	leaq	40(%rsp), %r13
	leaq	48(%rsp), %rbp
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2557:
	movq	(%rsi), %rax
	movq	%rax, 40(%rsp)
	cmpq	%rcx, %rdx
	je	.L2555
	movq	%rax, (%rdx)
	addq	$8, %rdx
	movq	%rdx, 56(%rsp)
	jmp	.L2556
	.p2align 4,,10
	.p2align 3
.L2555:
	movq	%r13, %r8
	movq	%rbp, %rcx
.LEHB236:
	call	_ZNSt6vectorIP11_typeobjectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE236:
	.p2align 4,,10
	.p2align 3
.L2556:
	addq	$8, %rsi
	cmpq	%rsi, %rdi
	je	.L2554
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rcx
	jmp	.L2557
.L2554:
	decq	(%r12)
	jne	.L2558
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L2558:
.LEHB237:
	call	_ZN8pybind116detail13get_internalsEv
	movq	56(%rsp), %r10
	movq	48(%rsp), %r14
	movq	%rax, %rdi
	movq	%r10, %r11
	subq	%r14, %r11
	sarq	$3, %r11
	je	.L2559
	xorl	%esi, %esi
	leaq	40(%rsp), %rbp
	leaq	48(%rsp), %r15
	.p2align 4,,10
	.p2align 3
.L2580:
	movq	(%r14,%rsi,8), %r12
	movq	8(%r12), %rax
	movl	168(%rax), %eax
	testl	%eax, %eax
	js	.L2560
	incq	%rsi
	jmp	.L2561
	.p2align 4,,10
	.p2align 3
.L2560:
	movq	64(%rdi), %r9
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r9
	movq	56(%rdi), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rdx, %r13
	testq	%rax, %rax
	je	.L2562
	movq	(%rax), %rcx
	movq	8(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L2564:
	cmpq	%r8, %r12
	je	.L2563
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2562
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r9
	cmpq	%rdx, %r13
	je	.L2564
	jmp	.L2562
	.p2align 4,,10
	.p2align 3
.L2591:
	movq	16(%rcx), %r13
	movq	24(%rcx), %r12
	cmpq	%r12, %r13
	je	.L2565
	.p2align 4,,10
	.p2align 3
.L2570:
	movq	0(%r13), %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rcx, 40(%rsp)
	cmpq	%rax, %rdx
	je	.L2566
	.p2align 4,,10
	.p2align 3
.L2568:
	cmpq	(%rax), %rcx
	je	.L2569
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L2568
	jmp	.L2566
	.p2align 4,,10
	.p2align 3
.L2588:
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	movq	%rdx, 8(%rbx)
	jmp	.L2569
.L2619:
	movq	%rbp, %r8
	movq	%rbx, %rcx
	call	_ZNSt6vectorIPN8pybind116detail9type_infoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
.LEHE237:
	.p2align 4,,10
	.p2align 3
.L2569:
	addq	$8, %r13
	cmpq	%r13, %r12
	jne	.L2570
	movq	48(%rsp), %r14
	movq	56(%rsp), %r10
.L2565:
	incq	%rsi
	jmp	.L2561
	.p2align 4,,10
	.p2align 3
.L2562:
	movq	336(%r12), %r12
	leaq	1(%rsi), %r13
	testq	%r12, %r12
	je	.L2592
	cmpq	%r13, %r11
	jne	.L2571
	subq	$8, %r10
	movq	%rsi, %r13
	movq	%r10, 56(%rsp)
.L2571:
	movq	(%r12), %rax
	leaq	24(%r12), %rsi
	leaq	1(%rax), %rdx
	movq	%rdx, (%r12)
	movq	8(%r12), %rdx
	testb	$2, 171(%rdx)
	je	.L2573
	movq	24(%r12), %rsi
.L2573:
	movq	16(%r12), %rdx
	leaq	(%rsi,%rdx,8), %r14
	cmpq	%rsi, %r14
	je	.L2574
	.p2align 4,,10
	.p2align 3
.L2578:
	movq	(%rsi), %rax
	movq	%rax, 40(%rsp)
	cmpq	%r10, 64(%rsp)
	je	.L2575
	movq	%rax, (%r10)
	addq	$8, %r10
	movq	%r10, 56(%rsp)
	jmp	.L2576
	.p2align 4,,10
	.p2align 3
.L2575:
	movq	%rbp, %r8
	movq	%r10, %rdx
	movq	%r15, %rcx
.LEHB238:
	call	_ZNSt6vectorIP11_typeobjectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE238:
	.p2align 4,,10
	.p2align 3
.L2576:
	addq	$8, %rsi
	cmpq	%rsi, %r14
	jne	.L2577
	movq	(%r12), %rax
	decq	%rax
	jmp	.L2574
	.p2align 4,,10
	.p2align 3
.L2577:
	movq	56(%rsp), %r10
	jmp	.L2578
.L2574:
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.L2579
	movq	48(%rsp), %r14
	movq	56(%rsp), %r10
	movq	%r13, %rsi
	jmp	.L2561
.L2579:
	movq	8(%r12), %rax
	movq	%r12, %rcx
	movq	%r13, %rsi
	call	*48(%rax)
	movq	48(%rsp), %r14
	movq	56(%rsp), %r10
	jmp	.L2561
.L2592:
	movq	%r13, %rsi
	.p2align 4,,10
	.p2align 3
.L2561:
	movq	%r10, %r11
	subq	%r14, %r11
	sarq	$3, %r11
	cmpq	%rsi, %r11
	ja	.L2580
.L2559:
	testq	%r14, %r14
	je	.L2550
	movq	%r14, %rcx
	call	_ZdlPv
	jmp	.L2550
.L2593:
	decq	(%r12)
	movq	%rax, %rbx
	jne	.L2620
	movq	8(%r12), %rax
	movq	%r12, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L2583
.L2620:
	vzeroupper
.L2583:
	jmp	.L2584
.L2595:
	decq	(%r12)
	movq	%rax, %rbx
	jne	.L2621
	movq	8(%r12), %rax
	movq	%r12, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L2586
.L2621:
	vzeroupper
.L2586:
	jmp	.L2584
.L2594:
	movq	%rax, %rbx
	vzeroupper
.L2584:
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2587
	call	_ZdlPv
.L2587:
	movq	%rbx, %rcx
.LEHB239:
	call	_Unwind_Resume
.LEHE239:
	.p2align 4,,10
	.p2align 3
.L2566:
	cmpq	16(%rbx), %rdx
	jne	.L2588
	jmp	.L2619
.L2563:
	testq	%rcx, %rcx
	jne	.L2591
	jmp	.L2562
.L2550:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10375:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10375-.LLSDACSB10375
.LLSDACSB10375:
	.uleb128 .LEHB236-.LFB10375
	.uleb128 .LEHE236-.LEHB236
	.uleb128 .L2593-.LFB10375
	.uleb128 0
	.uleb128 .LEHB237-.LFB10375
	.uleb128 .LEHE237-.LEHB237
	.uleb128 .L2594-.LFB10375
	.uleb128 0
	.uleb128 .LEHB238-.LFB10375
	.uleb128 .LEHE238-.LEHB238
	.uleb128 .L2595-.LFB10375
	.uleb128 0
	.uleb128 .LEHB239-.LFB10375
	.uleb128 .LEHE239-.LEHB239
	.uleb128 0
	.uleb128 0
.LLSDACSE10375:
	.section	.text$_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZZN8pybind1112cpp_function10initializeIZNS_6detail23all_type_info_get_cacheEP11_typeobjectEUlNS_6handleEE_vJS5_EJEEEvOT_PFT0_DpT1_EDpRKT2_ENUlRNS2_13function_callEE1_4_FUNESJ_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZZN8pybind1112cpp_function10initializeIZNS_6detail23all_type_info_get_cacheEP11_typeobjectEUlNS_6handleEE_vJS5_EJEEEvOT_PFT0_DpT1_EDpRKT2_ENUlRNS2_13function_callEE1_4_FUNESJ_
	.def	_ZZN8pybind1112cpp_function10initializeIZNS_6detail23all_type_info_get_cacheEP11_typeobjectEUlNS_6handleEE_vJS5_EJEEEvOT_PFT0_DpT1_EDpRKT2_ENUlRNS2_13function_callEE1_4_FUNESJ_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN8pybind1112cpp_function10initializeIZNS_6detail23all_type_info_get_cacheEP11_typeobjectEUlNS_6handleEE_vJS5_EJEEEvOT_PFT0_DpT1_EDpRKT2_ENUlRNS2_13function_callEE1_4_FUNESJ_
_ZZN8pybind1112cpp_function10initializeIZNS_6detail23all_type_info_get_cacheEP11_typeobjectEUlNS_6handleEE_vJS5_EJEEEvOT_PFT0_DpT1_EDpRKT2_ENUlRNS2_13function_callEE1_4_FUNESJ_:
.LFB14569:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	(%rax), %r13
	testq	%r13, %r13
	je	.L2623
	movq	(%rcx), %rsi
.LEHB240:
	call	_ZN8pybind116detail13get_internalsEv
	xorl	%edx, %edx
	movq	56(%rsi), %r11
	movq	64(%rax), %rcx
	movq	%rax, %rbx
	movq	56(%rbx), %rbp
	movq	%r11, %rax
	divq	%rcx
	leaq	0(%rbp,%rdx,8), %r14
	movq	%rdx, %rdi
	movq	(%r14), %r9
	testq	%r9, %r9
	jne	.L2650
	jmp	.L2624
	.p2align 4,,10
	.p2align 3
.L2623:
	movl	$1, %eax
	jmp	.L2651
	.p2align 4,,10
	.p2align 3
.L2650:
	movq	(%r9), %r12
	movq	%r9, %rsi
	movq	8(%r12), %r8
	.p2align 4,,10
	.p2align 3
.L2628:
	cmpq	%r8, %r11
	je	.L2627
	movq	(%r12), %r10
	testq	%r10, %r10
	je	.L2624
	movq	8(%r10), %r8
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r8, %rax
	divq	%rcx
	cmpq	%rdx, %rdi
	jne	.L2624
	movq	%r10, %r12
	jmp	.L2628
	.p2align 4,,10
	.p2align 3
.L2635:
	testq	%r8, %r8
	je	.L2637
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%rdx, %rdi
	je	.L2630
	movq	%rsi, 0(%rbp,%rdx,8)
	movq	(%r14), %rax
	jmp	.L2629
	.p2align 4,,10
	.p2align 3
.L2637:
	movq	%rsi, %rax
.L2629:
	leaq	72(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L2631
	movq	%r8, 72(%rbx)
.L2631:
	movq	$0, (%r14)
	movq	(%r12), %r8
	jmp	.L2630
	.p2align 4,,10
	.p2align 3
.L2652:
	testq	%r8, %r8
	je	.L2630
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%rdx, %rdi
	je	.L2630
	movq	%rsi, 0(%rbp,%rdx,8)
	movq	(%r12), %r8
.L2630:
	movq	16(%r12), %rcx
	movq	%r8, (%rsi)
	testq	%rcx, %rcx
	je	.L2632
	call	_ZdlPv
.L2632:
	movq	%r12, %rcx
	call	_ZdlPv
	decq	80(%rbx)
.L2624:
	decq	0(%r13)
	jne	.L2633
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.LEHE240:
.L2633:
	movq	__imp__Py_NoneStruct(%rip), %r12
	incq	(%r12)
	jne	.L2634
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L2634:
	movq	%r12, %rax
	jmp	.L2651
	.p2align 4,,10
	.p2align 3
.L2627:
	movq	(%r12), %r8
	cmpq	%rsi, %r9
	jne	.L2652
	jmp	.L2635
	.p2align 4,,10
	.p2align 3
.L2651:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA14569:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE14569-.LLSDACSB14569
.LLSDACSB14569:
	.uleb128 .LEHB240-.LFB14569
	.uleb128 .LEHE240-.LEHB240
	.uleb128 0
	.uleb128 0
.LLSDACSE14569:
	.section	.text$_ZZN8pybind1112cpp_function10initializeIZNS_6detail23all_type_info_get_cacheEP11_typeobjectEUlNS_6handleEE_vJS5_EJEEEvOT_PFT0_DpT1_EDpRKT2_ENUlRNS2_13function_callEE1_4_FUNESJ_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC65:
	.ascii "pybind11::detail::get_type_info: unable to find type info for \"\0"
.LC66:
	.ascii "\"\0"
	.section	.text$_ZN8pybind116detail13get_type_infoERKSt10type_indexb,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail13get_type_infoERKSt10type_indexb
	.def	_ZN8pybind116detail13get_type_infoERKSt10type_indexb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail13get_type_infoERKSt10type_indexb
_ZN8pybind116detail13get_type_infoERKSt10type_indexb:
.LFB10393:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	.seh_endprologue
	movzbl	_ZGVZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %eax
	movq	%rcx, %rbx
	movl	%edx, %esi
	testb	%al, %al
	jne	.L2655
	leaq	_ZGVZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L2655
	leaq	48+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rax
	leaq	_ZGVZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rcx
	movq	$0, 32+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movq	$0, 24+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movq	$0, 40+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movq	$0, 48+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movq	%rax, _ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movq	$1, 8+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movq	$0, 16+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	movl	$0x3f800000, 32+_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip)
	call	__cxa_guard_release
	leaq	__tcf_2(%rip), %rcx
	call	atexit
	.p2align 4,,10
	.p2align 3
.L2655:
	movq	%rbx, %rdx
	leaq	_ZZN8pybind116detail26registered_local_types_cppEvE6locals(%rip), %rcx
	call	_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_
	testq	%rax, %rax
	je	.L2657
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L2653
.L2657:
.LEHB241:
	call	_ZN8pybind116detail13get_internalsEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt10_HashtableISt10type_indexSt4pairIKS0_PN8pybind116detail9type_infoEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_
	testq	%rax, %rax
	je	.L2659
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L2653
.L2659:
	testb	%sil, %sil
	je	.L2679
	movq	(%rbx), %rax
	leaq	48(%rsp), %rbx
	leaq	32(%rsp), %r13
	movq	8(%rax), %r12
	xorl	%eax, %eax
	cmpb	$42, (%r12)
	movq	%rbx, 32(%rsp)
	sete	%al
	addq	%rax, %r12
	movq	%r12, %rcx
	call	strlen
	movq	%rax, 96(%rsp)
	movq	%rax, %rsi
	cmpq	$15, %rax
	jbe	.L2694
	movq	%r13, %rcx
	leaq	96(%rsp), %rdx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE241:
	movq	%rax, 32(%rsp)
	movq	%rax, %rcx
	movq	96(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.L2661
	.p2align 4,,10
	.p2align 3
.L2694:
	cmpq	$1, %rax
	jne	.L2662
	movzbl	(%r12), %edx
	movb	%dl, 48(%rsp)
	movq	%rbx, %rdx
	jmp	.L2663
	.p2align 4,,10
	.p2align 3
.L2662:
	testq	%rax, %rax
	je	.L2680
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L2661:
	movq	%r12, %rdx
	movq	%rsi, %r8
	call	memcpy
	movq	96(%rsp), %rax
	movq	32(%rsp), %rdx
	jmp	.L2663
	.p2align 4,,10
	.p2align 3
.L2680:
	movq	%rbx, %rdx
.L2663:
	movq	%rax, 40(%rsp)
	movq	%r13, %rcx
	movb	$0, (%rdx,%rax)
.LEHB242:
	call	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE242:
	movq	40(%rsp), %rax
	leaq	64(%rsp), %r12
	leaq	80(%rsp), %rsi
	movq	$0, 72(%rsp)
	movq	%r12, %rcx
	movq	%rsi, 64(%rsp)
	leaq	63(%rax), %rdx
	movb	$0, 80(%rsp)
.LEHB243:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movabsq	$4611686018427387903, %rax
	subq	72(%rsp), %rax
	cmpq	$62, %rax
	ja	.L2664
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2664:
	movl	$63, %r8d
	leaq	.LC65(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	40(%rsp), %r8
	movq	32(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE243:
	jmp	.L2695
.L2684:
	movq	64(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rsi, %rcx
	je	.L2696
	vzeroupper
	call	_ZdlPv
	jmp	.L2667
.L2696:
	vzeroupper
.L2667:
	jmp	.L2668
	.p2align 4,,10
	.p2align 3
.L2695:
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, 72(%rsp)
	jne	.L2669
	leaq	.LC6(%rip), %rcx
.LEHB244:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2669:
	movl	$1, %r8d
	leaq	.LC66(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE244:
	leaq	112(%rsp), %r12
	leaq	16(%rax), %rdx
	movq	%r12, 96(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2670
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, 112(%rsp)
	jmp	.L2671
.L2670:
	movq	%rcx, 96(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 112(%rsp)
.L2671:
	movq	8(%rax), %rcx
	movq	%rcx, 104(%rsp)
	leaq	96(%rsp), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
.LEHB245:
	call	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE245:
	.p2align 4,,10
	.p2align 3
.L2679:
	xorl	%eax, %eax
	jmp	.L2653
.L2683:
	movq	96(%rsp), %rcx
	movq	%rax, %r13
	cmpq	%r12, %rcx
	je	.L2697
	vzeroupper
	call	_ZdlPv
	jmp	.L2673
.L2697:
	vzeroupper
.L2673:
	movq	%r13, %r12
	jmp	.L2674
.L2682:
	movq	%rax, %r12
	vzeroupper
.L2674:
	movq	64(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L2675
	call	_ZdlPv
.L2675:
	jmp	.L2668
.L2681:
	movq	%rax, %r12
	vzeroupper
.L2668:
	movq	32(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L2676
	call	_ZdlPv
.L2676:
	movq	%r12, %rcx
.LEHB246:
	call	_Unwind_Resume
.LEHE246:
	.p2align 4,,10
	.p2align 3
.L2653:
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10393:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10393-.LLSDACSB10393
.LLSDACSB10393:
	.uleb128 .LEHB241-.LFB10393
	.uleb128 .LEHE241-.LEHB241
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB242-.LFB10393
	.uleb128 .LEHE242-.LEHB242
	.uleb128 .L2681-.LFB10393
	.uleb128 0
	.uleb128 .LEHB243-.LFB10393
	.uleb128 .LEHE243-.LEHB243
	.uleb128 .L2684-.LFB10393
	.uleb128 0
	.uleb128 .LEHB244-.LFB10393
	.uleb128 .LEHE244-.LEHB244
	.uleb128 .L2682-.LFB10393
	.uleb128 0
	.uleb128 .LEHB245-.LFB10393
	.uleb128 .LEHE245-.LEHB245
	.uleb128 .L2683-.LFB10393
	.uleb128 0
	.uleb128 .LEHB246-.LFB10393
	.uleb128 .LEHE246-.LEHB246
	.uleb128 0
	.uleb128 0
.LLSDACSE10393:
	.section	.text$_ZN8pybind116detail13get_type_infoERKSt10type_indexb,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC67:
	.ascii "\0"
.LC68:
	.ascii "instance\0"
.LC69:
	.ascii "static\0"
.LC70:
	.ascii "__init__\0"
.LC71:
	.ascii "__repr__\0"
.LC72:
	.ascii "__setstate__\0"
.LC73:
	.ascii "pybind11-bound class '\0"
	.align 8
.LC74:
	.ascii "' is using an old-style placement-new '\0"
	.align 8
.LC75:
	.ascii "' which has been deprecated. See the upgrade guide in pybind11's docs. This message is only visible when compiled in debug mode.\0"
.LC76:
	.ascii "self\0"
.LC77:
	.ascii "%llu\0"
.LC78:
	.ascii "arg\0"
.LC79:
	.ascii "=\0"
	.align 8
.LC80:
	.ascii "Internal error while parsing type signature (1)\0"
.LC81:
	.ascii ".\0"
	.align 8
.LC82:
	.ascii "Internal error while parsing type signature (2)\0"
.LC83:
	.ascii "__next__\0"
.LC84:
	.ascii "next\0"
.LC85:
	.ascii "__bool__\0"
.LC86:
	.ascii "__nonzero__\0"
	.align 8
.LC87:
	.ascii "cannot create std::vector larger than max_size()\0"
	.align 8
.LC88:
	.ascii "Cannot overload existing non-function object \"\0"
	.align 8
.LC89:
	.ascii "\" with a function of the same name\0"
	.align 8
.LC90:
	.ascii "Could not set capsule context!\0"
	.align 8
.LC91:
	.ascii "cpp_function::cpp_function(): Could not allocate function object\0"
.LC92:
	.ascii " method \0"
.LC93:
	.ascii "(*args, **kwargs)\12\0"
.LC94:
	.ascii "Overloaded function.\12\12\0"
.LC95:
	.ascii ". \0"
	.align 8
.LC96:
	.ascii "cpp_function::cpp_function(): Could not allocate instance method object\0"
	.align 8
.LC97:
	.ascii "overloading a method with both static and instance methods is not supported; error while attempting to bind \0"
	.section	.text$_ZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoy,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoy
	.def	_ZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoy
_ZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoy:
.LFB10946:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$456, %rsp
	.seh_stackalloc	456
	.seh_endprologue
	movq	%rcx, 528(%rsp)
	movq	(%rdx), %rcx
	movq	%rdx, %r14
	leaq	.LC67(%rip), %rax
	movq	%r8, 544(%rsp)
	testq	%rcx, %rcx
	movq	%r9, 552(%rsp)
	cmove	%rax, %rcx
.LEHB247:
	call	strdup
	movq	8(%r14), %rcx
	movq	%rax, (%r14)
	testq	%rcx, %rcx
	je	.L2700
	call	strdup
	movq	%rax, 8(%r14)
.L2700:
	movq	32(%r14), %rsi
	movq	24(%r14), %rbx
	leaq	.LC71(%rip), %rbp
	leaq	320(%rsp), %rdi
	leaq	352(%rsp), %r12
	cmpq	%rsi, %rbx
	jne	.L2722
	.p2align 4,,10
	.p2align 3
.L2723:
	movq	(%r14), %rdx
	movl	$9, %ecx
	leaq	.LC70(%rip), %rdi
	movq	%rdx, %rsi
	repz cmpsb
	seta	%al
	sbbb	$0, %al
	testb	%al, %al
	je	.L2702
	jmp	.L3317
	.p2align 4,,10
	.p2align 3
.L2722:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2704
	call	strdup
	movq	%rax, (%rbx)
.L2704:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2705
	call	strdup
.LEHE247:
	movq	%rax, 8(%rbx)
	jmp	.L2706
	.p2align 4,,10
	.p2align 3
.L2705:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L2706
	movq	%r12, %rdx
	movq	%rdi, %rcx
	movq	%rax, 360(%rsp)
	movq	%rbp, 368(%rsp)
	movq	$0, 376(%rsp)
.LEHB248:
	call	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJEEENS_6objectEDpOT0_
.LEHE248:
	movq	320(%rsp), %rax
	cmpl	$1, (%rax)
	jle	.L2707
	leaq	432(%rsp), %r15
	movq	%rdi, %rdx
	leaq	416(%rsp), %rcx
	movq	$0, 424(%rsp)
	movq	%r15, 416(%rsp)
	movb	$0, 432(%rsp)
.LEHB249:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE249:
	jmp	.L3318
.L3188:
	movq	416(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	je	.L3335
	vzeroupper
	call	_ZdlPv
	jmp	.L2710
.L3335:
	vzeroupper
.L2710:
	jmp	.L2711
	.p2align 4,,10
	.p2align 3
.L3318:
	movq	416(%rsp), %rcx
	leaq	400(%rsp), %r13
	movq	%r13, 384(%rsp)
	cmpq	%r15, %rcx
	jne	.L2712
	vmovdqa	432(%rsp), %xmm5
	movq	%r13, %rcx
	vmovaps	%xmm5, 400(%rsp)
	jmp	.L2713
	.p2align 4,,10
	.p2align 3
.L2712:
	movq	432(%rsp), %rax
	movq	%rcx, 384(%rsp)
	movq	%rax, 400(%rsp)
.L2713:
	movq	424(%rsp), %rax
	movq	%rax, 392(%rsp)
	jmp	.L2714
	.p2align 4,,10
	.p2align 3
.L2707:
	leaq	384(%rsp), %rcx
	movq	%rdi, %rdx
.LEHB250:
	call	_ZN8pybind114moveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsrNS_6detail8negationINS9_ISt7is_sameINS8_5boolsIJXsrNS9_INS8_11move_alwaysIT_vEEEE5valueEXsrNS9_INS8_20move_if_unreferencedISD_vEEEE5valueELb1EEEENSB_IJLb1EXsrSF_5valueEXsrSI_5valueEEEEEEEEE5valueESD_E4typeEONS_6objectE
.LEHE250:
	movq	384(%rsp), %rcx
	leaq	400(%rsp), %r13
.L2714:
.LEHB251:
	call	strdup
.LEHE251:
	movq	%rax, 8(%rbx)
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L2715
	call	_ZdlPv
.L2715:
	movq	320(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2717
	decq	(%rcx)
	jne	.L2717
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2717:
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2706
	decq	(%rcx)
	jne	.L2706
	movq	8(%rcx), %rax
	call	*48(%rax)
	.p2align 4,,10
	.p2align 3
.L2706:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L2722
	jmp	.L2723
	.p2align 4,,10
	.p2align 3
.L2702:
	movzbl	89(%r14), %eax
	orl	$1, %eax
	movb	%al, 89(%r14)
	testb	$2, %al
	jne	.L2724
	jmp	.L3319
	.p2align 4,,10
	.p2align 3
.L3317:
	movl	$13, %ecx
	leaq	.LC72(%rip), %rdi
	movq	%rdx, %rsi
	repz cmpsb
	seta	%al
	sbbb	$0, %al
	testb	%al, %al
	je	.L2702
	andb	$-2, 89(%r14)
	jmp	.L2724
	.p2align 4,,10
	.p2align 3
.L3319:
	movq	104(%r14), %rax
	leaq	272(%rsp), %rdi
	leaq	256(%rsp), %r12
	movq	24(%rax), %r13
	movq	%rdi, 256(%rsp)
	testq	%r13, %r13
	jne	.L2726
	leaq	.LC8(%rip), %rcx
.LEHB252:
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L2726:
	movq	%r13, %rcx
	call	strlen
	movq	%rax, 416(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	jbe	.L2727
	movq	%r12, %rcx
	leaq	416(%rsp), %rdx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE252:
	movq	%rax, 256(%rsp)
	movq	%rax, %rcx
	movq	416(%rsp), %rax
	movq	%rax, 272(%rsp)
	jmp	.L2728
	.p2align 4,,10
	.p2align 3
.L2727:
	cmpq	$1, %rax
	jne	.L2729
	movzbl	0(%r13), %edx
	movb	%dl, 272(%rsp)
	movq	%rdi, %rdx
	jmp	.L2730
.L2729:
	testq	%rax, %rax
	je	.L3128
	movq	%rdi, %rcx
.L2728:
	movq	%r13, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	416(%rsp), %rax
	movq	256(%rsp), %rdx
	jmp	.L2730
.L3128:
	movq	%rdi, %rdx
.L2730:
	movq	%rax, 264(%rsp)
	leaq	304(%rsp), %rbx
	leaq	288(%rsp), %r13
	movb	$0, (%rdx,%rax)
	movq	(%r14), %r12
	movq	%rbx, 288(%rsp)
	testq	%r12, %r12
	jne	.L2731
	leaq	.LC8(%rip), %rcx
.LEHB253:
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L2731:
	movq	%r12, %rcx
	call	strlen
	movq	%rax, 416(%rsp)
	movq	%rax, %rsi
	cmpq	$15, %rax
	jbe	.L2732
	leaq	416(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE253:
	movq	%rax, 288(%rsp)
	movq	%rax, %rcx
	movq	416(%rsp), %rax
	movq	%rax, 304(%rsp)
	jmp	.L2733
	.p2align 4,,10
	.p2align 3
.L2732:
	cmpq	$1, %rax
	jne	.L2734
	movzbl	(%r12), %edx
	movb	%dl, 304(%rsp)
	movq	%rbx, %rdx
	jmp	.L2735
.L2734:
	testq	%rax, %rax
	je	.L3129
	movq	%rbx, %rcx
.L2733:
	movq	%r12, %rdx
	movq	%rsi, %r8
	call	memcpy
	movq	416(%rsp), %rax
	movq	288(%rsp), %rdx
	jmp	.L2735
.L3129:
	movq	%rbx, %rdx
.L2735:
	movq	%rax, 296(%rsp)
	leaq	320(%rsp), %r12
	leaq	336(%rsp), %rsi
	movb	$0, (%rdx,%rax)
	movq	264(%rsp), %rax
	movq	%r12, %rcx
	movq	%rsi, 320(%rsp)
	leaq	22(%rax), %rdx
	movb	$0, 336(%rsp)
	movq	$0, 328(%rsp)
.LEHB254:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movabsq	$4611686018427387903, %rax
	subq	328(%rsp), %rax
	cmpq	$21, %rax
	ja	.L2736
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2736:
	movl	$22, %r8d
	leaq	.LC73(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	264(%rsp), %r8
	movq	256(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE254:
	jmp	.L3320
.L3189:
	movq	320(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%rsi, %rcx
	je	.L3336
	vzeroupper
	call	_ZdlPv
	jmp	.L2739
.L3336:
	vzeroupper
.L2739:
	jmp	.L2740
	.p2align 4,,10
	.p2align 3
.L3320:
	movabsq	$4611686018427387903, %rax
	subq	328(%rsp), %rax
	cmpq	$38, %rax
	ja	.L2741
	leaq	.LC6(%rip), %rcx
.LEHB255:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2741:
	movl	$39, %r8d
	leaq	.LC74(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE255:
	leaq	368(%rsp), %rdx
	movq	%rdx, 352(%rsp)
	movq	(%rax), %rcx
	movq	%rdx, 56(%rsp)
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L2742
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 368(%rsp)
	jmp	.L2743
	.p2align 4,,10
	.p2align 3
.L2742:
	movq	%rcx, 352(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 368(%rsp)
.L2743:
	movq	8(%rax), %rcx
	movq	%rcx, 360(%rsp)
	leaq	352(%rsp), %rcx
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	288(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	296(%rsp), %r8
.LEHB256:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE256:
	leaq	400(%rsp), %r13
	leaq	16(%rax), %rdx
	movq	%r13, 384(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2744
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 400(%rsp)
	jmp	.L2745
	.p2align 4,,10
	.p2align 3
.L2744:
	movq	%rcx, 384(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 400(%rsp)
.L2745:
	movq	8(%rax), %rcx
	movq	%rcx, 392(%rsp)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movabsq	$4611686018427387903, %rax
	subq	392(%rsp), %rax
	cmpq	$127, %rax
	ja	.L2746
	leaq	.LC6(%rip), %rcx
.LEHB257:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2746:
	leaq	384(%rsp), %rcx
	movl	$128, %r8d
	leaq	.LC75(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE257:
	leaq	432(%rsp), %r15
	leaq	16(%rax), %rdx
	movq	%r15, 416(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2747
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 432(%rsp)
	jmp	.L2748
	.p2align 4,,10
	.p2align 3
.L2747:
	movq	%rcx, 416(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 432(%rsp)
.L2748:
	movq	8(%rax), %rcx
	xorl	%r8d, %r8d
	movq	%rcx, 424(%rsp)
	movq	%rdx, (%rax)
	movb	$0, 16(%rax)
	movq	416(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	__imp_PyExc_FutureWarning(%rip), %rax
	movq	(%rax), %rcx
.LEHB258:
	call	*__imp_PyErr_WarnEx(%rip)
.LEHE258:
	movq	416(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L2749
	call	_ZdlPv
.L2749:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L2750
	call	_ZdlPv
.L2750:
	movq	352(%rsp), %rcx
	cmpq	56(%rsp), %rcx
	je	.L2751
	call	_ZdlPv
.L2751:
	movq	320(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L2752
	call	_ZdlPv
.L2752:
	movq	288(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L2753
	call	_ZdlPv
.L2753:
	movq	256(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L2724
	call	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L2724:
	leaq	112(%rsp), %rax
	movb	$0, 112(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rax, 96(%rsp)
	movq	544(%rsp), %rax
	movq	$0, 104(%rsp)
	movzbl	(%rax), %ebx
	testb	%bl, %bl
	je	.L2755
	movq	$0, 56(%rsp)
	leaq	1(%rax), %rbp
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.L2756
	.p2align 4,,10
	.p2align 3
.L2773:
	movzbl	0(%rbp), %ebx
	.p2align 4,,10
	.p2align 3
.L2771:
	incq	%rbp
	testb	%bl, %bl
	je	.L2757
.L2756:
	cmpb	$123, %bl
	jne	.L2758
	movzbl	0(%rbp), %ebx
	testq	%rdi, %rdi
	jne	.L2759
	cmpb	$42, %bl
	je	.L2759
	movq	56(%rsp), %rdx
	cmpq	%rdx, 560(%rsp)
	jbe	.L2759
	movq	24(%r14), %rax
	cmpq	32(%r14), %rax
	je	.L2760
	salq	$5, %rdx
	movq	(%rax,%rdx), %r13
	testq	%r13, %r13
	je	.L2760
	movq	%r13, %rcx
	call	strlen
	movq	%rax, %r8
	movabsq	$4611686018427387903, %rax
	subq	104(%rsp), %rax
	cmpq	%rax, %r8
	jbe	.L2761
	leaq	.LC6(%rip), %rcx
.LEHB259:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2761:
	leaq	96(%rsp), %r12
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	jmp	.L2762
	.p2align 4,,10
	.p2align 3
.L2760:
	movzbl	89(%r14), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpq	$0, 56(%rsp)
	jne	.L2763
	testb	%al, %al
	je	.L2763
	movabsq	$4611686018427387903, %rax
	subq	104(%rsp), %rax
	cmpq	$3, %rax
	ja	.L2764
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2764:
	leaq	96(%rsp), %r12
	movl	$4, %r8d
	leaq	.LC76(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	jmp	.L2762
	.p2align 4,,10
	.p2align 3
.L2763:
	movq	56(%rsp), %rdx
	movzbl	%al, %eax
	leaq	384(%rsp), %rbx
	leaq	.LC77(%rip), %r9
	movl	$32, %r8d
	movq	%rbx, %rcx
	subq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	leaq	_ZL9vsnprintfPcyPKcS_(%rip), %rdx
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.0
.LEHE259:
	leaq	.LC78(%rip), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movq	$3, 32(%rsp)
.LEHB260:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE260:
	leaq	432(%rsp), %r15
	leaq	16(%rax), %rdx
	movq	%r15, 416(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2766
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 432(%rsp)
	jmp	.L2767
	.p2align 4,,10
	.p2align 3
.L2766:
	movq	%rcx, 416(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 432(%rsp)
.L2767:
	movq	8(%rax), %rcx
	leaq	96(%rsp), %r12
	movq	%rcx, 424(%rsp)
	movq	%r12, %rcx
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	416(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	424(%rsp), %r8
.LEHB261:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE261:
	movq	416(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L2768
	call	_ZdlPv
.L2768:
	movq	384(%rsp), %rcx
	leaq	400(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2762
	call	_ZdlPv
.L2762:
	movabsq	$4611686018427387903, %rax
	subq	104(%rsp), %rax
	cmpq	$1, %rax
	ja	.L2770
	leaq	.LC6(%rip), %rcx
.LEHB262:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2770:
	movl	$2, %r8d
	leaq	.LC22(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movzbl	0(%rbp), %ebx
	.p2align 4,,10
	.p2align 3
.L2759:
	incq	%rdi
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2758:
	cmpb	$125, %bl
	jne	.L2772
	decq	%rdi
	jne	.L2773
	movq	24(%r14), %rdx
	movq	32(%r14), %rax
	movq	56(%rsp), %rbx
	subq	%rdx, %rax
	sarq	$5, %rax
	cmpq	%rbx, %rax
	jbe	.L2774
	salq	$5, %rbx
	cmpq	$0, 8(%rdx,%rbx)
	je	.L2774
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, 104(%rsp)
	jne	.L2775
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2775:
	leaq	96(%rsp), %r12
	movl	$1, %r8d
	leaq	.LC79(%rip), %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	24(%r14), %rax
	movq	8(%rax,%rbx), %r13
	movq	%r13, %rcx
	call	strlen
	movq	%rax, %r8
	movabsq	$4611686018427387903, %rax
	subq	104(%rsp), %rax
	cmpq	%rax, %r8
	jbe	.L2776
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2776:
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.L2774:
	incq	56(%rsp)
	movzbl	0(%rbp), %ebx
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2772:
	cmpb	$37, %bl
	jne	.L2777
	leaq	1(%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	552(%rsp), %rax
	movq	(%rax,%rsi,8), %rbx
	testq	%rbx, %rbx
	jne	.L2778
	leaq	.LC80(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2778:
	leaq	416(%rsp), %r12
	xorl	%edx, %edx
	movq	%rbx, 416(%rsp)
	movq	%r12, %rcx
	call	_ZN8pybind116detail13get_type_infoERKSt10type_indexb
.LEHE262:
	testq	%rax, %rax
	je	.L2779
	movq	(%rax), %rsi
	leaq	.LC44(%rip), %rax
	movq	$0, 376(%rsp)
	movq	%rax, 368(%rsp)
	movq	__imp_PyObject_GetAttrString(%rip), %rbx
	movq	%rax, %rdx
	movq	%rsi, 360(%rsp)
	movq	%rsi, %rcx
.LEHB263:
	call	*%rbx
.LEHE263:
	testq	%rax, %rax
	jne	.L2780
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB264:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE264:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r12, %rcx
.LEHB265:
	call	__cxa_throw
.LEHE265:
	.p2align 4,,10
	.p2align 3
.L2780:
	movq	376(%rsp), %rcx
	movq	%rax, 376(%rsp)
	testq	%rcx, %rcx
	jne	.L2781
	jmp	.L2782
.L3190:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2784
	.p2align 4,,10
	.p2align 3
.L2781:
	decq	(%rcx)
	jne	.L2782
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2782:
	leaq	432(%rsp), %r15
	movq	%r12, %rcx
	leaq	376(%rsp), %rdx
	movq	$0, 424(%rsp)
	movq	%r15, 416(%rsp)
	movb	$0, 432(%rsp)
.LEHB266:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE266:
	jmp	.L3321
.L3191:
	movq	416(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	je	.L3337
	vzeroupper
	call	_ZdlPv
	jmp	.L2788
.L3337:
	vzeroupper
.L2788:
	jmp	.L2784
	.p2align 4,,10
	.p2align 3
.L3321:
	movq	416(%rsp), %rax
	leaq	400(%rsp), %r13
	movq	%r13, 384(%rsp)
	cmpq	%r15, %rax
	jne	.L2789
	vmovdqa	432(%rsp), %xmm5
	vmovaps	%xmm5, 400(%rsp)
	jmp	.L2790
	.p2align 4,,10
	.p2align 3
.L2789:
	movq	%rax, 384(%rsp)
	movq	432(%rsp), %rax
	movq	%rax, 400(%rsp)
.L2790:
	movq	424(%rsp), %rax
	movq	%rsi, 264(%rsp)
	movq	%rsi, %rcx
	movq	$0, 280(%rsp)
	movq	%rax, 392(%rsp)
	leaq	.LC43(%rip), %rax
	movq	%rax, 272(%rsp)
	movq	%rax, %rdx
.LEHB267:
	call	*%rbx
.LEHE267:
	testq	%rax, %rax
	jne	.L2791
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB268:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE268:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r12, %rcx
.LEHB269:
	call	__cxa_throw
.LEHE269:
	.p2align 4,,10
	.p2align 3
.L2791:
	movq	280(%rsp), %rcx
	movq	%rax, 280(%rsp)
	testq	%rcx, %rcx
	jne	.L2792
	jmp	.L2793
.L3192:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2795
	.p2align 4,,10
	.p2align 3
.L2792:
	decq	(%rcx)
	jne	.L2793
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2793:
	leaq	280(%rsp), %rdx
	movq	%r12, %rcx
	movq	%r15, 416(%rsp)
	movq	$0, 424(%rsp)
	movb	$0, 432(%rsp)
.LEHB270:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE270:
	jmp	.L3322
.L3193:
	movq	416(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	je	.L3338
	vzeroupper
	call	_ZdlPv
	jmp	.L2799
.L3338:
	vzeroupper
.L2799:
	jmp	.L2795
	.p2align 4,,10
	.p2align 3
.L3322:
	movq	416(%rsp), %rax
	leaq	304(%rsp), %rbx
	movq	%rbx, 288(%rsp)
	cmpq	%r15, %rax
	jne	.L2800
	vmovdqa	432(%rsp), %xmm4
	vmovaps	%xmm4, 304(%rsp)
	jmp	.L2801
	.p2align 4,,10
	.p2align 3
.L2800:
	movq	%rax, 288(%rsp)
	movq	432(%rsp), %rax
	movq	%rax, 304(%rsp)
.L2801:
	movq	424(%rsp), %rax
	movabsq	$4611686018427387903, %rsi
	movq	%rax, 296(%rsp)
	cmpq	%rsi, %rax
	jne	.L2802
	leaq	.LC6(%rip), %rcx
.LEHB271:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2802:
	leaq	288(%rsp), %rcx
	movl	$1, %r8d
	leaq	.LC81(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE271:
	leaq	336(%rsp), %rsi
	leaq	16(%rax), %rdx
	movq	%rsi, 320(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2803
	vmovdqu	16(%rax), %xmm5
	vmovaps	%xmm5, 336(%rsp)
	jmp	.L2804
	.p2align 4,,10
	.p2align 3
.L2803:
	movq	%rcx, 320(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 336(%rsp)
.L2804:
	movq	8(%rax), %rcx
	movq	%rcx, 328(%rsp)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	320(%rsp), %r9
	movq	$0, 8(%rax)
	movl	$15, %eax
	movq	328(%rsp), %rcx
	movq	392(%rsp), %r8
	cmpq	%rsi, %r9
	movq	%rax, %r11
	cmovne	336(%rsp), %r11
	movq	384(%rsp), %r10
	leaq	(%rcx,%r8), %rdx
	cmpq	%r11, %rdx
	jbe	.L2806
	cmpq	%r13, %r10
	cmovne	400(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L2806
	movq	%rcx, 32(%rsp)
	leaq	384(%rsp), %r10
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r10, %rcx
.LEHB272:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L2808
	.p2align 4,,10
	.p2align 3
.L2806:
	leaq	320(%rsp), %rcx
	movq	%r10, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE272:
.L2808:
	movq	%r15, 416(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L2809
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	jmp	.L2810
	.p2align 4,,10
	.p2align 3
.L2809:
	movq	%rcx, 416(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 432(%rsp)
.L2810:
	movq	8(%rax), %rcx
	movq	%rcx, 424(%rsp)
	leaq	96(%rsp), %rcx
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	416(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	424(%rsp), %r8
.LEHB273:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE273:
	movq	416(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L2811
	call	_ZdlPv
.L2811:
	movq	320(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L2812
	call	_ZdlPv
.L2812:
	movq	288(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L2813
	call	_ZdlPv
.L2813:
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2815
	decq	(%rcx)
	jne	.L2815
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2815:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L2817
	call	_ZdlPv
.L2817:
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2819
	decq	(%rcx)
	jne	.L2819
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2819:
	movzbl	0(%rbp), %ebx
	movq	64(%rsp), %rsi
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2779:
	testb	$2, 89(%r14)
	je	.L2821
	cmpq	$0, 56(%rsp)
	jne	.L2821
	movq	104(%r14), %rax
	leaq	352(%rsp), %rcx
	movq	$0, 376(%rsp)
	movq	%rax, 360(%rsp)
	leaq	.LC44(%rip), %rax
	movq	%rax, 368(%rsp)
.LEHB274:
	call	_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv
.LEHE274:
	leaq	432(%rsp), %r15
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	$0, 424(%rsp)
	movq	%r15, 416(%rsp)
	movb	$0, 432(%rsp)
.LEHB275:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE275:
	jmp	.L3323
.L3194:
	movq	416(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	je	.L3339
	vzeroupper
	call	_ZdlPv
	jmp	.L2824
.L3339:
	vzeroupper
.L2824:
	jmp	.L2825
	.p2align 4,,10
	.p2align 3
.L3323:
	movq	416(%rsp), %rax
	leaq	400(%rsp), %r13
	movq	%r13, 384(%rsp)
	cmpq	%r15, %rax
	jne	.L2826
	vmovdqa	432(%rsp), %xmm3
	vmovaps	%xmm3, 400(%rsp)
	jmp	.L2827
	.p2align 4,,10
	.p2align 3
.L2826:
	movq	%rax, 384(%rsp)
	movq	432(%rsp), %rax
	movq	%rax, 400(%rsp)
.L2827:
	movq	424(%rsp), %rax
	leaq	256(%rsp), %rcx
	movq	$0, 280(%rsp)
	movq	%rax, 392(%rsp)
	movq	104(%r14), %rax
	movq	%rax, 264(%rsp)
	leaq	.LC43(%rip), %rax
	movq	%rax, 272(%rsp)
.LEHB276:
	call	_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv
.LEHE276:
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	%r15, 416(%rsp)
	movq	$0, 424(%rsp)
	movb	$0, 432(%rsp)
.LEHB277:
	call	_ZN8pybind116detail9load_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEERNS0_11type_casterIT_T0_EESC_RKNS_6handleE
.LEHE277:
	jmp	.L3324
.L3195:
	movq	416(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	je	.L3340
	vzeroupper
	call	_ZdlPv
	jmp	.L2830
.L3340:
	vzeroupper
.L2830:
	jmp	.L2831
	.p2align 4,,10
	.p2align 3
.L3324:
	movq	416(%rsp), %rax
	leaq	304(%rsp), %rbx
	movq	%rbx, 288(%rsp)
	cmpq	%r15, %rax
	jne	.L2832
	vmovdqa	432(%rsp), %xmm4
	vmovaps	%xmm4, 304(%rsp)
	jmp	.L2833
	.p2align 4,,10
	.p2align 3
.L2832:
	movq	%rax, 288(%rsp)
	movq	432(%rsp), %rax
	movq	%rax, 304(%rsp)
.L2833:
	movq	424(%rsp), %rax
	movabsq	$4611686018427387903, %rsi
	movq	%rax, 296(%rsp)
	cmpq	%rsi, %rax
	jne	.L2834
	leaq	.LC6(%rip), %rcx
.LEHB278:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2834:
	leaq	288(%rsp), %rcx
	movl	$1, %r8d
	leaq	.LC81(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE278:
	leaq	336(%rsp), %rsi
	leaq	16(%rax), %rdx
	movq	%rsi, 320(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2835
	vmovdqu	16(%rax), %xmm5
	vmovaps	%xmm5, 336(%rsp)
	jmp	.L2836
	.p2align 4,,10
	.p2align 3
.L2835:
	movq	%rcx, 320(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 336(%rsp)
.L2836:
	movq	8(%rax), %rcx
	movq	%rcx, 328(%rsp)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	320(%rsp), %r9
	movq	$0, 8(%rax)
	movl	$15, %eax
	movq	328(%rsp), %rcx
	movq	392(%rsp), %r8
	cmpq	%rsi, %r9
	movq	%rax, %r11
	cmovne	336(%rsp), %r11
	movq	384(%rsp), %r10
	leaq	(%rcx,%r8), %rdx
	cmpq	%r11, %rdx
	jbe	.L2838
	cmpq	%r13, %r10
	cmovne	400(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L2838
	movq	%rcx, 32(%rsp)
	leaq	384(%rsp), %r10
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r10, %rcx
.LEHB279:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L2840
	.p2align 4,,10
	.p2align 3
.L2838:
	leaq	320(%rsp), %rcx
	movq	%r10, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE279:
.L2840:
	movq	%r15, 416(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L2841
	vmovdqu	16(%rax), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	jmp	.L2842
	.p2align 4,,10
	.p2align 3
.L2841:
	movq	%rcx, 416(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 432(%rsp)
.L2842:
	movq	8(%rax), %rcx
	movq	%rcx, 424(%rsp)
	leaq	96(%rsp), %rcx
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	416(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	424(%rsp), %r8
.LEHB280:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE280:
	movq	416(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L2843
	call	_ZdlPv
.L2843:
	movq	320(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L2844
	call	_ZdlPv
.L2844:
	movq	288(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L2845
	call	_ZdlPv
.L2845:
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2847
	decq	(%rcx)
	jne	.L2847
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2847:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L2849
	call	_ZdlPv
.L2849:
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2851
	decq	(%rcx)
	jne	.L2851
	movq	8(%rcx), %rax
	call	*48(%rax)
.L2851:
	movq	$0, 56(%rsp)
	movzbl	0(%rbp), %ebx
	movq	64(%rsp), %rsi
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2821:
	movq	8(%rbx), %r13
	xorl	%eax, %eax
	leaq	432(%rsp), %r15
	cmpb	$42, 0(%r13)
	movq	%r15, 416(%rsp)
	sete	%al
	addq	%rax, %r13
	movq	%r13, %rcx
	call	strlen
	movq	%rax, 384(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	jbe	.L3325
	leaq	384(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r12, %rcx
.LEHB281:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE281:
	movq	%rax, 416(%rsp)
	movq	%rax, %rcx
	movq	384(%rsp), %rax
	movq	%rax, 432(%rsp)
	jmp	.L2854
	.p2align 4,,10
	.p2align 3
.L3325:
	cmpq	$1, %rax
	jne	.L2855
	movzbl	0(%r13), %edx
	movb	%dl, 432(%rsp)
	movq	%r15, %rdx
	jmp	.L2856
	.p2align 4,,10
	.p2align 3
.L2855:
	testq	%rax, %rax
	je	.L3134
	movq	%r15, %rcx
	.p2align 4,,10
	.p2align 3
.L2854:
	movq	%r13, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	384(%rsp), %rax
	movq	416(%rsp), %rdx
	jmp	.L2856
	.p2align 4,,10
	.p2align 3
.L3134:
	movq	%r15, %rdx
.L2856:
	movq	%rax, 424(%rsp)
	movq	%r12, %rcx
	movb	$0, (%rdx,%rax)
.LEHB282:
	call	_ZN8pybind116detail13clean_type_idERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movq	424(%rsp), %r8
	movq	416(%rsp), %rdx
	leaq	96(%rsp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE282:
	movq	416(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L2857
	call	_ZdlPv
.L2857:
	movzbl	0(%rbp), %ebx
	movq	64(%rsp), %rsi
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2777:
	movq	104(%rsp), %r12
	movq	96(%rsp), %rdx
	movl	$15, %eax
	cmpq	72(%rsp), %rdx
	cmovne	112(%rsp), %rax
	leaq	1(%r12), %r13
	cmpq	%rax, %r13
	jbe	.L2859
	leaq	96(%rsp), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movq	$1, 32(%rsp)
.LEHB283:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	movq	96(%rsp), %rdx
.L2859:
	movb	%bl, (%rdx,%r12)
	movq	96(%rsp), %rax
	movq	%r13, 104(%rsp)
	movb	$0, 1(%rax,%r12)
	movzbl	0(%rbp), %ebx
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2757:
	testq	%rdi, %rdi
	je	.L2860
.L2861:
	leaq	.LC82(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2860:
	movq	552(%rsp), %rax
	leaq	(%rax,%rsi,8), %rax
	movq	%rax, 552(%rsp)
.L2755:
	movq	552(%rsp), %rax
	movq	(%rax), %r12
	testq	%r12, %r12
	jne	.L2861
	movq	(%r14), %r8
	movl	$9, %ecx
	leaq	.LC83(%rip), %rdi
	movq	%r8, %rsi
	repz cmpsb
	seta	%al
	sbbb	$0, %al
	testb	%al, %al
	jne	.L2862
	movq	%r8, %rcx
	call	free
	leaq	.LC84(%rip), %rcx
	call	strdup
	movq	%rax, (%r14)
	jmp	.L2863
	.p2align 4,,10
	.p2align 3
.L2862:
	movl	$9, %ecx
	leaq	.LC85(%rip), %rdi
	movq	%r8, %rsi
	repz cmpsb
	seta	%al
	sbbb	$0, %al
	testb	%al, %al
	jne	.L2863
	movq	%r8, %rcx
	call	free
	leaq	.LC86(%rip), %rcx
	call	strdup
	movq	%rax, (%r14)
.L2863:
	movq	96(%rsp), %rcx
	call	strdup
.LEHE283:
	movq	%rax, 16(%r14)
	movq	32(%r14), %rbx
	cmpq	%rbx, 40(%r14)
	je	.L2864
	movq	24(%r14), %rsi
	movq	%rbx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rax
	sarq	$5, %rax
	testq	%rdi, %rdi
	jns	.L2865
	leaq	.LC87(%rip), %rcx
.LEHB284:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2865:
	testq	%rax, %rax
	je	.L3136
	movq	%rdi, %rcx
	call	_Znwy
.LEHE284:
	movq	24(%r14), %r8
	jmp	.L2866
	.p2align 4,,10
	.p2align 3
.L3136:
	movq	%rsi, %r8
	xorl	%eax, %eax
.L2866:
	addq	%rax, %rdi
	cmpq	%rsi, %rbx
	je	.L3137
	movq	%rsi, %rdx
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L2868:
	vmovdqu	(%rdx), %xmm1
	addq	$32, %rdx
	addq	$32, %rcx
	vmovups	%xmm1, -32(%rcx)
	vmovdqu	-16(%rdx), %xmm2
	vmovups	%xmm2, -16(%rcx)
	cmpq	%rdx, %rbx
	jne	.L2868
	subq	%rsi, %rbx
	addq	%rax, %rbx
	jmp	.L2867
.L3137:
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L2867:
	vmovq	%rax, %xmm3
	movq	%rdi, 40(%r14)
	vpinsrq	$1, %rbx, %xmm3, %xmm0
	vmovups	%xmm0, 24(%r14)
	testq	%r8, %r8
	jne	.L2869
	jmp	.L2864
.L3196:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L2864
	.p2align 4,,10
	.p2align 3
.L2869:
	movq	%r8, %rcx
	call	_ZdlPv
.L2864:
	movzwl	560(%rsp), %eax
	movw	%ax, 90(%r14)
	movq	112(%r14), %rax
	testq	%rax, %rax
	je	.L3112
	movq	8(%rax), %rdx
	cmpq	__imp_PyMethod_Type(%rip), %rdx
	jne	.L2873
	movq	16(%rax), %rax
	movq	%rax, 112(%r14)
	testq	%rax, %rax
	je	.L3112
	movq	8(%rax), %rdx
.L2873:
	cmpq	__imp_PyCFunction_Type(%rip), %rdx
	jne	.L2874
	movq	24(%rax), %r13
	testq	%r13, %r13
	je	.L2875
	incq	0(%r13)
.L2875:
	movq	%r13, %rcx
.LEHB285:
	call	*__imp_PyCapsule_GetName(%rip)
	movq	%rax, %rdx
	movq	%r13, %rcx
	call	*__imp_PyCapsule_GetPointer(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L2876
	leaq	.LC51(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE285:
	.p2align 4,,10
	.p2align 3
.L2876:
	movq	104(%r14), %rax
	cmpq	%rax, 104(%rbx)
	jne	.L2877
	jmp	.L3326
	.p2align 4,,10
	.p2align 3
.L3331:
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
	jmp	.L3112
.L3332:
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
	jmp	.L2879
	.p2align 4,,10
	.p2align 3
.L2874:
	cmpq	__imp__Py_NoneStruct(%rip), %rax
	je	.L3112
	movq	(%r14), %r15
	cmpb	$95, (%r15)
	je	.L3112
	leaq	368(%rsp), %rax
	movq	%r15, %rcx
	leaq	352(%rsp), %r13
	movq	%rax, 56(%rsp)
	movq	%rax, 352(%rsp)
	call	strlen
	movq	%rax, 416(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	jbe	.L2880
	leaq	416(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
.LEHB286:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE286:
	movq	%rax, 352(%rsp)
	movq	%rax, %rcx
	movq	416(%rsp), %rax
	movq	%rax, 368(%rsp)
	jmp	.L2881
	.p2align 4,,10
	.p2align 3
.L2880:
	cmpq	$1, %rax
	jne	.L2882
	movzbl	(%r15), %edx
	movb	%dl, 368(%rsp)
	movq	56(%rsp), %rdx
	jmp	.L2883
.L2882:
	testq	%rax, %rax
	je	.L3138
	movq	56(%rsp), %rcx
.L2881:
	movq	%r15, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	416(%rsp), %rax
	movq	352(%rsp), %rdx
	jmp	.L2883
.L3138:
	movq	56(%rsp), %rdx
.L2883:
	movq	%rax, 360(%rsp)
	leaq	.LC88(%rip), %r9
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	movb	$0, (%rdx,%rax)
	xorl	%edx, %edx
	movq	$46, 32(%rsp)
.LEHB287:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE287:
	leaq	400(%rsp), %r13
	leaq	16(%rax), %rdx
	movq	%r13, 384(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2884
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 400(%rsp)
	jmp	.L2885
	.p2align 4,,10
	.p2align 3
.L2884:
	movq	%rcx, 384(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 400(%rsp)
.L2885:
	movq	8(%rax), %rcx
	movq	%rcx, 392(%rsp)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movabsq	$4611686018427387903, %rax
	subq	392(%rsp), %rax
	cmpq	$33, %rax
	ja	.L2886
	leaq	.LC6(%rip), %rcx
.LEHB288:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2886:
	leaq	384(%rsp), %rcx
	movl	$34, %r8d
	leaq	.LC89(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE288:
	leaq	432(%rsp), %r15
	leaq	16(%rax), %rdx
	movq	%r15, 416(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2887
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 432(%rsp)
	jmp	.L2888
.L2887:
	movq	%rcx, 416(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 432(%rsp)
.L2888:
	movq	8(%rax), %rcx
	movq	%rcx, 424(%rsp)
	leaq	416(%rsp), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
.LEHB289:
	call	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE289:
	.p2align 4,,10
	.p2align 3
.L3112:
	movl	$32, %ecx
.LEHB290:
	call	_Znwy
	movq	(%r14), %rdx
	movq	%rax, 96(%r14)
	leaq	_ZZN8pybind117capsuleC4EPKvPFvPvEENUlP7_objectE_4_FUNES7_(%rip), %r8
	movq	%r14, %rcx
	movq	$0, 16(%rax)
	movq	%rdx, (%rax)
	leaq	_ZN8pybind1112cpp_function10dispatcherEP7_objectS2_S2_(%rip), %rdx
	movq	%rdx, 8(%rax)
	xorl	%edx, %edx
	movq	$0, 24(%rax)
	movl	$3, 16(%rax)
	call	*__imp_PyCapsule_New(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L2889
	leaq	.LC54(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE290:
	.p2align 4,,10
	.p2align 3
.L2889:
	leaq	_ZZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoyENUlPvE_4_FUNESB_(%rip), %rdx
	movq	%rax, %rcx
.LEHB291:
	call	*__imp_PyCapsule_SetContext(%rip)
	testl	%eax, %eax
	je	.L2890
	leaq	.LC90(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE291:
.L3197:
	decq	0(%r13)
	movq	%rax, %r12
	jne	.L3341
	movq	8(%r13), %rax
	movq	%r13, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L2893
.L3341:
	vzeroupper
.L2893:
	jmp	.L2894
	.p2align 4,,10
	.p2align 3
.L2890:
	movq	104(%r14), %rcx
	testq	%rcx, %rcx
	jne	.L2895
	movq	96(%r14), %rcx
	xorl	%r8d, %r8d
	movq	%r13, %rdx
.LEHB292:
	call	*__imp_PyCFunction_NewEx(%rip)
.LEHE292:
	movq	528(%rsp), %rdi
	movq	%rax, (%rdi)
	testq	%rax, %rax
	jne	.L2897
	leaq	.LC91(%rip), %rcx
.LEHB293:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE293:
.L3208:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2899
.L3204:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2899
	.p2align 4,,10
	.p2align 3
.L2895:
	movq	__imp_PyObject_HasAttrString(%rip), %rbx
	leaq	.LC43(%rip), %rdx
.LEHB294:
	call	*%rbx
.LEHE294:
	movq	104(%r14), %rcx
	cmpl	$1, %eax
	jne	.L2901
	leaq	.LC43(%rip), %rdx
.LEHB295:
	call	*__imp_PyObject_GetAttrString(%rip)
.LEHE295:
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.L2902
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r14
.LEHB296:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE296:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r14, %rcx
.LEHB297:
	call	__cxa_throw
.LEHE297:
	.p2align 4,,10
	.p2align 3
.L2902:
	cmpq	$0, (%rax)
	jne	.L2907
	jmp	.L3327
.L3198:
	movq	%rax, %r12
	movq	%r14, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2899
	.p2align 4,,10
	.p2align 3
.L3327:
	movq	8(%rax), %rax
	movq	%r15, %rcx
	call	*48(%rax)
	jmp	.L2907
	.p2align 4,,10
	.p2align 3
.L2901:
	leaq	.LC21(%rip), %rdx
.LEHB298:
	call	*%rbx
.LEHE298:
	cmpl	$1, %eax
	je	.L2908
	movq	96(%r14), %rcx
	xorl	%r8d, %r8d
	movq	%r13, %rdx
.LEHB299:
	call	*__imp_PyCFunction_NewEx(%rip)
.LEHE299:
	movq	528(%rsp), %rdi
	movq	%rax, (%rdi)
	testq	%rax, %rax
	jne	.L2897
	leaq	.LC91(%rip), %rcx
.LEHB300:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE300:
.L3209:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2899
.L3203:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2899
	.p2align 4,,10
	.p2align 3
.L2908:
	movq	104(%r14), %rax
	leaq	416(%rsp), %rcx
	movq	$0, 440(%rsp)
	movq	%rax, 424(%rsp)
	leaq	.LC21(%rip), %rax
	movq	%rax, 432(%rsp)
.LEHB301:
	call	_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv
.LEHE301:
	movq	(%rax), %r15
	testq	%r15, %r15
	je	.L2912
	incq	(%r15)
.L2912:
	movq	440(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2907
	decq	(%rcx)
	jne	.L2907
	movq	8(%rcx), %rax
	call	*48(%rax)
	.p2align 4,,10
	.p2align 3
.L2907:
	movq	96(%r14), %rcx
	movq	%r15, %r8
	movq	%r13, %rdx
.LEHB302:
	call	*__imp_PyCFunction_NewEx(%rip)
	movq	528(%rsp), %rdi
	movq	%rax, (%rdi)
	testq	%rax, %rax
	jne	.L2916
	leaq	.LC91(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE302:
	.p2align 4,,10
	.p2align 3
.L2916:
	testq	%r15, %r15
	je	.L2897
	decq	(%r15)
	jne	.L2897
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L2897:
	decq	0(%r13)
	jne	.L2917
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L2917:
	leaq	368(%rsp), %rax
	movb	$0, 368(%rsp)
	movq	%r14, %rbx
	movq	%rax, 56(%rsp)
	movq	%rax, 352(%rsp)
	movzbl	1+_ZZN8pybind117options12global_stateEvE8instance(%rip), %eax
	movq	$0, 360(%rsp)
	jmp	.L2918
.L2879:
	movq	112(%r14), %rax
	movq	528(%rsp), %rdi
	movq	%rax, (%rdi)
	testq	%rax, %rax
	je	.L2919
	incq	(%rax)
.L2919:
	movzbl	89(%rbx), %edx
	xorb	89(%r14), %dl
	movq	%rbx, %rax
	andl	$64, %edx
	je	.L2920
	movq	(%r14), %r12
	leaq	368(%rsp), %rax
	leaq	352(%rsp), %r13
	movq	%rax, 56(%rsp)
	movq	%rax, 352(%rsp)
	testq	%r12, %r12
	jne	.L2921
	leaq	.LC8(%rip), %rcx
.LEHB303:
	call	_ZSt19__throw_logic_errorPKc
.L2921:
	movq	%r12, %rcx
	call	strlen
	movq	%rax, 416(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	jbe	.L2922
	leaq	416(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE303:
	movq	%rax, 352(%rsp)
	movq	%rax, %rcx
	movq	416(%rsp), %rax
	movq	%rax, 368(%rsp)
	jmp	.L2923
.L2922:
	cmpq	$1, %rax
	jne	.L2924
	movzbl	(%r12), %edx
	movb	%dl, 368(%rsp)
	movq	56(%rsp), %rdx
	jmp	.L2925
.L2924:
	testq	%rax, %rax
	je	.L3140
	movq	56(%rsp), %rcx
.L2923:
	movq	%r12, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	416(%rsp), %rax
	movq	352(%rsp), %rdx
	jmp	.L2925
.L3140:
	movq	56(%rsp), %rdx
.L2925:
	movq	%rax, 360(%rsp)
	leaq	224(%rsp), %rcx
	movb	$0, (%rdx,%rax)
	movq	104(%r14), %rax
	movq	$0, 248(%rsp)
	movq	%rax, 232(%rsp)
	leaq	.LC21(%rip), %rax
	movq	%rax, 240(%rsp)
.LEHB304:
	call	_ZNK8pybind116detail8accessorINS0_17accessor_policies8str_attrEE9get_cacheEv
.LEHE304:
	movq	(%rax), %r15
	testq	%r15, %r15
	je	.L2927
	movq	8(%r15), %rdx
	movq	(%r15), %rax
	movq	%r15, %rbp
	movl	168(%rdx), %edx
	incq	%rax
	movq	%rax, (%r15)
	testl	$402653184, %edx
	jne	.L2928
.L2927:
	movq	%r15, %rcx
.LEHB305:
	call	*__imp_PyObject_Str(%rip)
.LEHE305:
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L2929
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB306:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE306:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB307:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L2929:
	xorl	%r8d, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_PyUnicodeUCS2_FromEncodedObject(%rip)
	decq	(%r12)
	movq	%rax, %rbp
	jne	.L2930
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.LEHE307:
	jmp	.L2930
.L3201:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2932
	.p2align 4,,10
	.p2align 3
.L2930:
	testq	%rbp, %rbp
	jne	.L2933
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB308:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE308:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB309:
	call	__cxa_throw
.LEHE309:
.L3200:
	movq	%rax, %r12
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L2932
	.p2align 4,,10
	.p2align 3
.L2933:
	testq	%r15, %r15
	jne	.L2935
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	168(%rdx), %edx
	jmp	.L2928
	.p2align 4,,10
	.p2align 3
.L2935:
	decq	(%r15)
	je	.L2936
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	168(%rdx), %edx
	jmp	.L2928
.L2936:
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movl	168(%rdx), %edx
.L2928:
	incq	%rax
	andl	$268435456, %edx
	movq	%rbp, %r15
	movq	%rax, 0(%rbp)
	je	.L2938
	jmp	.L2937
.L3199:
	movq	%rax, %r12
	vzeroupper
.L2932:
	testq	%r15, %r15
	je	.L2940
	decq	(%r15)
	jne	.L2940
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L2940:
	jmp	.L2942
	.p2align 4,,10
	.p2align 3
.L2937:
	movq	%rbp, %rcx
.LEHB310:
	call	*__imp_PyUnicodeUCS2_AsUTF8String(%rip)
.LEHE310:
	decq	0(%rbp)
	movq	%rax, %r15
	jne	.L2943
	movq	8(%rbp), %rax
	movq	%rbp, %rcx
	call	*48(%rax)
.L2943:
	testq	%r15, %r15
	jne	.L2938
	leaq	.LC9(%rip), %rcx
.LEHB311:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE311:
	.p2align 4,,10
	.p2align 3
.L2938:
	leaq	384(%rsp), %rax
	leaq	320(%rsp), %r12
	movq	%r15, %rcx
	movq	%rax, 64(%rsp)
	movq	%rax, %r8
	movq	%r12, %rdx
.LEHB312:
	call	*__imp_PyString_AsStringAndSize(%rip)
	testl	%eax, %eax
	je	.L2944
	leaq	.LC10(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L2944:
	movq	320(%rsp), %rbx
	movq	384(%rsp), %rsi
	leaq	272(%rsp), %rdi
	movq	%rdi, 256(%rsp)
	movq	%rbx, %rax
	addq	%rsi, %rax
	je	.L2945
	testq	%rbx, %rbx
	jne	.L2945
	leaq	.LC8(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L2945:
	movq	%rsi, 416(%rsp)
	cmpq	$15, %rsi
	jbe	.L2946
	leaq	416(%rsp), %rdx
	leaq	256(%rsp), %rcx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE312:
	movq	%rax, 256(%rsp)
	movq	%rax, %rcx
	movq	416(%rsp), %rax
	movq	%rax, 272(%rsp)
	jmp	.L2947
.L2946:
	cmpq	$1, %rsi
	jne	.L2948
	movzbl	(%rbx), %eax
	movb	%al, 272(%rsp)
	movq	%rdi, %rax
	jmp	.L2949
.L2948:
	testq	%rsi, %rsi
	je	.L3141
	movq	%rdi, %rcx
.L2947:
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	memcpy
	movq	416(%rsp), %rsi
	movq	256(%rsp), %rax
	jmp	.L2949
.L3329:
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L3108:
	testb	$64, 89(%r14)
	leaq	.LC69(%rip), %rax
	leaq	.LC68(%rip), %rsi
	cmove	%rax, %rsi
	leaq	144(%rsp), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, 128(%rsp)
	call	strlen
	movq	%rbx, %r8
	movq	%rsi, %rdx
	cmpl	$8, %eax
	jb	.L3120
	jmp	.L3328
.L3207:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L2953
.L3210:
	movq	%rax, %rbx
	movq	%rbp, %r15
	jmp	.L2955
.L3202:
	movq	%rax, %rbx
.L2955:
	decq	(%r15)
	jne	.L3342
	movq	8(%r15), %rax
	movq	%r15, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L2953
.L3342:
	vzeroupper
.L2953:
	jmp	.L2956
	.p2align 4,,10
	.p2align 3
.L3333:
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 176(%rsp)
	jmp	.L2958
.L2957:
	movq	%rcx, 160(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 176(%rsp)
.L2958:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 168(%rsp)
	movq	$0, 8(%rax)
	movq	%rdx, (%rax)
	movabsq	$4611686018427387903, %rax
	subq	168(%rsp), %rax
	cmpq	$7, %rax
	ja	.L2959
	leaq	.LC6(%rip), %rcx
.LEHB313:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2959:
	leaq	160(%rsp), %rcx
	movl	$8, %r8d
	leaq	.LC92(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE313:
	leaq	208(%rsp), %r14
	leaq	16(%rax), %rdx
	movq	%r14, 192(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2960
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 208(%rsp)
	jmp	.L2961
.L2960:
	movq	%rcx, 192(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 208(%rsp)
.L2961:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 200(%rsp)
	movq	%rdx, (%rax)
	movq	192(%rsp), %r9
	movq	$0, 8(%rax)
	movl	$15, %eax
	movq	200(%rsp), %rcx
	movq	264(%rsp), %r8
	cmpq	%r14, %r9
	movq	%rax, %r11
	cmovne	208(%rsp), %r11
	movq	256(%rsp), %r10
	leaq	(%rcx,%r8), %rdx
	cmpq	%r11, %rdx
	jbe	.L2963
	cmpq	%rdi, %r10
	cmovne	272(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L2963
	movq	%rcx, 32(%rsp)
	leaq	256(%rsp), %r10
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r10, %rcx
.LEHB314:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L2965
.L2963:
	leaq	192(%rsp), %rcx
	movq	%r10, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE314:
.L2965:
	leaq	304(%rsp), %rbx
	leaq	16(%rax), %rdx
	movq	%rbx, 288(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2966
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 304(%rsp)
	jmp	.L2967
.L2966:
	movq	%rcx, 288(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 304(%rsp)
.L2967:
	movq	8(%rax), %rcx
	movq	%rcx, 296(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, 296(%rsp)
	jne	.L2968
	leaq	.LC6(%rip), %rcx
.LEHB315:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2968:
	leaq	288(%rsp), %rcx
	movl	$1, %r8d
	leaq	.LC81(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE315:
	leaq	336(%rsp), %rsi
	leaq	16(%rax), %rdx
	movq	%rsi, 320(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2969
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 336(%rsp)
	jmp	.L2970
.L2969:
	movq	%rcx, 320(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 336(%rsp)
.L2970:
	movq	8(%rax), %rcx
	movq	%rcx, 328(%rsp)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	320(%rsp), %r9
	movq	$0, 8(%rax)
	movl	$15, %eax
	movq	328(%rsp), %rcx
	movq	360(%rsp), %r8
	cmpq	%rsi, %r9
	movq	%rax, %r11
	cmovne	336(%rsp), %r11
	movq	352(%rsp), %r10
	leaq	(%rcx,%r8), %rdx
	cmpq	%r11, %rdx
	jbe	.L2972
	cmpq	56(%rsp), %r10
	cmovne	368(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L2972
	movq	%rcx, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
.LEHB316:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L2974
.L2972:
	movq	%r10, %rdx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE316:
.L2974:
	leaq	400(%rsp), %r13
	leaq	16(%rax), %rdx
	movq	%r13, 384(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2975
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 400(%rsp)
	jmp	.L2976
.L2975:
	movq	%rcx, 384(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 400(%rsp)
.L2976:
	movq	8(%rax), %rcx
	movq	%rcx, 392(%rsp)
	movq	64(%rsp), %rcx
	movq	%rdx, (%rax)
	movq	96(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	104(%rsp), %r8
	movb	$0, 16(%rax)
.LEHB317:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE317:
	leaq	432(%rsp), %r15
	leaq	16(%rax), %rdx
	movq	%r15, 416(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2977
	vmovdqu	16(%rax), %xmm5
	vmovaps	%xmm5, 432(%rsp)
	jmp	.L2978
.L2977:
	movq	%rcx, 416(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 432(%rsp)
.L2978:
	movq	8(%rax), %rcx
	movq	%rcx, 424(%rsp)
	leaq	416(%rsp), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
.LEHB318:
	call	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE318:
	.p2align 4,,10
	.p2align 3
.L2920:
	movq	%rax, %r12
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L2920
	leaq	368(%rsp), %rax
	movq	%r14, 120(%r12)
	leaq	352(%rsp), %r13
	movq	%rax, 56(%rsp)
	movq	%rax, 352(%rsp)
	movzbl	1+_ZZN8pybind117options12global_stateEvE8instance(%rip), %eax
	movq	$0, 360(%rsp)
	movb	$0, 368(%rsp)
	testb	%al, %al
	jne	.L2979
.L2918:
	movb	$1, 80(%rsp)
	xorl	%ebp, %ebp
	movabsq	$4611686018427387903, %rsi
	leaq	352(%rsp), %rdi
	leaq	384(%rsp), %r13
	jmp	.L2980
	.p2align 4,,10
	.p2align 3
.L2979:
	movq	(%r14), %r15
	movq	%r15, %rcx
	call	strlen
	movq	%rax, %r8
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %r8
	jbe	.L2981
	leaq	.LC6(%rip), %rcx
.LEHB319:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2981:
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movabsq	$4611686018427387903, %rax
	subq	360(%rsp), %rax
	cmpq	$17, %rax
	ja	.L2982
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2982:
	movl	$18, %r8d
	leaq	.LC93(%rip), %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movabsq	$4611686018427387903, %rax
	subq	360(%rsp), %rax
	cmpq	$21, %rax
	ja	.L2983
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2983:
	movl	$22, %r8d
	leaq	.LC94(%rip), %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movzbl	1+_ZZN8pybind117options12global_stateEvE8instance(%rip), %eax
	jmp	.L2918
	.p2align 4,,10
	.p2align 3
.L3003:
	movzbl	1+_ZZN8pybind117options12global_stateEvE8instance(%rip), %eax
.L2980:
	testb	%al, %al
	je	.L2984
	testl	%ebp, %ebp
	je	.L2985
	cmpq	%rsi, 360(%rsp)
	jne	.L2986
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2986:
	movl	$1, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.L2985:
	testq	%r12, %r12
	je	.L2987
	incl	%ebp
	movl	$16, %r8d
	movq	%r13, %rcx
	movl	%ebp, 32(%rsp)
	leaq	.LC24(%rip), %r9
	leaq	_ZL9vsnprintfPcyPKcS_(%rip), %rdx
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.0
.LEHE319:
	movq	%rsi, %rax
	subq	392(%rsp), %rax
	cmpq	$1, %rax
	ja	.L2988
	leaq	.LC6(%rip), %rcx
.LEHB320:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2988:
	movl	$2, %r8d
	leaq	.LC95(%rip), %rdx
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE320:
	leaq	432(%rsp), %r15
	leaq	16(%rax), %rdx
	movq	%r15, 416(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L2989
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 432(%rsp)
	jmp	.L2990
	.p2align 4,,10
	.p2align 3
.L2989:
	movq	%rcx, 416(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 432(%rsp)
.L2990:
	movq	8(%rax), %rcx
	movq	%rcx, 424(%rsp)
	movq	%rdi, %rcx
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	416(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	424(%rsp), %r8
.LEHB321:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE321:
	movq	416(%rsp), %rcx
	cmpq	%r15, %rcx
	je	.L2991
	call	_ZdlPv
.L2991:
	movq	384(%rsp), %rcx
	leaq	400(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L2987
	call	_ZdlPv
.L2987:
	movq	(%r14), %r15
	movq	%r15, %rcx
	call	strlen
	movq	%rax, %r8
	movq	%rsi, %rax
	subq	360(%rsp), %rax
	cmpq	%rax, %r8
	jbe	.L2993
	leaq	.LC6(%rip), %rcx
.LEHB322:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2993:
	movq	%r15, %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	16(%rbx), %r15
	movq	%r15, %rcx
	call	strlen
	movq	%rax, %r8
	movq	%rsi, %rax
	subq	360(%rsp), %rax
	cmpq	%rax, %r8
	jbe	.L2994
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2994:
	movq	%r15, %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	cmpq	%rsi, 360(%rsp)
	jne	.L2995
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2995:
	movl	$1, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.L2984:
	movq	8(%rbx), %r15
	testq	%r15, %r15
	je	.L2996
	cmpb	$0, (%r15)
	je	.L2996
	cmpb	$0, _ZZN8pybind117options12global_stateEvE8instance(%rip)
	je	.L2996
	cmpb	$0, 1+_ZZN8pybind117options12global_stateEvE8instance(%rip)
	movq	360(%rsp), %r9
	jne	.L2997
	cmpb	$0, 80(%rsp)
	jne	.L3147
	cmpq	%rsi, %r9
	jne	.L2999
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L2999:
	movl	$1, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	cmpb	$0, 1+_ZZN8pybind117options12global_stateEvE8instance(%rip)
	movq	360(%rsp), %r9
	jne	.L2997
	movb	$0, 80(%rsp)
	movq	8(%rbx), %r15
	jmp	.L2998
	.p2align 4,,10
	.p2align 3
.L2997:
	cmpq	%rsi, %r9
	jne	.L3000
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L3000:
	movl	$1, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	8(%rbx), %r15
	movq	360(%rsp), %r9
	jmp	.L2998
	.p2align 4,,10
	.p2align 3
.L3147:
	movb	$0, 80(%rsp)
.L2998:
	movq	%r15, %rcx
	movq	%r9, 64(%rsp)
	call	strlen
	movq	64(%rsp), %r9
	movq	%rax, %r8
	movq	%rsi, %rax
	subq	%r9, %rax
	cmpq	%rax, %r8
	jbe	.L3001
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L3001:
	movq	%r15, %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	cmpb	$0, 1+_ZZN8pybind117options12global_stateEvE8instance(%rip)
	je	.L2996
	cmpq	%rsi, 360(%rsp)
	jne	.L3002
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L3002:
	movl	$1, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	.p2align 4,,10
	.p2align 3
.L2996:
	movq	120(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L3003
	movq	528(%rsp), %rax
	movq	(%rax), %r12
	movq	16(%r12), %rbx
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L3004
	call	free
	movq	16(%r12), %rbx
.L3004:
	movq	352(%rsp), %rcx
	call	strdup
	movq	%rax, 24(%rbx)
	testb	$64, 89(%r14)
	je	.L3005
	movq	528(%rsp), %rax
	movq	104(%r14), %r8
	xorl	%edx, %edx
	movq	(%rax), %rcx
	call	*__imp_PyMethod_New(%rip)
	movq	528(%rsp), %rdi
	movq	%rax, (%rdi)
	testq	%rax, %rax
	jne	.L3006
	leaq	.LC96(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L3006:
	decq	(%r12)
	jne	.L3005
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.LEHE322:
	.p2align 4,,10
	.p2align 3
.L3005:
	movq	352(%rsp), %rcx
	cmpq	56(%rsp), %rcx
	je	.L3007
	call	_ZdlPv
.L3007:
	movq	96(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L2698
	call	_ZdlPv
	jmp	.L2698
.L3150:
	movq	384(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	%r13, %rcx
	je	.L3343
	vzeroupper
	call	_ZdlPv
	jmp	.L3010
.L3343:
	vzeroupper
.L3010:
	jmp	.L2711
.L3149:
	movq	%rax, %rbx
	vzeroupper
.L2711:
	movq	320(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3012
	decq	(%rcx)
	jne	.L3012
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3012:
	jmp	.L3014
.L3148:
	movq	%rax, %rbx
	vzeroupper
.L3014:
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3016
	decq	(%rcx)
	jne	.L3016
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3016:
	movq	%rbx, %rcx
.LEHB323:
	call	_Unwind_Resume
.L3155:
	movq	416(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%r15, %rcx
	je	.L3344
	vzeroupper
	call	_ZdlPv
	jmp	.L3019
.L3344:
	vzeroupper
.L3019:
	jmp	.L3020
.L3154:
	movq	%rax, %r12
	vzeroupper
.L3020:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L3021
	call	_ZdlPv
.L3021:
	jmp	.L3022
.L3153:
	movq	%rax, %r12
	vzeroupper
.L3022:
	movq	352(%rsp), %rcx
	cmpq	56(%rsp), %rcx
	je	.L3023
	call	_ZdlPv
.L3023:
	jmp	.L3024
.L3152:
	movq	%rax, %r12
	vzeroupper
.L3024:
	movq	320(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L3025
	call	_ZdlPv
.L3025:
.L2740:
	movq	288(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L3026
	call	_ZdlPv
.L3026:
	jmp	.L3027
.L3151:
	movq	%rax, %r12
	vzeroupper
.L3027:
	movq	256(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L3028
	call	_ZdlPv
.L3028:
	movq	%r12, %rcx
	call	_Unwind_Resume
.LEHE323:
.L3158:
	movq	416(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%r15, %rcx
	je	.L3345
	vzeroupper
	call	_ZdlPv
	jmp	.L3030
.L3345:
	vzeroupper
.L3030:
	jmp	.L3031
.L3157:
	movq	%rax, %r12
	vzeroupper
.L3031:
	movq	384(%rsp), %rcx
	leaq	400(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L3032
	call	_ZdlPv
.L3032:
	jmp	.L2894
.L3163:
	movq	416(%rsp), %rcx
	movq	%rax, %rdi
	cmpq	%r15, %rcx
	je	.L3346
	vzeroupper
	call	_ZdlPv
	jmp	.L3034
.L3346:
	vzeroupper
.L3034:
	jmp	.L3035
.L3162:
	movq	%rax, %rdi
	vzeroupper
.L3035:
	movq	320(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L3036
	call	_ZdlPv
.L3036:
	movq	%rdi, %rsi
	jmp	.L3037
.L3161:
	movq	%rax, %rsi
	vzeroupper
.L3037:
	movq	288(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L3038
	call	_ZdlPv
.L3038:
	movq	%rsi, %rbx
	jmp	.L2795
.L3160:
	movq	%rax, %rbx
	vzeroupper
.L2795:
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3040
	decq	(%rcx)
	jne	.L3040
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3040:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L3042
	call	_ZdlPv
.L3042:
	jmp	.L2784
.L3159:
	movq	%rax, %rbx
	vzeroupper
.L2784:
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3044
	decq	(%rcx)
	jne	.L3044
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3044:
	movq	%rbx, %r12
	jmp	.L2894
.L3168:
	movq	416(%rsp), %rcx
	movq	%rax, %rdi
	cmpq	%r15, %rcx
	je	.L3347
	vzeroupper
	call	_ZdlPv
	jmp	.L3047
.L3347:
	vzeroupper
.L3047:
	jmp	.L3048
.L3167:
	movq	%rax, %rdi
	vzeroupper
.L3048:
	movq	320(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L3049
	call	_ZdlPv
.L3049:
	movq	%rdi, %rsi
	jmp	.L3050
.L3166:
	movq	%rax, %rsi
	vzeroupper
.L3050:
	movq	288(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L3051
	call	_ZdlPv
.L3051:
	movq	%rsi, %rbx
	jmp	.L2831
.L3165:
	movq	%rax, %rbx
	vzeroupper
.L2831:
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3053
	decq	(%rcx)
	jne	.L3053
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3053:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L3055
	call	_ZdlPv
.L3055:
	jmp	.L2825
.L3164:
	movq	%rax, %rbx
	vzeroupper
.L2825:
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3057
	decq	(%rcx)
	jne	.L3057
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3057:
	movq	%rbx, %r12
	jmp	.L2894
.L3169:
	movq	416(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%r15, %rcx
	je	.L3348
	vzeroupper
	call	_ZdlPv
	jmp	.L3060
.L3348:
	vzeroupper
.L3060:
	jmp	.L2894
.L3170:
	movq	%rax, %r12
	testq	%r13, %r13
	je	.L3349
	decq	0(%r13)
	jne	.L3350
	movq	8(%r13), %rax
	movq	%r13, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L3063
.L3349:
	vzeroupper
	jmp	.L3063
.L3350:
	vzeroupper
.L3063:
	jmp	.L2894
.L3173:
	movq	416(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%r15, %rcx
	je	.L3351
	vzeroupper
	call	_ZdlPv
	jmp	.L3066
.L3351:
	vzeroupper
.L3066:
	jmp	.L3067
.L3172:
	movq	%rax, %r12
	vzeroupper
.L3067:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L3068
	call	_ZdlPv
.L3068:
	jmp	.L3069
.L3171:
	movq	%rax, %r12
	vzeroupper
.L3069:
	movq	352(%rsp), %rcx
	cmpq	56(%rsp), %rcx
	je	.L3070
	call	_ZdlPv
.L3070:
	jmp	.L2894
.L3175:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2899
.L3176:
	movq	440(%rsp), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L3352
	decq	(%rcx)
	jne	.L3353
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L3073
.L3352:
	vzeroupper
	jmp	.L3073
.L3353:
	vzeroupper
.L3073:
	jmp	.L2899
.L3205:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2899
.L3206:
	movq	%rax, %r12
	vzeroupper
	jmp	.L2899
.L3174:
	movq	%rax, %r12
	testq	%r15, %r15
	je	.L3354
	decq	(%r15)
	jne	.L3355
	movq	8(%r15), %rax
	movq	%r15, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L2899
.L3354:
	vzeroupper
	jmp	.L2899
.L3355:
	vzeroupper
.L2899:
	decq	0(%r13)
	jne	.L3080
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.L3080:
	jmp	.L2894
.L3184:
	movq	416(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%r15, %rcx
	je	.L3356
	vzeroupper
	call	_ZdlPv
	jmp	.L3082
.L3356:
	vzeroupper
.L3082:
	jmp	.L3083
.L3183:
	movq	%rax, %r12
	vzeroupper
.L3083:
	movq	384(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L3084
	call	_ZdlPv
.L3084:
	jmp	.L3085
.L3182:
	movq	%rax, %r12
	vzeroupper
.L3085:
	movq	320(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L3086
	call	_ZdlPv
.L3086:
	movq	%r12, %rsi
	jmp	.L3087
.L3181:
	movq	%rax, %rsi
	vzeroupper
.L3087:
	movq	288(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L3088
	call	_ZdlPv
.L3088:
	movq	%rsi, %rbx
	jmp	.L3089
.L3180:
	movq	%rax, %rbx
	vzeroupper
.L3089:
	movq	192(%rsp), %rcx
	cmpq	%r14, %rcx
	je	.L3090
	call	_ZdlPv
.L3090:
	jmp	.L3091
.L3179:
	movq	%rax, %rbx
	vzeroupper
.L3091:
	movq	160(%rsp), %rcx
	cmpq	88(%rsp), %rcx
	je	.L3092
	call	_ZdlPv
.L3092:
	jmp	.L3093
.L3178:
	movq	%rax, %rbx
	vzeroupper
.L3093:
	movq	128(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L3094
	call	_ZdlPv
.L3094:
	movq	256(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L3095
	call	_ZdlPv
.L3095:
.L2956:
	decq	0(%rbp)
	jne	.L3096
	movq	8(%rbp), %rax
	movq	%rbp, %rcx
	call	*48(%rax)
.L3096:
	movq	%rbx, %r12
	jmp	.L2942
.L3177:
	movq	%rax, %r12
	vzeroupper
.L2942:
	movq	248(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3098
	decq	(%rcx)
	jne	.L3098
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3098:
	movq	352(%rsp), %rcx
	cmpq	56(%rsp), %rcx
	je	.L3100
	call	_ZdlPv
.L3100:
	jmp	.L2894
.L3187:
	movq	416(%rsp), %rcx
	movq	%rax, %r12
	cmpq	%r15, %rcx
	je	.L3357
	vzeroupper
	call	_ZdlPv
	jmp	.L3102
.L3357:
	vzeroupper
.L3102:
	jmp	.L3103
.L3186:
	movq	%rax, %r12
	vzeroupper
.L3103:
	movq	384(%rsp), %rcx
	leaq	400(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L3104
	call	_ZdlPv
.L3104:
	jmp	.L3105
.L3185:
	movq	%rax, %r12
	vzeroupper
.L3105:
	movq	352(%rsp), %rcx
	cmpq	56(%rsp), %rcx
	je	.L3106
	call	_ZdlPv
.L3106:
	jmp	.L2894
.L3156:
	movq	%rax, %r12
	vzeroupper
.L2894:
	movq	96(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	je	.L3107
	call	_ZdlPv
.L3107:
	movq	%r12, %rcx
.LEHB324:
	call	_Unwind_Resume
.LEHE324:
	.p2align 4,,10
	.p2align 3
.L3141:
	movq	%rdi, %rax
.L2949:
	movq	%rsi, 264(%rsp)
	movb	$0, (%rax,%rsi)
	decq	(%r15)
	jne	.L3108
	jmp	.L3329
.L3326:
	testq	%r13, %r13
	jne	.L3330
	jmp	.L2879
	.p2align 4,,10
	.p2align 3
.L2877:
	testq	%r13, %r13
	je	.L3112
	decq	0(%r13)
	je	.L3331
	jmp	.L3112
.L3330:
	decq	0(%r13)
	jne	.L2879
	jmp	.L3332
	.p2align 4,,10
	.p2align 3
.L3328:
	movl	%eax, %r9d
	movq	%rbx, %r10
	xorl	%edx, %edx
	andl	$-8, %r9d
.L3121:
	movl	%edx, %ecx
	addl	$8, %edx
	movq	(%rsi,%rcx), %r8
	movq	%r8, (%r10,%rcx)
	cmpl	%r9d, %edx
	jb	.L3121
	movq	80(%rsp), %rbx
	leaq	(%rbx,%rdx), %r8
	addq	%rsi, %rdx
.L3120:
	xorl	%ecx, %ecx
	testb	$4, %al
	je	.L3123
	movl	(%rdx), %ecx
	movl	%ecx, (%r8)
	movl	$4, %ecx
.L3123:
	testb	$2, %al
	je	.L3124
	movzwl	(%rdx,%rcx), %r9d
	movw	%r9w, (%r8,%rcx)
	addq	$2, %rcx
.L3124:
	testb	$1, %al
	je	.L3125
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%r8,%rcx)
.L3125:
	movq	%rax, 136(%rsp)
	leaq	128(%rsp), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movb	$0, 144(%rsp,%rax)
	leaq	.LC97(%rip), %r9
	movq	$108, 32(%rsp)
.LEHB325:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE325:
	leaq	176(%rsp), %rsi
	leaq	16(%rax), %rdx
	movq	%rsi, 160(%rsp)
	movq	(%rax), %rcx
	movq	%rsi, 88(%rsp)
	cmpq	%rdx, %rcx
	jne	.L2957
	jmp	.L3333
	.p2align 4,,10
	.p2align 3
.L2698:
	addq	$456, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA10946:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10946-.LLSDATTD10946
.LLSDATTD10946:
	.byte	0x1
	.uleb128 .LLSDACSE10946-.LLSDACSB10946
.LLSDACSB10946:
	.uleb128 .LEHB247-.LFB10946
	.uleb128 .LEHE247-.LEHB247
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB248-.LFB10946
	.uleb128 .LEHE248-.LEHB248
	.uleb128 .L3148-.LFB10946
	.uleb128 0
	.uleb128 .LEHB249-.LFB10946
	.uleb128 .LEHE249-.LEHB249
	.uleb128 .L3188-.LFB10946
	.uleb128 0
	.uleb128 .LEHB250-.LFB10946
	.uleb128 .LEHE250-.LEHB250
	.uleb128 .L3149-.LFB10946
	.uleb128 0
	.uleb128 .LEHB251-.LFB10946
	.uleb128 .LEHE251-.LEHB251
	.uleb128 .L3150-.LFB10946
	.uleb128 0
	.uleb128 .LEHB252-.LFB10946
	.uleb128 .LEHE252-.LEHB252
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB253-.LFB10946
	.uleb128 .LEHE253-.LEHB253
	.uleb128 .L3151-.LFB10946
	.uleb128 0
	.uleb128 .LEHB254-.LFB10946
	.uleb128 .LEHE254-.LEHB254
	.uleb128 .L3189-.LFB10946
	.uleb128 0
	.uleb128 .LEHB255-.LFB10946
	.uleb128 .LEHE255-.LEHB255
	.uleb128 .L3152-.LFB10946
	.uleb128 0
	.uleb128 .LEHB256-.LFB10946
	.uleb128 .LEHE256-.LEHB256
	.uleb128 .L3153-.LFB10946
	.uleb128 0
	.uleb128 .LEHB257-.LFB10946
	.uleb128 .LEHE257-.LEHB257
	.uleb128 .L3154-.LFB10946
	.uleb128 0
	.uleb128 .LEHB258-.LFB10946
	.uleb128 .LEHE258-.LEHB258
	.uleb128 .L3155-.LFB10946
	.uleb128 0
	.uleb128 .LEHB259-.LFB10946
	.uleb128 .LEHE259-.LEHB259
	.uleb128 .L3156-.LFB10946
	.uleb128 0
	.uleb128 .LEHB260-.LFB10946
	.uleb128 .LEHE260-.LEHB260
	.uleb128 .L3157-.LFB10946
	.uleb128 0
	.uleb128 .LEHB261-.LFB10946
	.uleb128 .LEHE261-.LEHB261
	.uleb128 .L3158-.LFB10946
	.uleb128 0
	.uleb128 .LEHB262-.LFB10946
	.uleb128 .LEHE262-.LEHB262
	.uleb128 .L3156-.LFB10946
	.uleb128 0
	.uleb128 .LEHB263-.LFB10946
	.uleb128 .LEHE263-.LEHB263
	.uleb128 .L3159-.LFB10946
	.uleb128 0
	.uleb128 .LEHB264-.LFB10946
	.uleb128 .LEHE264-.LEHB264
	.uleb128 .L3190-.LFB10946
	.uleb128 0
	.uleb128 .LEHB265-.LFB10946
	.uleb128 .LEHE265-.LEHB265
	.uleb128 .L3159-.LFB10946
	.uleb128 0
	.uleb128 .LEHB266-.LFB10946
	.uleb128 .LEHE266-.LEHB266
	.uleb128 .L3191-.LFB10946
	.uleb128 0
	.uleb128 .LEHB267-.LFB10946
	.uleb128 .LEHE267-.LEHB267
	.uleb128 .L3160-.LFB10946
	.uleb128 0
	.uleb128 .LEHB268-.LFB10946
	.uleb128 .LEHE268-.LEHB268
	.uleb128 .L3192-.LFB10946
	.uleb128 0
	.uleb128 .LEHB269-.LFB10946
	.uleb128 .LEHE269-.LEHB269
	.uleb128 .L3160-.LFB10946
	.uleb128 0
	.uleb128 .LEHB270-.LFB10946
	.uleb128 .LEHE270-.LEHB270
	.uleb128 .L3193-.LFB10946
	.uleb128 0
	.uleb128 .LEHB271-.LFB10946
	.uleb128 .LEHE271-.LEHB271
	.uleb128 .L3161-.LFB10946
	.uleb128 0
	.uleb128 .LEHB272-.LFB10946
	.uleb128 .LEHE272-.LEHB272
	.uleb128 .L3162-.LFB10946
	.uleb128 0
	.uleb128 .LEHB273-.LFB10946
	.uleb128 .LEHE273-.LEHB273
	.uleb128 .L3163-.LFB10946
	.uleb128 0
	.uleb128 .LEHB274-.LFB10946
	.uleb128 .LEHE274-.LEHB274
	.uleb128 .L3164-.LFB10946
	.uleb128 0
	.uleb128 .LEHB275-.LFB10946
	.uleb128 .LEHE275-.LEHB275
	.uleb128 .L3194-.LFB10946
	.uleb128 0
	.uleb128 .LEHB276-.LFB10946
	.uleb128 .LEHE276-.LEHB276
	.uleb128 .L3165-.LFB10946
	.uleb128 0
	.uleb128 .LEHB277-.LFB10946
	.uleb128 .LEHE277-.LEHB277
	.uleb128 .L3195-.LFB10946
	.uleb128 0
	.uleb128 .LEHB278-.LFB10946
	.uleb128 .LEHE278-.LEHB278
	.uleb128 .L3166-.LFB10946
	.uleb128 0
	.uleb128 .LEHB279-.LFB10946
	.uleb128 .LEHE279-.LEHB279
	.uleb128 .L3167-.LFB10946
	.uleb128 0
	.uleb128 .LEHB280-.LFB10946
	.uleb128 .LEHE280-.LEHB280
	.uleb128 .L3168-.LFB10946
	.uleb128 0
	.uleb128 .LEHB281-.LFB10946
	.uleb128 .LEHE281-.LEHB281
	.uleb128 .L3156-.LFB10946
	.uleb128 0
	.uleb128 .LEHB282-.LFB10946
	.uleb128 .LEHE282-.LEHB282
	.uleb128 .L3169-.LFB10946
	.uleb128 0
	.uleb128 .LEHB283-.LFB10946
	.uleb128 .LEHE283-.LEHB283
	.uleb128 .L3156-.LFB10946
	.uleb128 0
	.uleb128 .LEHB284-.LFB10946
	.uleb128 .LEHE284-.LEHB284
	.uleb128 .L3196-.LFB10946
	.uleb128 0x1
	.uleb128 .LEHB285-.LFB10946
	.uleb128 .LEHE285-.LEHB285
	.uleb128 .L3170-.LFB10946
	.uleb128 0
	.uleb128 .LEHB286-.LFB10946
	.uleb128 .LEHE286-.LEHB286
	.uleb128 .L3156-.LFB10946
	.uleb128 0
	.uleb128 .LEHB287-.LFB10946
	.uleb128 .LEHE287-.LEHB287
	.uleb128 .L3171-.LFB10946
	.uleb128 0
	.uleb128 .LEHB288-.LFB10946
	.uleb128 .LEHE288-.LEHB288
	.uleb128 .L3172-.LFB10946
	.uleb128 0
	.uleb128 .LEHB289-.LFB10946
	.uleb128 .LEHE289-.LEHB289
	.uleb128 .L3173-.LFB10946
	.uleb128 0
	.uleb128 .LEHB290-.LFB10946
	.uleb128 .LEHE290-.LEHB290
	.uleb128 .L3156-.LFB10946
	.uleb128 0
	.uleb128 .LEHB291-.LFB10946
	.uleb128 .LEHE291-.LEHB291
	.uleb128 .L3197-.LFB10946
	.uleb128 0
	.uleb128 .LEHB292-.LFB10946
	.uleb128 .LEHE292-.LEHB292
	.uleb128 .L3204-.LFB10946
	.uleb128 0
	.uleb128 .LEHB293-.LFB10946
	.uleb128 .LEHE293-.LEHB293
	.uleb128 .L3208-.LFB10946
	.uleb128 0
	.uleb128 .LEHB294-.LFB10946
	.uleb128 .LEHE294-.LEHB294
	.uleb128 .L3206-.LFB10946
	.uleb128 0
	.uleb128 .LEHB295-.LFB10946
	.uleb128 .LEHE295-.LEHB295
	.uleb128 .L3175-.LFB10946
	.uleb128 0
	.uleb128 .LEHB296-.LFB10946
	.uleb128 .LEHE296-.LEHB296
	.uleb128 .L3198-.LFB10946
	.uleb128 0
	.uleb128 .LEHB297-.LFB10946
	.uleb128 .LEHE297-.LEHB297
	.uleb128 .L3175-.LFB10946
	.uleb128 0
	.uleb128 .LEHB298-.LFB10946
	.uleb128 .LEHE298-.LEHB298
	.uleb128 .L3205-.LFB10946
	.uleb128 0
	.uleb128 .LEHB299-.LFB10946
	.uleb128 .LEHE299-.LEHB299
	.uleb128 .L3203-.LFB10946
	.uleb128 0
	.uleb128 .LEHB300-.LFB10946
	.uleb128 .LEHE300-.LEHB300
	.uleb128 .L3209-.LFB10946
	.uleb128 0
	.uleb128 .LEHB301-.LFB10946
	.uleb128 .LEHE301-.LEHB301
	.uleb128 .L3176-.LFB10946
	.uleb128 0
	.uleb128 .LEHB302-.LFB10946
	.uleb128 .LEHE302-.LEHB302
	.uleb128 .L3174-.LFB10946
	.uleb128 0
	.uleb128 .LEHB303-.LFB10946
	.uleb128 .LEHE303-.LEHB303
	.uleb128 .L3156-.LFB10946
	.uleb128 0
	.uleb128 .LEHB304-.LFB10946
	.uleb128 .LEHE304-.LEHB304
	.uleb128 .L3177-.LFB10946
	.uleb128 0
	.uleb128 .LEHB305-.LFB10946
	.uleb128 .LEHE305-.LEHB305
	.uleb128 .L3199-.LFB10946
	.uleb128 0
	.uleb128 .LEHB306-.LFB10946
	.uleb128 .LEHE306-.LEHB306
	.uleb128 .L3201-.LFB10946
	.uleb128 0
	.uleb128 .LEHB307-.LFB10946
	.uleb128 .LEHE307-.LEHB307
	.uleb128 .L3199-.LFB10946
	.uleb128 0
	.uleb128 .LEHB308-.LFB10946
	.uleb128 .LEHE308-.LEHB308
	.uleb128 .L3200-.LFB10946
	.uleb128 0
	.uleb128 .LEHB309-.LFB10946
	.uleb128 .LEHE309-.LEHB309
	.uleb128 .L3199-.LFB10946
	.uleb128 0
	.uleb128 .LEHB310-.LFB10946
	.uleb128 .LEHE310-.LEHB310
	.uleb128 .L3210-.LFB10946
	.uleb128 0
	.uleb128 .LEHB311-.LFB10946
	.uleb128 .LEHE311-.LEHB311
	.uleb128 .L3207-.LFB10946
	.uleb128 0
	.uleb128 .LEHB312-.LFB10946
	.uleb128 .LEHE312-.LEHB312
	.uleb128 .L3202-.LFB10946
	.uleb128 0
	.uleb128 .LEHB313-.LFB10946
	.uleb128 .LEHE313-.LEHB313
	.uleb128 .L3179-.LFB10946
	.uleb128 0
	.uleb128 .LEHB314-.LFB10946
	.uleb128 .LEHE314-.LEHB314
	.uleb128 .L3180-.LFB10946
	.uleb128 0
	.uleb128 .LEHB315-.LFB10946
	.uleb128 .LEHE315-.LEHB315
	.uleb128 .L3181-.LFB10946
	.uleb128 0
	.uleb128 .LEHB316-.LFB10946
	.uleb128 .LEHE316-.LEHB316
	.uleb128 .L3182-.LFB10946
	.uleb128 0
	.uleb128 .LEHB317-.LFB10946
	.uleb128 .LEHE317-.LEHB317
	.uleb128 .L3183-.LFB10946
	.uleb128 0
	.uleb128 .LEHB318-.LFB10946
	.uleb128 .LEHE318-.LEHB318
	.uleb128 .L3184-.LFB10946
	.uleb128 0
	.uleb128 .LEHB319-.LFB10946
	.uleb128 .LEHE319-.LEHB319
	.uleb128 .L3185-.LFB10946
	.uleb128 0
	.uleb128 .LEHB320-.LFB10946
	.uleb128 .LEHE320-.LEHB320
	.uleb128 .L3186-.LFB10946
	.uleb128 0
	.uleb128 .LEHB321-.LFB10946
	.uleb128 .LEHE321-.LEHB321
	.uleb128 .L3187-.LFB10946
	.uleb128 0
	.uleb128 .LEHB322-.LFB10946
	.uleb128 .LEHE322-.LEHB322
	.uleb128 .L3185-.LFB10946
	.uleb128 0
	.uleb128 .LEHB323-.LFB10946
	.uleb128 .LEHE323-.LEHB323
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB324-.LFB10946
	.uleb128 .LEHE324-.LEHB324
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB325-.LFB10946
	.uleb128 .LEHE325-.LEHB325
	.uleb128 .L3178-.LFB10946
	.uleb128 0
.LLSDACSE10946:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10946:
	.section	.text$_ZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoy,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC98:
	.ascii "loader_life_support: internal error\0"
	.section	.text$_ZN8pybind116detail19loader_life_supportD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind116detail19loader_life_supportD1Ev
	.def	_ZN8pybind116detail19loader_life_supportD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail19loader_life_supportD1Ev
_ZN8pybind116detail19loader_life_supportD1Ev:
.LFB10367:
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
	.seh_endprologue
	call	_ZN8pybind116detail13get_internalsEv
	movq	%rax, %rbx
	movq	408(%rax), %rax
	movq	400(%rbx), %r12
	cmpq	%rax, %r12
	jne	.L3359
	leaq	.LC98(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L3359:
	movq	-8(%rax), %rcx
	subq	$8, %rax
	movq	%rax, 408(%rbx)
	testq	%rcx, %rcx
	je	.L3360
	decq	(%rcx)
	jne	.L3360
	movq	8(%rcx), %rax
	call	*48(%rax)
	movq	400(%rbx), %r12
.L3360:
	movq	416(%rbx), %r8
	movq	%r8, %rcx
	subq	%r12, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$135, %rcx
	jbe	.L3358
	movq	408(%rbx), %rcx
	cmpq	%r12, %rcx
	je	.L3358
	movq	%rcx, %rsi
	xorl	%edx, %edx
	subq	%r12, %rsi
	movq	%rsi, %r9
	sarq	$3, %r9
	divq	%r9
	cmpq	$2, %rax
	jbe	.L3358
	cmpq	%rcx, %r8
	je	.L3358
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %r9
	jbe	.L3362
	leaq	.LC87(%rip), %rcx
.LEHB326:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L3362:
	movq	%rsi, %rcx
	call	_Znwy
.LEHE326:
	movq	%rsi, %r8
	movq	%rax, %rcx
	leaq	(%rax,%rsi), %rdi
	movq	%r12, %rdx
	call	memcpy
	movq	400(%rbx), %r8
	movq	%rdi, 416(%rbx)
	vmovq	%rax, %xmm1
	vpinsrq	$1, %rdi, %xmm1, %xmm0
	vmovups	%xmm0, 400(%rbx)
	testq	%r8, %r8
	jne	.L3363
	jmp	.L3358
.L3366:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L3358
	.p2align 4,,10
	.p2align 3
.L3363:
	movq	%r8, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L3358:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA10367:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10367-.LLSDATTD10367
.LLSDATTD10367:
	.byte	0x1
	.uleb128 .LLSDACSE10367-.LLSDACSB10367
.LLSDACSB10367:
	.uleb128 .LEHB326-.LFB10367
	.uleb128 .LEHE326-.LEHB326
	.uleb128 .L3366-.LFB10367
	.uleb128 0x1
.LLSDACSE10367:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10367:
	.section	.text$_ZN8pybind116detail19loader_life_supportD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC99:
	.ascii "Could not allocate weak reference!\0"
	.section	.text$_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject
	.def	_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject
_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject:
.LFB11168:
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
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rdx, %r13
	movq	%rcx, %r14
.LEHB327:
	call	_ZN8pybind116detail13get_internalsEv
	movl	$40, %ecx
	movq	%rax, %rbx
	call	_Znwy
	movq	64(%rbx), %r8
	xorl	%edx, %edx
	movq	$0, (%rax)
	movq	%rax, %r12
	movq	%r13, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	%r13, %rax
	divq	%r8
	movq	56(%rbx), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rdx, %r9
	leaq	0(,%rdx,8), %rdi
	testq	%rax, %rax
	je	.L3371
	movq	(%rax), %rsi
	movq	8(%rsi), %rcx
	.p2align 4,,10
	.p2align 3
.L3373:
	cmpq	%r13, %rcx
	je	.L3372
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.L3371
	movq	8(%rsi), %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%r8
	cmpq	%rdx, %r9
	je	.L3373
.L3371:
	movq	96(%rbx), %rax
	movq	80(%rbx), %r9
	leaq	88(%rbx), %rdx
	leaq	56(%rbx), %r15
	movq	$1, 32(%rsp)
	leaq	48(%rsp), %rcx
	movq	%rax, 72(%rsp)
	call	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy
.LEHE327:
	cmpb	$0, 48(%rsp)
	movq	56(%rsp), %rdx
	je	.L3374
	leaq	72(%rsp), %r8
	movq	%r15, %rcx
.LEHB328:
	call	_ZNSt10_HashtableIP11_typeobjectSt4pairIKS1_St6vectorIPN8pybind116detail9type_infoESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEyRKy
.LEHE328:
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	64(%rbx)
	leaq	0(,%rdx,8), %rdi
.L3374:
	movq	56(%rbx), %rcx
	addq	%rcx, %rdi
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L3375
	movq	(%rax), %rax
	movq	%rax, (%r12)
	movq	(%rdi), %rax
	movq	%r12, (%rax)
	jmp	.L3376
	.p2align 4,,10
	.p2align 3
.L3375:
	movq	72(%rbx), %rax
	movq	%rax, (%r12)
	movq	%r12, 72(%rbx)
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.L3377
	movq	8(%rax), %rax
	xorl	%edx, %edx
	divq	64(%rbx)
	movq	%r12, (%rcx,%rdx,8)
.L3377:
	leaq	72(%rbx), %rax
	movq	%rax, (%rdi)
.L3376:
	incq	80(%rbx)
	movq	%r12, (%r14)
	movb	$1, 8(%r14)
	movq	$0, 64(%rsp)
.LEHB329:
	call	_ZN8pybind1112cpp_function20make_function_recordEv.isra.0
	movq	%r13, 56(%rax)
	movq	%rax, %rdx
	leaq	64(%rsp), %rcx
	leaq	_ZZN8pybind1112cpp_function10initializeIZNS_6detail23all_type_info_get_cacheEP11_typeobjectEUlNS_6handleEE_vJS5_EJEEEvOT_PFT0_DpT1_EDpRKT2_ENUlRNS2_13function_callEE1_4_FUNESJ_(%rip), %rax
	movq	%rax, 48(%rdx)
	leaq	96(%rsp), %r9
	leaq	80(%rsp), %r8
	movabsq	$4480272566868867880, %rax
	movq	$1, 32(%rsp)
	movq	%rax, 80(%rsp)
	movl	$25966, %eax
	movq	$0, 88(%rsp)
	movw	%ax, 92(%rsp)
	leaq	_ZTIN8pybind116handleE(%rip), %rax
	movq	$0, 104(%rsp)
	movl	$1867414304, 88(%rsp)
	movb	$125, 94(%rsp)
	movq	%rax, 96(%rsp)
	call	_ZN8pybind1112cpp_function18initialize_genericEPNS_6detail15function_recordEPKcPKPKSt9type_infoy
.LEHE329:
	jmp	.L3413
.L3398:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	movq	16(%r12), %rcx
	testq	%rcx, %rcx
	je	.L3380
	call	_ZdlPv
.L3380:
	movq	%r12, %rcx
	call	_ZdlPv
.LEHB330:
	call	__cxa_rethrow
.LEHE330:
.L3397:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
.LEHB331:
	call	_Unwind_Resume
.LEHE331:
	.p2align 4,,10
	.p2align 3
.L3413:
	movq	64(%rsp), %rdx
	movq	%r13, %rcx
.LEHB332:
	call	*__imp_PyWeakref_NewRef(%rip)
.LEHE332:
	testq	%rax, %rax
	jne	.L3387
	jmp	.L3414
.L3399:
	movq	64(%rsp), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L3415
	decq	(%rcx)
	jne	.L3416
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L3385
.L3415:
	vzeroupper
	jmp	.L3385
.L3416:
	vzeroupper
.L3385:
	movq	%r12, %rcx
.LEHB333:
	call	_Unwind_Resume
.LEHE333:
.L3414:
	leaq	.LC99(%rip), %rcx
.LEHB334:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE334:
	.p2align 4,,10
	.p2align 3
.L3387:
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3370
	decq	(%rcx)
	jne	.L3370
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L3370
.L3396:
	movq	64(%rsp), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L3417
	decq	(%rcx)
	jne	.L3418
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L3393
.L3417:
	vzeroupper
	jmp	.L3393
.L3418:
	vzeroupper
.L3393:
	movq	%r12, %rcx
.LEHB335:
	call	_Unwind_Resume
.LEHE335:
	.p2align 4,,10
	.p2align 3
.L3372:
	movq	%r12, %rcx
	call	_ZdlPv
	movq	%rsi, (%r14)
	movb	$0, 8(%r14)
.L3370:
	movq	%r14, %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA11168:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11168-.LLSDATTD11168
.LLSDATTD11168:
	.byte	0x1
	.uleb128 .LLSDACSE11168-.LLSDACSB11168
.LLSDACSB11168:
	.uleb128 .LEHB327-.LFB11168
	.uleb128 .LEHE327-.LEHB327
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB328-.LFB11168
	.uleb128 .LEHE328-.LEHB328
	.uleb128 .L3398-.LFB11168
	.uleb128 0x1
	.uleb128 .LEHB329-.LFB11168
	.uleb128 .LEHE329-.LEHB329
	.uleb128 .L3399-.LFB11168
	.uleb128 0
	.uleb128 .LEHB330-.LFB11168
	.uleb128 .LEHE330-.LEHB330
	.uleb128 .L3397-.LFB11168
	.uleb128 0
	.uleb128 .LEHB331-.LFB11168
	.uleb128 .LEHE331-.LEHB331
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB332-.LFB11168
	.uleb128 .LEHE332-.LEHB332
	.uleb128 .L3396-.LFB11168
	.uleb128 0
	.uleb128 .LEHB333-.LFB11168
	.uleb128 .LEHE333-.LEHB333
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB334-.LFB11168
	.uleb128 .LEHE334-.LEHB334
	.uleb128 .L3396-.LFB11168
	.uleb128 0
	.uleb128 .LEHB335-.LFB11168
	.uleb128 .LEHE335-.LEHB335
	.uleb128 0
	.uleb128 0
.LLSDACSE11168:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11168:
	.section	.text$_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC100:
	.ascii "pybind11::detail::instance::get_value_and_holder: `\0"
	.align 8
.LC101:
	.ascii "' is not a pybind11 base of the given `\0"
.LC102:
	.ascii "' instance\0"
	.section	.text$_ZN8pybind116detail8instance20get_value_and_holderEPKNS0_9type_infoEb,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind116detail8instance20get_value_and_holderEPKNS0_9type_infoEb
	.def	_ZN8pybind116detail8instance20get_value_and_holderEPKNS0_9type_infoEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail8instance20get_value_and_holderEPKNS0_9type_infoEb
_ZN8pybind116detail8instance20get_value_and_holderEPKNS0_9type_infoEb:
.LFB10429:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$256, %rsp
	.seh_stackalloc	256
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%r8, %rsi
	movl	%r9d, %edi
	testq	%r8, %r8
	je	.L3420
	movq	8(%rdx), %r13
	cmpq	(%r8), %r13
	jne	.L3421
.L3420:
	movq	%rbx, (%r12)
	movq	$0, 8(%r12)
	movq	%rsi, 16(%r12)
	testb	$2, 48(%rbx)
	je	.L3422
	addq	$16, %rbx
	jmp	.L3423
	.p2align 4,,10
	.p2align 3
.L3422:
	movq	16(%rbx), %rbx
.L3423:
	movq	%rbx, 24(%r12)
	jmp	.L3419
	.p2align 4,,10
	.p2align 3
.L3421:
	leaq	48(%rsp), %rcx
	movq	%r13, %rdx
.LEHB336:
	call	_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject
	cmpb	$0, 56(%rsp)
	movq	48(%rsp), %rbp
	je	.L3425
	leaq	16(%rbp), %rdx
	movq	%r13, %rcx
	call	_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE
.L3425:
	movq	24(%rbp), %rcx
	movq	16(%rbp), %r8
	xorl	%eax, %eax
	cmpq	%r8, %rcx
	je	.L3426
	movq	(%r8), %rax
.L3426:
	testb	$2, 48(%rbx)
	je	.L3427
	subq	%r8, %rcx
	xorl	%edx, %edx
	leaq	16(%rbx), %r10
	sarq	$3, %rcx
	jne	.L3428
	jmp	.L3429
	.p2align 4,,10
	.p2align 3
.L3427:
	subq	%r8, %rcx
	movq	16(%rbx), %r10
	sarq	$3, %rcx
	je	.L3429
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L3433:
	cmpq	%rax, %rsi
	je	.L3430
	movq	(%r8,%rdx,8), %rax
	incq	%rdx
	movq	24(%rax), %rax
	leaq	8(%r10,%rax,8), %r10
	cmpq	%rdx, %rcx
	ja	.L3431
	jne	.L3476
	jmp	.L3429
	.p2align 4,,10
	.p2align 3
.L3431:
	movq	(%r8,%rdx,8), %rax
	jmp	.L3433
	.p2align 4,,10
	.p2align 3
.L3476:
	xorl	%eax, %eax
	jmp	.L3433
	.p2align 4,,10
	.p2align 3
.L3428:
	cmpq	%rax, %rsi
	je	.L3430
	incq	%rdx
	cmpq	%rcx, %rdx
	jnb	.L3434
	movq	(%r8,%rdx,8), %rax
	jmp	.L3428
	.p2align 4,,10
	.p2align 3
.L3434:
	je	.L3429
	xorl	%eax, %eax
	jmp	.L3428
	.p2align 4,,10
	.p2align 3
.L3494:
	movq	$0, (%r12)
	jmp	.L3419
	.p2align 4,,10
	.p2align 3
.L3472:
	movq	8(%rbx), %rax
	leaq	176(%rsp), %rbx
	leaq	160(%rsp), %r12
	movq	%rbx, 160(%rsp)
	movq	24(%rax), %r13
	testq	%r13, %r13
	jne	.L3436
	leaq	.LC8(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L3436:
	movq	%r13, %rcx
	call	strlen
	movq	%rax, 224(%rsp)
	movq	%rax, %rdi
	cmpq	$15, %rax
	jbe	.L3437
	movq	%r12, %rcx
	leaq	224(%rsp), %rdx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE336:
	movq	%rax, 160(%rsp)
	movq	%rax, %rcx
	movq	224(%rsp), %rax
	movq	%rax, 176(%rsp)
	jmp	.L3438
	.p2align 4,,10
	.p2align 3
.L3437:
	cmpq	$1, %rax
	jne	.L3439
	movzbl	0(%r13), %edx
	movb	%dl, 176(%rsp)
	movq	%rbx, %rdx
	jmp	.L3440
	.p2align 4,,10
	.p2align 3
.L3439:
	testq	%rax, %rax
	je	.L3477
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L3438:
	movq	%r13, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	224(%rsp), %rax
	movq	160(%rsp), %rdx
	jmp	.L3440
	.p2align 4,,10
	.p2align 3
.L3477:
	movq	%rbx, %rdx
.L3440:
	movq	%rax, 168(%rsp)
	leaq	64(%rsp), %r14
	movb	$0, (%rdx,%rax)
	movq	(%rsi), %rax
	leaq	80(%rsp), %rsi
	movq	%rsi, 64(%rsp)
	movq	24(%rax), %r13
	testq	%r13, %r13
	jne	.L3441
	leaq	.LC8(%rip), %rcx
.LEHB337:
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,10
	.p2align 3
.L3441:
	movq	%r13, %rcx
	call	strlen
	movq	%rax, 224(%rsp)
	movq	%rax, %rdi
	cmpq	$15, %rax
	jbe	.L3442
	leaq	224(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r14, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE337:
	movq	%rax, 64(%rsp)
	movq	%rax, %rcx
	movq	224(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.L3443
	.p2align 4,,10
	.p2align 3
.L3442:
	cmpq	$1, %rax
	jne	.L3444
	movzbl	0(%r13), %edx
	movb	%dl, 80(%rsp)
	movq	%rsi, %rdx
	jmp	.L3445
	.p2align 4,,10
	.p2align 3
.L3444:
	testq	%rax, %rax
	je	.L3478
	movq	%rsi, %rcx
	.p2align 4,,10
	.p2align 3
.L3443:
	movq	%r13, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	224(%rsp), %rax
	movq	64(%rsp), %rdx
	jmp	.L3445
	.p2align 4,,10
	.p2align 3
.L3478:
	movq	%rsi, %rdx
.L3445:
	movq	%rax, 72(%rsp)
	leaq	.LC100(%rip), %r9
	xorl	%r8d, %r8d
	movq	%r14, %rcx
	movb	$0, (%rdx,%rax)
	xorl	%edx, %edx
	movq	$51, 32(%rsp)
.LEHB338:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE338:
	leaq	112(%rsp), %rdi
	leaq	16(%rax), %rdx
	movq	%rdi, 96(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L3446
	vmovdqu	16(%rax), %xmm2
	vmovaps	%xmm2, 112(%rsp)
	jmp	.L3447
	.p2align 4,,10
	.p2align 3
.L3446:
	movq	%rcx, 96(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 112(%rsp)
.L3447:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 104(%rsp)
	movq	$0, 8(%rax)
	movq	%rdx, (%rax)
	movabsq	$4611686018427387903, %rax
	subq	104(%rsp), %rax
	cmpq	$38, %rax
	ja	.L3448
	leaq	.LC6(%rip), %rcx
.LEHB339:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L3448:
	leaq	96(%rsp), %rcx
	movl	$39, %r8d
	leaq	.LC101(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE339:
	leaq	144(%rsp), %rbp
	leaq	16(%rax), %rdx
	movq	%rbp, 128(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L3449
	vmovdqu	16(%rax), %xmm3
	vmovaps	%xmm3, 144(%rsp)
	jmp	.L3450
	.p2align 4,,10
	.p2align 3
.L3449:
	movq	%rcx, 128(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 144(%rsp)
.L3450:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 136(%rsp)
	movq	%rdx, (%rax)
	movq	128(%rsp), %r9
	movq	$0, 8(%rax)
	movl	$15, %eax
	movq	136(%rsp), %rcx
	movq	168(%rsp), %r8
	cmpq	%rbp, %r9
	movq	%rax, %r11
	cmovne	144(%rsp), %r11
	movq	160(%rsp), %r10
	leaq	(%rcx,%r8), %rdx
	cmpq	%r11, %rdx
	jbe	.L3452
	cmpq	%rbx, %r10
	cmovne	176(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L3452
	movq	%rcx, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r12, %rcx
.LEHB340:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	jmp	.L3454
	.p2align 4,,10
	.p2align 3
.L3452:
	leaq	128(%rsp), %rcx
	movq	%r10, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE340:
.L3454:
	leaq	208(%rsp), %r12
	leaq	16(%rax), %rdx
	movq	%r12, 192(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L3455
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 208(%rsp)
	jmp	.L3456
	.p2align 4,,10
	.p2align 3
.L3455:
	movq	%rcx, 192(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 208(%rsp)
.L3456:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 200(%rsp)
	movq	$0, 8(%rax)
	movq	%rdx, (%rax)
	movabsq	$4611686018427387903, %rax
	subq	200(%rsp), %rax
	cmpq	$9, %rax
	ja	.L3457
	leaq	.LC6(%rip), %rcx
.LEHB341:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L3457:
	leaq	192(%rsp), %rcx
	movl	$10, %r8d
	leaq	.LC102(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE341:
	leaq	240(%rsp), %r13
	leaq	16(%rax), %rdx
	movq	%r13, 224(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L3458
	vmovdqu	16(%rax), %xmm5
	vmovaps	%xmm5, 240(%rsp)
	jmp	.L3459
.L3458:
	movq	%rcx, 224(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 240(%rsp)
.L3459:
	movq	8(%rax), %rcx
	movq	%rcx, 232(%rsp)
	leaq	224(%rsp), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
.LEHB342:
	call	_ZN8pybind1113pybind11_failERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE342:
.L3486:
	movq	224(%rsp), %rcx
	movq	%rax, %r14
	cmpq	%r13, %rcx
	je	.L3495
	vzeroupper
	call	_ZdlPv
	jmp	.L3461
.L3495:
	vzeroupper
.L3461:
	jmp	.L3462
.L3485:
	movq	%rax, %r14
	vzeroupper
.L3462:
	movq	192(%rsp), %rcx
	cmpq	%r12, %rcx
	je	.L3463
	call	_ZdlPv
.L3463:
	movq	%r14, %r12
	jmp	.L3464
.L3484:
	movq	%rax, %r12
	vzeroupper
.L3464:
	movq	128(%rsp), %rcx
	cmpq	%rbp, %rcx
	je	.L3465
	call	_ZdlPv
.L3465:
	jmp	.L3466
.L3483:
	movq	%rax, %r12
	vzeroupper
.L3466:
	movq	96(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L3467
	call	_ZdlPv
.L3467:
	jmp	.L3468
.L3482:
	movq	%rax, %r12
	vzeroupper
.L3468:
	movq	64(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L3469
	call	_ZdlPv
.L3469:
	jmp	.L3470
.L3481:
	movq	%rax, %r12
	vzeroupper
.L3470:
	movq	160(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L3471
	call	_ZdlPv
.L3471:
	movq	%r12, %rcx
.LEHB343:
	call	_Unwind_Resume
.LEHE343:
	.p2align 4,,10
	.p2align 3
.L3430:
	vmovq	%rax, %xmm1
	movq	%rbx, (%r12)
	vpinsrq	$1, %r10, %xmm1, %xmm0
	movq	%rdx, 8(%r12)
	vmovups	%xmm0, 16(%r12)
	jmp	.L3419
	.p2align 4,,10
	.p2align 3
.L3429:
	testb	%dil, %dil
	je	.L3494
	jmp	.L3472
	.p2align 4,,10
	.p2align 3
.L3419:
	movq	%r12, %rax
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10429:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10429-.LLSDACSB10429
.LLSDACSB10429:
	.uleb128 .LEHB336-.LFB10429
	.uleb128 .LEHE336-.LEHB336
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB337-.LFB10429
	.uleb128 .LEHE337-.LEHB337
	.uleb128 .L3481-.LFB10429
	.uleb128 0
	.uleb128 .LEHB338-.LFB10429
	.uleb128 .LEHE338-.LEHB338
	.uleb128 .L3482-.LFB10429
	.uleb128 0
	.uleb128 .LEHB339-.LFB10429
	.uleb128 .LEHE339-.LEHB339
	.uleb128 .L3483-.LFB10429
	.uleb128 0
	.uleb128 .LEHB340-.LFB10429
	.uleb128 .LEHE340-.LEHB340
	.uleb128 .L3484-.LFB10429
	.uleb128 0
	.uleb128 .LEHB341-.LFB10429
	.uleb128 .LEHE341-.LEHB341
	.uleb128 .L3485-.LFB10429
	.uleb128 0
	.uleb128 .LEHB342-.LFB10429
	.uleb128 .LEHE342-.LEHB342
	.uleb128 .L3486-.LFB10429
	.uleb128 0
	.uleb128 .LEHB343-.LFB10429
	.uleb128 .LEHE343-.LEHB343
	.uleb128 0
	.uleb128 0
.LLSDACSE10429:
	.section	.text$_ZN8pybind116detail8instance20get_value_and_holderEPKNS0_9type_infoEb,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC103:
	.ascii "pybind11::detail::get_type_info: type has multiple pybind11-registered bases\0"
	.section	.text$_ZN8pybind116detail13get_type_infoEP11_typeobject,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail13get_type_infoEP11_typeobject
	.def	_ZN8pybind116detail13get_type_infoEP11_typeobject;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail13get_type_infoEP11_typeobject
_ZN8pybind116detail13get_type_infoEP11_typeobject:
.LFB10390:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %r12
	leaq	32(%rsp), %rcx
	movq	%r12, %rdx
	call	_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject
	cmpb	$0, 40(%rsp)
	movq	32(%rsp), %rbx
	jne	.L3502
.L3497:
	movq	24(%rbx), %rcx
	movq	16(%rbx), %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	sarq	$3, %rdx
	cmpq	%rcx, %rax
	je	.L3500
	cmpq	$1, %rdx
	ja	.L3503
	movq	(%rax), %rax
.L3501:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L3502:
	leaq	16(%rbx), %rdx
	movq	%r12, %rcx
	call	_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE
	jmp	.L3497
	.p2align 4,,10
	.p2align 3
.L3500:
	xorl	%eax, %eax
	jmp	.L3501
.L3503:
	leaq	.LC103(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	nop
	.seh_endproc
	.section	.text$_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E
	.def	_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E
_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E:
.LFB10838:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rdx), %rax
	movq	%rcx, 112(%rsp)
	movq	%rdx, %rsi
	movq	%r8, %rbp
	movq	%r9, %r15
	movq	336(%rax), %r13
	testq	%r13, %r13
	je	.L3505
	incq	0(%r13)
.L3505:
	movq	8(%r13), %rax
	leaq	24(%r13), %rbx
	testb	$2, 171(%rax)
	je	.L3507
	movq	24(%r13), %rbx
.L3507:
	movq	16(%r13), %rax
	leaq	(%rbx,%rax,8), %rdi
	cmpq	%rbx, %rdi
	je	.L3508
.L3514:
	movq	(%rbx), %rcx
.LEHB344:
	call	_ZN8pybind116detail13get_type_infoEP11_typeobject
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L3509
	movq	80(%rax), %rax
	movq	88(%r12), %rdx
	cmpq	%rax, %rdx
	je	.L3509
	movq	8(%rsi), %rcx
	.p2align 4,,10
	.p2align 3
.L3513:
	cmpq	%rcx, (%rax)
	jne	.L3510
	movq	112(%rsp), %rcx
	call	*8(%rax)
	movq	%rax, %r14
	cmpq	%rax, 112(%rsp)
	jne	.L3511
	.p2align 4,,10
	.p2align 3
.L3512:
	movq	%r15, %r9
	movq	%rbp, %r8
	movq	%r12, %rdx
	movq	%r14, %rcx
	call	_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E
	jmp	.L3509
	.p2align 4,,10
	.p2align 3
.L3511:
	movq	%rbp, %rdx
	movq	%rax, %rcx
	call	*%r15
.LEHE344:
	jmp	.L3512
	.p2align 4,,10
	.p2align 3
.L3510:
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L3513
.L3509:
	addq	$8, %rbx
	cmpq	%rbx, %rdi
	jne	.L3514
.L3508:
	decq	0(%r13)
	jne	.L3504
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
	jmp	.L3504
.L3518:
	decq	0(%r13)
	movq	%rax, %r12
	jne	.L3528
	movq	8(%r13), %rax
	movq	%r13, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L3517
.L3528:
	vzeroupper
.L3517:
	movq	%r12, %rcx
.LEHB345:
	call	_Unwind_Resume
	nop
.LEHE345:
	.p2align 4,,10
	.p2align 3
.L3504:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10838:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10838-.LLSDACSB10838
.LLSDACSB10838:
	.uleb128 .LEHB344-.LFB10838
	.uleb128 .LEHE344-.LEHB344
	.uleb128 .L3518-.LFB10838
	.uleb128 0
	.uleb128 .LEHB345-.LFB10838
	.uleb128 .LEHE345-.LEHB345
	.uleb128 0
	.uleb128 0
.LLSDACSE10838:
	.section	.text$_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC104:
	.ascii "instance allocation failed: new instance has no pybind11-registered base types\0"
	.section	.text$_ZN8pybind116detail8instance15allocate_layoutEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZN8pybind116detail8instance15allocate_layoutEv
	.def	_ZN8pybind116detail8instance15allocate_layoutEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail8instance15allocate_layoutEv
_ZN8pybind116detail8instance15allocate_layoutEv:
.LFB10430:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	8(%rcx), %r12
	movq	%r12, %rdx
	movq	%rcx, %rsi
	leaq	48(%rsp), %rcx
	call	_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject
	cmpb	$0, 56(%rsp)
	movq	48(%rsp), %rbx
	jne	.L3550
.L3530:
	movq	16(%rbx), %rax
	movq	24(%rbx), %r8
	subq	%rax, %r8
	sarq	$3, %r8
	je	.L3551
	cmpq	$1, %r8
	je	.L3532
	andb	$-3, 48(%rsi)
	decq	%r8
	movq	16(%rbx), %rcx
	movq	24(%rbx), %r9
	shrq	$3, %r8
	xorl	%ebx, %ebx
	incq	%r8
	cmpq	%r9, %rcx
	je	.L3534
.L3533:
	leaq	-8(%r9), %rbx
	movq	%rcx, %rax
	movabsq	$2305843009213693948, %rdx
	subq	%rcx, %rbx
	shrq	$3, %rbx
	leaq	1(%rbx), %r10
	andq	%rdx, %rbx
	je	.L3538
	movq	%r10, %rdx
	vmovdqa	.LC105(%rip), %ymm3
	vpxor	%xmm1, %xmm1, %xmm1
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	shrq	$2, %rdx
	salq	$5, %rdx
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L3539:
	vmovdqu	(%rax), %ymm5
	vmovdqa	%ymm2, %ymm4
	addq	$32, %rax
	vpgatherqq	%ymm4, 24(,%ymm5,1), %ymm0
	vpaddq	%ymm3, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm1, %ymm1
	cmpq	%rdx, %rax
	jne	.L3539
	vmovdqa	%xmm1, %xmm0
	vextracti128	$0x1, %ymm1, %xmm1
	movq	%r10, %rax
	vpaddq	%xmm1, %xmm0, %xmm1
	andq	$-4, %rax
	vpsrldq	$8, %xmm1, %xmm0
	leaq	(%rcx,%rax,8), %rcx
	vpaddq	%xmm0, %xmm1, %xmm1
	vmovq	%xmm1, %rbx
	cmpq	%rax, %r10
	je	.L3549
	vzeroupper
.L3538:
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	leaq	1(%rbx,%rax), %rbx
	leaq	8(%rcx), %rax
	cmpq	%rax, %r9
	je	.L3534
	movq	8(%rcx), %rax
	movq	24(%rax), %rax
	leaq	1(%rbx,%rax), %rbx
	leaq	16(%rcx), %rax
	cmpq	%rax, %r9
	je	.L3534
	movq	16(%rcx), %rax
	movq	24(%rax), %rax
	leaq	1(%rbx,%rax), %rbx
	leaq	24(%rcx), %rax
	cmpq	%rax, %r9
	je	.L3534
	movq	24(%rcx), %rax
	movq	24(%rax), %rax
	leaq	1(%rbx,%rax), %rbx
.L3534:
	movabsq	$1152921504606846975, %rax
	addq	%rbx, %r8
	cmpq	%rax, %r8
	jbe	.L3537
	movq	$0, 16(%rsi)
.L3542:
	movl	$8, %ecx
	call	__cxa_allocate_exception
	leaq	_ZNSt9bad_allocD1Ev(%rip), %r8
	leaq	_ZTISt9bad_alloc(%rip), %rdx
	movq	%rax, %rcx
	movq	.refptr._ZTVSt9bad_alloc(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rcx)
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L3532:
	movq	(%rax), %rax
	cmpq	$2, 24(%rax)
	ja	.L3535
	movzbl	48(%rsi), %eax
	movq	$0, 16(%rsi)
	andl	$-15, %eax
	orl	$2, %eax
	movb	%al, 48(%rsi)
	orb	$1, 48(%rsi)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L3550:
	leaq	16(%rbx), %rdx
	movq	%r12, %rcx
	call	_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE
	jmp	.L3530
	.p2align 4,,10
	.p2align 3
.L3535:
	andb	$-3, 48(%rsi)
	movq	16(%rbx), %rcx
	movq	24(%rbx), %r9
	cmpq	%r9, %rcx
	jne	.L3533
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L3537:
	salq	$3, %r8
	movq	%r8, %rcx
	movq	%r8, 40(%rsp)
	call	*__imp_PyMem_Malloc(%rip)
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 16(%rsi)
	movq	%rax, %rcx
	je	.L3542
	xorl	%edx, %edx
	call	memset
	orb	$1, 48(%rsi)
	movq	16(%rsi), %rax
	leaq	(%rax,%rbx,8), %rax
	movq	%rax, 24(%rsi)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L3549:
	vzeroupper
	jmp	.L3534
.L3551:
	leaq	.LC104(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	nop
	.seh_endproc
	.section	.text$pybind11_object_new,"x"
	.linkonce discard
	.p2align 4
	.globl	pybind11_object_new
	.def	pybind11_object_new;	.scl	2;	.type	32;	.endef
	.seh_proc	pybind11_object_new
pybind11_object_new:
.LFB10844:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%edx, %edx
	call	*304(%rcx)
	movq	%rax, %r12
	movq	%rax, %rcx
	call	_ZN8pybind116detail8instance15allocate_layoutEv
	orb	$1, 48(%r12)
	movq	%r12, %rax
	addq	$32, %rsp
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC106:
	.ascii "pybind11_object_dealloc(): Tried to deallocate unregistered instance!\0"
	.align 8
.LC107:
	.ascii "pos != internals.patients.end()\0"
	.section	.text$_ZN8pybind116detail14clear_instanceEP7_object,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind116detail14clear_instanceEP7_object
	.def	_ZN8pybind116detail14clear_instanceEP7_object;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind116detail14clear_instanceEP7_object
_ZN8pybind116detail14clear_instanceEP7_object:
.LFB10854:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$296, %rsp
	.seh_stackalloc	296
	.seh_endprologue
	movq	8(%rcx), %r12
	movq	%rcx, %r13
	leaq	224(%rsp), %rcx
	movq	%r12, %rdx
.LEHB346:
	call	_ZN8pybind116detail23all_type_info_get_cacheEP11_typeobject
	movq	224(%rsp), %rdi
	cmpb	$0, 232(%rsp)
	leaq	16(%rdi), %rsi
	je	.L3555
.L3554:
	leaq	16(%rdi), %rsi
	movq	%r12, %rcx
	movq	%rsi, %rdx
	call	_ZN8pybind116detail22all_type_info_populateEP11_typeobjectRSt6vectorIPNS0_9type_infoESaIS5_EE
.L3555:
	vmovq	%r13, %xmm1
	movq	16(%rdi), %rax
	xorl	%ebx, %ebx
	vpinsrq	$1, %rsi, %xmm1, %xmm0
	vmovaps	%xmm0, 240(%rsp)
	cmpq	%rax, 24(%rdi)
	je	.L3556
	movq	(%rax), %rbx
.L3556:
	movzbl	48(%r13), %ecx
	movq	%r13, 256(%rsp)
	leaq	16(%r13), %rdx
	movq	$0, 264(%rsp)
	shrb	%cl
	movq	%rbx, 272(%rsp)
	andl	$1, %ecx
	jne	.L3558
.L3557:
	movq	16(%r13), %rdx
.L3558:
	movq	%rdx, 280(%rsp)
	movq	16(%rdi), %r8
	movq	24(%rdi), %rax
	subq	%r8, %rax
	sarq	$3, %rax
	movq	%rax, 40(%rsp)
	je	.L3559
	leaq	_ZN8pybind116detail24deregister_instance_implEPvPNS0_8instanceE(%rip), %rdi
	xorl	%eax, %eax
	movq	%rdi, 176(%rsp)
	.p2align 4,,10
	.p2align 3
.L3701:
	movq	(%rdx), %r12
	testq	%r12, %r12
	je	.L3560
	movq	256(%rsp), %rcx
	movzbl	48(%rcx), %edx
	testb	$2, %dl
	je	.L3561
	shrb	$3, %dl
	andl	$1, %edx
	jmp	.L3562
	.p2align 4,,10
	.p2align 3
.L3561:
	movq	24(%rcx), %rdx
	movzbl	(%rdx,%rax), %edx
	andl	$2, %edx
	movzbl	%dl, %edx
.L3562:
	testl	%edx, %edx
	je	.L3563
	call	_ZN8pybind116detail13get_internalsEv
	xorl	%edx, %edx
	movq	120(%rax), %r9
	movq	%rax, %rdi
	movq	%r12, %rax
	movq	112(%rdi), %rbp
	divq	%r9
	movq	0(%rbp,%rdx,8), %rax
	movq	%rdx, %rsi
	testq	%rax, %rax
	je	.L3564
	movq	(%rax), %rcx
	movq	8(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L3566:
	cmpq	%r8, %r12
	je	.L3565
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L3907
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r9
	cmpq	%rdx, %rsi
	je	.L3566
	jmp	.L3564
	.p2align 4,,10
	.p2align 3
.L3568:
	movq	8(%r8), %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r9
	cmpq	%rsi, %rdx
	jne	.L3567
	cmpq	%r11, %r12
	jne	.L3567
	movq	(%r8), %r8
	testq	%r8, %r8
	jne	.L3568
	jmp	.L3569
	.p2align 4,,10
	.p2align 3
.L3567:
	cmpq	%r8, %rcx
	je	.L3564
.L3730:
	movq	8(%r13), %rdx
	.p2align 4,,10
	.p2align 3
.L3577:
	movq	16(%rcx), %rax
	cmpq	8(%rax), %rdx
	jne	.L3570
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	divq	%r9
	leaq	0(%rbp,%rdx,8), %rsi
	movq	%rdx, %r11
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L3571:
	movq	%rax, %r8
	movq	(%rax), %rax
	cmpq	%rcx, %rax
	jne	.L3571
	cmpq	%r8, %rdx
	jne	.L3572
	testq	%r10, %r10
	je	.L3732
	movq	8(%r10), %rax
	xorl	%edx, %edx
	divq	%r9
	cmpq	%rdx, %r11
	je	.L3574
	movq	%r8, 0(%rbp,%rdx,8)
	movq	(%rsi), %rax
	jmp	.L3573
	.p2align 4,,10
	.p2align 3
.L3732:
	movq	%r8, %rax
.L3573:
	leaq	128(%rdi), %rdx
	cmpq	%rdx, %rax
	jne	.L3575
	movq	%r10, 128(%rdi)
.L3575:
	movq	$0, (%rsi)
	movq	(%rcx), %r10
	jmp	.L3574
	.p2align 4,,10
	.p2align 3
.L3572:
	testq	%r10, %r10
	je	.L3574
	movq	8(%r10), %rax
	xorl	%edx, %edx
	divq	%r9
	cmpq	%rdx, %r11
	je	.L3574
	movq	%r8, 0(%rbp,%rdx,8)
	movq	(%rcx), %r10
.L3574:
	movq	%r10, (%r8)
	movl	$1, %r14d
	call	_ZdlPv
	decq	136(%rdi)
	testb	$2, 136(%rbx)
	je	.L3576
	jmp	.L3563
	.p2align 4,,10
	.p2align 3
.L3570:
	cmpq	%r10, %r8
	je	.L3908
	movq	%r10, %rcx
	movq	(%r10), %r10
	jmp	.L3577
	.p2align 4,,10
	.p2align 3
.L3907:
	jmp	.L3564
	.p2align 4,,10
	.p2align 3
.L3908:
.L3564:
	movzbl	136(%rbx), %r14d
	shrb	%r14b
	andl	$1, %r14d
	je	.L3576
.L3694:
	leaq	.LC106(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE346:
	.p2align 4,,10
	.p2align 3
.L3576:
	movq	(%rbx), %rax
	movq	336(%rax), %r15
	testq	%r15, %r15
	je	.L3578
	incq	(%r15)
.L3578:
	movq	8(%r15), %rdx
	leaq	24(%r15), %rax
	testb	$2, 171(%rdx)
	je	.L3580
	movq	24(%r15), %rax
.L3580:
	movq	16(%r15), %rdx
	movq	%rax, %rbp
	leaq	(%rax,%rdx,8), %rdi
	movq	%rdi, 64(%rsp)
	cmpq	%rdi, %rax
	jne	.L3691
.L3692:
	decq	(%r15)
	jne	.L3582
	jmp	.L3903
	.p2align 4,,10
	.p2align 3
.L3691:
	movq	0(%rbp), %rcx
.LEHB347:
	call	_ZN8pybind116detail13get_type_infoEP11_typeobject
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L3585
	movq	80(%rax), %rax
	movq	88(%rdi), %rdx
	cmpq	%rdx, %rax
	je	.L3585
	movq	8(%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L3690:
	cmpq	%rcx, (%rax)
	jne	.L3587
	movq	%r12, %rcx
	call	*8(%rax)
	movq	%rax, 128(%rsp)
	movq	%rax, %rsi
	cmpq	%rax, %r12
	je	.L3588
	call	_ZN8pybind116detail13get_internalsEv
.LEHE347:
	movq	120(%rax), %r10
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	xorl	%edx, %edx
	movq	%rsi, %rax
	movq	112(%rcx), %rcx
	movq	%rsi, 128(%rsp)
	movq	%rsi, %r9
	divq	%r10
	movq	%rcx, 48(%rsp)
	movq	(%rcx,%rdx,8), %rax
	movq	%rdx, %rsi
	testq	%rax, %rax
	je	.L3588
	movq	(%rax), %rcx
	movq	8(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L3591:
	cmpq	%r8, %r9
	je	.L3590
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L3909
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r10
	cmpq	%rdx, %rsi
	je	.L3591
	jmp	.L3588
	.p2align 4,,10
	.p2align 3
.L3920:
	movq	%rcx, 56(%rsp)
	movq	128(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L3593:
	movq	8(%r9), %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r10
	cmpq	%rsi, %rdx
	jne	.L3592
	cmpq	%r11, %rcx
	jne	.L3592
	movq	(%r9), %r9
	testq	%r9, %r9
	jne	.L3593
	movq	56(%rsp), %rcx
	jmp	.L3594
	.p2align 4,,10
	.p2align 3
.L3592:
	movq	56(%rsp), %rcx
	cmpq	%r9, %rcx
	je	.L3588
.L3729:
	movq	8(%r13), %rdx
	.p2align 4,,10
	.p2align 3
.L3602:
	movq	16(%rcx), %rax
	cmpq	8(%rax), %rdx
	jne	.L3595
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	divq	%r10
	movq	48(%rsp), %rax
	leaq	(%rax,%rdx,8), %rsi
	movq	%rdx, %r11
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L3596:
	movq	%rax, %r9
	movq	(%rax), %rax
	cmpq	%rcx, %rax
	jne	.L3596
	cmpq	%r9, %rdx
	jne	.L3597
	testq	%r8, %r8
	je	.L3733
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L3599
	movq	48(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%rsi), %rax
	jmp	.L3598
.L3733:
	movq	%r9, %rax
.L3598:
	movq	72(%rsp), %rdx
	subq	$-128, %rdx
	cmpq	%rdx, %rax
	jne	.L3600
	movq	72(%rsp), %rax
	movq	%r8, 128(%rax)
.L3600:
	movq	$0, (%rsi)
	movq	(%rcx), %r8
	jmp	.L3599
	.p2align 4,,10
	.p2align 3
.L3597:
	testq	%r8, %r8
	je	.L3599
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L3599
	movq	48(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%rcx), %r8
.L3599:
	movq	%r8, (%r9)
	call	_ZdlPv
	movq	72(%rsp), %rax
	decq	136(%rax)
	jmp	.L3588
	.p2align 4,,10
	.p2align 3
.L3595:
	cmpq	%r8, %r9
	je	.L3910
	movq	%r8, %rcx
	movq	(%r8), %r8
	jmp	.L3602
	.p2align 4,,10
	.p2align 3
.L3909:
	jmp	.L3588
	.p2align 4,,10
	.p2align 3
.L3910:
.L3588:
	movq	(%rdi), %rax
	movq	336(%rax), %rax
	movq	%rax, 88(%rsp)
	testq	%rax, %rax
	je	.L3603
	incq	(%rax)
.L3603:
	movq	88(%rsp), %rsi
	movq	8(%rsi), %rdx
	leaq	24(%rsi), %rax
	testb	$2, 171(%rdx)
	je	.L3605
	movq	24(%rsi), %rax
.L3605:
	movq	88(%rsp), %rsi
	movq	%rax, 48(%rsp)
	movq	16(%rsi), %rdx
	leaq	(%rax,%rdx,8), %rsi
	movq	%rsi, 80(%rsp)
	cmpq	%rsi, %rax
	jne	.L3686
.L3687:
	movq	88(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 48(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L3585
	jmp	.L3904
	.p2align 4,,10
	.p2align 3
.L3686:
	movq	48(%rsp), %rax
	movq	(%rax), %rcx
.LEHB348:
	call	_ZN8pybind116detail13get_type_infoEP11_typeobject
	movq	%rax, 72(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L3609
	movq	80(%rax), %rax
	movq	88(%rsi), %rdx
	cmpq	%rdx, %rax
	je	.L3609
	movq	8(%rdi), %rcx
	.p2align 4,,10
	.p2align 3
.L3685:
	cmpq	%rcx, (%rax)
	jne	.L3611
	movq	128(%rsp), %rsi
	movq	%rsi, %rcx
	call	*8(%rax)
	movq	%rsi, %rcx
	movq	%rax, 152(%rsp)
	movq	%rax, %rsi
	cmpq	%rax, %rcx
	je	.L3612
	call	_ZN8pybind116detail13get_internalsEv
.LEHE348:
	movq	120(%rax), %r10
	movq	%rax, %rcx
	movq	%rax, 96(%rsp)
	xorl	%edx, %edx
	movq	%rsi, %rax
	movq	%rsi, 152(%rsp)
	movq	%rsi, %r9
	divq	%r10
	movq	%rdx, %rsi
	movq	112(%rcx), %rdx
	movq	(%rdx,%rsi,8), %rax
	movq	%rdx, 56(%rsp)
	testq	%rax, %rax
	je	.L3612
	movq	(%rax), %rcx
	movq	8(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L3615:
	cmpq	%r8, %r9
	je	.L3614
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L3911
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r10
	cmpq	%rdx, %rsi
	je	.L3615
	jmp	.L3612
	.p2align 4,,10
	.p2align 3
.L3919:
	movq	%rcx, 104(%rsp)
	movq	152(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L3617:
	movq	8(%r9), %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r10
	cmpq	%rsi, %rdx
	jne	.L3616
	cmpq	%r11, %rcx
	jne	.L3616
	movq	(%r9), %r9
	testq	%r9, %r9
	jne	.L3617
	movq	104(%rsp), %rcx
	jmp	.L3618
	.p2align 4,,10
	.p2align 3
.L3616:
	movq	104(%rsp), %rcx
	cmpq	%r9, %rcx
	je	.L3612
.L3728:
	movq	8(%r13), %rdx
	.p2align 4,,10
	.p2align 3
.L3626:
	movq	16(%rcx), %rax
	cmpq	8(%rax), %rdx
	jne	.L3619
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	divq	%r10
	movq	56(%rsp), %rax
	leaq	(%rax,%rdx,8), %rsi
	movq	%rdx, %r11
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L3620:
	movq	%rax, %r9
	movq	(%rax), %rax
	cmpq	%rcx, %rax
	jne	.L3620
	cmpq	%r9, %rdx
	jne	.L3621
	testq	%r8, %r8
	je	.L3734
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L3623
	movq	56(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%rsi), %rdx
	jmp	.L3622
.L3734:
	movq	%r9, %rdx
.L3622:
	movq	96(%rsp), %rax
	subq	$-128, %rax
	cmpq	%rax, %rdx
	jne	.L3624
	movq	96(%rsp), %rax
	movq	%r8, 128(%rax)
.L3624:
	movq	$0, (%rsi)
	movq	(%rcx), %r8
	jmp	.L3623
	.p2align 4,,10
	.p2align 3
.L3621:
	testq	%r8, %r8
	je	.L3623
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L3623
	movq	56(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%rcx), %r8
.L3623:
	movq	%r8, (%r9)
	call	_ZdlPv
	movq	96(%rsp), %rax
	decq	136(%rax)
	jmp	.L3612
	.p2align 4,,10
	.p2align 3
.L3619:
	cmpq	%r8, %r9
	je	.L3912
	movq	%r8, %rcx
	movq	(%r8), %r8
	jmp	.L3626
	.p2align 4,,10
	.p2align 3
.L3911:
	jmp	.L3612
	.p2align 4,,10
	.p2align 3
.L3912:
.L3612:
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	movq	336(%rax), %rax
	movq	%rax, 112(%rsp)
	testq	%rax, %rax
	je	.L3627
	incq	(%rax)
.L3627:
	movq	112(%rsp), %rsi
	movq	8(%rsi), %rdx
	leaq	24(%rsi), %rax
	testb	$2, 171(%rdx)
	je	.L3629
	movq	24(%rsi), %rax
.L3629:
	movq	112(%rsp), %rsi
	movq	%rax, 56(%rsp)
	movq	16(%rsi), %rdx
	leaq	(%rax,%rdx,8), %rsi
	movq	%rsi, 120(%rsp)
	cmpq	%rsi, %rax
	jne	.L3681
.L3682:
	movq	112(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 56(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L3609
	jmp	.L3905
	.p2align 4,,10
	.p2align 3
.L3681:
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
.LEHB349:
	call	_ZN8pybind116detail13get_type_infoEP11_typeobject
	movq	%rax, 96(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L3633
	movq	80(%rax), %rax
	movq	88(%rsi), %rdx
	cmpq	%rdx, %rax
	je	.L3633
	movq	72(%rsp), %rsi
	movq	8(%rsi), %rcx
	.p2align 4,,10
	.p2align 3
.L3680:
	cmpq	%rcx, (%rax)
	jne	.L3635
	movq	152(%rsp), %rsi
	movq	%rsi, %rcx
	call	*8(%rax)
	movq	%rsi, %rdx
	movq	%rax, 160(%rsp)
	movq	%rax, %rsi
	cmpq	%rax, %rdx
	je	.L3636
	call	_ZN8pybind116detail13get_internalsEv
.LEHE349:
	movq	120(%rax), %r10
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rsi, %r9
	movq	%rax, 136(%rsp)
	movq	%rsi, %rax
	divq	%r10
	movq	%rsi, 160(%rsp)
	movq	%rdx, %rsi
	movq	112(%rcx), %rdx
	movq	(%rdx,%rsi,8), %rax
	movq	%rdx, 104(%rsp)
	testq	%rax, %rax
	je	.L3636
	movq	(%rax), %rcx
	movq	8(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L3639:
	cmpq	%r8, %r9
	je	.L3638
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L3913
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r10
	cmpq	%rdx, %rsi
	je	.L3639
	jmp	.L3636
	.p2align 4,,10
	.p2align 3
.L3918:
	movq	%rcx, 144(%rsp)
	movq	160(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L3641:
	movq	8(%r9), %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r10
	cmpq	%rsi, %rdx
	jne	.L3640
	cmpq	%r11, %rcx
	jne	.L3640
	movq	(%r9), %r9
	testq	%r9, %r9
	jne	.L3641
	movq	144(%rsp), %rcx
	jmp	.L3642
	.p2align 4,,10
	.p2align 3
.L3640:
	movq	144(%rsp), %rcx
	cmpq	%r9, %rcx
	je	.L3636
.L3727:
	movq	8(%r13), %rdx
	.p2align 4,,10
	.p2align 3
.L3650:
	movq	16(%rcx), %rax
	cmpq	8(%rax), %rdx
	jne	.L3643
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	divq	%r10
	movq	104(%rsp), %rax
	leaq	(%rax,%rdx,8), %rsi
	movq	%rdx, %r11
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L3644:
	movq	%rax, %r9
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jne	.L3644
	cmpq	%r9, %rdx
	jne	.L3645
	testq	%r8, %r8
	je	.L3735
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L3647
	movq	104(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%rsi), %rdx
	jmp	.L3646
.L3735:
	movq	%r9, %rdx
.L3646:
	movq	136(%rsp), %rax
	subq	$-128, %rax
	cmpq	%rax, %rdx
	jne	.L3648
	movq	136(%rsp), %rax
	movq	%r8, 128(%rax)
.L3648:
	movq	$0, (%rsi)
	movq	(%rcx), %r8
	jmp	.L3647
	.p2align 4,,10
	.p2align 3
.L3645:
	testq	%r8, %r8
	je	.L3647
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, %r11
	je	.L3647
	movq	104(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%rcx), %r8
.L3647:
	movq	%r8, (%r9)
	call	_ZdlPv
	movq	136(%rsp), %rax
	decq	136(%rax)
	jmp	.L3636
	.p2align 4,,10
	.p2align 3
.L3643:
	cmpq	%r8, %r9
	je	.L3914
	movq	%r8, %rcx
	movq	(%r8), %r8
	jmp	.L3650
	.p2align 4,,10
	.p2align 3
.L3913:
	jmp	.L3636
	.p2align 4,,10
	.p2align 3
.L3914:
.L3636:
	movq	96(%rsp), %rax
	movq	(%rax), %rax
	movq	336(%rax), %rax
	movq	%rax, 144(%rsp)
	testq	%rax, %rax
	je	.L3651
	incq	(%rax)
.L3651:
	movq	144(%rsp), %rcx
	movq	8(%rcx), %rax
	leaq	24(%rcx), %rsi
	testb	$2, 171(%rax)
	je	.L3653
	movq	24(%rcx), %rsi
.L3653:
	movq	144(%rsp), %rax
	movq	16(%rax), %rax
	leaq	(%rsi,%rax,8), %rax
	movq	%rax, 136(%rsp)
	cmpq	%rax, %rsi
	jne	.L3657
.L3658:
	movq	144(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 96(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L3633
	jmp	.L3906
	.p2align 4,,10
	.p2align 3
.L3657:
	movq	(%rsi), %rcx
.LEHB350:
	call	_ZN8pybind116detail13get_type_infoEP11_typeobject
	movq	%rax, 104(%rsp)
	testq	%rax, %rax
	jne	.L3656
.L3659:
	addq	$8, %rsi
	cmpq	%rsi, 136(%rsp)
	jne	.L3657
	jmp	.L3658
	.p2align 4,,10
	.p2align 3
.L3656:
	movq	%rax, %rcx
	movq	80(%rax), %rax
	movq	88(%rcx), %rdx
	cmpq	%rdx, %rax
	je	.L3659
	movq	96(%rsp), %rcx
	movq	8(%rcx), %rcx
	.p2align 4,,10
	.p2align 3
.L3676:
	cmpq	%rcx, (%rax)
	jne	.L3660
	movq	160(%rsp), %rcx
	call	*8(%rax)
	movq	%rax, 168(%rsp)
	cmpq	%rax, 160(%rsp)
	je	.L3661
	call	_ZN8pybind116detail13get_internalsEv
	movq	120(%rax), %r10
	movq	%rax, %rcx
	movq	%rax, 200(%rsp)
	xorl	%edx, %edx
	movq	168(%rsp), %rax
	movq	112(%rcx), %rcx
	divq	%r10
	movq	%rcx, 184(%rsp)
	movq	(%rcx,%rdx,8), %rax
	movq	%rdx, 192(%rsp)
	testq	%rax, %rax
	je	.L3661
	movq	(%rax), %rcx
	movq	168(%rsp), %r9
	movq	%rdx, %r11
	movq	8(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L3664:
	cmpq	%r8, %r9
	je	.L3663
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L3915
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r10
	cmpq	%rdx, %r11
	je	.L3664
	jmp	.L3661
	.p2align 4,,10
	.p2align 3
.L3917:
	movq	%r8, 208(%rsp)
	movq	192(%rsp), %r8
	movq	%rcx, 216(%rsp)
	movq	168(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L3666:
	movq	8(%r9), %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	divq	%r10
	cmpq	%r8, %rdx
	jne	.L3665
	cmpq	%r11, %rcx
	jne	.L3665
	movq	(%r9), %r9
	testq	%r9, %r9
	jne	.L3666
	movq	208(%rsp), %r8
	movq	216(%rsp), %rcx
	jmp	.L3667
	.p2align 4,,10
	.p2align 3
.L3665:
	movq	216(%rsp), %rcx
	movq	208(%rsp), %r8
	cmpq	%r9, %rcx
	je	.L3661
.L3726:
	movq	8(%r13), %rdx
	.p2align 4,,10
	.p2align 3
.L3675:
	movq	16(%rcx), %rax
	cmpq	8(%rax), %rdx
	jne	.L3668
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	divq	%r10
	movq	184(%rsp), %rax
	leaq	(%rax,%rdx,8), %r11
	movq	%rdx, 192(%rsp)
	movq	(%r11), %rdx
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L3669:
	movq	%rax, %r9
	movq	(%rax), %rax
	cmpq	%rcx, %rax
	jne	.L3669
	cmpq	%r9, %rdx
	jne	.L3670
	testq	%r8, %r8
	je	.L3736
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, 192(%rsp)
	je	.L3672
	movq	184(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%r11), %rdx
	jmp	.L3671
.L3736:
	movq	%r9, %rdx
.L3671:
	movq	200(%rsp), %rax
	subq	$-128, %rax
	cmpq	%rax, %rdx
	jne	.L3673
	movq	200(%rsp), %rax
	movq	%r8, 128(%rax)
.L3673:
	movq	$0, (%r11)
	movq	(%rcx), %r8
	jmp	.L3672
.L3670:
	testq	%r8, %r8
	je	.L3672
	movq	8(%r8), %rax
	xorl	%edx, %edx
	divq	%r10
	cmpq	%rdx, 192(%rsp)
	je	.L3672
	movq	184(%rsp), %rax
	movq	%r9, (%rax,%rdx,8)
	movq	(%rcx), %r8
.L3672:
	movq	%r8, (%r9)
	call	_ZdlPv
	movq	200(%rsp), %rax
	decq	136(%rax)
	jmp	.L3661
	.p2align 4,,10
	.p2align 3
.L3668:
	cmpq	%r8, %r9
	je	.L3916
	movq	%r8, %rcx
	movq	(%r8), %r8
	jmp	.L3675
.L3915:
	jmp	.L3661
	.p2align 4,,10
	.p2align 3
.L3916:
.L3661:
	movq	176(%rsp), %r9
	movq	104(%rsp), %rdx
	movq	%r13, %r8
	movq	168(%rsp), %rcx
	call	_ZN8pybind116detail21traverse_offset_basesEPvPKNS0_9type_infoEPNS0_8instanceEPFbS1_S6_E
.LEHE350:
	jmp	.L3659
	.p2align 4,,10
	.p2align 3
.L3660:
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L3676
	jmp	.L3659
	.p2align 4,,10
	.p2align 3
.L3906:
	movq	8(%rsi), %rax
	movq	%rsi, %rcx
	call	*48(%rax)
	jmp	.L3633
.L3746:
	movq	144(%rsp), %rbx
	movq	%rax, %r12
	movq	(%rbx), %rax
	movq	%rax, 40(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	jne	.L3922
	movq	8(%rbx), %rax
	movq	%rbx, %rcx
	vzeroupper
	call	*48(%rax)
	jmp	.L3678
.L3922:
	vzeroupper
.L3678:
	jmp	.L3679
	.p2align 4,,10
	.p2align 3
.L3635:
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L3680
.L3633:
	addq	$8, 56(%rsp)
	movq	56(%rsp), %rax
	cmpq	%rax, 120(%rsp)
	jne	.L3681
	jmp	.L3682
	.p2align 4,,10
	.p2align 3
.L3905:
	movq	8(%rsi), %rax
	movq	%rsi, %rcx
	call	*48(%rax)
	jmp	.L3609
.L3745:
	movq	%rax, %r12
	vzeroupper
.L3679:
	movq	112(%rsp), %rbx
	movq	(%rbx), %rax
	movq	%rax, 40(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	jne	.L3683
	movq	8(%rbx), %rax
	movq	%rbx, %rcx
	call	*48(%rax)
.L3683:
	jmp	.L3684
	.p2align 4,,10
	.p2align 3
.L3611:
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L3685
.L3609:
	addq	$8, 48(%rsp)
	movq	48(%rsp), %rax
	cmpq	%rax, 80(%rsp)
	jne	.L3686
	jmp	.L3687
	.p2align 4,,10
	.p2align 3
.L3904:
	movq	8(%rdi), %rax
	movq	%rdi, %rcx
	call	*48(%rax)
	jmp	.L3585
.L3744:
	movq	%rax, %r12
	vzeroupper
.L3684:
	movq	88(%rsp), %rbx
	movq	(%rbx), %rax
	movq	%rax, 40(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	jne	.L3688
	movq	8(%rbx), %rax
	movq	%rbx, %rcx
	call	*48(%rax)
.L3688:
	jmp	.L3689
	.p2align 4,,10
	.p2align 3
.L3587:
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L3690
.L3585:
	addq	$8, %rbp
	cmpq	%rbp, 64(%rsp)
	jne	.L3691
	jmp	.L3692
	.p2align 4,,10
	.p2align 3
.L3903:
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
	jmp	.L3582
.L3743:
	movq	%rax, %r12
	vzeroupper
.L3689:
	decq	(%r15)
	jne	.L3693
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L3693:
	movq	%r12, %rcx
.LEHB351:
	call	_Unwind_Resume
	.p2align 4,,10
	.p2align 3
.L3582:
	testb	%r14b, %r14b
	je	.L3694
.L3563:
	testb	$1, 48(%r13)
	jne	.L3695
	movq	256(%rsp), %rdx
	movzbl	48(%rdx), %eax
	testb	$2, %al
	je	.L3696
	shrb	$2, %al
	andl	$1, %eax
	jmp	.L3697
	.p2align 4,,10
	.p2align 3
.L3696:
	movq	24(%rdx), %rdx
	movq	264(%rsp), %rax
	movzbl	(%rdx,%rax), %eax
	andl	$1, %eax
.L3697:
	testl	%eax, %eax
	jne	.L3695
	movq	240(%rsp), %rax
	movq	248(%rsp), %rsi
	movzbl	48(%rax), %ecx
	movq	(%rsi), %r8
	movq	264(%rsp), %rax
	shrb	%cl
	andl	$1, %ecx
	jmp	.L3560
	.p2align 4,,10
	.p2align 3
.L3695:
	movq	272(%rsp), %rax
	leaq	256(%rsp), %rcx
	call	*48(%rax)
	movq	240(%rsp), %rax
	movq	248(%rsp), %rsi
	movzbl	48(%rax), %ecx
	movq	(%rsi), %r8
	movq	264(%rsp), %rax
	shrb	%cl
	andl	$1, %ecx
.L3560:
	testb	%cl, %cl
	jne	.L3698
	movq	(%r8,%rax,8), %rdx
	movq	24(%rdx), %rdx
	leaq	8(,%rdx,8), %rdx
	addq	%rdx, 280(%rsp)
	movq	(%rsi), %r8
.L3698:
	movq	8(%rsi), %rdx
	incq	%rax
	movq	%rax, 264(%rsp)
	subq	%r8, %rdx
	sarq	$3, %rdx
	cmpq	%rdx, %rax
	jnb	.L3699
	movq	(%r8,%rax,8), %rbx
	movq	%rbx, 272(%rsp)
	cmpq	%rax, 40(%rsp)
	jne	.L3700
	jmp	.L3559
	.p2align 4,,10
	.p2align 3
.L3699:
	movq	$0, 272(%rsp)
	cmpq	%rax, 40(%rsp)
	je	.L3559
	xorl	%ebx, %ebx
.L3700:
	movq	280(%rsp), %rdx
	jmp	.L3701
	.p2align 4,,10
	.p2align 3
.L3559:
	movq	%r13, %rcx
	call	_ZN8pybind116detail8instance17deallocate_layoutEv
	cmpq	$0, 40(%r13)
	je	.L3702
	movq	%r13, %rcx
	call	*__imp_PyObject_ClearWeakRefs(%rip)
.L3702:
	movq	%r13, %rcx
	call	*__imp__PyObject_GetDictPtr(%rip)
	testq	%rax, %rax
	je	.L3704
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L3704
	movq	$0, (%rax)
	decq	(%rcx)
	jne	.L3704
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3704:
	testb	$16, 48(%r13)
	je	.L3553
	call	_ZN8pybind116detail13get_internalsEv
	xorl	%edx, %edx
	movq	288(%rax), %r9
	movq	%rax, %rbx
	movq	%r13, %rax
	movq	280(%rbx), %r11
	divq	%r9
	movq	(%r11,%rdx,8), %rax
	movq	%rdx, %r10
	testq	%rax, %rax
	je	.L3707
	movq	(%rax), %rcx
	movq	8(%rcx), %r8
	.p2align 4,,10
	.p2align 3
.L3709:
	cmpq	%r8, %r13
	je	.L3708
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L3707
	movq	8(%rcx), %r8
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%r9
	cmpq	%rdx, %r10
	je	.L3709
.L3707:
	movl	$305, %r8d
	leaq	.LC45(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	call	*__imp__assert(%rip)
.LEHE351:
	movq	16, %rax
	ud2
	.p2align 4,,10
	.p2align 3
.L3725:
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	16(%rcx), %r12
	movq	$0, 32(%rcx)
	movq	24(%rcx), %rsi
	divq	%r9
	vmovups	%xmm0, 16(%rcx)
	leaq	(%r11,%rdx,8), %rbp
	movq	%rdx, %rdi
	movq	0(%rbp), %rdx
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L3710:
	movq	%rax, %r8
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jne	.L3710
	movq	(%rcx), %r10
	cmpq	%r8, %rdx
	jne	.L3711
	testq	%r10, %r10
	je	.L3737
	movq	8(%r10), %rax
	xorl	%edx, %edx
	divq	%r9
	cmpq	%rdx, %rdi
	je	.L3713
	movq	%r8, (%r11,%rdx,8)
	movq	0(%rbp), %rax
	jmp	.L3712
.L3737:
	movq	%r8, %rax
.L3712:
	leaq	296(%rbx), %rdx
	cmpq	%rdx, %rax
	jne	.L3714
	movq	%r10, 296(%rbx)
.L3714:
	movq	$0, 0(%rbp)
	movq	(%rcx), %r10
	jmp	.L3713
	.p2align 4,,10
	.p2align 3
.L3711:
	testq	%r10, %r10
	je	.L3713
	movq	8(%r10), %rax
	xorl	%edx, %edx
	divq	%r9
	cmpq	%rdx, %rdi
	je	.L3713
	movq	%r8, (%r11,%rdx,8)
	movq	(%rcx), %r10
.L3713:
	movq	%r10, (%r8)
	call	_ZdlPv
	decq	304(%rbx)
	movq	%r12, %rbx
	andb	$-17, 48(%r13)
	cmpq	%rsi, %r12
	jne	.L3718
	.p2align 4,,10
	.p2align 3
.L3719:
	testq	%r12, %r12
	jne	.L3716
	jmp	.L3553
	.p2align 4,,10
	.p2align 3
.L3718:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L3717
.L3720:
	addq	$8, %rbx
	cmpq	%rbx, %rsi
	jne	.L3718
	jmp	.L3719
	.p2align 4,,10
	.p2align 3
.L3717:
	movq	$0, (%rbx)
	decq	(%rcx)
	jne	.L3720
	movq	8(%rcx), %rax
.LEHB352:
	call	*48(%rax)
.LEHE352:
	jmp	.L3720
	.p2align 4,,10
	.p2align 3
.L3716:
	movq	%r12, %rcx
	call	_ZdlPv
	jmp	.L3553
.L3747:
	movq	%rax, %r13
	testq	%r12, %r12
	je	.L3923
	movq	%r12, %rcx
	vzeroupper
	call	_ZdlPv
	jmp	.L3723
.L3923:
	vzeroupper
.L3723:
	movq	%r13, %rcx
.LEHB353:
	call	_Unwind_Resume
.LEHE353:
	.p2align 4,,10
	.p2align 3
.L3663:
	movq	(%rcx), %r8
	movq	%r8, %r9
	testq	%r8, %r8
	jne	.L3917
	jmp	.L3667
	.p2align 4,,10
	.p2align 3
.L3638:
	movq	(%rcx), %r8
	movq	%r8, %r9
	testq	%r8, %r8
	jne	.L3918
	jmp	.L3642
	.p2align 4,,10
	.p2align 3
.L3614:
	movq	(%rcx), %r8
	movq	%r8, %r9
	testq	%r8, %r8
	jne	.L3919
	jmp	.L3618
	.p2align 4,,10
	.p2align 3
.L3590:
	movq	(%rcx), %r8
	movq	%r8, %r9
	testq	%r8, %r8
	jne	.L3920
	jmp	.L3594
	.p2align 4,,10
	.p2align 3
.L3565:
	movq	(%rcx), %r10
	movq	%r10, %r8
	testq	%r10, %r10
	jne	.L3568
	jmp	.L3569
	.p2align 4,,10
	.p2align 3
.L3708:
	testq	%rcx, %rcx
	jne	.L3725
	jmp	.L3707
	.p2align 4,,10
	.p2align 3
.L3667:
	xorl	%r9d, %r9d
	jmp	.L3726
.L3642:
	xorl	%r9d, %r9d
	jmp	.L3727
	.p2align 4,,10
	.p2align 3
.L3618:
	xorl	%r9d, %r9d
	jmp	.L3728
	.p2align 4,,10
	.p2align 3
.L3594:
	xorl	%r9d, %r9d
	jmp	.L3729
	.p2align 4,,10
	.p2align 3
.L3569:
	xorl	%r8d, %r8d
	jmp	.L3730
	.p2align 4,,10
	.p2align 3
.L3553:
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10854:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10854-.LLSDACSB10854
.LLSDACSB10854:
	.uleb128 .LEHB346-.LFB10854
	.uleb128 .LEHE346-.LEHB346
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB347-.LFB10854
	.uleb128 .LEHE347-.LEHB347
	.uleb128 .L3743-.LFB10854
	.uleb128 0
	.uleb128 .LEHB348-.LFB10854
	.uleb128 .LEHE348-.LEHB348
	.uleb128 .L3744-.LFB10854
	.uleb128 0
	.uleb128 .LEHB349-.LFB10854
	.uleb128 .LEHE349-.LEHB349
	.uleb128 .L3745-.LFB10854
	.uleb128 0
	.uleb128 .LEHB350-.LFB10854
	.uleb128 .LEHE350-.LEHB350
	.uleb128 .L3746-.LFB10854
	.uleb128 0
	.uleb128 .LEHB351-.LFB10854
	.uleb128 .LEHE351-.LEHB351
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB352-.LFB10854
	.uleb128 .LEHE352-.LEHB352
	.uleb128 .L3747-.LFB10854
	.uleb128 0
	.uleb128 .LEHB353-.LFB10854
	.uleb128 .LEHE353-.LEHB353
	.uleb128 0
	.uleb128 0
.LLSDACSE10854:
	.section	.text$_ZN8pybind116detail14clear_instanceEP7_object,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$pybind11_object_dealloc,"x"
	.linkonce discard
	.p2align 4
	.globl	pybind11_object_dealloc
	.def	pybind11_object_dealloc;	.scl	2;	.type	32;	.endef
	.seh_proc	pybind11_object_dealloc
pybind11_object_dealloc:
.LFB10855:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r12
	call	_ZN8pybind116detail14clear_instanceEP7_object
	movq	8(%r12), %r13
	movq	%r12, %rcx
	call	*320(%r13)
	call	_ZN8pybind116detail13get_internalsEv
	movq	448(%rax), %rax
	movq	48(%rax), %rax
	cmpq	%rax, 48(%r13)
	je	.L3929
.L3928:
	addq	$40, %rsp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L3929:
	decq	0(%r13)
	jne	.L3928
	movq	8(%r13), %rax
	movq	%r13, %rcx
	movq	48(%rax), %rax
	addq	$40, %rsp
	popq	%r12
	popq	%r13
	rex.W jmp	*%rax
	.seh_endproc
	.section .rdata,"dr"
.LC108:
	.ascii "constructor\0"
.LC109:
	.ascii "function\0"
	.align 8
.LC110:
	.ascii "__init__(self, ...) called with invalid `self` argument\0"
	.align 8
.LC111:
	.ascii "Could not allocate dict object!\0"
	.align 8
.LC112:
	.ascii "Internal error: function call dispatcher inserted wrong number of arguments!\0"
.LC113:
	.ascii "(): incompatible \0"
	.align 8
.LC114:
	.ascii " arguments. The following argument types are supported:\12\0"
.LC115:
	.ascii "    \0"
.LC116:
	.ascii ", \0"
.LC117:
	.ascii " -> \0"
.LC118:
	.ascii "\12Invoked with: \0"
.LC119:
	.ascii "; \0"
.LC120:
	.ascii "kwargs: \0"
.LC121:
	.ascii "{}={!r}\0"
.LC122:
	.ascii "format\0"
.LC123:
	.ascii "std::\0"
	.align 8
.LC124:
	.ascii "\12\12Did you forget to `#include <pybind11/stl.h>`? Or <pybind11/complex.h>,\12<pybind11/functional.h>, <pybind11/chrono.h>, etc. Some automatic\12conversions are optional and require extra headers to be included\12when compiling your pybind11 module.\0"
	.align 8
.LC125:
	.ascii "Unable to convert function return value to a Python type! The signature was\12\11\0"
	.align 8
.LC126:
	.ascii "Exception escaped from default exception translator!\0"
	.section	.text$_ZN8pybind1112cpp_function10dispatcherEP7_objectS2_S2_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZN8pybind1112cpp_function10dispatcherEP7_objectS2_S2_
	.def	_ZN8pybind1112cpp_function10dispatcherEP7_objectS2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8pybind1112cpp_function10dispatcherEP7_objectS2_S2_
_ZN8pybind1112cpp_function10dispatcherEP7_objectS2_S2_:
.LFB10957:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$616, %rsp
	.seh_stackalloc	616
	.seh_endprologue
	movq	%rdx, %r15
	movq	%r8, %r14
	xorl	%edx, %edx
.LEHB354:
	call	*__imp_PyCapsule_GetPointer(%rip)
	movq	16(%r15), %r12
	movq	$0, 64(%rsp)
	movq	%rax, 72(%rsp)
	testq	%r12, %r12
	je	.L3931
	movq	24(%r15), %rax
	movq	%rax, 64(%rsp)
.L3931:
	movq	72(%rsp), %rax
	movq	$0, 320(%rsp)
	testb	$1, 89(%rax)
	je	.L3932
	movq	104(%rax), %rcx
	call	_ZN8pybind116detail13get_type_infoEP11_typeobject
	movq	64(%rsp), %rdx
	leaq	176(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	call	_ZN8pybind116detail8instance20get_value_and_holderEPKNS0_9type_infoEb
	movq	192(%rsp), %rax
	vmovdqu	176(%rsp), %xmm5
	movq	%rax, 336(%rsp)
	movq	%rax, %rdx
	movq	200(%rsp), %rax
	vmovaps	%xmm5, 320(%rsp)
	movq	%rax, 344(%rsp)
	testq	%rdx, %rdx
	je	.L3933
	movq	320(%rsp), %rdx
	testq	%rdx, %rdx
	jne	.L3934
.L3933:
	movq	__imp_PyExc_TypeError(%rip), %rax
	leaq	.LC110(%rip), %rdx
	movq	(%rax), %rcx
	call	*__imp_PyErr_SetString(%rip)
.LEHE354:
	movq	$0, 56(%rsp)
	jmp	.L3930
.L3934:
	movzbl	48(%rdx), %eax
	testb	$2, %al
	je	.L3936
	shrb	$3, %al
	andl	$1, %eax
	jmp	.L3937
.L3936:
	movq	24(%rdx), %rdx
	movq	328(%rsp), %rax
	movzbl	(%rdx,%rax), %eax
	andl	$2, %eax
	movzbl	%al, %eax
.L3937:
	testl	%eax, %eax
	je	.L3932
	movq	__imp__Py_NoneStruct(%rip), %r14
	incq	(%r14)
	movq	%r14, 56(%rsp)
	jmp	.L3930
	.p2align 4,,10
	.p2align 3
.L3932:
	movq	72(%rsp), %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 432(%rsp)
	vmovaps	%xmm0, 416(%rsp)
	movq	120(%rbx), %rax
	movq	%rax, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L4109:
	movzbl	89(%rbx), %eax
	movzwl	90(%rbx), %edi
	movl	%eax, %esi
	shrb	$5, %sil
	andl	$1, %esi
	testb	$16, %al
	je	.L3938
	xorl	$1, %esi
	movzbl	%sil, %esi
	leaq	-2(%rdi,%rsi), %rsi
.L3940:
	cmpq	%rsi, %r12
	jnb	.L3942
	movq	32(%rbx), %rax
	subq	24(%rbx), %rax
	sarq	$5, %rax
	cmpq	%rax, %rsi
	ja	.L4127
.L3942:
	movq	64(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, 496(%rsp)
	movq	$0, 504(%rsp)
	movq	$0, 512(%rsp)
	movq	$0, 520(%rsp)
	movq	$0, 528(%rsp)
	movl	$0, 536(%rsp)
	movq	$0, 544(%rsp)
	movl	$0, 552(%rsp)
	movq	$0, 576(%rsp)
	movq	%rax, 584(%rsp)
	movq	$0, 592(%rsp)
	vmovaps	%xmm0, 560(%rsp)
	testq	%rdi, %rdi
	je	.L3943
	salq	$3, %rdi
	movq	%rdi, %rcx
	vzeroupper
.LEHB355:
	call	_Znwy
	movq	512(%rsp), %r9
	movq	504(%rsp), %rcx
	movq	%rax, %rbp
	cmpq	%rcx, %r9
	jne	.L3944
.L3951:
	testq	%rcx, %rcx
	je	.L3946
	jmp	.L3945
	.p2align 4,,10
	.p2align 3
.L3944:
	leaq	-8(%r9), %rax
	leaq	31(%rcx), %rdx
	subq	%rcx, %rax
	subq	%rbp, %rdx
	shrq	$3, %rax
	cmpq	$62, %rdx
	jbe	.L4353
	movabsq	$2305843009213693948, %rdx
	testq	%rdx, %rax
	je	.L4353
	incq	%rax
	xorl	%edx, %edx
	movq	%rax, %r8
	shrq	$2, %r8
	salq	$5, %r8
	.p2align 4,,10
	.p2align 3
.L3949:
	vmovdqu	(%rcx,%rdx), %ymm1
	vmovdqu	%ymm1, 0(%rbp,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, %r8
	jne	.L3949
	movq	%rax, %r10
	andq	$-4, %r10
	leaq	0(,%r10,8), %rdx
	leaq	(%rcx,%rdx), %r8
	addq	%rbp, %rdx
	cmpq	%rax, %r10
	je	.L4603
	movq	(%r8), %rax
	movq	%rax, (%rdx)
	leaq	8(%r8), %rax
	cmpq	%rax, %r9
	je	.L4604
	movq	8(%r8), %rax
	movq	%rax, 8(%rdx)
	leaq	16(%r8), %rax
	cmpq	%rax, %r9
	je	.L4605
	movq	16(%r8), %rax
	movq	%rax, 16(%rdx)
	vzeroupper
	jmp	.L3945
	.p2align 4,,10
	.p2align 3
.L4353:
	movq	%rbp, %rdx
	movq	%rcx, %rax
	.p2align 4,,10
	.p2align 3
.L3947:
	movq	(%rax), %r8
	addq	$8, %rax
	addq	$8, %rdx
	movq	%r8, -8(%rdx)
	cmpq	%rax, %r9
	jne	.L3947
	jmp	.L3951
	.p2align 4,,10
	.p2align 3
.L4603:
	vzeroupper
	jmp	.L3945
.L4604:
	vzeroupper
	jmp	.L3945
.L4605:
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L3945:
	call	_ZdlPv
.L3946:
	vmovq	%rbp, %xmm3
	addq	%rbp, %rdi
	movq	560(%rsp), %rax
	movzwl	90(%rbx), %ebp
	subq	528(%rsp), %rax
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%rdi, 520(%rsp)
	vmovups	%xmm0, 504(%rsp)
	salq	$3, %rax
	cmpq	%rax, %rbp
	jbe	.L3943
	addq	$31, %rbp
	shrq	$5, %rbp
	salq	$2, %rbp
	movq	%rbp, %rcx
	call	_Znwy
.LEHE355:
	movq	544(%rsp), %r13
	movq	528(%rsp), %rdx
	movq	%rax, %r11
	movl	552(%rsp), %edi
	movq	%r13, %r8
	movq	%rdx, 56(%rsp)
	subq	%rdx, %r8
	cmpq	%rdx, %r13
	je	.L3953
	movq	%rax, %rcx
	movq	%r8, 88(%rsp)
	call	memmove
	movq	88(%rsp), %r8
	movl	%edi, %ecx
	movq	%rax, %r11
	addq	%rax, %r8
	testq	%rcx, %rcx
	jne	.L3955
	jmp	.L3954
	.p2align 4,,10
	.p2align 3
.L3953:
	movl	%edi, %ecx
	addq	%rax, %r8
	testq	%rcx, %rcx
	je	.L4354
.L3955:
	xorl	%edi, %edi
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L3961:
	movl	(%r8), %eax
	shlx	%edi, %r10d, %edx
	movl	%eax, %r9d
	andn	%eax, %edx, %eax
	orl	%edx, %r9d
	testl	%edx, 0(%r13)
	cmovne	%r9d, %eax
	movl	%eax, (%r8)
	cmpl	$31, %edi
	jne	.L3959
	addq	$4, %r13
	addq	$4, %r8
	xorl	%edi, %edi
	jmp	.L3960
	.p2align 4,,10
	.p2align 3
.L3959:
	incl	%edi
.L3960:
	decq	%rcx
	jne	.L3961
	jmp	.L3956
.L4354:
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3956:
	cmpq	$0, 56(%rsp)
	je	.L3962
.L4350:
	movq	56(%rsp), %rcx
	movq	%r8, 96(%rsp)
	movq	%r11, 88(%rsp)
	call	_ZdlPv
	movq	96(%rsp), %r8
	movq	88(%rsp), %r11
.L3962:
	addq	%r11, %rbp
	movq	%r11, 528(%rsp)
	movl	$0, 536(%rsp)
	movq	%r8, 544(%rsp)
	movl	%edi, 552(%rsp)
	movq	%rbp, 560(%rsp)
.L3943:
	cmpq	%rsi, %r12
	movq	%rsi, %rdi
	cmovbe	%r12, %rdi
	xorl	%ebp, %ebp
	testb	$2, 89(%rbx)
	je	.L3965
	jmp	.L3964
.L4398:
	movq	576(%rsp), %rcx
	movq	%rax, %r12
	movq	%rdx, %rbx
	testq	%rcx, %rcx
	je	.L4606
	decq	(%rcx)
	jne	.L4607
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L3968
.L4606:
	vzeroupper
	jmp	.L3968
.L4607:
	vzeroupper
.L3968:
	movq	568(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3971
	decq	(%rcx)
	jne	.L3971
	movq	8(%rcx), %rax
	call	*48(%rax)
.L3971:
	leaq	528(%rsp), %rcx
	call	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	movq	504(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L3973
	call	_ZdlPv
.L3973:
	leaq	416(%rsp), %rax
	movq	%rax, 88(%rsp)
	jmp	.L3974
	.p2align 4,,10
	.p2align 3
.L3964:
	movq	344(%rsp), %rax
	cmpq	$0, (%rax)
	jne	.L3975
	.p2align 4,,10
	.p2align 3
.L3978:
	movq	24(%r15), %rax
	movq	512(%rsp), %rbp
	movq	%rax, 592(%rsp)
	cmpq	520(%rsp), %rbp
	jne	.L3976
	jmp	.L4586
	.p2align 4,,10
	.p2align 3
.L3975:
	movq	336(%rsp), %rax
	leaq	320(%rsp), %rcx
	vzeroupper
.LEHB356:
	call	*48(%rax)
	jmp	.L3978
	.p2align 4,,10
	.p2align 3
.L3976:
	leaq	320(%rsp), %rax
	addq	$8, %rbp
	movq	%rax, -8(%rbp)
	movq	%rbp, 512(%rsp)
	jmp	.L3979
	.p2align 4,,10
	.p2align 3
.L4586:
	movq	504(%rsp), %r13
	movq	%rbp, %rax
	movabsq	$1152921504606846975, %rdx
	subq	%r13, %rax
	movq	%rax, 88(%rsp)
	sarq	$3, %rax
	cmpq	%rdx, %rax
	jne	.L3980
	leaq	.LC13(%rip), %rcx
	vzeroupper
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L3980:
	testq	%rax, %rax
	je	.L4355
	movabsq	$9223372036854775800, %r11
	leaq	(%rax,%rax), %rcx
	movq	%r11, 56(%rsp)
	cmpq	%rcx, %rax
	ja	.L3981
	testq	%rcx, %rcx
	je	.L4357
	cmpq	%rdx, %rcx
	cmovbe	%rcx, %rdx
	leaq	0(,%rdx,8), %rax
	movq	%rax, 56(%rsp)
	jmp	.L3981
	.p2align 4,,10
	.p2align 3
.L4357:
	movl	$8, %edx
	xorl	%r11d, %r11d
	xorl	%eax, %eax
.L3982:
	movq	88(%rsp), %r10
	leaq	320(%rsp), %rcx
	movq	%rcx, (%rax,%r10)
	cmpq	%r13, %rbp
	je	.L3983
	leaq	-8(%rbp), %r8
	leaq	31(%r13), %rdx
	subq	%r13, %r8
	subq	%rax, %rdx
	movq	%r8, %r9
	shrq	$3, %r9
	cmpq	$62, %rdx
	jbe	.L4358
	movabsq	$2305843009213693948, %rdx
	testq	%rdx, %r9
	je	.L4358
	incq	%r9
	xorl	%edx, %edx
	movq	%r9, %rcx
	shrq	$2, %rcx
	salq	$5, %rcx
	.p2align 4,,10
	.p2align 3
.L3985:
	vmovdqu	0(%r13,%rdx), %ymm2
	vmovdqu	%ymm2, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, %rcx
	jne	.L3985
	movq	%r9, %r10
	andq	$-4, %r10
	leaq	0(,%r10,8), %rdx
	leaq	0(%r13,%rdx), %rcx
	addq	%rax, %rdx
	cmpq	%r9, %r10
	je	.L3987
	movq	(%rcx), %r9
	movq	%r9, (%rdx)
	leaq	8(%rcx), %r9
	cmpq	%r9, %rbp
	je	.L3987
	movq	8(%rcx), %r9
	movq	%r9, 8(%rdx)
	leaq	16(%rcx), %r9
	cmpq	%r9, %rbp
	je	.L3987
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rdx)
	jmp	.L3987
.L4358:
	movq	%rax, %rcx
	movq	%r13, %rdx
	.p2align 4,,10
	.p2align 3
.L3984:
	movq	(%rdx), %r9
	addq	$8, %rdx
	addq	$8, %rcx
	movq	%r9, -8(%rcx)
	cmpq	%rdx, %rbp
	jne	.L3984
.L3987:
	leaq	16(%rax,%r8), %rdx
.L3983:
	testq	%r13, %r13
	je	.L3988
	movq	%r13, %rcx
	movq	%rdx, 96(%rsp)
	movq	%r11, 88(%rsp)
	movq	%rax, 56(%rsp)
	vzeroupper
	call	_ZdlPv
	movq	96(%rsp), %rdx
	movq	88(%rsp), %r11
	movq	56(%rsp), %rax
.L3988:
	vmovq	%rax, %xmm5
	movq	%r11, 520(%rsp)
	vpinsrq	$1, %rdx, %xmm5, %xmm0
	vmovups	%xmm0, 504(%rsp)
	.p2align 4,,10
	.p2align 3
.L3979:
	movq	544(%rsp), %rax
	cmpq	560(%rsp), %rax
	je	.L3989
	movl	552(%rsp), %ecx
	cmpl	$31, %ecx
	je	.L3991
	leal	1(%rcx), %edx
	movl	%edx, 552(%rsp)
	jmp	.L3992
	.p2align 4,,10
	.p2align 3
.L3991:
	movl	$0, 552(%rsp)
	leaq	4(%rax), %rdx
	movq	%rdx, 544(%rsp)
.L3992:
	movl	$-2, %edx
	movl	$1, %ebp
	roll	%cl, %edx
	andl	%edx, (%rax)
	jmp	.L3965
	.p2align 4,,10
	.p2align 3
.L3989:
	movq	552(%rsp), %rdx
	movq	544(%rsp), %rax
	leaq	528(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rdx, 232(%rsp)
	movq	%rdx, 152(%rsp)
	leaq	144(%rsp), %rdx
	movq	%rax, 224(%rsp)
	movq	%rax, 144(%rsp)
	vzeroupper
	call	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L3965:
	cmpq	%rdi, %rbp
	jnb	.L3993
.L4009:
	movq	24(%rbx), %r13
	movq	32(%rbx), %rax
	subq	%r13, %rax
	sarq	$5, %rax
	cmpq	%rbp, %rax
	jbe	.L3994
	movq	%rbp, %rax
	salq	$5, %rax
	addq	%rax, %r13
	testq	%r14, %r14
	je	.L3995
	testq	%r13, %r13
	je	.L3995
	movq	0(%r13), %rdx
	testq	%rdx, %rdx
	je	.L3996
	movq	%r14, %rcx
	vzeroupper
	call	*__imp_PyDict_GetItemString(%rip)
	testq	%rax, %rax
	jne	.L4010
	jmp	.L3996
	.p2align 4,,10
	.p2align 3
.L3994:
	movq	24(%r15,%rbp,8), %rax
	xorl	%r13d, %r13d
	movq	%rax, 448(%rsp)
	jmp	.L3998
.L3995:
	movq	24(%r15,%rbp,8), %rax
	movq	%rax, 448(%rsp)
	testq	%r13, %r13
	je	.L3998
	.p2align 4,,10
	.p2align 3
.L4335:
	testb	$2, 24(%r13)
	jne	.L3998
	cmpq	__imp__Py_NoneStruct(%rip), %rax
	je	.L4010
.L3998:
	movq	512(%rsp), %rdx
	cmpq	520(%rsp), %rdx
	je	.L4000
	movq	%rax, (%rdx)
	addq	$8, %rdx
	movq	%rdx, 512(%rsp)
	jmp	.L4001
	.p2align 4,,10
	.p2align 3
.L4000:
	leaq	504(%rsp), %rcx
	leaq	448(%rsp), %r8
	vzeroupper
	call	_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.p2align 4,,10
	.p2align 3
.L4001:
	testq	%r13, %r13
	je	.L4359
	movzbl	24(%r13), %r8d
	movl	%r8d, %ecx
	andl	$1, %r8d
	andl	$1, %ecx
	jmp	.L4002
	.p2align 4,,10
	.p2align 3
.L4359:
	movl	$1, %r8d
	movl	$1, %ecx
.L4002:
	movq	544(%rsp), %rdx
	cmpq	560(%rsp), %rdx
	je	.L4003
	movl	552(%rsp), %r8d
	cmpl	$31, %r8d
	je	.L4005
	leal	1(%r8), %eax
	movl	%eax, 552(%rsp)
	jmp	.L4006
	.p2align 4,,10
	.p2align 3
.L4005:
	movl	$0, 552(%rsp)
	leaq	4(%rdx), %rax
	movq	%rax, 544(%rsp)
.L4006:
	movl	$1, %eax
	shlx	%r8d, %eax, %eax
	movl	(%rdx), %r8d
	andn	%r8d, %eax, %r9d
	orl	%r8d, %eax
	testb	%cl, %cl
	cmove	%r9d, %eax
	movl	%eax, (%rdx)
	jmp	.L4008
	.p2align 4,,10
	.p2align 3
.L4003:
	movq	552(%rsp), %rdx
	movq	544(%rsp), %rax
	leaq	528(%rsp), %rcx
	movq	%rdx, 248(%rsp)
	movq	%rdx, 152(%rsp)
	leaq	144(%rsp), %rdx
	movq	%rax, 240(%rsp)
	movq	%rax, 144(%rsp)
	vzeroupper
	call	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
.LEHE356:
	.p2align 4,,10
	.p2align 3
.L4008:
	incq	%rbp
	cmpq	%rdi, %rbp
	jne	.L4009
.L3993:
	movq	%r14, 352(%rsp)
	testq	%r14, %r14
	je	.L4011
	incq	(%r14)
.L4011:
	movq	%r14, %rcx
	cmpq	%rbp, %rsi
	jbe	.L4012
	movb	$0, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L4025:
	movq	%rbp, %r13
	salq	$5, %r13
	addq	24(%rbx), %r13
	movq	$0, 448(%rsp)
	testq	%r14, %r14
	je	.L4013
	movq	0(%r13), %rdx
	testq	%rdx, %rdx
	je	.L4013
	movq	352(%rsp), %rcx
	vzeroupper
.LEHB357:
	call	*__imp_PyDict_GetItemString(%rip)
	movq	%rax, 448(%rsp)
	testq	%rax, %rax
	je	.L4013
	cmpb	$0, 56(%rsp)
	movq	352(%rsp), %rcx
	jne	.L4014
	call	*__imp_PyDict_Copy(%rip)
.LEHE357:
	movq	352(%rsp), %r8
	movq	%rax, %rcx
	movq	%rax, 352(%rsp)
	testq	%r8, %r8
	je	.L4014
	decq	(%r8)
	jne	.L4014
	movq	8(%r8), %rax
	movq	%r8, %rcx
	call	*48(%rax)
	movq	352(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L4014:
	movq	0(%r13), %rdx
.LEHB358:
	call	*__imp_PyDict_DelItemString(%rip)
	jmp	.L4587
	.p2align 4,,10
	.p2align 3
.L4013:
	cmpq	$0, 16(%r13)
	je	.L4016
	movq	16(%r13), %rax
	movq	%rax, 448(%rsp)
	jmp	.L4015
	.p2align 4,,10
	.p2align 3
.L4587:
	movb	$1, 56(%rsp)
.L4015:
	movq	448(%rsp), %rax
	testq	%rax, %rax
	je	.L4016
	movq	512(%rsp), %rdx
	cmpq	520(%rsp), %rdx
	je	.L4017
	movq	%rax, (%rdx)
	addq	$8, %rdx
	movq	%rdx, 512(%rsp)
	jmp	.L4018
	.p2align 4,,10
	.p2align 3
.L4017:
	leaq	504(%rsp), %rcx
	leaq	448(%rsp), %r8
	vzeroupper
	call	_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.p2align 4,,10
	.p2align 3
.L4018:
	movzbl	24(%r13), %r8d
	movq	544(%rsp), %rdx
	andl	$1, %r8d
	cmpq	560(%rsp), %rdx
	je	.L4019
	movl	552(%rsp), %ecx
	cmpl	$31, %ecx
	je	.L4021
	leal	1(%rcx), %eax
	movl	%eax, 552(%rsp)
	jmp	.L4022
	.p2align 4,,10
	.p2align 3
.L4021:
	movl	$0, 552(%rsp)
	leaq	4(%rdx), %rax
	movq	%rax, 544(%rsp)
.L4022:
	movl	$1, %eax
	shlx	%ecx, %eax, %eax
	movl	(%rdx), %ecx
	andn	%ecx, %eax, %r9d
	orl	%ecx, %eax
	testb	%r8b, %r8b
	cmove	%r9d, %eax
	movl	%eax, (%rdx)
	jmp	.L4024
	.p2align 4,,10
	.p2align 3
.L4019:
	movq	552(%rsp), %rdx
	movq	544(%rsp), %rax
	leaq	528(%rsp), %rcx
	andl	$1, %r8d
	movq	%rdx, 264(%rsp)
	movq	%rdx, 152(%rsp)
	leaq	144(%rsp), %rdx
	movq	%rax, 256(%rsp)
	movq	%rax, 144(%rsp)
	vzeroupper
	call	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.p2align 4,,10
	.p2align 3
.L4024:
	incq	%rbp
	cmpq	%rbp, %rsi
	jne	.L4025
	movq	352(%rsp), %rcx
	jmp	.L4012
	.p2align 4,,10
	.p2align 3
.L4016:
	movq	352(%rsp), %rcx
	cmpq	%rbp, %rsi
	ja	.L4026
	.p2align 4,,10
	.p2align 3
.L4012:
	testq	%rcx, %rcx
	je	.L4608
	vzeroupper
	call	*__imp_PyDict_Size(%rip)
	testq	%rax, %rax
	je	.L4027
	movzbl	89(%rbx), %eax
	movq	352(%rsp), %rcx
	testb	$32, %al
	je	.L4026
	jmp	.L4028
	.p2align 4,,10
	.p2align 3
.L4608:
	vzeroupper
.L4027:
	movzbl	89(%rbx), %eax
	testb	$16, %al
	je	.L4029
.L4339:
	movq	__imp_PyTuple_New(%rip), %r13
	xorl	%ecx, %ecx
	call	*%r13
.LEHE358:
	movq	%rax, 448(%rsp)
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L4030
	leaq	.LC37(%rip), %rcx
.LEHB359:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE359:
.L4399:
	movq	448(%rsp), %rcx
	movq	%rax, %rbx
	movq	%rdx, %rsi
	testq	%rcx, %rcx
	je	.L4609
	decq	(%rcx)
	jne	.L4610
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	jmp	.L4033
.L4609:
	vzeroupper
	jmp	.L4033
.L4610:
	vzeroupper
.L4033:
	leaq	416(%rsp), %rax
	leaq	496(%rsp), %rbp
	movq	%rax, 88(%rsp)
	jmp	.L4035
	.p2align 4,,10
	.p2align 3
.L4030:
	testq	%rdi, %rdi
	jne	.L4036
	incq	(%r15)
	movq	%r15, 448(%rsp)
	decq	(%rax)
	jne	.L4038
	movq	8(%rax), %rax
	call	*48(%rax)
	jmp	.L4038
.L4036:
	cmpq	%rbp, %r12
	ja	.L4039
	xorl	%ecx, %ecx
.LEHB360:
	call	*%r13
	testq	%rax, %rax
	jne	.L4040
	leaq	.LC37(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE360:
	.p2align 4,,10
	.p2align 3
.L4040:
	movq	448(%rsp), %rcx
	movq	%rax, 448(%rsp)
	testq	%rcx, %rcx
	je	.L4038
	decq	(%rcx)
	jne	.L4038
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L4038
.L4039:
	movq	%r12, %rdi
	subq	%rbp, %rdi
	movq	%rdi, %rcx
.LEHB361:
	call	*%r13
	movq	%rax, %rcx
	testq	%rax, %rax
	jne	.L4044
	leaq	.LC37(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE361:
	.p2align 4,,10
	.p2align 3
.L4044:
	movq	448(%rsp), %r8
	movq	%rax, 448(%rsp)
	testq	%r8, %r8
	je	.L4045
	decq	(%r8)
	jne	.L4045
	movq	8(%r8), %rax
	movq	%r8, %rcx
	call	*48(%rax)
	movq	448(%rsp), %rcx
.L4045:
	leaq	(%r15,%rbp,8), %r13
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L4050:
	movq	24(%r13,%rbp,8), %r8
	testq	%r8, %r8
	je	.L4046
	incq	(%r8)
.L4046:
	movq	%rbp, %rdx
.LEHB362:
	call	*__imp_PyTuple_SetItem(%rip)
.LEHE362:
	testl	%eax, %eax
	je	.L4047
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB363:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE363:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r12, %rcx
.LEHB364:
	call	__cxa_throw
.L4400:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L4049
	.p2align 4,,10
	.p2align 3
.L4047:
	incq	%rbp
	cmpq	%rbp, %rdi
	je	.L4038
	movq	448(%rsp), %rcx
	jmp	.L4050
.L4038:
	movq	512(%rsp), %rdx
	cmpq	520(%rsp), %rdx
	je	.L4051
	movq	448(%rsp), %rax
	addq	$8, %rdx
	movq	%rax, -8(%rdx)
	movq	%rdx, 512(%rsp)
	jmp	.L4052
.L4051:
	leaq	504(%rsp), %rcx
	leaq	448(%rsp), %r8
	call	_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L4052:
	movq	544(%rsp), %rax
	cmpq	560(%rsp), %rax
	je	.L4053
	movl	552(%rsp), %ecx
	cmpl	$31, %ecx
	je	.L4055
	leal	1(%rcx), %edx
	movl	%edx, 552(%rsp)
	jmp	.L4056
.L4055:
	movl	$0, 552(%rsp)
	leaq	4(%rax), %rdx
	movq	%rdx, 544(%rsp)
.L4056:
	movl	$-2, %edx
	roll	%cl, %edx
	andl	%edx, (%rax)
	jmp	.L4057
.L4053:
	movq	552(%rsp), %rdx
	movq	544(%rsp), %rax
	leaq	528(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rdx, 280(%rsp)
	movq	%rdx, 152(%rsp)
	leaq	144(%rsp), %rdx
	movq	%rax, 272(%rsp)
	movq	%rax, 144(%rsp)
	call	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
.LEHE364:
.L4057:
	movq	448(%rsp), %rax
	movq	568(%rsp), %rcx
	movq	$0, 448(%rsp)
	movq	%rax, 568(%rsp)
	testq	%rcx, %rcx
	jne	.L4588
	movzbl	89(%rbx), %eax
	jmp	.L4029
.L4588:
	decq	(%rcx)
	je	.L4589
	movzbl	89(%rbx), %eax
	jmp	.L4029
.L4589:
	movq	8(%rcx), %rax
	call	*48(%rax)
	movq	448(%rsp), %rcx
	testq	%rcx, %rcx
	jne	.L4590
	movzbl	89(%rbx), %eax
	jmp	.L4029
	.p2align 4,,10
	.p2align 3
.L4590:
	decq	(%rcx)
	je	.L4591
	movzbl	89(%rbx), %eax
	jmp	.L4029
.L4591:
	movq	8(%rcx), %rax
	call	*48(%rax)
	movzbl	89(%rbx), %eax
	.p2align 4,,10
	.p2align 3
.L4029:
	testb	$32, %al
	je	.L4061
.L4060:
	cmpq	$0, 352(%rsp)
	jne	.L4062
.LEHB365:
	call	*__imp_PyDict_New(%rip)
	testq	%rax, %rax
	jne	.L4063
	leaq	.LC111(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE365:
	.p2align 4,,10
	.p2align 3
.L4063:
	movq	352(%rsp), %rcx
	movq	%rax, 352(%rsp)
	testq	%rcx, %rcx
	je	.L4062
	decq	(%rcx)
	jne	.L4062
	movq	8(%rcx), %rax
	call	*48(%rax)
	.p2align 4,,10
	.p2align 3
.L4062:
	movq	512(%rsp), %rdx
	cmpq	520(%rsp), %rdx
	je	.L4067
	movq	352(%rsp), %rax
	addq	$8, %rdx
	movq	%rax, -8(%rdx)
	movq	%rdx, 512(%rsp)
	jmp	.L4068
.L4067:
	leaq	504(%rsp), %rcx
	leaq	352(%rsp), %r8
.LEHB366:
	call	_ZNSt6vectorIN8pybind116handleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.p2align 4,,10
	.p2align 3
.L4068:
	movq	544(%rsp), %rax
	cmpq	560(%rsp), %rax
	je	.L4069
	movl	552(%rsp), %ecx
	cmpl	$31, %ecx
	je	.L4071
	leal	1(%rcx), %edx
	movl	%edx, 552(%rsp)
	jmp	.L4072
.L4071:
	movl	$0, 552(%rsp)
	leaq	4(%rax), %rdx
	movq	%rdx, 544(%rsp)
.L4072:
	movl	$-2, %edx
	roll	%cl, %edx
	andl	%edx, (%rax)
	jmp	.L4073
.L4069:
	movq	552(%rsp), %rdx
	movq	544(%rsp), %rax
	leaq	528(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rdx, 296(%rsp)
	movq	%rdx, 152(%rsp)
	leaq	144(%rsp), %rdx
	movq	%rax, 288(%rsp)
	movq	%rax, 144(%rsp)
	call	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
.LEHE366:
	.p2align 4,,10
	.p2align 3
.L4073:
	movq	352(%rsp), %rax
	movq	576(%rsp), %rcx
	movq	$0, 352(%rsp)
	movq	%rax, 576(%rsp)
	testq	%rcx, %rcx
	je	.L4061
	decq	(%rcx)
	jne	.L4061
	movq	8(%rcx), %rax
	call	*48(%rax)
	.p2align 4,,10
	.p2align 3
.L4061:
	movq	512(%rsp), %rax
	movzwl	90(%rbx), %r8d
	subq	504(%rsp), %rax
	sarq	$3, %rax
	cmpq	%rax, %r8
	jne	.L4075
	movl	552(%rsp), %edx
	movq	544(%rsp), %rax
	subq	528(%rsp), %rax
	leaq	(%rdx,%rax,8), %rax
	cmpq	%rax, %r8
	jne	.L4075
	cmpq	$0, 80(%rsp)
	movq	$0, 448(%rsp)
	movl	$0, 456(%rsp)
	movq	$0, 464(%rsp)
	movl	$0, 472(%rsp)
	movq	$0, 480(%rsp)
	jne	.L4076
	jmp	.L4077
.L4075:
	leaq	.LC112(%rip), %rcx
.LEHB367:
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE367:
	.p2align 4,,10
	.p2align 3
.L4076:
	movq	$0, 304(%rsp)
	leaq	448(%rsp), %rcx
	xorl	%r9d, %r9d
	leaq	416(%rsp), %rax
	leaq	144(%rsp), %rdx
	movq	%rcx, 96(%rsp)
	leaq	496(%rsp), %rbp
	movl	$0, 312(%rsp)
	vmovdqa	304(%rsp), %xmm5
	movq	%rax, 88(%rsp)
	vmovaps	%xmm5, 144(%rsp)
.LEHB368:
	call	_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratoryb
.LEHE368:
	movq	528(%rsp), %rax
	movq	%rax, %rdx
	movq	536(%rsp), %rax
	movq	%rax, 392(%rsp)
	movq	448(%rsp), %rax
	movq	%rdx, 448(%rsp)
	movq	%rax, 528(%rsp)
	movl	456(%rsp), %eax
	movl	%eax, 536(%rsp)
	movl	392(%rsp), %eax
	movl	%eax, 456(%rsp)
	movq	544(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 384(%rsp)
	movq	552(%rsp), %rax
	movq	%rax, 392(%rsp)
	movq	464(%rsp), %rax
	movq	%rdx, 464(%rsp)
	movq	480(%rsp), %rdx
	movq	%rax, 544(%rsp)
	movl	472(%rsp), %eax
	movl	%eax, 552(%rsp)
	movl	392(%rsp), %eax
	movl	%eax, 472(%rsp)
	movq	560(%rsp), %rax
	movq	%rdx, 560(%rsp)
	movq	%rax, 480(%rsp)
.L4077:
.LEHB369:
	call	_ZN8pybind116detail13get_internalsEv
	movq	$0, 384(%rsp)
	movq	408(%rax), %rdx
	cmpq	416(%rax), %rdx
	je	.L4078
	movq	$0, (%rdx)
	addq	$8, %rdx
	movq	%rdx, 408(%rax)
	jmp	.L4079
.L4078:
	leaq	400(%rax), %rcx
	leaq	384(%rsp), %r8
	call	_ZNSt6vectorIP7_objectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE369:
	.p2align 4,,10
	.p2align 3
.L4079:
	leaq	496(%rsp), %rbp
	movq	%rbp, %rcx
.LEHB370:
	call	*48(%rbx)
.LEHE370:
	movq	%rax, 56(%rsp)
	call	_ZN8pybind116detail13get_internalsEv
	movq	%rax, %rdi
	movq	408(%rax), %rax
	movq	400(%rdi), %r13
	cmpq	%r13, %rax
	jne	.L4080
	leaq	.LC98(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L4080:
	movq	-8(%rax), %rcx
	subq	$8, %rax
	movq	%rax, 408(%rdi)
	testq	%rcx, %rcx
	je	.L4081
	decq	(%rcx)
	jne	.L4081
	movq	8(%rcx), %rax
	call	*48(%rax)
	movq	400(%rdi), %r13
.L4081:
	movq	416(%rdi), %r8
	movq	%r8, %rcx
	subq	%r13, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$135, %rcx
	jbe	.L4082
	movq	408(%rdi), %rcx
	cmpq	%r13, %rcx
	je	.L4082
	movq	%rcx, %rdx
	subq	%r13, %rdx
	movq	%rdx, %r9
	movq	%rdx, 88(%rsp)
	xorl	%edx, %edx
	sarq	$3, %r9
	divq	%r9
	cmpq	$2, %rax
	jbe	.L4082
	cmpq	%rcx, %r8
	je	.L4082
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %r9
	jbe	.L4083
	leaq	.LC87(%rip), %rcx
.LEHB371:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4083:
	movq	88(%rsp), %rcx
	call	_Znwy
.LEHE371:
	movq	88(%rsp), %r8
	movq	%rax, %rcx
	movq	%r13, %rdx
	leaq	(%rax,%r8), %r9
	movq	%r9, 88(%rsp)
	call	memcpy
	movq	88(%rsp), %r9
	movq	400(%rdi), %r8
	vmovq	%rax, %xmm5
	vpinsrq	$1, %r9, %xmm5, %xmm0
	movq	%r9, 416(%rdi)
	vmovups	%xmm0, 400(%rdi)
	testq	%r8, %r8
	jne	.L4084
	jmp	.L4082
.L4401:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L4082
	.p2align 4,,10
	.p2align 3
.L4084:
	movq	%r8, %rcx
	call	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L4082:
	cmpq	$1, 56(%rsp)
	jne	.L4087
.L4274:
	cmpq	$0, 80(%rsp)
	movq	448(%rsp), %rcx
	je	.L4088
	movzbl	89(%rbx), %edx
	shrb	$6, %dl
	andl	$1, %edx
	movzbl	%dl, %eax
	cmpq	%rax, %rsi
	jbe	.L4088
	movl	$1, %r8d
	incq	%rax
	movl	$1, %r9d
	shlx	%edx, %r8d, %edx
	testl	%edx, (%rcx)
	je	.L4091
	jmp	.L4089
	.p2align 4,,10
	.p2align 3
.L4593:
	movq	%rax, %rdx
	shlx	%eax, %r9d, %r8d
	incq	%rax
	shrq	$5, %rdx
	testl	%r8d, (%rcx,%rdx,4)
	je	.L4091
.L4089:
	movq	528(%rsp), %rax
	movq	%rax, %rdx
	movq	536(%rsp), %rax
	movq	%rax, 392(%rsp)
	movq	448(%rsp), %rax
	movq	%rdx, 448(%rsp)
	movq	%rax, 528(%rsp)
	movl	456(%rsp), %eax
	movl	%eax, 536(%rsp)
	movl	392(%rsp), %eax
	movl	%eax, 456(%rsp)
	movq	544(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 384(%rsp)
	movq	552(%rsp), %rax
	movq	%rax, 392(%rsp)
	movq	464(%rsp), %rax
	movq	%rdx, 464(%rsp)
	movq	480(%rsp), %rdx
	movq	%rax, 544(%rsp)
	movl	472(%rsp), %eax
	movl	%eax, 552(%rsp)
	movl	392(%rsp), %eax
	movl	%eax, 472(%rsp)
	movq	560(%rsp), %rax
	movq	%rdx, 560(%rsp)
	movq	424(%rsp), %rdx
	movq	%rax, 480(%rsp)
	cmpq	432(%rsp), %rdx
	je	.L4092
	movq	496(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	528(%rsp), %xmm5
	addq	$104, %rdx
	vmovdqa	544(%rsp), %xmm4
	movq	%rax, -104(%rdx)
	movq	504(%rsp), %rax
	movq	%rax, -96(%rdx)
	movq	512(%rsp), %rax
	movq	%rax, -88(%rdx)
	movq	520(%rsp), %rax
	movq	%rax, -80(%rdx)
	movq	560(%rsp), %rax
	movq	$0, 520(%rsp)
	vmovups	%xmm0, 504(%rsp)
	movq	%rax, -40(%rdx)
	movq	568(%rsp), %rax
	vmovups	%xmm5, -72(%rdx)
	movq	448(%rsp), %rcx
	vmovups	%xmm4, -56(%rdx)
	movq	$0, 544(%rsp)
	movl	$0, 552(%rsp)
	movq	$0, 528(%rsp)
	movl	$0, 536(%rsp)
	movq	%rax, -32(%rdx)
	movq	576(%rsp), %rax
	vmovaps	%xmm0, 560(%rsp)
	movq	%rax, -24(%rdx)
	movq	584(%rsp), %rax
	movq	$0, 576(%rsp)
	movq	%rax, -16(%rdx)
	movq	592(%rsp), %rax
	movq	%rax, -8(%rdx)
	movq	%rdx, 424(%rsp)
	jmp	.L4088
.L4092:
	leaq	496(%rsp), %rbp
	leaq	416(%rsp), %rcx
	leaq	448(%rsp), %rax
	movq	%rbp, %r8
	movq	%rcx, 88(%rsp)
	movq	%rax, 96(%rsp)
.LEHB372:
	call	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
.LEHE372:
	movq	448(%rsp), %rcx
	jmp	.L4088
	.p2align 4,,10
	.p2align 3
.L4091:
	cmpq	%rax, %rsi
	jne	.L4593
	jmp	.L4093
	.p2align 4,,10
	.p2align 3
.L4088:
	testq	%rcx, %rcx
	je	.L4095
.L4093:
	call	_ZdlPv
.L4095:
	movq	352(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4098
	decq	(%rcx)
	jne	.L4098
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4098:
	movq	576(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4101
	decq	(%rcx)
	jne	.L4101
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4101:
	movq	568(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4104
	decq	(%rcx)
	jne	.L4104
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4104:
	movq	528(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4106
	call	_ZdlPv
.L4106:
	movq	504(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4127
	call	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L4127:
	movq	120(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L4109
	jmp	.L4108
.L4087:
	movq	448(%rsp), %rax
	testq	%rax, %rax
	je	.L4110
	movq	%rax, %rcx
	call	_ZdlPv
.L4110:
	movq	352(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4113
	decq	(%rcx)
	jne	.L4113
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4113:
	movq	%rbp, %rcx
	call	_ZN8pybind116detail13function_callD1Ev
	movq	%rbx, 80(%rsp)
	movq	424(%rsp), %rsi
	movq	416(%rsp), %r12
	jmp	.L4115
.L4026:
	testq	%rcx, %rcx
	je	.L4010
	decq	(%rcx)
	jne	.L4010
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
	.p2align 4,,10
	.p2align 3
.L4010:
	movq	576(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4120
	decq	(%rcx)
	jne	.L4120
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
.L4120:
	movq	568(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4123
	decq	(%rcx)
	jne	.L4123
	movq	8(%rcx), %rax
	vzeroupper
	call	*48(%rax)
.L4123:
	movq	528(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4125
	vzeroupper
	call	_ZdlPv
.L4125:
	movq	504(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4127
	vzeroupper
	call	_ZdlPv
	jmp	.L4127
	.p2align 4,,10
	.p2align 3
.L4108:
	cmpq	$0, 80(%rsp)
	movq	424(%rsp), %rsi
	movq	416(%rsp), %r12
	je	.L4363
	cmpq	%r12, %rsi
	je	.L4128
	movq	%r12, %rbx
	leaq	496(%rsp), %r13
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L4139:
.LEHB373:
	call	_ZN8pybind116detail13get_internalsEv
	movq	$0, 496(%rsp)
	movq	408(%rax), %rdx
	cmpq	416(%rax), %rdx
	je	.L4129
	movq	$0, (%rdx)
	addq	$8, %rdx
	movq	%rdx, 408(%rax)
	jmp	.L4130
.L4129:
	leaq	400(%rax), %rcx
	movq	%r13, %r8
	call	_ZNSt6vectorIP7_objectSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE373:
	.p2align 4,,10
	.p2align 3
.L4130:
	movq	(%rbx), %rax
	movq	%rbx, %rcx
.LEHB374:
	call	*48(%rax)
.LEHE374:
	movq	%rax, 56(%rsp)
	call	_ZN8pybind116detail13get_internalsEv
	movq	%rax, %rdi
	movq	408(%rax), %rax
	movq	400(%rdi), %r12
	cmpq	%r12, %rax
	jne	.L4131
	leaq	.LC98(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
	.p2align 4,,10
	.p2align 3
.L4131:
	movq	-8(%rax), %rcx
	subq	$8, %rax
	movq	%rax, 408(%rdi)
	testq	%rcx, %rcx
	je	.L4132
	decq	(%rcx)
	jne	.L4132
	movq	8(%rcx), %rax
	call	*48(%rax)
	movq	400(%rdi), %r12
.L4132:
	movq	416(%rdi), %r8
	movq	%r8, %rcx
	subq	%r12, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	cmpq	$135, %rcx
	jbe	.L4133
	movq	408(%rdi), %rcx
	cmpq	%r12, %rcx
	je	.L4133
	movq	%rcx, %rbp
	xorl	%edx, %edx
	subq	%r12, %rbp
	movq	%rbp, %r9
	sarq	$3, %r9
	divq	%r9
	cmpq	$2, %rax
	jbe	.L4133
	cmpq	%rcx, %r8
	je	.L4133
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %r9
	jbe	.L4134
	leaq	.LC87(%rip), %rcx
.LEHB375:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4134:
	movq	%rbp, %rcx
	call	_Znwy
.LEHE375:
	leaq	(%rax,%rbp), %r9
	movq	%rbp, %r8
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%r9, 80(%rsp)
	call	memcpy
	movq	80(%rsp), %r9
	movq	400(%rdi), %r8
	vmovq	%rax, %xmm4
	vpinsrq	$1, %r9, %xmm4, %xmm0
	movq	%r9, 416(%rdi)
	vmovups	%xmm0, 400(%rdi)
	testq	%r8, %r8
	jne	.L4135
	jmp	.L4133
.L4402:
	movq	%rax, %rcx
	vzeroupper
	call	__cxa_begin_catch
	call	__cxa_end_catch
	jmp	.L4133
	.p2align 4,,10
	.p2align 3
.L4135:
	movq	%r8, %rcx
	call	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L4133:
	cmpq	$1, 56(%rsp)
	je	.L4138
	movq	424(%rsp), %rsi
	movq	416(%rsp), %r12
	movq	$0, 80(%rsp)
	jmp	.L4115
	.p2align 4,,10
	.p2align 3
.L4138:
	addq	$104, %rbx
	cmpq	%rbx, %rsi
	jne	.L4139
	movq	424(%rsp), %rsi
	movq	416(%rsp), %r12
	movq	$0, 80(%rsp)
	movq	$1, 56(%rsp)
	jmp	.L4115
.L4363:
	movq	$1, 56(%rsp)
	vzeroupper
.L4115:
	cmpq	%r12, %rsi
	je	.L4140
	.p2align 4,,10
	.p2align 3
.L4152:
	movq	80(%r12), %rcx
	testq	%rcx, %rcx
	je	.L4142
	decq	(%rcx)
	jne	.L4142
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4142:
	movq	72(%r12), %rcx
	testq	%rcx, %rcx
	je	.L4145
	decq	(%rcx)
	jne	.L4145
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4145:
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.L4147
	call	_ZdlPv
.L4147:
	movq	8(%r12), %rcx
	testq	%rcx, %rcx
	je	.L4149
	call	_ZdlPv
	addq	$104, %r12
	cmpq	%r12, %rsi
	jne	.L4152
	jmp	.L4150
	.p2align 4,,10
	.p2align 3
.L4149:
	addq	$104, %r12
	cmpq	%rsi, %r12
	jne	.L4152
.L4150:
	movq	416(%rsp), %r12
.L4140:
	testq	%r12, %r12
	jne	.L4348
	jmp	.L4153
.L4368:
	movq	$0, 80(%rsp)
	movq	$1, 56(%rsp)
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L4348:
	movq	%r12, %rcx
	call	_ZdlPv
.L4153:
	cmpq	$1, 56(%rsp)
	jne	.L4154
.L4351:
	movq	72(%rsp), %rax
	movzbl	89(%rax), %eax
	testb	$8, %al
	je	.L4155
	movq	__imp__Py_NotImplementedStruct(%rip), %r14
	incq	(%r14)
	movq	%r14, 56(%rsp)
	jmp	.L3930
.L4155:
	testb	$1, %al
	leaq	.LC108(%rip), %rbx
	leaq	.LC109(%rip), %rax
	cmove	%rax, %rbx
	leaq	464(%rsp), %rsi
	movq	%rsi, 80(%rsp)
	movq	%rbx, %rcx
	movq	%rsi, 448(%rsp)
	call	strlen
	movq	%rsi, %r8
	movq	%rax, %rdx
	movq	%rbx, %rax
	cmpl	$8, %edx
	jb	.L4340
	jmp	.L4594
.L4602:
	leaq	.LC8(%rip), %rcx
.LEHB376:
	call	_ZSt19__throw_logic_errorPKc
.L4346:
	movq	%r12, %rcx
	call	strlen
	movq	%rax, 496(%rsp)
	movq	%rax, %rsi
	cmpq	$15, %rax
	jbe	.L4159
	movq	104(%rsp), %rcx
	leaq	496(%rsp), %rdx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE376:
	movq	%rax, 384(%rsp)
	movq	%rax, %rcx
	movq	496(%rsp), %rax
	movq	%rax, 400(%rsp)
	jmp	.L4160
.L4159:
	cmpq	$1, %rax
	jne	.L4161
	movzbl	(%r12), %edx
	movb	%dl, 400(%rsp)
	movq	%rbx, %rdx
	jmp	.L4162
.L4161:
	testq	%rax, %rax
	je	.L4365
	movq	%rbx, %rcx
.L4160:
	movq	%r12, %rdx
	movq	%rsi, %r8
	call	memcpy
	movq	496(%rsp), %rax
	movq	384(%rsp), %rdx
	jmp	.L4162
.L4365:
	movq	%rbx, %rdx
.L4162:
	movq	%rax, 392(%rsp)
	leaq	416(%rsp), %rsi
	leaq	.LC113(%rip), %r8
	movb	$0, (%rdx,%rax)
	movq	104(%rsp), %rdx
	movq	%rsi, %rcx
	movq	%rsi, 88(%rsp)
.LEHB377:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE377:
	leaq	448(%rsp), %rax
	leaq	496(%rsp), %rbp
	movq	%rsi, %rdx
	movq	%rax, %r8
	movq	%rbp, %rcx
	movq	%rax, 96(%rsp)
.LEHB378:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
.LEHE378:
	leaq	352(%rsp), %rdi
	leaq	.LC114(%rip), %r8
	movq	%rbp, %rdx
	movq	%rdi, %rcx
.LEHB379:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE379:
	movq	496(%rsp), %rcx
	leaq	512(%rsp), %rax
	movq	%rax, 64(%rsp)
	cmpq	%rax, %rcx
	je	.L4163
	call	_ZdlPv
.L4163:
	movq	416(%rsp), %rcx
	leaq	432(%rsp), %rax
	movq	%rax, 112(%rsp)
	cmpq	%rax, %rcx
	je	.L4164
	call	_ZdlPv
.L4164:
	movq	384(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L4165
	call	_ZdlPv
.L4165:
	movq	448(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L4166
	call	_ZdlPv
.L4166:
	movq	72(%rsp), %rax
	xorl	%esi, %esi
	movabsq	$4611686018427387903, %r13
	movq	%rax, 56(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 120(%rsp)
	.p2align 4,,10
	.p2align 3
.L4193:
	incl	%esi
	movq	88(%rsp), %rbx
	leaq	.LC24(%rip), %r9
	movl	$16, %r8d
	movl	%esi, 32(%rsp)
	leaq	_ZL9vsnprintfPcyPKcS_(%rip), %rdx
	movq	%rbx, %rcx
.LEHB380:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.0
.LEHE380:
	leaq	.LC115(%rip), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movq	$4, 32(%rsp)
.LEHB381:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE381:
	movq	80(%rsp), %rbx
	leaq	16(%rax), %rdx
	movq	%rbx, 448(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L4167
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 464(%rsp)
	jmp	.L4168
	.p2align 4,,10
	.p2align 3
.L4167:
	movq	%rcx, 448(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 464(%rsp)
.L4168:
	movq	8(%rax), %rcx
	movq	%rcx, 456(%rsp)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	%r13, %rax
	subq	456(%rsp), %rax
	cmpq	$1, %rax
	ja	.L4169
	leaq	.LC6(%rip), %rcx
.LEHB382:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4169:
	movq	96(%rsp), %rcx
	movl	$2, %r8d
	leaq	.LC95(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE382:
	movq	64(%rsp), %rbx
	leaq	16(%rax), %rdx
	movq	%rbx, 496(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	jne	.L4170
	vmovdqu	16(%rax), %xmm4
	vmovaps	%xmm4, 512(%rsp)
	jmp	.L4171
	.p2align 4,,10
	.p2align 3
.L4170:
	movq	%rcx, 496(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 512(%rsp)
.L4171:
	movq	8(%rax), %rcx
	movq	%rcx, 504(%rsp)
	movq	%rdi, %rcx
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movq	496(%rsp), %rdx
	movq	$0, 8(%rax)
	movq	504(%rsp), %r8
.LEHB383:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE383:
	movq	496(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	je	.L4172
	call	_ZdlPv
.L4172:
	movq	448(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L4173
	call	_ZdlPv
.L4173:
	movq	416(%rsp), %rcx
	cmpq	112(%rsp), %rcx
	je	.L4174
	call	_ZdlPv
.L4174:
	movq	56(%rsp), %rax
	movq	16(%rax), %r12
	movq	72(%rsp), %rax
	testb	$1, 89(%rax)
	je	.L4175
	movq	64(%rsp), %rax
	movq	%rax, 496(%rsp)
	testq	%r12, %r12
	jne	.L4176
	leaq	.LC8(%rip), %rcx
.LEHB384:
	call	_ZSt19__throw_logic_errorPKc
.L4176:
	movq	%r12, %rcx
	call	strlen
	movq	%rax, 448(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	jbe	.L4177
	movq	96(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE384:
	movq	%rax, 496(%rsp)
	movq	%rax, %rcx
	movq	448(%rsp), %rax
	movq	%rax, 512(%rsp)
	jmp	.L4178
.L4177:
	cmpq	$1, %rax
	jne	.L4179
	movzbl	(%r12), %edx
	movb	%dl, 512(%rsp)
	movq	64(%rsp), %rdx
	jmp	.L4180
.L4179:
	testq	%rax, %rax
	je	.L4366
	movq	64(%rsp), %rcx
.L4178:
	movq	%r12, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	448(%rsp), %rax
	movq	496(%rsp), %rdx
	jmp	.L4180
.L4366:
	movq	64(%rsp), %rdx
.L4180:
	movq	%rax, 504(%rsp)
	movq	%rbp, %rcx
	xorl	%r8d, %r8d
	movb	$0, (%rdx,%rax)
	movl	$40, %edx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy
	movq	496(%rsp), %rcx
	leaq	7(%rax), %r12
	cmpq	504(%rsp), %r12
	jnb	.L4184
	movl	$2, %r9d
	xorl	%r8d, %r8d
	leaq	.LC116(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcyy
	movl	$4, %r9d
	movq	$-1, %r8
	movq	%rbp, %rcx
	leaq	.LC117(%rip), %rdx
	movq	%rax, 128(%rsp)
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcyy
	movq	128(%rsp), %r10
	movq	%rax, 136(%rsp)
	leaq	2(%r10), %rbx
	cmpq	%r10, 504(%rsp)
	ja	.L4183
.L4182:
	xorl	%r8d, %r8d
	movl	$41, %edx
	movq	%rbp, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy
	movq	%rax, %r10
	movq	%rax, %rbx
.L4183:
	movq	496(%rsp), %rcx
	cmpq	%r12, %r10
	jbe	.L4184
	movq	504(%rsp), %r9
	cmpq	%r9, %rbx
	jnb	.L4184
	movq	%r9, %r8
	subq	%r12, %r10
	subq	%r12, %r8
	cmpq	%r8, %r10
	cmovbe	%r10, %r8
	cmpq	%r9, %r12
	jbe	.L4185
	movq	%r12, %r8
	leaq	.LC6(%rip), %rdx
	leaq	.LC12(%rip), %rcx
.LEHB385:
	call	_ZSt24__throw_out_of_range_fmtPKcz
	.p2align 4,,10
	.p2align 3
.L4185:
	leaq	(%rcx,%r12), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	360(%rsp), %r12
	movq	352(%rsp), %rax
	movl	$15, %edx
	cmpq	120(%rsp), %rax
	cmovne	368(%rsp), %rdx
	leaq	1(%r12), %rcx
	movq	%rcx, 128(%rsp)
	cmpq	%rdx, %rcx
	jbe	.L4187
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movq	%rdi, %rcx
	movq	$1, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy
	movq	352(%rsp), %rax
.L4187:
	movb	$40, (%rax,%r12)
	movq	128(%rsp), %rax
	movq	%rax, 360(%rsp)
	movq	352(%rsp), %rax
	movb	$0, 1(%rax,%r12)
	movq	504(%rsp), %r9
	movq	136(%rsp), %rax
	movq	496(%rsp), %rdx
	movq	%r9, %r8
	subq	%rbx, %rax
	subq	%rbx, %r8
	cmpq	%r8, %rax
	cmovbe	%rax, %r8
	cmpq	%r9, %rbx
	jbe	.L4188
	movq	%rbx, %r8
	leaq	.LC6(%rip), %rdx
	leaq	.LC12(%rip), %rcx
	call	_ZSt24__throw_out_of_range_fmtPKcz
	.p2align 4,,10
	.p2align 3
.L4188:
	addq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE385:
	movq	496(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	je	.L4190
	call	_ZdlPv
	jmp	.L4190
	.p2align 4,,10
	.p2align 3
.L4175:
	movq	%r12, %rcx
	call	strlen
	movq	%rax, %r8
	movq	%r13, %rax
	subq	360(%rsp), %rax
	cmpq	%rax, %r8
	jbe	.L4191
	leaq	.LC6(%rip), %rcx
.LEHB386:
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4191:
	movq	%r12, %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.L4190:
	cmpq	%r13, 360(%rsp)
	jne	.L4192
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4192:
	movl	$1, %r8d
	leaq	.LC28(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	56(%rsp), %rax
	movq	120(%rax), %rax
	movq	%rax, 56(%rsp)
	testq	%rax, %rax
	jne	.L4193
	movabsq	$4611686018427387903, %rax
	subq	360(%rsp), %rax
	cmpq	$14, %rax
	ja	.L4194
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4194:
	movl	$15, %r8d
	leaq	.LC118(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE386:
	movq	72(%rsp), %rax
	incq	(%r15)
	movq	%r15, %rcx
	movzbl	89(%rax), %esi
	movq	__imp_PyTuple_Size(%rip), %rax
	andl	$1, %esi
	movq	%rax, 72(%rsp)
.LEHB387:
	call	*%rax
	xorl	%ebx, %ebx
	cmpq	%rsi, %rax
	jbe	.L4196
	jmp	.L4195
	.p2align 4,,10
	.p2align 3
.L4214:
	movabsq	$4611686018427387903, %rax
	subq	360(%rsp), %rax
	cmpq	$1, %rax
	ja	.L4197
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4197:
	movl	$2, %r8d
	leaq	.LC116(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE387:
.L4195:
	movq	%rsi, %rdx
	movq	%r15, %rcx
.LEHB388:
	call	*__imp_PyTuple_GetItem(%rip)
.LEHE388:
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L4198
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB389:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE389:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r12, %rcx
.LEHB390:
	call	__cxa_throw
.LEHE390:
.L4412:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L4316
	.p2align 4,,10
	.p2align 3
.L4198:
	addq	$2, (%rax)
	movq	%rax, %rcx
.LEHB391:
	call	*__imp_PyObject_Repr(%rip)
.LEHE391:
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L4203
	jmp	.L4595
.L4403:
	movq	%rax, %rbx
	movq	%r12, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L4316
.L4595:
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB392:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE392:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB393:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L4203:
	xorl	%r8d, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_PyUnicodeUCS2_FromEncodedObject(%rip)
	decq	0(%r13)
	movq	%rax, %rbx
	jne	.L4204
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.LEHE393:
.L4204:
	testq	%rbx, %rbx
	jne	.L4205
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB394:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE394:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB395:
	call	__cxa_throw
.LEHE395:
	.p2align 4,,10
	.p2align 3
.L4205:
	movq	96(%rsp), %rdx
	movq	%rbp, %rcx
	movq	%rbx, 448(%rsp)
.LEHB396:
	call	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
.LEHE396:
	jmp	.L4596
.L4405:
	movq	%rax, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L4208
.L4404:
	movq	%rax, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L4208
	.p2align 4,,10
	.p2align 3
.L4596:
	movq	504(%rsp), %r8
	movq	496(%rsp), %rdx
	movq	%rdi, %rcx
.LEHB397:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE397:
	movq	496(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	je	.L4210
	call	_ZdlPv
.L4210:
	movq	448(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4212
	decq	(%rcx)
	jne	.L4212
	movq	8(%rcx), %rax
	call	*48(%rax)
	jmp	.L4212
.L4601:
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
	movq	(%r12), %rax
	jmp	.L4213
.L4600:
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L4331:
	movq	72(%rsp), %rax
	incq	%rsi
	movq	%r15, %rcx
.LEHB398:
	call	*%rax
.LEHE398:
	cmpq	%rax, %rsi
	jb	.L4214
	movl	$1, %ebx
.L4196:
	testq	%r14, %r14
	je	.L4216
	incq	(%r14)
	movq	%r14, %rcx
.LEHB399:
	call	*__imp_PyDict_Size(%rip)
	testq	%rax, %rax
	je	.L4217
	testb	%bl, %bl
	je	.L4218
	leaq	.LC119(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.L4218:
	leaq	.LC120(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	leaq	472(%rsp), %rax
	movq	%r14, %rcx
	leaq	456(%rsp), %r8
	movq	%r14, 448(%rsp)
	movq	%rax, 112(%rsp)
	movq	%rax, %rdx
	movq	__imp_PyDict_Next(%rip), %rax
	movq	%r8, 96(%rsp)
	movq	80(%rsp), %r9
	movq	$0, 472(%rsp)
	movq	%rax, 72(%rsp)
	call	*%rax
	testl	%eax, %eax
	je	.L4219
	movq	472(%rsp), %rax
	jmp	.L4220
.L4219:
	movq	$-1, 472(%rsp)
	movq	$-1, %rax
.L4220:
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L4258:
	leaq	.LC122(%rip), %rsi
.L4257:
	cmpq	$-1, %rax
	je	.L4217
	vmovdqu	456(%rsp), %xmm4
	vmovaps	%xmm4, 416(%rsp)
	testb	%dl, %dl
	jne	.L4222
	movabsq	$4611686018427387903, %rax
	subq	360(%rsp), %rax
	cmpq	$1, %rax
	ja	.L4223
	leaq	.LC6(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	.p2align 4,,10
	.p2align 3
.L4223:
	movl	$2, %r8d
	leaq	.LC116(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.L4222:
	leaq	.LC121(%rip), %rcx
	call	*__imp_PyUnicodeUCS2_FromString(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L4224
	leaq	.LC42(%rip), %rcx
	call	_ZN8pybind1113pybind11_failEPKc
.LEHE399:
	.p2align 4,,10
	.p2align 3
.L4224:
	movq	88(%rsp), %r8
	movq	104(%rsp), %rcx
	movq	%rbp, %rdx
	leaq	424(%rsp), %r9
	movq	%rax, 504(%rsp)
	movq	%rsi, 512(%rsp)
	movq	$0, 520(%rsp)
.LEHB400:
	call	_ZNK8pybind116detail10object_apiINS0_8accessorINS0_17accessor_policies8str_attrEEEEclILNS_19return_value_policyE1EJRNS_6handleESA_EEENS_6objectEDpOT0_
.LEHE400:
	movq	384(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4225
	movq	8(%rcx), %rax
	testl	$402653184, 168(%rax)
	je	.L4225
	movq	%rcx, 216(%rsp)
	jmp	.L4226
	.p2align 4,,10
	.p2align 3
.L4225:
.LEHB401:
	call	*__imp_PyObject_Str(%rip)
.LEHE401:
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L4227
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB402:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE402:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB403:
	call	__cxa_throw
	.p2align 4,,10
	.p2align 3
.L4227:
	xorl	%r8d, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_PyUnicodeUCS2_FromEncodedObject(%rip)
	decq	0(%r13)
	movq	%rax, %rbx
	jne	.L4228
	movq	8(%r13), %rax
	movq	%r13, %rcx
	call	*48(%rax)
.LEHE403:
	jmp	.L4228
.L4410:
	movq	%rax, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L4230
	.p2align 4,,10
	.p2align 3
.L4228:
	movq	%rbx, 216(%rsp)
	testq	%rbx, %rbx
	jne	.L4231
	movl	$40, %ecx
	call	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB404:
	call	_ZN8pybind1117error_already_setC1Ev
.LEHE404:
	leaq	_ZN8pybind1117error_already_setD1Ev(%rip), %r8
	leaq	_ZTIN8pybind1117error_already_setE(%rip), %rdx
	movq	%r13, %rcx
.LEHB405:
	call	__cxa_throw
.LEHE405:
.L4409:
	movq	%rax, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	__cxa_free_exception
	jmp	.L4233
.L4408:
	movq	%rax, %rbx
	vzeroupper
.L4233:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4235
	decq	(%rcx)
	jne	.L4235
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4235:
	jmp	.L4230
	.p2align 4,,10
	.p2align 3
.L4231:
	movq	384(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4226
	decq	(%rcx)
	jne	.L4226
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4226:
	movq	520(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4240
	decq	(%rcx)
	jne	.L4240
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4240:
	leaq	216(%rsp), %rdx
	movq	%rbp, %rcx
.LEHB406:
	call	_ZNK8pybind113strcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv
.LEHE406:
	jmp	.L4597
.L4407:
	movq	%rax, %rbx
	vzeroupper
.L4230:
	movq	384(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4244
	decq	(%rcx)
	jne	.L4244
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4244:
	jmp	.L4246
.L4406:
	movq	%rax, %rbx
	vzeroupper
.L4246:
	movq	520(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4248
	decq	(%rcx)
	jne	.L4248
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4248:
	jmp	.L4250
	.p2align 4,,10
	.p2align 3
.L4597:
	movq	504(%rsp), %r8
	movq	496(%rsp), %rdx
	movq	%rdi, %rcx
.LEHB407:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE407:
	movq	496(%rsp), %rcx
	cmpq	64(%rsp), %rcx
	je	.L4251
	call	_ZdlPv
.L4251:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4253
	decq	(%rcx)
	jne	.L4253
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4253:
	decq	(%r12)
	jne	.L4255
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L4255:
	movq	80(%rsp), %r9
	movq	96(%rsp), %r8
	movq	112(%rsp), %rdx
	movq	448(%rsp), %rcx
	movq	72(%rsp), %rax
.LEHB408:
	call	*%rax
.LEHE408:
	testl	%eax, %eax
	je	.L4256
	movq	472(%rsp), %rax
	xorl	%edx, %edx
	jmp	.L4257
	.p2align 4,,10
	.p2align 3
.L4256:
	movq	$-1, 472(%rsp)
	xorl	%edx, %edx
	movq	$-1, %rax
	jmp	.L4258
.L4217:
	decq	(%r14)
	jne	.L4216
	movq	8(%r14), %rax
	movq	%r14, %rcx
	call	*48(%rax)
.L4216:
	xorl	%r8d, %r8d
	movl	$5, %r9d
	leaq	.LC123(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcyy
	cmpq	$-1, %rax
	je	.L4260
	leaq	.LC124(%rip), %rdx
	movq	%rdi, %rcx
.LEHB409:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.L4260:
	movq	__imp_PyExc_TypeError(%rip), %rax
	movq	352(%rsp), %rdx
	movq	(%rax), %rcx
	call	*__imp_PyErr_SetString(%rip)
.LEHE409:
	decq	(%r15)
	jne	.L4261
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L4261:
	movq	352(%rsp), %rcx
	cmpq	120(%rsp), %rcx
	je	.L3930
	call	_ZdlPv
	jmp	.L3930
	.p2align 4,,10
	.p2align 3
.L4154:
	cmpq	$0, 56(%rsp)
	jne	.L4262
	leaq	496(%rsp), %rbp
	leaq	.LC125(%rip), %rdx
	movq	%rbp, %rcx
.LEHB410:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0
.LEHE410:
	movq	80(%rsp), %rax
	movq	%rbp, %rcx
	movq	16(%rax), %rdx
.LEHB411:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	xorl	%r8d, %r8d
	movl	$5, %r9d
	leaq	.LC123(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcyy
	cmpq	$-1, %rax
	je	.L4263
	leaq	.LC124(%rip), %rdx
	movq	%rbp, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.L4263:
	movq	__imp_PyExc_TypeError(%rip), %rax
	movq	496(%rsp), %rdx
	movq	(%rax), %rcx
	call	*__imp_PyErr_SetString(%rip)
.LEHE411:
	movq	496(%rsp), %rcx
	leaq	512(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L3930
	call	_ZdlPv
	jmp	.L3930
	.p2align 4,,10
	.p2align 3
.L4262:
	movq	72(%rsp), %rax
	testb	$1, 89(%rax)
	je	.L3930
	movq	320(%rsp), %rdx
	movzbl	48(%rdx), %eax
	testb	$2, %al
	je	.L4265
	shrb	$2, %al
	andl	$1, %eax
	jmp	.L4266
.L4265:
	movq	24(%rdx), %rdx
	movq	328(%rsp), %rax
	movzbl	(%rdx,%rax), %eax
	andl	$1, %eax
.L4266:
	testl	%eax, %eax
	jne	.L3930
	movq	336(%rsp), %rax
	movq	64(%rsp), %rcx
	xorl	%edx, %edx
.LEHB412:
	call	*40(%rax)
.LEHE412:
	jmp	.L3930
.L4371:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
.L4049:
	movq	448(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4268
	decq	(%rcx)
	jne	.L4268
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4268:
	leaq	416(%rsp), %rax
	leaq	496(%rsp), %rbp
	movq	%rax, 88(%rsp)
	jmp	.L4035
.L4374:
	movq	%rax, %rdi
	movq	%rdx, %rbp
	leaq	384(%rsp), %rcx
	vzeroupper
	call	_ZN8pybind116detail19loader_life_supportD1Ev
	movq	%rdi, %rcx
	jmp	.L4271
.L4373:
	movq	%rax, %rcx
	movq	%rdx, %rbp
	vzeroupper
.L4271:
	cmpq	$3, %rbp
	je	.L4272
	leaq	448(%rsp), %rax
	movq	%rbp, %rsi
	movq	%rcx, %rbx
	movq	%rax, 96(%rsp)
	leaq	416(%rsp), %rax
	leaq	496(%rsp), %rbp
	movq	%rax, 88(%rsp)
	jmp	.L4273
.L4272:
	call	__cxa_begin_catch
	leaq	448(%rsp), %rax
	leaq	496(%rsp), %rbp
	movq	%rax, 96(%rsp)
	leaq	416(%rsp), %rax
	movq	%rax, 88(%rsp)
.LEHB413:
	call	__cxa_end_catch
.LEHE413:
	jmp	.L4274
.L4372:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	vzeroupper
.L4273:
	movq	96(%rsp), %rcx
	call	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	jmp	.L4035
.L4370:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	leaq	416(%rsp), %rax
	leaq	496(%rsp), %rbp
	movq	%rax, 88(%rsp)
	vzeroupper
.L4035:
	movq	352(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4276
	decq	(%rcx)
	jne	.L4276
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4276:
	jmp	.L4278
.L4369:
	movq	%rax, %rbx
	movq	%rdx, %rsi
	leaq	416(%rsp), %rax
	leaq	496(%rsp), %rbp
	movq	%rax, 88(%rsp)
	vzeroupper
.L4278:
	movq	%rbp, %rcx
	movq	%rbx, %r12
	movq	%rsi, %rbx
	call	_ZN8pybind116detail13function_callD1Ev
	jmp	.L3974
.L4377:
	movq	%rax, %rdi
	movq	%rdx, %rbp
	movq	%r13, %rcx
	vzeroupper
	call	_ZN8pybind116detail19loader_life_supportD1Ev
	movq	%rdi, %rcx
	jmp	.L4280
.L4376:
	movq	%rax, %rcx
	movq	%rdx, %rbp
	vzeroupper
.L4280:
	cmpq	$3, %rbp
	je	.L4281
	leaq	416(%rsp), %rax
	movq	%rcx, %r12
	movq	%rbp, %rbx
	movq	%rax, 88(%rsp)
	jmp	.L3974
.L4281:
	call	__cxa_begin_catch
.LEHB414:
	call	__cxa_end_catch
.LEHE414:
	jmp	.L4138
.L4375:
	movq	%rax, %r12
	movq	%rdx, %rbx
	leaq	416(%rsp), %rax
	movq	%rax, 88(%rsp)
	vzeroupper
.L3974:
	movq	88(%rsp), %rcx
	call	_ZNSt6vectorIN8pybind116detail13function_callESaIS2_EED1Ev
	decq	%rbx
	jne	.L4282
	movq	%r12, %rcx
	call	__cxa_begin_catch
	vpxor	%xmm0, %xmm0, %xmm0
	movq	32(%rax), %r8
	movq	24(%rax), %rdx
	movq	$0, 32(%rax)
	movq	16(%rax), %rcx
	vmovups	%xmm0, 16(%rax)
.LEHB415:
	call	*__imp_PyErr_Restore(%rip)
.LEHE415:
.LEHB416:
	call	__cxa_end_catch
.LEHE416:
	movq	$0, 56(%rsp)
	jmp	.L3930
.L4282:
	movq	%r12, %rcx
	call	__cxa_begin_catch
	movq	88(%rsp), %rcx
	call	_ZSt17current_exceptionv
.LEHB417:
	call	_ZN8pybind116detail13get_internalsEv
.LEHE417:
	movq	336(%rax), %rbx
	leaq	496(%rsp), %r12
	leaq	448(%rsp), %rsi
.L4285:
	testq	%rbx, %rbx
	je	.L4283
	movq	88(%rsp), %rdx
	movq	%r12, %rcx
	movq	8(%rbx), %rdi
	call	_ZNSt15__exception_ptr13exception_ptrC1ERKS0_
	movq	%r12, %rcx
.LEHB418:
	call	*%rdi
.LEHE418:
	movq	%r12, %rcx
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	jmp	.L4284
.L4598:
	movq	(%rbx), %rbx
	jmp	.L4285
.L4283:
	movq	__imp_PyExc_SystemError(%rip), %rax
	leaq	.LC126(%rip), %rdx
	movq	(%rax), %rcx
.LEHB419:
	call	*__imp_PyErr_SetString(%rip)
.LEHE419:
.L4284:
	movq	88(%rsp), %rcx
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
.LEHB420:
	call	__cxa_end_catch
.LEHE420:
	movq	$0, 56(%rsp)
	jmp	.L3930
.L4378:
	movq	%rax, %r12
	vzeroupper
	call	__cxa_end_catch
	movq	%r12, %rcx
.LEHB421:
	call	_Unwind_Resume
.LEHE421:
.L4380:
	movq	%rax, %r13
	movq	%r12, %rcx
	vzeroupper
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	movq	%r13, %rcx
	call	__cxa_begin_catch
	movq	%rsi, %rcx
	call	_ZSt17current_exceptionv
	movq	448(%rsp), %rax
	movq	88(%rsp), %rdx
	movq	%r12, %rcx
	movq	$0, 448(%rsp)
	movq	%rax, 496(%rsp)
	call	_ZNSt15__exception_ptr13exception_ptr4swapERS0_
	movq	%r12, %rcx
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	movq	%rsi, %rcx
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
.LEHB422:
	call	__cxa_end_catch
.LEHE422:
	jmp	.L4598
.L4379:
	movq	88(%rsp), %rcx
	movq	%rax, %r12
	vzeroupper
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	call	__cxa_end_catch
	movq	%r12, %rcx
.LEHB423:
	call	_Unwind_Resume
.L4384:
	movq	496(%rsp), %rcx
	movq	%rax, %r12
	leaq	512(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L4611
	vzeroupper
	call	_ZdlPv
	jmp	.L4291
.L4611:
	vzeroupper
.L4291:
	jmp	.L4292
.L4383:
	movq	%rax, %r12
	vzeroupper
.L4292:
	movq	416(%rsp), %rcx
	leaq	432(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L4293
	call	_ZdlPv
.L4293:
	jmp	.L4294
.L4382:
	movq	%rax, %r12
	vzeroupper
.L4294:
	movq	384(%rsp), %rcx
	cmpq	%rbx, %rcx
	je	.L4295
	call	_ZdlPv
.L4295:
	jmp	.L4296
.L4381:
	movq	%rax, %r12
	vzeroupper
.L4296:
	movq	448(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L4297
	call	_ZdlPv
.L4297:
	movq	%r12, %rcx
	call	_Unwind_Resume
.LEHE423:
.L4388:
	movq	496(%rsp), %rcx
	movq	%rax, %r12
	cmpq	64(%rsp), %rcx
	je	.L4612
	vzeroupper
	call	_ZdlPv
	jmp	.L4299
.L4612:
	vzeroupper
.L4299:
	jmp	.L4300
.L4387:
	movq	%rax, %r12
	vzeroupper
.L4300:
	movq	448(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L4301
	call	_ZdlPv
.L4301:
	jmp	.L4302
.L4386:
	movq	%rax, %r12
	vzeroupper
.L4302:
	movq	416(%rsp), %rcx
	cmpq	112(%rsp), %rcx
	je	.L4303
	call	_ZdlPv
.L4303:
	jmp	.L4304
.L4389:
	movq	496(%rsp), %rcx
	movq	%rax, %r12
	cmpq	64(%rsp), %rcx
	je	.L4613
	vzeroupper
	call	_ZdlPv
	jmp	.L4306
.L4613:
	vzeroupper
.L4306:
	jmp	.L4304
.L4393:
	movq	496(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	64(%rsp), %rcx
	je	.L4614
	vzeroupper
	call	_ZdlPv
	jmp	.L4308
.L4614:
	vzeroupper
.L4308:
	jmp	.L4309
.L4392:
	movq	%rax, %rbx
	vzeroupper
.L4309:
	movq	448(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4311
	decq	(%rcx)
	jne	.L4311
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4311:
	jmp	.L4208
.L4391:
	movq	%rax, %rbx
	vzeroupper
.L4208:
	decq	(%r12)
	jne	.L4313
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L4313:
	decq	(%r12)
	je	.L4599
	jmp	.L4316
.L4411:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L4316
.L4599:
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L4316:
	jmp	.L4317
.L4396:
	movq	496(%rsp), %rcx
	movq	%rax, %rbx
	cmpq	64(%rsp), %rcx
	je	.L4615
	vzeroupper
	call	_ZdlPv
	jmp	.L4319
.L4615:
	vzeroupper
.L4319:
	jmp	.L4320
.L4395:
	movq	%rax, %rbx
	vzeroupper
.L4320:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L4322
	decq	(%rcx)
	jne	.L4322
	movq	8(%rcx), %rax
	call	*48(%rax)
.L4322:
.L4250:
	decq	(%r12)
	jne	.L4324
	movq	8(%r12), %rax
	movq	%r12, %rcx
	call	*48(%rax)
.L4324:
	jmp	.L4325
.L4394:
	movq	%rax, %rbx
	vzeroupper
.L4325:
	decq	(%r14)
	jne	.L4326
	movq	8(%r14), %rax
	movq	%r14, %rcx
	call	*48(%rax)
.L4326:
	jmp	.L4317
.L4390:
	movq	%rax, %rbx
	vzeroupper
.L4317:
	decq	(%r15)
	jne	.L4327
	movq	8(%r15), %rax
	movq	%r15, %rcx
	call	*48(%rax)
.L4327:
	movq	%rbx, %r12
	jmp	.L4304
.L4385:
	movq	%rax, %r12
	vzeroupper
.L4304:
	movq	352(%rsp), %rcx
	cmpq	120(%rsp), %rcx
	je	.L4328
	call	_ZdlPv
.L4328:
	movq	%r12, %rcx
.LEHB424:
	call	_Unwind_Resume
.L4397:
	movq	496(%rsp), %rcx
	movq	%rax, %r12
	leaq	512(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L4616
	vzeroupper
	call	_ZdlPv
	jmp	.L4330
.L4616:
	vzeroupper
.L4330:
	movq	%r12, %rcx
	call	_Unwind_Resume
.LEHE424:
	.p2align 4,,10
	.p2align 3
.L4213:
	decq	%rax
	movq	%rax, (%r12)
	jne	.L4331
	jmp	.L4600
	.p2align 4,,10
	.p2align 3
.L4212:
	movq	(%r12), %rax
	decq	%rax
	movq	%rax, (%r12)
	jne	.L4213
	jmp	.L4601
.L4334:
	movq	56(%rsp), %rax
	movq	16(%rax), %r12
	jmp	.L4175
	.p2align 4,,10
	.p2align 3
.L4184:
	cmpq	64(%rsp), %rcx
	je	.L4334
	call	_ZdlPv
	movq	56(%rsp), %rax
	movq	16(%rax), %r12
	jmp	.L4175
	.p2align 4,,10
	.p2align 3
.L3996:
	movq	24(%r15,%rbp,8), %rax
	movq	%rax, 448(%rsp)
	jmp	.L4335
.L4355:
	movq	$8, 56(%rsp)
.L3981:
	movq	56(%rsp), %rcx
	vzeroupper
.LEHB425:
	call	_Znwy
.LEHE425:
	movq	56(%rsp), %r11
	leaq	8(%rax), %rdx
	addq	%rax, %r11
	jmp	.L3982
	.p2align 4,,10
	.p2align 3
.L3938:
	testb	%sil, %sil
	leaq	-1(%rdi), %rax
	cmove	%rdi, %rax
	movq	%rax, %rsi
	cmpq	%rax, %r12
	jbe	.L3940
	jmp	.L4127
.L4028:
	testb	$16, %al
	je	.L4060
	jmp	.L4339
.L4594:
	movl	%edx, %r9d
	movq	%rsi, %r10
	xorl	%eax, %eax
	andl	$-8, %r9d
.L4341:
	movl	%eax, %ecx
	addl	$8, %eax
	movq	(%rbx,%rcx), %r8
	movq	%r8, (%r10,%rcx)
	cmpl	%r9d, %eax
	jb	.L4341
	movq	80(%rsp), %rsi
	leaq	(%rsi,%rax), %r8
	addq	%rbx, %rax
.L4340:
	xorl	%ecx, %ecx
	testb	$4, %dl
	je	.L4343
	movl	(%rax), %ecx
	movl	%ecx, (%r8)
	movl	$4, %ecx
.L4343:
	testb	$2, %dl
	je	.L4344
	movzwl	(%rax,%rcx), %r9d
	movw	%r9w, (%r8,%rcx)
	addq	$2, %rcx
.L4344:
	testb	$1, %dl
	je	.L4345
	movzbl	(%rax,%rcx), %eax
	movb	%al, (%r8,%rcx)
.L4345:
	movq	72(%rsp), %rax
	movq	%rdx, 456(%rsp)
	leaq	400(%rsp), %rbx
	movb	$0, 464(%rsp,%rdx)
	movq	(%rax), %r12
	leaq	384(%rsp), %rax
	movq	%rbx, 384(%rsp)
	movq	%rax, 104(%rsp)
	testq	%r12, %r12
	jne	.L4346
	jmp	.L4602
	.p2align 4,,10
	.p2align 3
.L4128:
	testq	%r12, %r12
	jne	.L4368
	vzeroupper
	jmp	.L4351
.L3954:
	xorl	%edi, %edi
	jmp	.L4350
	.p2align 4,,10
	.p2align 3
.L3930:
	movq	56(%rsp), %rax
	addq	$616, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA10957:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10957-.LLSDATTD10957
.LLSDATTD10957:
	.byte	0x1
	.uleb128 .LLSDACSE10957-.LLSDACSB10957
.LLSDACSB10957:
	.uleb128 .LEHB354-.LFB10957
	.uleb128 .LEHE354-.LEHB354
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB355-.LFB10957
	.uleb128 .LEHE355-.LEHB355
	.uleb128 .L4398-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB356-.LFB10957
	.uleb128 .LEHE356-.LEHB356
	.uleb128 .L4369-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB357-.LFB10957
	.uleb128 .LEHE357-.LEHB357
	.uleb128 .L4370-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB358-.LFB10957
	.uleb128 .LEHE358-.LEHB358
	.uleb128 .L4370-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB359-.LFB10957
	.uleb128 .LEHE359-.LEHB359
	.uleb128 .L4399-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB360-.LFB10957
	.uleb128 .LEHE360-.LEHB360
	.uleb128 .L4371-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB361-.LFB10957
	.uleb128 .LEHE361-.LEHB361
	.uleb128 .L4371-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB362-.LFB10957
	.uleb128 .LEHE362-.LEHB362
	.uleb128 .L4371-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB363-.LFB10957
	.uleb128 .LEHE363-.LEHB363
	.uleb128 .L4400-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB364-.LFB10957
	.uleb128 .LEHE364-.LEHB364
	.uleb128 .L4371-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB365-.LFB10957
	.uleb128 .LEHE365-.LEHB365
	.uleb128 .L4370-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB366-.LFB10957
	.uleb128 .LEHE366-.LEHB366
	.uleb128 .L4370-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB367-.LFB10957
	.uleb128 .LEHE367-.LEHB367
	.uleb128 .L4370-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB368-.LFB10957
	.uleb128 .LEHE368-.LEHB368
	.uleb128 .L4372-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB369-.LFB10957
	.uleb128 .LEHE369-.LEHB369
	.uleb128 .L4373-.LFB10957
	.uleb128 0x7
	.uleb128 .LEHB370-.LFB10957
	.uleb128 .LEHE370-.LEHB370
	.uleb128 .L4374-.LFB10957
	.uleb128 0x7
	.uleb128 .LEHB371-.LFB10957
	.uleb128 .LEHE371-.LEHB371
	.uleb128 .L4401-.LFB10957
	.uleb128 0x1
	.uleb128 .LEHB372-.LFB10957
	.uleb128 .LEHE372-.LEHB372
	.uleb128 .L4372-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB373-.LFB10957
	.uleb128 .LEHE373-.LEHB373
	.uleb128 .L4376-.LFB10957
	.uleb128 0x7
	.uleb128 .LEHB374-.LFB10957
	.uleb128 .LEHE374-.LEHB374
	.uleb128 .L4377-.LFB10957
	.uleb128 0x7
	.uleb128 .LEHB375-.LFB10957
	.uleb128 .LEHE375-.LEHB375
	.uleb128 .L4402-.LFB10957
	.uleb128 0x1
	.uleb128 .LEHB376-.LFB10957
	.uleb128 .LEHE376-.LEHB376
	.uleb128 .L4381-.LFB10957
	.uleb128 0
	.uleb128 .LEHB377-.LFB10957
	.uleb128 .LEHE377-.LEHB377
	.uleb128 .L4382-.LFB10957
	.uleb128 0
	.uleb128 .LEHB378-.LFB10957
	.uleb128 .LEHE378-.LEHB378
	.uleb128 .L4383-.LFB10957
	.uleb128 0
	.uleb128 .LEHB379-.LFB10957
	.uleb128 .LEHE379-.LEHB379
	.uleb128 .L4384-.LFB10957
	.uleb128 0
	.uleb128 .LEHB380-.LFB10957
	.uleb128 .LEHE380-.LEHB380
	.uleb128 .L4385-.LFB10957
	.uleb128 0
	.uleb128 .LEHB381-.LFB10957
	.uleb128 .LEHE381-.LEHB381
	.uleb128 .L4386-.LFB10957
	.uleb128 0
	.uleb128 .LEHB382-.LFB10957
	.uleb128 .LEHE382-.LEHB382
	.uleb128 .L4387-.LFB10957
	.uleb128 0
	.uleb128 .LEHB383-.LFB10957
	.uleb128 .LEHE383-.LEHB383
	.uleb128 .L4388-.LFB10957
	.uleb128 0
	.uleb128 .LEHB384-.LFB10957
	.uleb128 .LEHE384-.LEHB384
	.uleb128 .L4385-.LFB10957
	.uleb128 0
	.uleb128 .LEHB385-.LFB10957
	.uleb128 .LEHE385-.LEHB385
	.uleb128 .L4389-.LFB10957
	.uleb128 0
	.uleb128 .LEHB386-.LFB10957
	.uleb128 .LEHE386-.LEHB386
	.uleb128 .L4385-.LFB10957
	.uleb128 0
	.uleb128 .LEHB387-.LFB10957
	.uleb128 .LEHE387-.LEHB387
	.uleb128 .L4390-.LFB10957
	.uleb128 0
	.uleb128 .LEHB388-.LFB10957
	.uleb128 .LEHE388-.LEHB388
	.uleb128 .L4411-.LFB10957
	.uleb128 0
	.uleb128 .LEHB389-.LFB10957
	.uleb128 .LEHE389-.LEHB389
	.uleb128 .L4403-.LFB10957
	.uleb128 0
	.uleb128 .LEHB390-.LFB10957
	.uleb128 .LEHE390-.LEHB390
	.uleb128 .L4412-.LFB10957
	.uleb128 0
	.uleb128 .LEHB391-.LFB10957
	.uleb128 .LEHE391-.LEHB391
	.uleb128 .L4391-.LFB10957
	.uleb128 0
	.uleb128 .LEHB392-.LFB10957
	.uleb128 .LEHE392-.LEHB392
	.uleb128 .L4405-.LFB10957
	.uleb128 0
	.uleb128 .LEHB393-.LFB10957
	.uleb128 .LEHE393-.LEHB393
	.uleb128 .L4391-.LFB10957
	.uleb128 0
	.uleb128 .LEHB394-.LFB10957
	.uleb128 .LEHE394-.LEHB394
	.uleb128 .L4404-.LFB10957
	.uleb128 0
	.uleb128 .LEHB395-.LFB10957
	.uleb128 .LEHE395-.LEHB395
	.uleb128 .L4391-.LFB10957
	.uleb128 0
	.uleb128 .LEHB396-.LFB10957
	.uleb128 .LEHE396-.LEHB396
	.uleb128 .L4392-.LFB10957
	.uleb128 0
	.uleb128 .LEHB397-.LFB10957
	.uleb128 .LEHE397-.LEHB397
	.uleb128 .L4393-.LFB10957
	.uleb128 0
	.uleb128 .LEHB398-.LFB10957
	.uleb128 .LEHE398-.LEHB398
	.uleb128 .L4390-.LFB10957
	.uleb128 0
	.uleb128 .LEHB399-.LFB10957
	.uleb128 .LEHE399-.LEHB399
	.uleb128 .L4394-.LFB10957
	.uleb128 0
	.uleb128 .LEHB400-.LFB10957
	.uleb128 .LEHE400-.LEHB400
	.uleb128 .L4406-.LFB10957
	.uleb128 0
	.uleb128 .LEHB401-.LFB10957
	.uleb128 .LEHE401-.LEHB401
	.uleb128 .L4407-.LFB10957
	.uleb128 0
	.uleb128 .LEHB402-.LFB10957
	.uleb128 .LEHE402-.LEHB402
	.uleb128 .L4410-.LFB10957
	.uleb128 0
	.uleb128 .LEHB403-.LFB10957
	.uleb128 .LEHE403-.LEHB403
	.uleb128 .L4407-.LFB10957
	.uleb128 0
	.uleb128 .LEHB404-.LFB10957
	.uleb128 .LEHE404-.LEHB404
	.uleb128 .L4409-.LFB10957
	.uleb128 0
	.uleb128 .LEHB405-.LFB10957
	.uleb128 .LEHE405-.LEHB405
	.uleb128 .L4408-.LFB10957
	.uleb128 0
	.uleb128 .LEHB406-.LFB10957
	.uleb128 .LEHE406-.LEHB406
	.uleb128 .L4395-.LFB10957
	.uleb128 0
	.uleb128 .LEHB407-.LFB10957
	.uleb128 .LEHE407-.LEHB407
	.uleb128 .L4396-.LFB10957
	.uleb128 0
	.uleb128 .LEHB408-.LFB10957
	.uleb128 .LEHE408-.LEHB408
	.uleb128 .L4394-.LFB10957
	.uleb128 0
	.uleb128 .LEHB409-.LFB10957
	.uleb128 .LEHE409-.LEHB409
	.uleb128 .L4390-.LFB10957
	.uleb128 0
	.uleb128 .LEHB410-.LFB10957
	.uleb128 .LEHE410-.LEHB410
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB411-.LFB10957
	.uleb128 .LEHE411-.LEHB411
	.uleb128 .L4397-.LFB10957
	.uleb128 0
	.uleb128 .LEHB412-.LFB10957
	.uleb128 .LEHE412-.LEHB412
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB413-.LFB10957
	.uleb128 .LEHE413-.LEHB413
	.uleb128 .L4372-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB414-.LFB10957
	.uleb128 .LEHE414-.LEHB414
	.uleb128 .L4375-.LFB10957
	.uleb128 0x5
	.uleb128 .LEHB415-.LFB10957
	.uleb128 .LEHE415-.LEHB415
	.uleb128 .L4378-.LFB10957
	.uleb128 0
	.uleb128 .LEHB416-.LFB10957
	.uleb128 .LEHE416-.LEHB416
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB417-.LFB10957
	.uleb128 .LEHE417-.LEHB417
	.uleb128 .L4379-.LFB10957
	.uleb128 0
	.uleb128 .LEHB418-.LFB10957
	.uleb128 .LEHE418-.LEHB418
	.uleb128 .L4380-.LFB10957
	.uleb128 0x1
	.uleb128 .LEHB419-.LFB10957
	.uleb128 .LEHE419-.LEHB419
	.uleb128 .L4379-.LFB10957
	.uleb128 0
	.uleb128 .LEHB420-.LFB10957
	.uleb128 .LEHE420-.LEHB420
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB421-.LFB10957
	.uleb128 .LEHE421-.LEHB421
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB422-.LFB10957
	.uleb128 .LEHE422-.LEHB422
	.uleb128 .L4379-.LFB10957
	.uleb128 0
	.uleb128 .LEHB423-.LFB10957
	.uleb128 .LEHE423-.LEHB423
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB424-.LFB10957
	.uleb128 .LEHE424-.LEHB424
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB425-.LFB10957
	.uleb128 .LEHE425-.LEHB425
	.uleb128 .L4369-.LFB10957
	.uleb128 0x5
.LLSDACSE10957:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.byte	0
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.align 4
	.long	.LDFCM9-.
	.long	0

	.long	.LDFCM8-.
.LLSDATT10957:
	.section	.text$_ZN8pybind1112cpp_function10dispatcherEP7_objectS2_S2_,"x"
	.linkonce discard
	.seh_endproc
	.globl	_ZTSN8pybind116detail12pyobject_tagE
	.section	.rdata$_ZTSN8pybind116detail12pyobject_tagE,"dr"
	.linkonce same_size
	.align 32
_ZTSN8pybind116detail12pyobject_tagE:
	.ascii "N8pybind116detail12pyobject_tagE\0"
	.globl	_ZTIN8pybind116detail12pyobject_tagE
	.section	.rdata$_ZTIN8pybind116detail12pyobject_tagE,"dr"
	.linkonce same_size
	.align 8
_ZTIN8pybind116detail12pyobject_tagE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN8pybind116detail12pyobject_tagE
	.globl	_ZTSN8pybind116detail10object_apiINS_6handleEEE
	.section	.rdata$_ZTSN8pybind116detail10object_apiINS_6handleEEE,"dr"
	.linkonce same_size
	.align 32
_ZTSN8pybind116detail10object_apiINS_6handleEEE:
	.ascii "N8pybind116detail10object_apiINS_6handleEEE\0"
	.globl	_ZTIN8pybind116detail10object_apiINS_6handleEEE
	.section	.rdata$_ZTIN8pybind116detail10object_apiINS_6handleEEE,"dr"
	.linkonce same_size
	.align 8
_ZTIN8pybind116detail10object_apiINS_6handleEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8pybind116detail10object_apiINS_6handleEEE
	.quad	_ZTIN8pybind116detail12pyobject_tagE
	.globl	_ZTSSt9exception
	.section	.rdata$_ZTSSt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9exception:
	.ascii "St9exception\0"
	.globl	_ZTISt9exception
	.section	.rdata$_ZTISt9exception,"dr"
	.linkonce same_size
	.align 8
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception
	.globl	_ZTSSt9bad_alloc
	.section	.rdata$_ZTSSt9bad_alloc,"dr"
	.linkonce same_size
	.align 8
_ZTSSt9bad_alloc:
	.ascii "St9bad_alloc\0"
	.globl	_ZTISt9bad_alloc
	.section	.rdata$_ZTISt9bad_alloc,"dr"
	.linkonce same_size
	.align 8
_ZTISt9bad_alloc:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt9bad_alloc
	.quad	_ZTISt9exception
	.globl	_ZTSSt11logic_error
	.section	.rdata$_ZTSSt11logic_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt11logic_error:
	.ascii "St11logic_error\0"
	.globl	_ZTISt11logic_error
	.section	.rdata$_ZTISt11logic_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception
	.globl	_ZTSSt12domain_error
	.section	.rdata$_ZTSSt12domain_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt12domain_error:
	.ascii "St12domain_error\0"
	.globl	_ZTISt12domain_error
	.section	.rdata$_ZTISt12domain_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt12domain_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12domain_error
	.quad	_ZTISt11logic_error
	.globl	_ZTSSt16invalid_argument
	.section	.rdata$_ZTSSt16invalid_argument,"dr"
	.linkonce same_size
	.align 16
_ZTSSt16invalid_argument:
	.ascii "St16invalid_argument\0"
	.globl	_ZTISt16invalid_argument
	.section	.rdata$_ZTISt16invalid_argument,"dr"
	.linkonce same_size
	.align 8
_ZTISt16invalid_argument:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16invalid_argument
	.quad	_ZTISt11logic_error
	.globl	_ZTSSt12length_error
	.section	.rdata$_ZTSSt12length_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt12length_error:
	.ascii "St12length_error\0"
	.globl	_ZTISt12length_error
	.section	.rdata$_ZTISt12length_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt12length_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12length_error
	.quad	_ZTISt11logic_error
	.globl	_ZTSSt12out_of_range
	.section	.rdata$_ZTSSt12out_of_range,"dr"
	.linkonce same_size
	.align 16
_ZTSSt12out_of_range:
	.ascii "St12out_of_range\0"
	.globl	_ZTISt12out_of_range
	.section	.rdata$_ZTISt12out_of_range,"dr"
	.linkonce same_size
	.align 8
_ZTISt12out_of_range:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12out_of_range
	.quad	_ZTISt11logic_error
	.globl	_ZTSSt13runtime_error
	.section	.rdata$_ZTSSt13runtime_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt13runtime_error:
	.ascii "St13runtime_error\0"
	.globl	_ZTISt13runtime_error
	.section	.rdata$_ZTISt13runtime_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt13runtime_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt13runtime_error
	.quad	_ZTISt9exception
	.globl	_ZTSSt11range_error
	.section	.rdata$_ZTSSt11range_error,"dr"
	.linkonce same_size
	.align 16
_ZTSSt11range_error:
	.ascii "St11range_error\0"
	.globl	_ZTISt11range_error
	.section	.rdata$_ZTISt11range_error,"dr"
	.linkonce same_size
	.align 8
_ZTISt11range_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11range_error
	.quad	_ZTISt13runtime_error
	.globl	_ZTSN8pybind1117builtin_exceptionE
	.section	.rdata$_ZTSN8pybind1117builtin_exceptionE,"dr"
	.linkonce same_size
	.align 16
_ZTSN8pybind1117builtin_exceptionE:
	.ascii "N8pybind1117builtin_exceptionE\0"
	.globl	_ZTIN8pybind1117builtin_exceptionE
	.section	.rdata$_ZTIN8pybind1117builtin_exceptionE,"dr"
	.linkonce same_size
	.align 8
_ZTIN8pybind1117builtin_exceptionE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8pybind1117builtin_exceptionE
	.quad	_ZTISt13runtime_error
	.globl	_ZTSN8pybind1110cast_errorE
	.section	.rdata$_ZTSN8pybind1110cast_errorE,"dr"
	.linkonce same_size
	.align 16
_ZTSN8pybind1110cast_errorE:
	.ascii "N8pybind1110cast_errorE\0"
	.globl	_ZTIN8pybind1110cast_errorE
	.section	.rdata$_ZTIN8pybind1110cast_errorE,"dr"
	.linkonce same_size
	.align 8
_ZTIN8pybind1110cast_errorE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8pybind1110cast_errorE
	.quad	_ZTIN8pybind1117builtin_exceptionE
	.globl	_ZTSN8pybind1120reference_cast_errorE
	.section	.rdata$_ZTSN8pybind1120reference_cast_errorE,"dr"
	.linkonce same_size
	.align 32
_ZTSN8pybind1120reference_cast_errorE:
	.ascii "N8pybind1120reference_cast_errorE\0"
	.globl	_ZTIN8pybind1120reference_cast_errorE
	.section	.rdata$_ZTIN8pybind1120reference_cast_errorE,"dr"
	.linkonce same_size
	.align 8
_ZTIN8pybind1120reference_cast_errorE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8pybind1120reference_cast_errorE
	.quad	_ZTIN8pybind1117builtin_exceptionE
	.globl	_ZTSN8pybind1117error_already_setE
	.section	.rdata$_ZTSN8pybind1117error_already_setE,"dr"
	.linkonce same_size
	.align 16
_ZTSN8pybind1117error_already_setE:
	.ascii "N8pybind1117error_already_setE\0"
	.globl	_ZTIN8pybind1117error_already_setE
	.section	.rdata$_ZTIN8pybind1117error_already_setE,"dr"
	.linkonce same_size
	.align 8
_ZTIN8pybind1117error_already_setE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8pybind1117error_already_setE
	.quad	_ZTISt13runtime_error
	.globl	_ZTSN8pybind116handleE
	.section	.rdata$_ZTSN8pybind116handleE,"dr"
	.linkonce same_size
	.align 16
_ZTSN8pybind116handleE:
	.ascii "N8pybind116handleE\0"
	.globl	_ZTIN8pybind116handleE
	.section	.rdata$_ZTIN8pybind116handleE,"dr"
	.linkonce same_size
	.align 8
_ZTIN8pybind116handleE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8pybind116handleE
	.quad	_ZTIN8pybind116detail10object_apiINS_6handleEEE
	.globl	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rdata$_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"dr"
	.linkonce same_size
	.align 32
_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.ascii "NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\0"
	.globl	_ZTVN8pybind1117builtin_exceptionE
	.section	.rdata$_ZTVN8pybind1117builtin_exceptionE,"dr"
	.linkonce same_size
	.align 8
_ZTVN8pybind1117builtin_exceptionE:
	.quad	0
	.quad	_ZTIN8pybind1117builtin_exceptionE
	.quad	0
	.quad	0
	.quad	_ZNKSt13runtime_error4whatEv
	.quad	__cxa_pure_virtual
	.globl	_ZTVN8pybind1110cast_errorE
	.section	.rdata$_ZTVN8pybind1110cast_errorE,"dr"
	.linkonce same_size
	.align 8
_ZTVN8pybind1110cast_errorE:
	.quad	0
	.quad	_ZTIN8pybind1110cast_errorE
	.quad	_ZN8pybind1110cast_errorD1Ev
	.quad	_ZN8pybind1110cast_errorD0Ev
	.quad	_ZNKSt13runtime_error4whatEv
	.quad	_ZNK8pybind1110cast_error9set_errorEv
	.globl	_ZTVN8pybind1117error_already_setE
	.section	.rdata$_ZTVN8pybind1117error_already_setE,"dr"
	.linkonce same_size
	.align 8
_ZTVN8pybind1117error_already_setE:
	.quad	0
	.quad	_ZTIN8pybind1117error_already_setE
	.quad	_ZN8pybind1117error_already_setD1Ev
	.quad	_ZN8pybind1117error_already_setD0Ev
	.quad	_ZNKSt13runtime_error4whatEv
	.globl	_ZZN8pybind117options12global_stateEvE8instance
	.section	.data$_ZZN8pybind117options12global_stateEvE8instance,"w"
	.linkonce same_size
_ZZN8pybind117options12global_stateEvE8instance:
	.byte	1
	.byte	1
	.globl	_ZGVZN8pybind116detail26registered_local_types_cppEvE6locals
	.section	.data$_ZGVZN8pybind116detail26registered_local_types_cppEvE6locals,"w"
	.linkonce same_size
	.align 8
_ZGVZN8pybind116detail26registered_local_types_cppEvE6locals:
	.space 8
	.globl	_ZZN8pybind116detail26registered_local_types_cppEvE6locals
	.section	.data$_ZZN8pybind116detail26registered_local_types_cppEvE6locals,"w"
	.linkonce same_size
	.align 32
_ZZN8pybind116detail26registered_local_types_cppEvE6locals:
	.space 56
	.globl	_ZZN8pybind116detail16get_internals_ppEvE12internals_pp
	.section	.data$_ZZN8pybind116detail16get_internals_ppEvE12internals_pp,"w"
	.linkonce same_size
	.align 8
_ZZN8pybind116detail16get_internals_ppEvE12internals_pp:
	.space 8
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
	.align 4
.LC52:
	.long	1065353216
	.align 32
.LC105:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.data
	.align 8
.LDFCM7:
	.quad	_ZTIN8pybind1117builtin_exceptionE
	.align 8
.LDFCM8:
	.quad	_ZTIN8pybind1117error_already_setE
	.align 8
.LDFCM9:
	.quad	_ZTIN8pybind1120reference_cast_errorE
	.align 8
.LDFCM1:
	.quad	_ZTISt11range_error
	.align 8
.LDFCM5:
	.quad	_ZTISt12domain_error
	.align 8
.LDFCM3:
	.quad	_ZTISt12length_error
	.align 8
.LDFCM2:
	.quad	_ZTISt12out_of_range
	.align 8
.LDFCM4:
	.quad	_ZTISt16invalid_argument
	.align 8
.LDFCM6:
	.quad	_ZTISt9bad_alloc
	.align 8
.LDFCM0:
	.quad	_ZTISt9exception
	.ident	"GCC: (GNU) 9.2.0"
	.def	_Z22manage_thread_affinityv;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	GOMP_atomic_start;	.scl	2;	.type	32;	.endef
	.def	GOMP_atomic_end;	.scl	2;	.type	32;	.endef
	.def	omp_get_num_threads;	.scl	2;	.type	32;	.endef
	.def	omp_get_thread_num;	.scl	2;	.type	32;	.endef
	.def	GOMP_barrier;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt15__exception_ptr13exception_ptrC1ERKS0_;	.scl	2;	.type	32;	.endef
	.def	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE;	.scl	2;	.type	32;	.endef
	.def	_ZNSt15__exception_ptr13exception_ptrD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	__mingw_vsscanf;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_allocate_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorC1EPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw;	.scl	2;	.type	32;	.endef
	.def	__cxa_free_exception;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	__cxa_demangle;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcyy;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_out_of_range_fmtPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEyy;	.scl	2;	.type	32;	.endef
	.def	GOMP_parallel;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZSt11_Hash_bytesPKvyy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9type_infoeqERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	_Z15init_HistogramsRN8pybind116moduleE;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_acquire;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_release;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.def	strdup;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEyyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9bad_allocD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt17current_exceptionv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt15__exception_ptr13exception_ptr4swapERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt13runtime_error4whatEv;	.scl	2;	.type	32;	.endef
	.def	__cxa_pure_virtual;	.scl	2;	.type	32;	.endef
	.section .drectve
	.ascii " -export:\"inithistograms\""
	.section	.rdata$.refptr._ZNSt9bad_allocD1Ev, "dr"
	.globl	.refptr._ZNSt9bad_allocD1Ev
	.linkonce	discard
.refptr._ZNSt9bad_allocD1Ev:
	.quad	_ZNSt9bad_allocD1Ev
	.section	.rdata$.refptr._ZTVSt9bad_alloc, "dr"
	.globl	.refptr._ZTVSt9bad_alloc
	.linkonce	discard
.refptr._ZTVSt9bad_alloc:
	.quad	_ZTVSt9bad_alloc
	.section	.rdata$.refptr._ZTIb, "dr"
	.globl	.refptr._ZTIb
	.linkonce	discard
.refptr._ZTIb:
	.quad	_ZTIb
	.section	.rdata$.refptr._ZNSt13runtime_errorD1Ev, "dr"
	.globl	.refptr._ZNSt13runtime_errorD1Ev
	.linkonce	discard
.refptr._ZNSt13runtime_errorD1Ev:
	.quad	_ZNSt13runtime_errorD1Ev
