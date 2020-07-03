	.file	"histogram2D.cpp"
	.text
	.p2align 4
	.def	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y._omp_fn.0:
.LFB16977:
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
	jne	.L2
.L4:
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
.L2:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L3
.L14:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L4
	vmovq	.LC0(%rip), %xmm4
	salq	$3, %r9
	vmovapd	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L13:
	vmovsd	64(%rbx), %xmm0
	vmovsd	(%rdi,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm2
	movl	(%rbx), %r8d
	vcomisd	%xmm0, %xmm1
	jb	.L18
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L18:
	vmovapd	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorpd	%xmm4, %xmm3, %xmm3
	vcomisd	%xmm1, %xmm3
	ja	.L7
	vaddsd	%xmm1, %xmm0, %xmm1
	vdivsd	%xmm6, %xmm1, %xmm1
	vcvttsd2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L7:
	vcomisd	%xmm0, %xmm2
	jb	.L19
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L19:
	vmovapd	%xmm0, %xmm1
	vxorpd	%xmm5, %xmm1, %xmm1
	vcomisd	%xmm2, %xmm1
	ja	.L10
	vaddsd	%xmm2, %xmm0, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcvttsd2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L10:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L11
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L13
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L11:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L13
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L14
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
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
	.def	_ZN11Histogram2DIydE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIydE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIydE19reduction_and_resetEv._omp_fn.0:
.LFB16978:
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
	jle	.L20
	.p2align 4,,10
	.p2align 3
.L21:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L22
	.p2align 4,,10
	.p2align 3
.L25:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L21
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L22:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L24
.L27:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L25
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L26:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
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
.L20:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	.def	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIyfE10accumulateIfEEvPT_S3_y._omp_fn.0:
.LFB16979:
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
	jne	.L32
.L34:
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
.L32:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L33
.L44:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L34
	vmovss	.LC1(%rip), %xmm4
	salq	$3, %r9
	vmovaps	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L43:
	vmovss	64(%rbx), %xmm0
	vmovss	(%rdi,%rdx,4), %xmm1
	vmovss	(%rsi,%rdx,4), %xmm2
	movl	(%rbx), %r8d
	vcomiss	%xmm0, %xmm1
	jb	.L48
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L48:
	vmovaps	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorps	%xmm4, %xmm3, %xmm3
	vcomiss	%xmm1, %xmm3
	ja	.L37
	vaddss	%xmm1, %xmm0, %xmm1
	vdivss	%xmm6, %xmm1, %xmm1
	vcvttss2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L37:
	vcomiss	%xmm0, %xmm2
	jb	.L49
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L49:
	vmovaps	%xmm0, %xmm1
	vxorps	%xmm5, %xmm1, %xmm1
	vcomiss	%xmm2, %xmm1
	ja	.L40
	vaddss	%xmm2, %xmm0, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcvttss2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L40:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L41
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L43
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L41:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L43
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L33:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L44
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
	.p2align 4
	.def	_ZN11Histogram2DIyfE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyfE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIyfE19reduction_and_resetEv._omp_fn.0:
.LFB16980:
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
	jle	.L50
	.p2align 4,,10
	.p2align 3
.L51:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L52
	.p2align 4,,10
	.p2align 3
.L55:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L51
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L52:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L54
.L57:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L55
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L56:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
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
.L50:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	.def	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIyhE10accumulateIhEEvPT_S3_y._omp_fn.0:
.LFB16981:
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
	je	.L61
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L63
.L68:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L61
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L67:
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
	jne	.L65
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L67
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L65:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L67
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L63:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L61:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
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
	.def	_ZN11Histogram2DIyhE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyhE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIyhE19reduction_and_resetEv._omp_fn.0:
.LFB16982:
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
	jle	.L69
	.p2align 4,,10
	.p2align 3
.L70:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L71
	.p2align 4,,10
	.p2align 3
.L74:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L70
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L71:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L73
.L76:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L74
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L75:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L75
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L73:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L69:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	.def	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIytE10accumulateItEEvPT_S3_y._omp_fn.0:
.LFB16983:
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
	je	.L80
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L82
.L87:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L80
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L86:
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
	jne	.L84
	movq	24(%rsi), %rcx
	lock addq	$256, (%rcx,%r8,8)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L86
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L84:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L86
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L82:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L80:
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
	.def	_ZN11Histogram2DIytE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIytE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIytE19reduction_and_resetEv._omp_fn.0:
.LFB16984:
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
	jle	.L88
	.p2align 4,,10
	.p2align 3
.L89:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L90
	.p2align 4,,10
	.p2align 3
.L93:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L89
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L90:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L92
.L95:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L93
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L94:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
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
.L88:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	.def	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIyaE10accumulateIaEEvPT_S3_y._omp_fn.0:
.LFB16985:
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
	je	.L99
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L101
.L106:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L99
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L105:
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
	jne	.L103
	movq	24(%rbx), %r8
	lock addq	$256, (%r8,%rcx,8)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L105
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L103:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L105
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L101:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L99:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
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
	.def	_ZN11Histogram2DIyaE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIyaE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIyaE19reduction_and_resetEv._omp_fn.0:
.LFB16986:
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
	jle	.L107
	.p2align 4,,10
	.p2align 3
.L108:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L109
	.p2align 4,,10
	.p2align 3
.L112:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L108
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L109:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L111
.L114:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L112
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L113:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L113
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L111:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L107:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	.def	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIysE10accumulateIsEEvPT_S3_y._omp_fn.0:
.LFB16987:
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
	je	.L118
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L120
.L125:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L118
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L124:
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
	jne	.L122
	movq	24(%rsi), %rcx
	lock addq	$256, (%rcx,%r8,8)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L124
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L122:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L124
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L120:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L118:
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
	.def	_ZN11Histogram2DIysE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIysE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIysE19reduction_and_resetEv._omp_fn.0:
.LFB16988:
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
	jle	.L126
	.p2align 4,,10
	.p2align 3
.L127:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L128
	.p2align 4,,10
	.p2align 3
.L131:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L127
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L128:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L130
.L133:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L131
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L132:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addq	%r9, (%r8,%rdx,8)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
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
.L126:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	.def	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjdE10accumulateIdEEvPT_S3_y._omp_fn.0:
.LFB16989:
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
	jne	.L138
.L140:
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
.L138:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L139
.L150:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L140
	vmovq	.LC0(%rip), %xmm4
	salq	$3, %r9
	vmovapd	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L149:
	vmovsd	64(%rbx), %xmm0
	vmovsd	(%rdi,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm2
	movl	(%rbx), %r8d
	vcomisd	%xmm0, %xmm1
	jb	.L154
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L154:
	vmovapd	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorpd	%xmm4, %xmm3, %xmm3
	vcomisd	%xmm1, %xmm3
	ja	.L143
	vaddsd	%xmm1, %xmm0, %xmm1
	vdivsd	%xmm6, %xmm1, %xmm1
	vcvttsd2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L143:
	vcomisd	%xmm0, %xmm2
	jb	.L155
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L155:
	vmovapd	%xmm0, %xmm1
	vxorpd	%xmm5, %xmm1, %xmm1
	vcomisd	%xmm2, %xmm1
	ja	.L146
	vaddsd	%xmm2, %xmm0, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vcvttsd2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L146:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L147
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L149
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L147:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L149
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L139:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L150
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
	.def	_ZN11Histogram2DIjdE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjdE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjdE19reduction_and_resetEv._omp_fn.0:
.LFB16990:
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
	jle	.L156
	.p2align 4,,10
	.p2align 3
.L157:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L158
	.p2align 4,,10
	.p2align 3
.L161:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L157
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L158:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L160
.L163:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L161
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L162:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L162
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L160:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L156:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16990:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16990-.LLSDACSB16990
.LLSDACSB16990:
.LLSDACSE16990:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjfE10accumulateIfEEvPT_S3_y._omp_fn.0:
.LFB16991:
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
	jne	.L168
.L170:
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
.L168:
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L169
.L180:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L170
	vmovss	.LC1(%rip), %xmm4
	salq	$3, %r9
	vmovaps	%xmm4, %xmm5
	.p2align 4,,10
	.p2align 3
.L179:
	vmovss	64(%rbx), %xmm0
	vmovss	(%rdi,%rdx,4), %xmm1
	vmovss	(%rsi,%rdx,4), %xmm2
	movl	(%rbx), %r8d
	vcomiss	%xmm0, %xmm1
	jb	.L184
	leal	-1(%r8), %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L184:
	vmovaps	%xmm0, %xmm3
	xorl	%ecx, %ecx
	vxorps	%xmm4, %xmm3, %xmm3
	vcomiss	%xmm1, %xmm3
	ja	.L173
	vaddss	%xmm1, %xmm0, %xmm1
	vdivss	%xmm6, %xmm1, %xmm1
	vcvttss2sil	%xmm1, %ecx
	movzwl	%cx, %ecx
	imull	%r8d, %ecx
.L173:
	vcomiss	%xmm0, %xmm2
	jb	.L185
	decl	%r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L185:
	vmovaps	%xmm0, %xmm1
	vxorps	%xmm5, %xmm1, %xmm1
	vcomiss	%xmm2, %xmm1
	ja	.L176
	vaddss	%xmm2, %xmm0, %xmm0
	vdivss	%xmm6, %xmm0, %xmm0
	vcvttss2sil	%xmm0, %r8d
	movzwl	%r8w, %r8d
	addl	%r8d, %ecx
.L176:
	movq	56(%rbx), %r8
	movq	(%r8,%r9), %r10
	addq	%rcx, %r10
	movzbl	(%r10), %r8d
	cmpb	$-1, %r8b
	jne	.L177
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rax, %rdx
	jne	.L179
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L177:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L179
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L169:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L180
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16991:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16991-.LLSDACSB16991
.LLSDACSB16991:
.LLSDACSE16991:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjfE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjfE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjfE19reduction_and_resetEv._omp_fn.0:
.LFB16992:
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
	jle	.L186
	.p2align 4,,10
	.p2align 3
.L187:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L188
	.p2align 4,,10
	.p2align 3
.L191:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L187
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L188:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L190
.L193:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L191
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L192:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L192
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L190:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L186:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16992-.LLSDACSB16992
.LLSDACSB16992:
.LLSDACSE16992:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjhE10accumulateIhEEvPT_S3_y._omp_fn.0:
.LFB16993:
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
	je	.L197
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L199
.L204:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L197
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L203:
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
	jne	.L201
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L203
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L201:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L203
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L199:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L197:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16993:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16993-.LLSDACSB16993
.LLSDACSB16993:
.LLSDACSE16993:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjhE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjhE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjhE19reduction_and_resetEv._omp_fn.0:
.LFB16994:
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
	jle	.L205
	.p2align 4,,10
	.p2align 3
.L206:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L207
	.p2align 4,,10
	.p2align 3
.L210:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L206
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L207:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L209
.L212:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L210
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L211:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L211
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L209:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L205:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16994:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16994-.LLSDACSB16994
.LLSDACSB16994:
.LLSDACSE16994:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjtE10accumulateItEEvPT_S3_y._omp_fn.0:
.LFB16995:
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
	je	.L216
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L218
.L223:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L216
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L222:
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
	jne	.L220
	movq	24(%rsi), %rcx
	lock addl	$256, (%rcx,%r8,4)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L222
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L220:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L222
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L218:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L216:
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
.LLSDA16995:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16995-.LLSDACSB16995
.LLSDACSB16995:
.LLSDACSE16995:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjtE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjtE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjtE19reduction_and_resetEv._omp_fn.0:
.LFB16996:
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
	jle	.L224
	.p2align 4,,10
	.p2align 3
.L225:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L226
	.p2align 4,,10
	.p2align 3
.L229:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L225
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L226:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L228
.L231:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L229
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L230:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L230
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L228:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L224:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16996:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16996-.LLSDACSB16996
.LLSDACSB16996:
.LLSDACSE16996:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjaE10accumulateIaEEvPT_S3_y._omp_fn.0:
.LFB16997:
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
	je	.L235
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r12d, %r9
	movslq	%eax, %rcx
	movq	%rbp, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L237
.L242:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L235
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L241:
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
	jne	.L239
	movq	24(%rbx), %r8
	lock addl	$256, (%r8,%rcx,4)
	movq	56(%rbx), %r8
	addq	(%r8,%r9), %rcx
	incb	(%rcx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L241
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L239:
	incl	%r8d
	incq	%rdx
	movb	%r8b, (%r10)
	cmpq	%rdx, %rax
	jne	.L241
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L237:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L235:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16997:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16997-.LLSDACSB16997
.LLSDACSB16997:
.LLSDACSE16997:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjaE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjaE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjaE19reduction_and_resetEv._omp_fn.0:
.LFB16998:
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
	jle	.L243
	.p2align 4,,10
	.p2align 3
.L244:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L245
	.p2align 4,,10
	.p2align 3
.L248:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L244
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L245:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L247
.L250:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L248
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L249:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L249
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L247:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L243:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA16998:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16998-.LLSDACSB16998
.LLSDACSB16998:
.LLSDACSE16998:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y._omp_fn.0
_ZN11Histogram2DIjsE10accumulateIsEEvPT_S3_y._omp_fn.0:
.LFB16999:
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
	je	.L254
	call	omp_get_num_threads
	xorl	%edx, %edx
	movslq	%r14d, %r9
	movslq	%eax, %rcx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rdx, %r9
	jb	.L256
.L261:
	movq	%rax, %rcx
	imulq	%r9, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L254
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L260:
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
	jne	.L258
	movq	24(%rsi), %rcx
	lock addl	$256, (%rcx,%r8,4)
	movq	56(%rsi), %rcx
	addq	(%rcx,%r9), %r8
	incb	(%r8)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.L260
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L258:
	incl	%ecx
	incq	%rdx
	movb	%cl, (%r10)
	cmpq	%rdx, %rax
	jne	.L260
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L256:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L254:
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
.LLSDA16999:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16999-.LLSDACSB16999
.LLSDACSB16999:
.LLSDACSE16999:
	.text
	.seh_endproc
	.p2align 4
	.def	_ZN11Histogram2DIjsE19reduction_and_resetEv._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIjsE19reduction_and_resetEv._omp_fn.0
_ZN11Histogram2DIjsE19reduction_and_resetEv._omp_fn.0:
.LFB17000:
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
	jle	.L262
	.p2align 4,,10
	.p2align 3
.L263:
	movl	(%rdi), %eax
	imull	%eax, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.L264
	.p2align 4,,10
	.p2align 3
.L267:
	call	GOMP_barrier
	incq	%rsi
	cmpl	%esi, 4(%rdi)
	jg	.L263
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L264:
	call	omp_get_num_threads
	movl	%eax, %ebp
	call	omp_get_thread_num
	movslq	%ebp, %r8
	xorl	%edx, %edx
	movslq	%eax, %rcx
	movq	%rbx, %rax
	divq	%r8
	cmpq	%rdx, %rcx
	jb	.L266
.L269:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jnb	.L267
	leaq	0(,%rsi,8), %r10
	.p2align 4,,10
	.p2align 3
.L268:
	movq	56(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	(%rcx,%r10), %rbx
	addq	%rdx, %rbx
	movzbl	(%rbx), %r9d
	addl	%r9d, (%r8,%rdx,4)
	incq	%rdx
	movb	$0, (%rbx)
	cmpq	%rdx, %rax
	jne	.L268
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L266:
	incq	%rax
	xorl	%edx, %edx
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L262:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA17000:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE17000-.LLSDACSB17000
.LLSDACSB17000:
.LLSDACSE17000:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y
	.def	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y
_ZN11Histogram2DIydE10accumulateIdEEvPT_S3_y:
.LFB12818:
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
.LFB12819:
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
.LFB12820:
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
.LFB12821:
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
.LFB12822:
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
.LFB12823:
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
.LFB12824:
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
.LFB12825:
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
.LFB12826:
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
.LFB12827:
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
.LFB12828:
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
.LFB12829:
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
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (GNU) 9.2.0"
	.def	_Z22manage_thread_affinityv;	.scl	2;	.type	32;	.endef
	.def	omp_get_thread_num;	.scl	2;	.type	32;	.endef
	.def	GOMP_barrier;	.scl	2;	.type	32;	.endef
	.def	omp_get_num_threads;	.scl	2;	.type	32;	.endef
	.def	GOMP_parallel;	.scl	2;	.type	32;	.endef
