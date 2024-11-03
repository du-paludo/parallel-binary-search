	.file	"reduceSumPth.c"
# GNU C++14 (Ubuntu 10.3.0-1ubuntu1~20.04) version 10.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 10.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE -D_REENTRANT
# reduceSumPth.c -mtune=generic -march=x86-64 -auxbase-strip reduceSumPth.s
# -g -O6 -fverbose-asm -fopenmp -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat -Wformat-security
# -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-functions -falign-jumps -falign-labels -falign-loops
# -fallocation-dce -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fexceptions -fexpensive-optimizations
# -ffinite-loops -fforward-propagate -ffp-int-builtin-inexact
# -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
# -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
# -fipa-ra -fipa-reference -fipa-reference-addressable -fipa-sra
# -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining
# -fpeel-loops -fpeephole -fpeephole2 -fplt -fpredictive-commoning
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-blocks-and-partition -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-loops -fsplit-paths -fsplit-wide-types -fssa-backprop
# -fssa-phiopt -fstack-clash-protection -fstack-protector-strong
# -fstdarg-opt -fstore-merging -fstrict-aliasing
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-distribution
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -funswitch-loops -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fverbose-asm -fversion-loops-for-strides
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.p2align 4
	.globl	_Z16reducePartialSumPv
	.type	_Z16reducePartialSumPv, @function
_Z16reducePartialSumPv:
.LVL0:
.LFB361:
	.file 1 "reduceSumPth.c"
	.loc 1 81 1 view -0
	.cfi_startproc
	.loc 1 81 1 is_stmt 0 view .LVU1
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 64
# reduceSumPth.c:83:     int nElements = nTotalElements / nThreads;
	.loc 1 83 36 view .LVU2
	movl	nTotalElements(%rip), %ebp	# nTotalElements, nTotalElements.0_1
# reduceSumPth.c:82:     int myIndex = *((int *)ptr);
	.loc 1 82 9 view .LVU3
	movslq	(%rdi), %r12	# MEM[(int *)ptr_15(D)],
# reduceSumPth.c:81: {
	.loc 1 81 1 view .LVU4
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	movq	%rax, 24(%rsp)	# tmp170, D.12431
	xorl	%eax, %eax	# tmp170
	.loc 1 82 5 is_stmt 1 view .LVU5
.LVL1:
	.loc 1 83 5 view .LVU6
# reduceSumPth.c:83:     int nElements = nTotalElements / nThreads;
	.loc 1 83 9 is_stmt 0 view .LVU7
	movl	%ebp, %eax	# nTotalElements.0_1, tmp130
# reduceSumPth.c:86:     int first = myIndex * nElements;
	.loc 1 86 9 view .LVU8
	movl	%r12d, %ebx	# myIndex, tmp.46
# reduceSumPth.c:83:     int nElements = nTotalElements / nThreads;
	.loc 1 83 9 view .LVU9
	cltd
	idivl	nThreads(%rip)	# nThreads
.LVL2:
	.loc 1 86 5 is_stmt 1 view .LVU10
# reduceSumPth.c:86:     int first = myIndex * nElements;
	.loc 1 86 9 is_stmt 0 view .LVU11
	imull	%eax, %ebx	# tmp130, tmp.46
.LVL3:
	.loc 1 87 5 is_stmt 1 view .LVU12
	.loc 1 69 4 view .LVU13
# reduceSumPth.c:87:     int last = min( (myIndex+1) * nElements, nTotalElements ) - 1;
	.loc 1 87 19 is_stmt 0 view .LVU14
	addl	%ebx, %eax	# tmp.46, tmp132
.LVL4:
	.loc 1 87 19 view .LVU15
	cmpl	%ebp, %eax	# nTotalElements.0_1, tmp132
	cmovle	%eax, %ebp	# tmp132,, _19
.LVL5:
	.loc 1 93 5 is_stmt 1 view .LVU16
	testl	%r12d, %r12d	# myIndex
	jne	.L16	#,
.LVL6:
.L2:
	.loc 1 104 8 view .LVU17
	.loc 1 106 16 view .LVU18
.LBB80:
.LBB81:
	pxor	%xmm0, %xmm0	# tmp166
	movaps	%xmm0, (%rsp)	# tmp166, MEM <char[1:16]> [(void *)&D.12290]
.LVL7:
	.loc 1 106 16 is_stmt 0 view .LVU19
	cmpl	%ebp, %ebx	# _19, tmp.46
	jge	.L3	#,
	movl	%ebx, %eax	# tmp.46, tmp136
	movl	%ebp, %esi	# _19, tmp134
	leaq	InputVector(%rip), %rcx	#, tmp165
	notl	%eax	# tmp136
	subl	%ebx, %esi	# tmp.46, tmp134
	addl	%ebp, %eax	# _19, tmp137
	cmpl	$2, %eax	#, tmp137
	jbe	.L4	#,
	movslq	%ebx, %rax	# tmp.46, tmp.46
	leaq	InputVector(%rip), %rcx	#, tmp165
	pxor	%xmm0, %xmm0	# vect__31.51
	leaq	(%rcx,%rax,4), %rdx	#, ivtmp.56
	movl	%esi, %eax	# tmp134, bnd.44
	shrl	$2, %eax	#,
	salq	$4, %rax	#, tmp143
	addq	%rdx, %rax	# ivtmp.56, _29
.LVL8:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 109 13 is_stmt 1 discriminator 4 view .LVU20
# reduceSumPth.c:109:             myPartialSum += InputVector[i];
	.loc 1 109 26 is_stmt 0 discriminator 4 view .LVU21
	movups	(%rdx), %xmm3	# MEM[base: _31, offset: 0B], tmp177
	addq	$16, %rdx	#, ivtmp.56
	addps	%xmm3, %xmm0	# tmp177, vect__31.51
	movaps	%xmm0, (%rsp)	# vect__31.51, MEM <vector(4) float> [(float *)&D.12290]
	cmpq	%rdx, %rax	# ivtmp.56, _29
	jne	.L5	#,
	movl	%esi, %eax	# tmp134, niters_vector_mult_vf.45
	andl	$-4, %eax	#, niters_vector_mult_vf.45
	addl	%eax, %ebx	# niters_vector_mult_vf.45, tmp.46
.LVL9:
	.loc 1 109 26 discriminator 4 view .LVU22
	cmpl	%eax, %esi	# niters_vector_mult_vf.45, tmp134
	je	.L3	#,
.L4:
.LVL10:
	.loc 1 109 13 is_stmt 1 view .LVU23
# reduceSumPth.c:109:             myPartialSum += InputVector[i];
	.loc 1 109 42 is_stmt 0 view .LVU24
	movslq	%ebx, %rax	# tmp.46, tmp.46
# reduceSumPth.c:109:             myPartialSum += InputVector[i];
	.loc 1 109 26 view .LVU25
	movss	(%rsp), %xmm0	# MEM[(float *)&D.12290], MEM[(float *)&D.12290]
	addss	(%rcx,%rax,4), %xmm0	# InputVector[i_88], _150
	leal	1(%rbx), %eax	#, i
.LVL11:
	.loc 1 109 26 view .LVU26
	movss	%xmm0, (%rsp)	# _150, D.12290[0]
	cmpl	%eax, %ebp	# i, _19
	jle	.L3	#,
	.loc 1 109 13 is_stmt 1 view .LVU27
# reduceSumPth.c:109:             myPartialSum += InputVector[i];
	.loc 1 109 42 is_stmt 0 view .LVU28
	cltq
	.loc 1 109 42 view .LVU29
	addl	$2, %ebx	#, i
# reduceSumPth.c:109:             myPartialSum += InputVector[i];
	.loc 1 109 26 view .LVU30
	addss	(%rcx,%rax,4), %xmm0	# InputVector[i_153], _159
	movss	%xmm0, (%rsp)	# _159, D.12290[0]
.LVL12:
	.loc 1 109 26 view .LVU31
	cmpl	%ebx, %ebp	# i, _19
	jle	.L3	#,
	.loc 1 109 13 is_stmt 1 view .LVU32
# reduceSumPth.c:109:             myPartialSum += InputVector[i];
	.loc 1 109 42 is_stmt 0 view .LVU33
	movslq	%ebx, %rbx	# i, i
# reduceSumPth.c:109:             myPartialSum += InputVector[i];
	.loc 1 109 26 view .LVU34
	addss	(%rcx,%rbx,4), %xmm0	# InputVector[i_162], tmp152
	movss	%xmm0, (%rsp)	# tmp152, D.12290[0]
.L3:
# reduceSumPth.c:106:        #pragma omp simd reduction(+:myPartialSum)    // com essa opçao ficou 4x mais rapido, inclusive com 4 threads
	.loc 1 106 16 view .LVU35
	movaps	(%rsp), %xmm0	# MEM <vector(4) float> [(float *)&D.12290], vect__26.41
	pxor	%xmm1, %xmm1	# stmp_myPartialSum_27.42
.LBE81:
.LBE80:
# reduceSumPth.c:135:     partialSum[ myIndex ] = myPartialSum;     
	.loc 1 135 27 view .LVU36
	leaq	partialSum(%rip), %rax	#, tmp157
# reduceSumPth.c:137:     pthread_barrier_wait(&myBarrier);    
	.loc 1 137 25 view .LVU37
	leaq	myBarrier(%rip), %rdi	#,
	addss	%xmm0, %xmm1	# vect__26.41, stmp_myPartialSum_27.42
	movaps	%xmm0, %xmm2	# vect__26.41, tmp155
	shufps	$85, %xmm0, %xmm2	#, vect__26.41, tmp155
	addss	%xmm2, %xmm1	# stmp_myPartialSum_27.42, stmp_myPartialSum_27.42
	movaps	%xmm0, %xmm2	# vect__26.41, tmp156
	unpckhps	%xmm0, %xmm2	# vect__26.41, tmp156
.LVL13:
	.loc 1 135 5 is_stmt 1 view .LVU38
.LBB83:
.LBB82:
# reduceSumPth.c:106:        #pragma omp simd reduction(+:myPartialSum)    // com essa opçao ficou 4x mais rapido, inclusive com 4 threads
	.loc 1 106 16 is_stmt 0 view .LVU39
	shufps	$255, %xmm0, %xmm0	#, vect__26.41, tmp161
	addss	%xmm2, %xmm1	# stmp_myPartialSum_27.42, stmp_myPartialSum_27.42
	addss	%xmm1, %xmm0	# stmp_myPartialSum_27.42, myPartialSum
.LBE82:
.LBE83:
# reduceSumPth.c:135:     partialSum[ myIndex ] = myPartialSum;     
	.loc 1 135 27 view .LVU40
	movss	%xmm0, (%rax,%r12,4)	# myPartialSum, partialSum[myIndex_16]
	.loc 1 137 5 is_stmt 1 view .LVU41
# reduceSumPth.c:137:     pthread_barrier_wait(&myBarrier);    
	.loc 1 137 25 is_stmt 0 view .LVU42
	call	pthread_barrier_wait@PLT	#
.LVL14:
	.loc 1 139 5 is_stmt 1 view .LVU43
# reduceSumPth.c:140: }
	.loc 1 140 1 is_stmt 0 view .LVU44
	movq	24(%rsp), %rax	# D.12431, tmp171
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp171
	jne	.L17	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
.LVL15:
	.loc 1 140 1 view .LVU45
	popq	%r12	#
	.cfi_def_cfa_offset 8
.LVL16:
	.loc 1 140 1 view .LVU46
	ret	
.LVL17:
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	.loc 1 94 9 is_stmt 1 view .LVU47
# reduceSumPth.c:94:         pthread_barrier_wait(&myBarrier);    
	.loc 1 94 29 is_stmt 0 view .LVU48
	leaq	myBarrier(%rip), %rdi	#,
.LVL18:
	.loc 1 94 29 view .LVU49
	call	pthread_barrier_wait@PLT	#
.LVL19:
	.loc 1 94 29 view .LVU50
	jmp	.L2	#
.LVL20:
.L17:
# reduceSumPth.c:140: }
	.loc 1 140 1 view .LVU51
	call	__stack_chk_fail@PLT	#
.LVL21:
	.cfi_endproc
.LFE361:
	.size	_Z16reducePartialSumPv, .-_Z16reducePartialSumPv
	.p2align 4
	.globl	_Z12chrono_resetP13chronometer_t
	.type	_Z12chrono_resetP13chronometer_t, @function
_Z12chrono_resetP13chronometer_t:
.LVL22:
.LFB352:
	.file 2 "chrono.c"
	.loc 2 35 3 is_stmt 1 view -0
	.cfi_startproc
	.loc 2 35 3 is_stmt 0 view .LVU53
	endbr64	
	.loc 2 36 7 is_stmt 1 view .LVU54
	.loc 2 37 7 view .LVU55
# chrono.c:36:       chrono->xtotal_ns = 0;
	.loc 2 36 25 is_stmt 0 view .LVU56
	pxor	%xmm0, %xmm0	# tmp83
	movups	%xmm0, 32(%rdi)	# tmp83, MEM <vector(2) long long int> [(void *)chrono_2(D) + 32B]
# chrono.c:38:   }
	.loc 2 38 3 view .LVU57
	ret	
	.cfi_endproc
.LFE352:
	.size	_Z12chrono_resetP13chronometer_t, .-_Z12chrono_resetP13chronometer_t
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"\n%s deltaT(ns): %lld ns for %ld ops \n        ==> each op takes %lld ns\n"
	.text
	.p2align 4
	.globl	_Z17chrono_reportTimeP13chronometer_tPc
	.type	_Z17chrono_reportTimeP13chronometer_tPc, @function
_Z17chrono_reportTimeP13chronometer_tPc:
.LVL23:
.LFB357:
	.loc 2 66 60 is_stmt 1 view -0
	.cfi_startproc
	.loc 2 66 60 is_stmt 0 view .LVU59
	endbr64	
	.loc 2 68 5 is_stmt 1 view .LVU60
# chrono.c:71:                                                 chrono->xtotal_ns/chrono->xn_events );
	.loc 2 71 57 is_stmt 0 view .LVU61
	movq	32(%rdi), %rcx	# chrono_5(D)->xtotal_ns, _1
# chrono.c:71:                                                 chrono->xtotal_ns/chrono->xn_events );
	.loc 2 71 75 view .LVU62
	movq	40(%rdi), %r8	# chrono_5(D)->xn_events, _2
.LVL24:
.LBB84:
.LBI84:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 105 1 is_stmt 1 view .LVU63
.LBB85:
	.loc 3 107 3 view .LVU64
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU65
	movl	$1, %edi	#,
.LVL25:
	.loc 3 107 23 view .LVU66
.LBE85:
.LBE84:
# chrono.c:68:     printf("\n%s deltaT(ns): %lld ns for %ld ops \n"
	.loc 2 68 11 view .LVU67
	movq	%rcx, %rax	# _1, tmp88
	cqto
	idivq	%r8	# _2
.LBB88:
.LBB86:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU68
	movq	%rsi, %rdx	# s,
	leaq	.LC1(%rip), %rsi	#,
.LVL26:
	.loc 3 107 23 view .LVU69
.LBE86:
.LBE88:
# chrono.c:68:     printf("\n%s deltaT(ns): %lld ns for %ld ops \n"
	.loc 2 68 11 view .LVU70
	movq	%rax, %r9	# tmp88, tmp88
.LBB89:
.LBB87:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU71
	xorl	%eax, %eax	#
	jmp	__printf_chk@PLT	#
.LVL27:
	.loc 3 107 23 view .LVU72
.LBE87:
.LBE89:
	.cfi_endproc
.LFE357:
	.size	_Z17chrono_reportTimeP13chronometer_tPc, .-_Z17chrono_reportTimeP13chronometer_tPc
	.p2align 4
	.globl	_Z24chrono_report_TimeInLoopP13chronometer_tPci
	.type	_Z24chrono_report_TimeInLoopP13chronometer_tPci, @function
_Z24chrono_report_TimeInLoopP13chronometer_tPci:
.LVL28:
.LFB358:
	.loc 2 74 83 is_stmt 1 view -0
	.cfi_startproc
	.loc 2 74 83 is_stmt 0 view .LVU74
	endbr64	
	.loc 2 76 5 is_stmt 1 view .LVU75
# chrono.c:79:                                   chrono->xtotal_ns/(chrono->xn_events*loop_count) );
	.loc 2 79 43 is_stmt 0 view .LVU76
	movq	32(%rdi), %rcx	# chrono_7(D)->xtotal_ns, _1
# chrono.c:79:                                   chrono->xtotal_ns/(chrono->xn_events*loop_count) );
	.loc 2 79 72 view .LVU77
	movslq	%edx, %r8	# tmp96, loop_count
# chrono.c:79:                                   chrono->xtotal_ns/(chrono->xn_events*loop_count) );
	.loc 2 79 71 view .LVU78
	imulq	40(%rdi), %r8	# chrono_7(D)->xn_events, _4
.LVL29:
.LBB90:
.LBI90:
	.loc 3 105 1 is_stmt 1 view .LVU79
.LBB91:
	.loc 3 107 3 view .LVU80
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU81
	movl	$1, %edi	#,
.LVL30:
	.loc 3 107 23 view .LVU82
.LBE91:
.LBE90:
# chrono.c:76:     printf("\n%s deltaT(ns): %lld ns for %ld ops \n"
	.loc 2 76 11 view .LVU83
	movq	%rcx, %rax	# _1, tmp92
	cqto
.LVL31:
	.loc 2 76 11 view .LVU84
	idivq	%r8	# _4
.LBB94:
.LBB92:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU85
	movq	%rsi, %rdx	# s,
	leaq	.LC1(%rip), %rsi	#,
.LVL32:
	.loc 3 107 23 view .LVU86
.LBE92:
.LBE94:
# chrono.c:76:     printf("\n%s deltaT(ns): %lld ns for %ld ops \n"
	.loc 2 76 11 view .LVU87
	movq	%rax, %r9	# tmp92, tmp92
.LBB95:
.LBB93:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU88
	xorl	%eax, %eax	#
	jmp	__printf_chk@PLT	#
.LVL33:
	.loc 3 107 23 view .LVU89
.LBE93:
.LBE95:
	.cfi_endproc
.LFE358:
	.size	_Z24chrono_report_TimeInLoopP13chronometer_tPci, .-_Z24chrono_report_TimeInLoopP13chronometer_tPci
	.p2align 4
	.globl	_Z3minii
	.type	_Z3minii, @function
_Z3minii:
.LVL34:
.LFB359:
	.loc 1 68 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 68 1 is_stmt 0 view .LVU91
	endbr64	
	.loc 1 69 4 is_stmt 1 view .LVU92
# reduceSumPth.c:73: }
	.loc 1 73 1 is_stmt 0 view .LVU93
	cmpl	%esi, %edi	# b, a
	movl	%esi, %eax	# b, b
	cmovle	%edi, %eax	# a,, b
	ret	
	.cfi_endproc
.LFE359:
	.size	_Z3minii, .-_Z3minii
	.p2align 4
	.globl	_Z4plusff
	.type	_Z4plusff, @function
_Z4plusff:
.LVL35:
.LFB360:
	.loc 1 76 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 76 1 is_stmt 0 view .LVU95
	endbr64	
	.loc 1 77 5 is_stmt 1 view .LVU96
# reduceSumPth.c:77:     return a + b;
	.loc 1 77 16 is_stmt 0 view .LVU97
	addss	%xmm1, %xmm0	# tmp87, tmp85
.LVL36:
# reduceSumPth.c:78: }
	.loc 1 78 1 view .LVU98
	ret	
	.cfi_endproc
.LFE360:
	.size	_Z4plusff, .-_Z4plusff
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"usage: %s <nTotalElements> <nThreads>\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"<nThreads> can't be 0"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"<nThreads> must be less than %d\n"
	.align 8
.LC6:
	.string	"<nTotalElements> must be up to %d\n"
	.align 8
.LC7:
	.string	"will use %d threads to reduce %d total elements\n\n"
	.section	.rodata.str1.1
.LC11:
	.string	"globalSum = %f\n"
.LC12:
	.string	"parallelReductionTime"
.LC14:
	.string	"total_time_in_seconds: %lf s\n"
.LC15:
	.string	"Throughput: %lf OP/s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL37:
.LFB362:
	.loc 1 144 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 144 1 is_stmt 0 view .LVU100
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx	# tmp244, argv
	subq	$80, %rsp	#,
	.cfi_def_cfa_offset 128
# reduceSumPth.c:144: {
	.loc 1 144 1 view .LVU101
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp248
	movq	%rax, 72(%rsp)	# tmp248, D.12506
	xorl	%eax, %eax	# tmp248
	.loc 1 145 5 is_stmt 1 view .LVU102
	.loc 1 146 5 view .LVU103
	.loc 1 148 5 view .LVU104
	cmpl	$3, %edi	#, tmp243
	je	.L24	#,
	.loc 1 149 10 view .LVU105
.LVL38:
.LBB138:
.LBI138:
	.loc 3 105 1 view .LVU106
.LBB139:
	.loc 3 107 3 view .LVU107
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU108
	movq	(%rsi), %rdx	# *argv_39(D),
	movl	$1, %edi	#,
.LVL39:
	.loc 3 107 23 view .LVU109
	leaq	.LC3(%rip), %rsi	#,
.LVL40:
	.loc 3 107 23 view .LVU110
	call	__printf_chk@PLT	#
.LVL41:
	.loc 3 107 23 view .LVU111
.LBE139:
.LBE138:
	.loc 1 151 10 is_stmt 1 view .LVU112
.L25:
# reduceSumPth.c:233: }
	.loc 1 233 1 is_stmt 0 view .LVU113
	movq	72(%rsp), %rax	# D.12506, tmp249
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp249
	jne	.L52	#,
	addq	$80, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.LVL42:
.L24:
	.cfi_restore_state
	.loc 1 153 10 is_stmt 1 view .LVU114
.LBB140:
.LBI140:
	.file 4 "/usr/include/stdlib.h"
	.loc 4 361 1 view .LVU115
.LBB141:
	.loc 4 363 3 view .LVU116
# /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	.loc 4 363 23 is_stmt 0 view .LVU117
	movq	16(%rsi), %rdi	# MEM[(char * *)argv_39(D) + 16B], MEM[(char * *)argv_39(D) + 16B]
.LVL43:
	.loc 4 363 23 view .LVU118
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
.LVL44:
	.loc 4 363 23 view .LVU119
.LBE141:
.LBE140:
# reduceSumPth.c:153:          nThreads = atoi( argv[2] );
	.loc 1 153 19 view .LVU120
	movl	%eax, nThreads(%rip)	# _61, nThreads
	.loc 1 154 10 is_stmt 1 view .LVU121
	testl	%eax, %eax	# _61
	je	.L53	#,
	.loc 1 160 10 view .LVU122
	cmpl	$64, %eax	#, _61
	jg	.L54	#,
	.loc 1 166 10 view .LVU123
.LVL45:
.LBB142:
.LBI142:
	.loc 4 361 1 view .LVU124
.LBB143:
	.loc 4 363 3 view .LVU125
# /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	.loc 4 363 23 is_stmt 0 view .LVU126
	movq	8(%rbx), %rdi	# MEM[(char * *)argv_39(D) + 8B], MEM[(char * *)argv_39(D) + 8B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
.LVL46:
	.loc 4 363 23 view .LVU127
.LBE143:
.LBE142:
# reduceSumPth.c:166:          nTotalElements = atoi( argv[1] ); 
	.loc 1 166 25 view .LVU128
	movl	%eax, nTotalElements(%rip)	# _63, nTotalElements
	.loc 1 167 10 is_stmt 1 view .LVU129
	cmpl	$500000000, %eax	#, _63
	jg	.L55	#,
	.loc 1 175 5 view .LVU130
.LVL47:
.LBB144:
.LBI144:
	.loc 3 105 1 view .LVU131
.LBB145:
	.loc 3 107 3 view .LVU132
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU133
	movl	nThreads(%rip), %edx	# nThreads,
	movl	%eax, %ecx	# _63,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	leaq	.LC7(%rip), %rsi	#,
	call	__printf_chk@PLT	#
.LVL48:
	.loc 3 107 23 view .LVU134
.LBE145:
.LBE144:
.LBB146:
	.loc 1 179 20 is_stmt 1 view .LVU135
	movl	nTotalElements(%rip), %ecx	# nTotalElements, nTotalElements.11_112
	testl	%ecx, %ecx	# nTotalElements.11_112
	jle	.L35	#,
	leal	-1(%rcx), %eax	#, tmp180
	cmpl	$2, %eax	#, tmp180
	jbe	.L44	#,
	movl	%ecx, %edx	# nTotalElements.11_112, bnd.86
	leaq	InputVector(%rip), %rsi	#, tmp239
	movdqa	.LC2(%rip), %xmm1	#, vect_vec_iv_.89
	movdqa	.LC8(%rip), %xmm3	#, tmp236
	shrl	$2, %edx	#,
	movaps	.LC9(%rip), %xmm2	#, tmp237
	movq	%rsi, %rax	# tmp239, ivtmp.124
	salq	$4, %rdx	#, tmp183
	addq	%rsi, %rdx	# tmp239, _176
.LVL49:
	.p2align 4,,10
	.p2align 3
.L34:
	.loc 1 179 20 is_stmt 0 view .LVU136
	movdqa	%xmm1, %xmm0	# vect_vec_iv_.89, vect_vec_iv_.89
	addq	$16, %rax	#, ivtmp.124
	paddd	%xmm3, %xmm1	# tmp236, vect_vec_iv_.89
	.loc 1 180 9 is_stmt 1 discriminator 2 view .LVU137
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 26 is_stmt 0 discriminator 2 view .LVU138
	cvtdq2ps	%xmm0, %xmm0	# vect_vec_iv_.89, vect__11.90
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 34 discriminator 2 view .LVU139
	addps	%xmm2, %xmm0	# tmp237, vect__12.91
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 24 discriminator 2 view .LVU140
	movaps	%xmm0, -16(%rax)	# vect__12.91, MEM[base: _172, offset: 0B]
	.loc 1 179 5 is_stmt 1 discriminator 2 view .LVU141
	.loc 1 179 20 discriminator 2 view .LVU142
	cmpq	%rdx, %rax	# _176, ivtmp.124
	jne	.L34	#,
	movl	%ecx, %eax	# nTotalElements.11_112, tmp.88
	andl	$-4, %eax	#, tmp.88
	testb	$3, %cl	#, nTotalElements.11_112
	je	.L35	#,
.L32:
.LVL50:
	.loc 1 180 9 view .LVU143
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 26 is_stmt 0 view .LVU144
	pxor	%xmm0, %xmm0	# tmp190
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 34 view .LVU145
	movss	.LC10(%rip), %xmm1	#, tmp192
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 24 view .LVU146
	movslq	%eax, %rdx	# tmp.88, tmp.88
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 26 view .LVU147
	cvtsi2ssl	%eax, %xmm0	# tmp.88, tmp190
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 34 view .LVU148
	addss	%xmm1, %xmm0	# tmp192, tmp191
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 24 view .LVU149
	movss	%xmm0, (%rsi,%rdx,4)	# tmp191, InputVector[i_28]
	.loc 1 179 5 is_stmt 1 view .LVU150
	leal	1(%rax), %edx	#, i
.LVL51:
	.loc 1 179 20 view .LVU151
	cmpl	%ecx, %edx	# nTotalElements.11_112, i
	jge	.L35	#,
	.loc 1 180 9 view .LVU152
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 26 is_stmt 0 view .LVU153
	pxor	%xmm0, %xmm0	# tmp195
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 24 view .LVU154
	movslq	%edx, %rdi	# i, i
# reduceSumPth.c:179:     for( int i=0; i<nTotalElements ; i++ )
	.loc 1 179 5 view .LVU155
	addl	$2, %eax	#, i
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 26 view .LVU156
	cvtsi2ssl	%edx, %xmm0	# i, tmp195
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 34 view .LVU157
	addss	%xmm1, %xmm0	# tmp192, tmp196
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 24 view .LVU158
	movss	%xmm0, (%rsi,%rdi,4)	# tmp196, InputVector[i_110]
	.loc 1 179 5 is_stmt 1 view .LVU159
.LVL52:
	.loc 1 179 20 view .LVU160
	cmpl	%eax, %ecx	# i, nTotalElements.11_112
	jle	.L35	#,
	.loc 1 180 9 view .LVU161
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 26 is_stmt 0 view .LVU162
	pxor	%xmm0, %xmm0	# tmp200
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 24 view .LVU163
	movslq	%eax, %rdx	# i, i
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 26 view .LVU164
	cvtsi2ssl	%eax, %xmm0	# i, tmp200
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 34 view .LVU165
	addss	%xmm1, %xmm0	# tmp192, tmp201
# reduceSumPth.c:180:         InputVector[i] = (float)i+1;
	.loc 1 180 24 view .LVU166
	movss	%xmm0, (%rsi,%rdx,4)	# tmp201, InputVector[i_148]
	.loc 1 179 5 is_stmt 1 view .LVU167
	.loc 1 179 20 view .LVU168
.L35:
	.loc 1 179 20 is_stmt 0 view .LVU169
.LBE146:
	.loc 1 182 5 is_stmt 1 view .LVU170
.LVL53:
.LBB147:
.LBI147:
	.loc 2 34 8 view .LVU171
.LBB148:
	.loc 2 36 7 view .LVU172
	.loc 2 37 7 view .LVU173
.LBE148:
.LBE147:
# reduceSumPth.c:184:     pthread_barrier_init(&myBarrier, NULL, nThreads);
	.loc 1 184 25 is_stmt 0 view .LVU174
	movl	nThreads(%rip), %edx	# nThreads,
.LBB151:
.LBB149:
# chrono.c:36:       chrono->xtotal_ns = 0;
	.loc 2 36 25 view .LVU175
	pxor	%xmm0, %xmm0	# tmp177
.LBE149:
.LBE151:
# reduceSumPth.c:184:     pthread_barrier_init(&myBarrier, NULL, nThreads);
	.loc 1 184 25 view .LVU176
	xorl	%esi, %esi	#
	leaq	myBarrier(%rip), %rdi	#,
.LBB152:
.LBB150:
# chrono.c:36:       chrono->xtotal_ns = 0;
	.loc 2 36 25 view .LVU177
	movaps	%xmm0, 48(%rsp)	# tmp177, MEM <vector(2) long long int> [(void *)&parallelReductionTime + 32B]
.LVL54:
	.loc 2 36 25 view .LVU178
.LBE150:
.LBE152:
	.loc 1 184 5 is_stmt 1 view .LVU179
	leaq	4+my_thread_id(%rip), %rbp	#, ivtmp.115
# reduceSumPth.c:189:     for (i=1; i < nThreads; i++) {
	.loc 1 189 17 is_stmt 0 view .LVU180
	movl	$1, %ebx	#, ivtmp.113
.LVL55:
	.loc 1 189 17 view .LVU181
	leaq	Thread(%rip), %r12	#, tmp238
# reduceSumPth.c:184:     pthread_barrier_init(&myBarrier, NULL, nThreads);
	.loc 1 184 25 view .LVU182
	call	pthread_barrier_init@PLT	#
.LVL56:
	.loc 1 188 5 is_stmt 1 view .LVU183
# reduceSumPth.c:189:     for (i=1; i < nThreads; i++) {
	.loc 1 189 17 is_stmt 0 view .LVU184
	cmpl	$1, nThreads(%rip)	#, nThreads
# reduceSumPth.c:188:     my_thread_id[0] = 0;
	.loc 1 188 21 view .LVU185
	movl	$0, my_thread_id(%rip)	#, my_thread_id[0]
	.loc 1 189 5 is_stmt 1 view .LVU186
.LVL57:
	.loc 1 189 17 view .LVU187
# reduceSumPth.c:191:       pthread_create( &Thread[i], NULL, 
	.loc 1 191 21 is_stmt 0 view .LVU188
	leaq	_Z16reducePartialSumPv(%rip), %r14	#, tmp242
# reduceSumPth.c:189:     for (i=1; i < nThreads; i++) {
	.loc 1 189 17 view .LVU189
	jle	.L56	#,
.LVL58:
	.p2align 4,,10
	.p2align 3
.L37:
	.loc 1 190 7 is_stmt 1 discriminator 2 view .LVU190
# reduceSumPth.c:190:       my_thread_id[i] = i;
	.loc 1 190 23 is_stmt 0 discriminator 2 view .LVU191
	movl	%ebx, 0(%rbp)	# ivtmp.113, MEM[base: _163, offset: 0B]
	.loc 1 191 7 is_stmt 1 discriminator 2 view .LVU192
# reduceSumPth.c:191:       pthread_create( &Thread[i], NULL, 
	.loc 1 191 21 is_stmt 0 discriminator 2 view .LVU193
	leaq	(%r12,%rbx,8), %rdi	#, tmp204
	movq	%rbp, %rcx	# ivtmp.115,
	xorl	%esi, %esi	#
	movq	%r14, %rdx	# tmp242,
	leal	1(%rbx), %r13d	#, i
# reduceSumPth.c:189:     for (i=1; i < nThreads; i++) {
	.loc 1 189 17 discriminator 2 view .LVU194
	addq	$4, %rbp	#, ivtmp.115
	addq	$1, %rbx	#, ivtmp.113
.LVL59:
# reduceSumPth.c:191:       pthread_create( &Thread[i], NULL, 
	.loc 1 191 21 discriminator 2 view .LVU195
	call	pthread_create@PLT	#
.LVL60:
	.loc 1 189 5 is_stmt 1 discriminator 2 view .LVU196
	.loc 1 189 17 discriminator 2 view .LVU197
	cmpl	%ebx, nThreads(%rip)	# ivtmp.113, nThreads
	jg	.L37	#,
.LVL61:
.L30:
	.loc 1 197 5 view .LVU198
# reduceSumPth.c:197:     pthread_barrier_wait(&myBarrier);        // que acontece se isso for omitido ?        
	.loc 1 197 25 is_stmt 0 view .LVU199
	leaq	myBarrier(%rip), %rdi	#,
# reduceSumPth.c:200:     reducePartialSum( &my_thread_id[i] ); // main faz papel da thread 0
	.loc 1 200 23 view .LVU200
	movslq	%r13d, %r13	# i, i
# reduceSumPth.c:197:     pthread_barrier_wait(&myBarrier);        // que acontece se isso for omitido ?        
	.loc 1 197 25 view .LVU201
	call	pthread_barrier_wait@PLT	#
.LVL62:
	.loc 1 198 5 is_stmt 1 view .LVU202
.LBB153:
.LBI153:
	.loc 2 40 15 view .LVU203
.LBB154:
	.loc 2 41 7 view .LVU204
# chrono.c:41:       clock_gettime(CLOCK_MONOTONIC_RAW, &(chrono->xadd_time1) );
	.loc 2 41 20 is_stmt 0 view .LVU205
	leaq	16(%rsp), %rsi	#, tmp206
	movl	$4, %edi	#,
	call	clock_gettime@PLT	#
.LVL63:
	.loc 2 41 20 view .LVU206
.LBE154:
.LBE153:
	.loc 1 200 5 is_stmt 1 view .LVU207
# reduceSumPth.c:200:     reducePartialSum( &my_thread_id[i] ); // main faz papel da thread 0
	.loc 1 200 23 is_stmt 0 view .LVU208
	leaq	my_thread_id(%rip), %rax	#, tmp210
	leaq	(%rax,%r13,4), %rdi	#, tmp209
# reduceSumPth.c:200:     reducePartialSum( &my_thread_id[i] ); // main faz papel da thread 0
	.loc 1 200 21 view .LVU209
	call	_Z16reducePartialSumPv	#
.LVL64:
	.loc 1 204 5 is_stmt 1 view .LVU210
	.loc 1 205 5 view .LVU211
.LBB155:
	.loc 1 205 20 view .LVU212
	cmpl	$0, nThreads(%rip)	#, nThreads
	jle	.L45	#,
	xorl	%ebx, %ebx	# ivtmp.105
.LBE155:
# reduceSumPth.c:204:     float globalSum = 0;
	.loc 1 204 11 is_stmt 0 view .LVU213
	pxor	%xmm1, %xmm1	# globalSum
	leaq	partialSum(%rip), %r12	#, tmp240
.LBB164:
.LBB156:
.LBB157:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU214
	leaq	.LC11(%rip), %rbp	#, tmp241
.LVL65:
	.p2align 4,,10
	.p2align 3
.L39:
	.loc 3 107 23 view .LVU215
.LBE157:
.LBE156:
	.loc 1 206 9 is_stmt 1 view .LVU216
.LBB161:
.LBI156:
	.loc 3 105 1 view .LVU217
.LBB158:
	.loc 3 107 3 view .LVU218
.LBE158:
.LBE161:
# reduceSumPth.c:206:         printf( "globalSum = %f\n", globalSum );
	.loc 1 206 15 is_stmt 0 view .LVU219
	pxor	%xmm0, %xmm0	# tmp211
.LBB162:
.LBB159:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU220
	movq	%rbp, %rsi	# tmp241,
	movl	$1, %edi	#,
	movl	$1, %eax	#,
.LBE159:
.LBE162:
# reduceSumPth.c:206:         printf( "globalSum = %f\n", globalSum );
	.loc 1 206 15 view .LVU221
	movss	%xmm1, 8(%rsp)	# globalSum, %sfp
	cvtss2sd	%xmm1, %xmm0	# globalSum, tmp211
.LBB163:
.LBB160:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU222
	call	__printf_chk@PLT	#
.LVL66:
	.loc 3 107 23 view .LVU223
.LBE160:
.LBE163:
	.loc 1 207 9 is_stmt 1 view .LVU224
# reduceSumPth.c:207:         globalSum += partialSum[i];
	.loc 1 207 19 is_stmt 0 view .LVU225
	movss	8(%rsp), %xmm1	# %sfp, globalSum
	addss	(%r12,%rbx,4), %xmm1	# MEM[symbol: partialSum, index: ivtmp.105_150, step: 4, offset: 0B], globalSum
.LVL67:
	.loc 1 205 5 is_stmt 1 view .LVU226
	.loc 1 205 20 view .LVU227
	addq	$1, %rbx	#, ivtmp.105
.LVL68:
	.loc 1 205 20 is_stmt 0 view .LVU228
	cmpl	%ebx, nThreads(%rip)	# ivtmp.105, nThreads
	jg	.L39	#,
.LVL69:
.L38:
	.loc 1 205 20 view .LVU229
.LBE164:
.LBB165:
.LBB166:
# chrono.c:54:       clock_gettime(CLOCK_MONOTONIC_RAW, &(chrono->xadd_time2) );
	.loc 2 54 20 view .LVU230
	leaq	32(%rsp), %rsi	#, tmp214
	movl	$4, %edi	#,
	movss	%xmm1, 8(%rsp)	# globalSum, %sfp
.LBE166:
.LBE165:
	.loc 1 211 5 is_stmt 1 view .LVU231
.LVL70:
.LBB172:
.LBI165:
	.loc 2 52 15 view .LVU232
.LBB167:
	.loc 2 54 7 view .LVU233
.LBE167:
.LBE172:
# reduceSumPth.c:216:     for (i=1; i < nThreads; i++)
	.loc 1 216 17 is_stmt 0 view .LVU234
	movl	$1, %ebx	#, ivtmp.99
.LBB173:
.LBB168:
# chrono.c:54:       clock_gettime(CLOCK_MONOTONIC_RAW, &(chrono->xadd_time2) );
	.loc 2 54 20 view .LVU235
	call	clock_gettime@PLT	#
.LVL71:
	.loc 2 56 7 is_stmt 1 view .LVU236
	.loc 2 58 7 view .LVU237
	.loc 2 60 7 view .LVU238
	.loc 2 62 7 view .LVU239
.LBE168:
.LBE173:
# reduceSumPth.c:214:     printf( "globalSum = %f\n", globalSum );
	.loc 1 214 11 is_stmt 0 view .LVU240
	movss	8(%rsp), %xmm1	# %sfp, globalSum
	pxor	%xmm0, %xmm0	# tmp224
.LBB174:
.LBB169:
# chrono.c:58:       long long ns2 = chrono->xadd_time2.tv_sec*1000*1000*1000 + 
	.loc 2 58 58 view .LVU241
	imulq	$1000000000, 32(%rsp), %rax	#, parallelReductionTime.xadd_time2.tv_sec, tmp215
# chrono.c:58:       long long ns2 = chrono->xadd_time2.tv_sec*1000*1000*1000 + 
	.loc 2 58 17 view .LVU242
	addq	40(%rsp), %rax	# parallelReductionTime.xadd_time2.tv_nsec, ns2
.LVL72:
	.loc 2 58 17 view .LVU243
.LBE169:
.LBE174:
.LBB175:
.LBB176:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU244
	movl	$1, %edi	#,
	leaq	.LC11(%rip), %rsi	#,
.LBE176:
.LBE175:
.LBB178:
.LBB170:
# chrono.c:63:       chrono->xn_events++;
	.loc 2 63 24 view .LVU245
	addq	$1, 56(%rsp)	#, parallelReductionTime.xn_events
# chrono.c:56:       long long ns1 = chrono->xadd_time1.tv_sec*1000*1000*1000 + 
	.loc 2 56 58 view .LVU246
	imulq	$1000000000, 16(%rsp), %rdx	#, parallelReductionTime.xadd_time1.tv_sec, tmp219
# chrono.c:56:       long long ns1 = chrono->xadd_time1.tv_sec*1000*1000*1000 + 
	.loc 2 56 17 view .LVU247
	addq	24(%rsp), %rdx	# parallelReductionTime.xadd_time1.tv_nsec, ns1
.LVL73:
	.loc 2 56 17 view .LVU248
.LBE170:
.LBE178:
# reduceSumPth.c:214:     printf( "globalSum = %f\n", globalSum );
	.loc 1 214 11 view .LVU249
	cvtss2sd	%xmm1, %xmm0	# globalSum, tmp224
	leaq	Thread(%rip), %r12	#, tmp238
.LBB179:
.LBB171:
# chrono.c:60:       long long deltat_ns = ns2 - ns1;
	.loc 2 60 17 view .LVU250
	subq	%rdx, %rax	# ns1, deltat_ns
.LVL74:
# chrono.c:62:       chrono->xtotal_ns += deltat_ns;
	.loc 2 62 25 view .LVU251
	addq	%rax, 48(%rsp)	# deltat_ns, parallelReductionTime.xtotal_ns
	.loc 2 63 7 is_stmt 1 view .LVU252
.LVL75:
	.loc 2 63 7 is_stmt 0 view .LVU253
.LBE171:
.LBE179:
	.loc 1 214 5 is_stmt 1 view .LVU254
.LBB180:
.LBI175:
	.loc 3 105 1 view .LVU255
.LBB177:
	.loc 3 107 3 view .LVU256
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU257
	movl	$1, %eax	#,
	call	__printf_chk@PLT	#
.LVL76:
	.loc 3 107 23 view .LVU258
.LBE177:
.LBE180:
	.loc 1 216 17 is_stmt 1 view .LVU259
	cmpl	$1, nThreads(%rip)	#, nThreads
	jle	.L41	#,
.LVL77:
	.p2align 4,,10
	.p2align 3
.L40:
	.loc 1 217 9 view .LVU260
# reduceSumPth.c:217:         pthread_join(Thread[i], NULL);   // isso é necessário ?
	.loc 1 217 21 is_stmt 0 view .LVU261
	movq	(%r12,%rbx,8), %rdi	# MEM[symbol: Thread, index: ivtmp.99_73, step: 8, offset: 0B], MEM[symbol: Thread, index: ivtmp.99_73, step: 8, offset: 0B]
	xorl	%esi, %esi	#
# reduceSumPth.c:216:     for (i=1; i < nThreads; i++)
	.loc 1 216 17 view .LVU262
	addq	$1, %rbx	#, ivtmp.99
.LVL78:
# reduceSumPth.c:217:         pthread_join(Thread[i], NULL);   // isso é necessário ?
	.loc 1 217 21 view .LVU263
	call	pthread_join@PLT	#
.LVL79:
	.loc 1 216 5 is_stmt 1 view .LVU264
	.loc 1 216 17 view .LVU265
	cmpl	%ebx, nThreads(%rip)	# ivtmp.99, nThreads
	jg	.L40	#,
.L41:
	.loc 1 220 5 view .LVU266
# reduceSumPth.c:220:     pthread_barrier_destroy( &myBarrier );
	.loc 1 220 28 is_stmt 0 view .LVU267
	leaq	myBarrier(%rip), %rdi	#,
	call	pthread_barrier_destroy@PLT	#
.LVL80:
	.loc 1 222 5 is_stmt 1 view .LVU268
.LBB181:
.LBI181:
	.loc 2 66 8 view .LVU269
.LBB182:
	.loc 2 68 5 view .LVU270
# chrono.c:71:                                                 chrono->xtotal_ns/chrono->xn_events );
	.loc 2 71 57 is_stmt 0 view .LVU271
	movq	48(%rsp), %rcx	# parallelReductionTime.xtotal_ns, _65
# chrono.c:71:                                                 chrono->xtotal_ns/chrono->xn_events );
	.loc 2 71 75 view .LVU272
	movq	56(%rsp), %r8	# parallelReductionTime.xn_events, _66
.LVL81:
.LBB183:
.LBI183:
	.loc 3 105 1 is_stmt 1 view .LVU273
.LBB184:
	.loc 3 107 3 view .LVU274
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU275
	leaq	.LC1(%rip), %rsi	#,
	movl	$1, %edi	#,
.LBE184:
.LBE183:
# chrono.c:68:     printf("\n%s deltaT(ns): %lld ns for %ld ops \n"
	.loc 2 68 11 view .LVU276
	movq	%rcx, %rax	# _65, tmp226
	cqto
	idivq	%r8	# _66
.LBB187:
.LBB185:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU277
	leaq	.LC12(%rip), %rdx	#,
.LBE185:
.LBE187:
# chrono.c:68:     printf("\n%s deltaT(ns): %lld ns for %ld ops \n"
	.loc 2 68 11 view .LVU278
	movq	%rax, %r9	# tmp226, tmp226
.LBB188:
.LBB186:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU279
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL82:
	.loc 3 107 23 view .LVU280
.LBE186:
.LBE188:
.LBE182:
.LBE181:
	.loc 1 225 5 is_stmt 1 view .LVU281
.LBB189:
.LBI189:
	.loc 2 44 21 view .LVU282
.LBB190:
	.loc 2 45 7 view .LVU283
	.loc 2 45 7 is_stmt 0 view .LVU284
.LBE190:
.LBE189:
.LBB191:
.LBB192:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU285
	leaq	.LC14(%rip), %rsi	#,
	movl	$1, %edi	#,
.LBE192:
.LBE191:
# reduceSumPth.c:225:     double total_time_in_seconds = (double) chrono_gettotal( &parallelReductionTime ) /
	.loc 1 225 36 view .LVU286
	pxor	%xmm0, %xmm0	# tmp228
.LBB195:
.LBB193:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU287
	movl	$1, %eax	#,
.LBE193:
.LBE195:
# reduceSumPth.c:225:     double total_time_in_seconds = (double) chrono_gettotal( &parallelReductionTime ) /
	.loc 1 225 36 view .LVU288
	cvtsi2sdq	48(%rsp), %xmm0	# parallelReductionTime.xtotal_ns, tmp228
# reduceSumPth.c:226:                                       ((double)1000*1000*1000);
	.loc 1 226 62 view .LVU289
	divsd	.LC13(%rip), %xmm0	#, total_time_in_seconds
.LVL83:
	.loc 1 227 5 is_stmt 1 view .LVU290
.LBB196:
.LBI191:
	.loc 3 105 1 view .LVU291
.LBB194:
	.loc 3 107 3 view .LVU292
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU293
	movsd	%xmm0, 8(%rsp)	# total_time_in_seconds, %sfp
	call	__printf_chk@PLT	#
.LVL84:
	.loc 3 107 23 view .LVU294
.LBE194:
.LBE196:
	.loc 1 229 5 is_stmt 1 view .LVU295
	.loc 1 230 5 view .LVU296
.LBB197:
.LBI197:
	.loc 3 105 1 view .LVU297
.LBB198:
	.loc 3 107 3 view .LVU298
.LBE198:
.LBE197:
# reduceSumPth.c:229:     double OPS = (nTotalElements)/total_time_in_seconds;
	.loc 1 229 34 is_stmt 0 view .LVU299
	pxor	%xmm1, %xmm1	# tmp230
# reduceSumPth.c:229:     double OPS = (nTotalElements)/total_time_in_seconds;
	.loc 1 229 12 view .LVU300
	movsd	8(%rsp), %xmm0	# %sfp, total_time_in_seconds
.LBB202:
.LBB199:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU301
	leaq	.LC15(%rip), %rsi	#,
.LBE199:
.LBE202:
# reduceSumPth.c:229:     double OPS = (nTotalElements)/total_time_in_seconds;
	.loc 1 229 34 view .LVU302
	cvtsi2sdl	nTotalElements(%rip), %xmm1	# nTotalElements, tmp230
.LBB203:
.LBB200:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU303
	movl	$1, %edi	#,
	movl	$1, %eax	#,
.LBE200:
.LBE203:
# reduceSumPth.c:229:     double OPS = (nTotalElements)/total_time_in_seconds;
	.loc 1 229 12 view .LVU304
	divsd	%xmm0, %xmm1	# total_time_in_seconds, OPS
.LBB204:
.LBB201:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 view .LVU305
	movapd	%xmm1, %xmm0	# OPS,
	call	__printf_chk@PLT	#
.LVL85:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 72 view .LVU306
	jmp	.L25	#
.LVL86:
.L53:
	.loc 3 107 72 view .LVU307
.LBE201:
.LBE204:
	.loc 1 155 15 is_stmt 1 view .LVU308
.LBB205:
.LBI205:
	.loc 3 105 1 view .LVU309
.LBB206:
	.loc 3 107 3 view .LVU310
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU311
	movq	(%rbx), %rdx	# *argv_39(D),
	leaq	.LC3(%rip), %rsi	#,
	movl	$1, %edi	#,
	call	__printf_chk@PLT	#
.LVL87:
	.loc 3 107 23 view .LVU312
.LBE206:
.LBE205:
	.loc 1 157 15 is_stmt 1 view .LVU313
.LBB207:
.LBI207:
	.loc 3 105 1 view .LVU314
.LBB208:
	.loc 3 107 3 view .LVU315
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU316
	leaq	.LC4(%rip), %rdi	#,
	call	puts@PLT	#
.LVL88:
	.loc 3 107 23 view .LVU317
.LBE208:
.LBE207:
	.loc 1 158 15 is_stmt 1 view .LVU318
# reduceSumPth.c:158:               return 0;
	.loc 1 158 22 is_stmt 0 view .LVU319
	jmp	.L25	#
.L55:
	.loc 1 168 15 is_stmt 1 view .LVU320
.LVL89:
.LBB209:
.LBI209:
	.loc 3 105 1 view .LVU321
.LBB210:
	.loc 3 107 3 view .LVU322
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU323
	movq	(%rbx), %rdx	# *argv_39(D),
	leaq	.LC3(%rip), %rsi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL90:
	.loc 3 107 23 view .LVU324
.LBE210:
.LBE209:
	.loc 1 170 15 is_stmt 1 view .LVU325
.LBB211:
.LBI211:
	.loc 3 105 1 view .LVU326
.LBB212:
	.loc 3 107 3 view .LVU327
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU328
	movl	$500000000, %edx	#,
	leaq	.LC6(%rip), %rsi	#,
	xorl	%eax, %eax	#
	movl	$1, %edi	#,
	call	__printf_chk@PLT	#
.LVL91:
	.loc 3 107 23 view .LVU329
.LBE212:
.LBE211:
	.loc 1 171 15 is_stmt 1 view .LVU330
# reduceSumPth.c:171:               return 0;
	.loc 1 171 22 is_stmt 0 view .LVU331
	jmp	.L25	#
.L54:
	.loc 1 161 15 is_stmt 1 view .LVU332
.LVL92:
.LBB213:
.LBI213:
	.loc 3 105 1 view .LVU333
.LBB214:
	.loc 3 107 3 view .LVU334
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU335
	movq	(%rbx), %rdx	# *argv_39(D),
	leaq	.LC3(%rip), %rsi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL93:
	.loc 3 107 23 view .LVU336
.LBE214:
.LBE213:
	.loc 1 163 15 is_stmt 1 view .LVU337
.LBB215:
.LBI215:
	.loc 3 105 1 view .LVU338
.LBB216:
	.loc 3 107 3 view .LVU339
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 3 107 23 is_stmt 0 view .LVU340
	movl	$64, %edx	#,
	leaq	.LC5(%rip), %rsi	#,
	xorl	%eax, %eax	#
	movl	$1, %edi	#,
	call	__printf_chk@PLT	#
.LVL94:
	.loc 3 107 23 view .LVU341
.LBE216:
.LBE215:
	.loc 1 164 15 is_stmt 1 view .LVU342
# reduceSumPth.c:164:               return 0;
	.loc 1 164 22 is_stmt 0 view .LVU343
	jmp	.L25	#
.LVL95:
.L56:
# reduceSumPth.c:189:     for (i=1; i < nThreads; i++) {
	.loc 1 189 11 view .LVU344
	movl	$1, %r13d	#, i
	jmp	.L30	#
.LVL96:
.L45:
# reduceSumPth.c:204:     float globalSum = 0;
	.loc 1 204 11 view .LVU345
	pxor	%xmm1, %xmm1	# globalSum
	jmp	.L38	#
.LVL97:
.L44:
.LBB217:
# reduceSumPth.c:179:     for( int i=0; i<nTotalElements ; i++ )
	.loc 1 179 14 view .LVU346
	xorl	%eax, %eax	# tmp.88
	leaq	InputVector(%rip), %rsi	#, tmp239
	jmp	.L32	#
.LVL98:
.L52:
	.loc 1 179 14 view .LVU347
.LBE217:
# reduceSumPth.c:233: }
	.loc 1 233 1 view .LVU348
	call	__stack_chk_fail@PLT	#
.LVL99:
	.cfi_endproc
.LFE362:
	.size	main, .-main
	.globl	myBarrier
	.bss
	.align 32
	.type	myBarrier, @object
	.size	myBarrier, 32
myBarrier:
	.zero	32
	.globl	InputVector
	.align 32
	.type	InputVector, @object
	.size	InputVector, 2000000000
InputVector:
	.zero	2000000000
	.globl	nTotalElements
	.align 4
	.type	nTotalElements, @object
	.size	nTotalElements, 4
nTotalElements:
	.zero	4
	.globl	nThreads
	.align 4
	.type	nThreads, @object
	.size	nThreads, 4
nThreads:
	.zero	4
	.globl	partialSum
	.align 32
	.type	partialSum, @object
	.size	partialSum, 256
partialSum:
	.zero	256
	.globl	my_thread_id
	.align 32
	.type	my_thread_id, @object
	.size	my_thread_id, 256
my_thread_id:
	.zero	256
	.globl	Thread
	.align 32
	.type	Thread, @object
	.size	Thread, 512
Thread:
	.zero	512
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC8:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC9:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC10:
	.long	1065353216
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC13:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/10/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 9 "/usr/include/pthread.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/confname.h"
	.file 11 "/usr/include/c++/10/cstdlib"
	.file 12 "/usr/include/c++/10/bits/std_abs.h"
	.file 13 "/usr/include/c++/10/bits/cpp_type_traits.h"
	.file 14 "/usr/include/c++/10/cmath"
	.file 15 "/usr/include/x86_64-linux-gnu/c++/10/bits/c++config.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
	.file 19 "/usr/include/c++/10/stdlib.h"
	.file 20 "/usr/include/math.h"
	.file 21 "/usr/include/c++/10/math.h"
	.file 22 "/usr/include/time.h"
	.file 23 "<built-in>"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3244
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF578
	.byte	0x4
	.long	.LASF579
	.long	.LASF580
	.long	.Ldebug_ranges0+0x310
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF1
	.uleb128 0x4
	.long	.LASF9
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x4a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x76
	.uleb128 0x4
	.long	.LASF11
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0x76
	.uleb128 0x6
	.byte	0x8
	.long	0x9b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0x9b
	.uleb128 0x6
	.byte	0x8
	.long	0xa2
	.uleb128 0x8
	.long	0xa7
	.uleb128 0x9
	.long	.LASF261
	.byte	0x10
	.byte	0x7
	.byte	0xa
	.byte	0x8
	.long	0xda
	.uleb128 0xa
	.long	.LASF13
	.byte	0x7
	.byte	0xc
	.byte	0xc
	.long	0x7d
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x7
	.byte	0x10
	.byte	0x15
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x4
	.long	.LASF16
	.byte	0x8
	.byte	0x1b
	.byte	0x1b
	.long	0x4a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0xb
	.byte	0x20
	.byte	0x8
	.byte	0x6d
	.byte	0x1
	.long	.LASF581
	.long	0x11a
	.uleb128 0xc
	.long	.LASF18
	.byte	0x8
	.byte	0x6e
	.byte	0x8
	.long	0x11a
	.uleb128 0xc
	.long	.LASF19
	.byte	0x8
	.byte	0x6f
	.byte	0xc
	.long	0x76
	.byte	0
	.uleb128 0xd
	.long	0x9b
	.long	0x12a
	.uleb128 0xe
	.long	0x4a
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.long	.LASF20
	.byte	0x8
	.byte	0x70
	.byte	0x3
	.long	0xf4
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0x9
	.byte	0x2c
	.byte	0x1
	.long	0x17b
	.uleb128 0x10
	.long	.LASF21
	.byte	0
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.uleb128 0x10
	.long	.LASF23
	.byte	0x2
	.uleb128 0x10
	.long	.LASF24
	.byte	0x3
	.uleb128 0x10
	.long	.LASF25
	.byte	0
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.uleb128 0x10
	.long	.LASF27
	.byte	0x2
	.uleb128 0x10
	.long	.LASF28
	.byte	0
	.uleb128 0x10
	.long	.LASF29
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0x9
	.byte	0x42
	.byte	0x1
	.long	0x1a2
	.uleb128 0x10
	.long	.LASF30
	.byte	0
	.uleb128 0x10
	.long	.LASF31
	.byte	0
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0x9
	.byte	0x65
	.byte	0x1
	.long	0x1c9
	.uleb128 0x10
	.long	.LASF34
	.byte	0
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.uleb128 0x10
	.long	.LASF36
	.byte	0x2
	.uleb128 0x10
	.long	.LASF37
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0xa
	.byte	0x48
	.byte	0x3
	.long	0x6e8
	.uleb128 0x10
	.long	.LASF38
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.byte	0x1
	.uleb128 0x10
	.long	.LASF40
	.byte	0x2
	.uleb128 0x10
	.long	.LASF41
	.byte	0x3
	.uleb128 0x10
	.long	.LASF42
	.byte	0x4
	.uleb128 0x10
	.long	.LASF43
	.byte	0x5
	.uleb128 0x10
	.long	.LASF44
	.byte	0x6
	.uleb128 0x10
	.long	.LASF45
	.byte	0x7
	.uleb128 0x10
	.long	.LASF46
	.byte	0x8
	.uleb128 0x10
	.long	.LASF47
	.byte	0x9
	.uleb128 0x10
	.long	.LASF48
	.byte	0xa
	.uleb128 0x10
	.long	.LASF49
	.byte	0xb
	.uleb128 0x10
	.long	.LASF50
	.byte	0xc
	.uleb128 0x10
	.long	.LASF51
	.byte	0xd
	.uleb128 0x10
	.long	.LASF52
	.byte	0xe
	.uleb128 0x10
	.long	.LASF53
	.byte	0xf
	.uleb128 0x10
	.long	.LASF54
	.byte	0x10
	.uleb128 0x10
	.long	.LASF55
	.byte	0x11
	.uleb128 0x10
	.long	.LASF56
	.byte	0x12
	.uleb128 0x10
	.long	.LASF57
	.byte	0x13
	.uleb128 0x10
	.long	.LASF58
	.byte	0x14
	.uleb128 0x10
	.long	.LASF59
	.byte	0x15
	.uleb128 0x10
	.long	.LASF60
	.byte	0x16
	.uleb128 0x10
	.long	.LASF61
	.byte	0x17
	.uleb128 0x10
	.long	.LASF62
	.byte	0x18
	.uleb128 0x10
	.long	.LASF63
	.byte	0x19
	.uleb128 0x10
	.long	.LASF64
	.byte	0x1a
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1b
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1d
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1e
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1f
	.uleb128 0x10
	.long	.LASF70
	.byte	0x20
	.uleb128 0x10
	.long	.LASF71
	.byte	0x21
	.uleb128 0x10
	.long	.LASF72
	.byte	0x22
	.uleb128 0x10
	.long	.LASF73
	.byte	0x23
	.uleb128 0x10
	.long	.LASF74
	.byte	0x24
	.uleb128 0x10
	.long	.LASF75
	.byte	0x25
	.uleb128 0x10
	.long	.LASF76
	.byte	0x26
	.uleb128 0x10
	.long	.LASF77
	.byte	0x27
	.uleb128 0x10
	.long	.LASF78
	.byte	0x28
	.uleb128 0x10
	.long	.LASF79
	.byte	0x29
	.uleb128 0x10
	.long	.LASF80
	.byte	0x2a
	.uleb128 0x10
	.long	.LASF81
	.byte	0x2b
	.uleb128 0x10
	.long	.LASF82
	.byte	0x2c
	.uleb128 0x10
	.long	.LASF83
	.byte	0x2d
	.uleb128 0x10
	.long	.LASF84
	.byte	0x2e
	.uleb128 0x10
	.long	.LASF85
	.byte	0x2f
	.uleb128 0x10
	.long	.LASF86
	.byte	0x30
	.uleb128 0x10
	.long	.LASF87
	.byte	0x31
	.uleb128 0x10
	.long	.LASF88
	.byte	0x32
	.uleb128 0x10
	.long	.LASF89
	.byte	0x33
	.uleb128 0x10
	.long	.LASF90
	.byte	0x34
	.uleb128 0x10
	.long	.LASF91
	.byte	0x35
	.uleb128 0x10
	.long	.LASF92
	.byte	0x36
	.uleb128 0x10
	.long	.LASF93
	.byte	0x37
	.uleb128 0x10
	.long	.LASF94
	.byte	0x38
	.uleb128 0x10
	.long	.LASF95
	.byte	0x39
	.uleb128 0x10
	.long	.LASF96
	.byte	0x3a
	.uleb128 0x10
	.long	.LASF97
	.byte	0x3b
	.uleb128 0x10
	.long	.LASF98
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF99
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF100
	.byte	0x3d
	.uleb128 0x10
	.long	.LASF101
	.byte	0x3e
	.uleb128 0x10
	.long	.LASF102
	.byte	0x3f
	.uleb128 0x10
	.long	.LASF103
	.byte	0x40
	.uleb128 0x10
	.long	.LASF104
	.byte	0x41
	.uleb128 0x10
	.long	.LASF105
	.byte	0x42
	.uleb128 0x10
	.long	.LASF106
	.byte	0x43
	.uleb128 0x10
	.long	.LASF107
	.byte	0x44
	.uleb128 0x10
	.long	.LASF108
	.byte	0x45
	.uleb128 0x10
	.long	.LASF109
	.byte	0x46
	.uleb128 0x10
	.long	.LASF110
	.byte	0x47
	.uleb128 0x10
	.long	.LASF111
	.byte	0x48
	.uleb128 0x10
	.long	.LASF112
	.byte	0x49
	.uleb128 0x10
	.long	.LASF113
	.byte	0x4a
	.uleb128 0x10
	.long	.LASF114
	.byte	0x4b
	.uleb128 0x10
	.long	.LASF115
	.byte	0x4c
	.uleb128 0x10
	.long	.LASF116
	.byte	0x4d
	.uleb128 0x10
	.long	.LASF117
	.byte	0x4e
	.uleb128 0x10
	.long	.LASF118
	.byte	0x4f
	.uleb128 0x10
	.long	.LASF119
	.byte	0x50
	.uleb128 0x10
	.long	.LASF120
	.byte	0x51
	.uleb128 0x10
	.long	.LASF121
	.byte	0x52
	.uleb128 0x10
	.long	.LASF122
	.byte	0x53
	.uleb128 0x10
	.long	.LASF123
	.byte	0x54
	.uleb128 0x10
	.long	.LASF124
	.byte	0x55
	.uleb128 0x10
	.long	.LASF125
	.byte	0x56
	.uleb128 0x10
	.long	.LASF126
	.byte	0x57
	.uleb128 0x10
	.long	.LASF127
	.byte	0x58
	.uleb128 0x10
	.long	.LASF128
	.byte	0x59
	.uleb128 0x10
	.long	.LASF129
	.byte	0x5a
	.uleb128 0x10
	.long	.LASF130
	.byte	0x5b
	.uleb128 0x10
	.long	.LASF131
	.byte	0x5c
	.uleb128 0x10
	.long	.LASF132
	.byte	0x5d
	.uleb128 0x10
	.long	.LASF133
	.byte	0x5e
	.uleb128 0x10
	.long	.LASF134
	.byte	0x5f
	.uleb128 0x10
	.long	.LASF135
	.byte	0x60
	.uleb128 0x10
	.long	.LASF136
	.byte	0x61
	.uleb128 0x10
	.long	.LASF137
	.byte	0x62
	.uleb128 0x10
	.long	.LASF138
	.byte	0x63
	.uleb128 0x10
	.long	.LASF139
	.byte	0x64
	.uleb128 0x10
	.long	.LASF140
	.byte	0x65
	.uleb128 0x10
	.long	.LASF141
	.byte	0x66
	.uleb128 0x10
	.long	.LASF142
	.byte	0x67
	.uleb128 0x10
	.long	.LASF143
	.byte	0x68
	.uleb128 0x10
	.long	.LASF144
	.byte	0x69
	.uleb128 0x10
	.long	.LASF145
	.byte	0x6a
	.uleb128 0x10
	.long	.LASF146
	.byte	0x6b
	.uleb128 0x10
	.long	.LASF147
	.byte	0x6c
	.uleb128 0x10
	.long	.LASF148
	.byte	0x6d
	.uleb128 0x10
	.long	.LASF149
	.byte	0x6e
	.uleb128 0x10
	.long	.LASF150
	.byte	0x6f
	.uleb128 0x10
	.long	.LASF151
	.byte	0x70
	.uleb128 0x10
	.long	.LASF152
	.byte	0x71
	.uleb128 0x10
	.long	.LASF153
	.byte	0x72
	.uleb128 0x10
	.long	.LASF154
	.byte	0x73
	.uleb128 0x10
	.long	.LASF155
	.byte	0x74
	.uleb128 0x10
	.long	.LASF156
	.byte	0x75
	.uleb128 0x10
	.long	.LASF157
	.byte	0x76
	.uleb128 0x10
	.long	.LASF158
	.byte	0x77
	.uleb128 0x10
	.long	.LASF159
	.byte	0x78
	.uleb128 0x10
	.long	.LASF160
	.byte	0x79
	.uleb128 0x10
	.long	.LASF161
	.byte	0x7a
	.uleb128 0x10
	.long	.LASF162
	.byte	0x7b
	.uleb128 0x10
	.long	.LASF163
	.byte	0x7c
	.uleb128 0x10
	.long	.LASF164
	.byte	0x7d
	.uleb128 0x10
	.long	.LASF165
	.byte	0x7e
	.uleb128 0x10
	.long	.LASF166
	.byte	0x7f
	.uleb128 0x10
	.long	.LASF167
	.byte	0x80
	.uleb128 0x10
	.long	.LASF168
	.byte	0x81
	.uleb128 0x10
	.long	.LASF169
	.byte	0x82
	.uleb128 0x10
	.long	.LASF170
	.byte	0x83
	.uleb128 0x10
	.long	.LASF171
	.byte	0x84
	.uleb128 0x10
	.long	.LASF172
	.byte	0x85
	.uleb128 0x10
	.long	.LASF173
	.byte	0x86
	.uleb128 0x10
	.long	.LASF174
	.byte	0x87
	.uleb128 0x10
	.long	.LASF175
	.byte	0x88
	.uleb128 0x10
	.long	.LASF176
	.byte	0x89
	.uleb128 0x10
	.long	.LASF177
	.byte	0x8a
	.uleb128 0x10
	.long	.LASF178
	.byte	0x8b
	.uleb128 0x10
	.long	.LASF179
	.byte	0x8c
	.uleb128 0x10
	.long	.LASF180
	.byte	0x8d
	.uleb128 0x10
	.long	.LASF181
	.byte	0x8e
	.uleb128 0x10
	.long	.LASF182
	.byte	0x8f
	.uleb128 0x10
	.long	.LASF183
	.byte	0x90
	.uleb128 0x10
	.long	.LASF184
	.byte	0x91
	.uleb128 0x10
	.long	.LASF185
	.byte	0x92
	.uleb128 0x10
	.long	.LASF186
	.byte	0x93
	.uleb128 0x10
	.long	.LASF187
	.byte	0x94
	.uleb128 0x10
	.long	.LASF188
	.byte	0x95
	.uleb128 0x10
	.long	.LASF189
	.byte	0x96
	.uleb128 0x10
	.long	.LASF190
	.byte	0x97
	.uleb128 0x10
	.long	.LASF191
	.byte	0x98
	.uleb128 0x10
	.long	.LASF192
	.byte	0x99
	.uleb128 0x10
	.long	.LASF193
	.byte	0x9a
	.uleb128 0x10
	.long	.LASF194
	.byte	0x9b
	.uleb128 0x10
	.long	.LASF195
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF196
	.byte	0x9d
	.uleb128 0x10
	.long	.LASF197
	.byte	0x9e
	.uleb128 0x10
	.long	.LASF198
	.byte	0x9f
	.uleb128 0x10
	.long	.LASF199
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF200
	.byte	0xa1
	.uleb128 0x10
	.long	.LASF201
	.byte	0xa2
	.uleb128 0x10
	.long	.LASF202
	.byte	0xa3
	.uleb128 0x10
	.long	.LASF203
	.byte	0xa4
	.uleb128 0x10
	.long	.LASF204
	.byte	0xa5
	.uleb128 0x10
	.long	.LASF205
	.byte	0xa6
	.uleb128 0x10
	.long	.LASF206
	.byte	0xa7
	.uleb128 0x10
	.long	.LASF207
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF208
	.byte	0xa9
	.uleb128 0x10
	.long	.LASF209
	.byte	0xaa
	.uleb128 0x10
	.long	.LASF210
	.byte	0xab
	.uleb128 0x10
	.long	.LASF211
	.byte	0xac
	.uleb128 0x10
	.long	.LASF212
	.byte	0xad
	.uleb128 0x10
	.long	.LASF213
	.byte	0xae
	.uleb128 0x10
	.long	.LASF214
	.byte	0xaf
	.uleb128 0x10
	.long	.LASF215
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF216
	.byte	0xb1
	.uleb128 0x10
	.long	.LASF217
	.byte	0xb2
	.uleb128 0x10
	.long	.LASF218
	.byte	0xb3
	.uleb128 0x10
	.long	.LASF219
	.byte	0xb4
	.uleb128 0x10
	.long	.LASF220
	.byte	0xb5
	.uleb128 0x10
	.long	.LASF221
	.byte	0xb6
	.uleb128 0x10
	.long	.LASF222
	.byte	0xb7
	.uleb128 0x10
	.long	.LASF223
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF224
	.byte	0xb9
	.uleb128 0x10
	.long	.LASF225
	.byte	0xba
	.uleb128 0x10
	.long	.LASF226
	.byte	0xbb
	.uleb128 0x10
	.long	.LASF227
	.byte	0xbc
	.uleb128 0x10
	.long	.LASF228
	.byte	0xbd
	.uleb128 0x10
	.long	.LASF229
	.byte	0xbe
	.uleb128 0x10
	.long	.LASF230
	.byte	0xbf
	.uleb128 0x10
	.long	.LASF231
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF232
	.byte	0xc1
	.uleb128 0x10
	.long	.LASF233
	.byte	0xc2
	.uleb128 0x10
	.long	.LASF234
	.byte	0xc3
	.uleb128 0x10
	.long	.LASF235
	.byte	0xc4
	.uleb128 0x10
	.long	.LASF236
	.byte	0xc5
	.uleb128 0x10
	.long	.LASF237
	.byte	0xc6
	.uleb128 0x10
	.long	.LASF238
	.byte	0xc7
	.uleb128 0x10
	.long	.LASF239
	.byte	0xeb
	.uleb128 0x10
	.long	.LASF240
	.byte	0xec
	.uleb128 0x10
	.long	.LASF241
	.byte	0xed
	.uleb128 0x10
	.long	.LASF242
	.byte	0xee
	.uleb128 0x10
	.long	.LASF243
	.byte	0xef
	.uleb128 0x10
	.long	.LASF244
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF245
	.byte	0xf1
	.uleb128 0x10
	.long	.LASF246
	.byte	0xf2
	.uleb128 0x10
	.long	.LASF247
	.byte	0xf3
	.uleb128 0x10
	.long	.LASF248
	.byte	0xf4
	.uleb128 0x10
	.long	.LASF249
	.byte	0xf5
	.uleb128 0x10
	.long	.LASF250
	.byte	0xf6
	.uleb128 0x10
	.long	.LASF251
	.byte	0xf7
	.uleb128 0x10
	.long	.LASF252
	.byte	0xf8
	.byte	0
	.uleb128 0x11
	.string	"std"
	.byte	0x17
	.byte	0
	.long	0x1a19
	.uleb128 0x12
	.long	.LASF473
	.byte	0xf
	.value	0x11e
	.byte	0x41
	.uleb128 0x13
	.byte	0xf
	.value	0x11e
	.byte	0x41
	.long	0x6f3
	.uleb128 0x14
	.byte	0xb
	.byte	0x7f
	.byte	0xb
	.long	0x1ac9
	.uleb128 0x14
	.byte	0xb
	.byte	0x80
	.byte	0xb
	.long	0x1afd
	.uleb128 0x14
	.byte	0xb
	.byte	0x86
	.byte	0xb
	.long	0x1b6b
	.uleb128 0x14
	.byte	0xb
	.byte	0x89
	.byte	0xb
	.long	0x1b89
	.uleb128 0x14
	.byte	0xb
	.byte	0x8c
	.byte	0xb
	.long	0x1ba4
	.uleb128 0x14
	.byte	0xb
	.byte	0x8d
	.byte	0xb
	.long	0x1bba
	.uleb128 0x14
	.byte	0xb
	.byte	0x8e
	.byte	0xb
	.long	0x1bda
	.uleb128 0x14
	.byte	0xb
	.byte	0x8f
	.byte	0xb
	.long	0x1bf1
	.uleb128 0x14
	.byte	0xb
	.byte	0x91
	.byte	0xb
	.long	0x1c1b
	.uleb128 0x14
	.byte	0xb
	.byte	0x94
	.byte	0xb
	.long	0x1c37
	.uleb128 0x14
	.byte	0xb
	.byte	0x96
	.byte	0xb
	.long	0x1c4e
	.uleb128 0x14
	.byte	0xb
	.byte	0x99
	.byte	0xb
	.long	0x1c6a
	.uleb128 0x14
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x1c86
	.uleb128 0x14
	.byte	0xb
	.byte	0x9b
	.byte	0xb
	.long	0x1cb8
	.uleb128 0x14
	.byte	0xb
	.byte	0x9d
	.byte	0xb
	.long	0x1cd9
	.uleb128 0x14
	.byte	0xb
	.byte	0xa0
	.byte	0xb
	.long	0x1cfb
	.uleb128 0x14
	.byte	0xb
	.byte	0xa3
	.byte	0xb
	.long	0x1d0e
	.uleb128 0x14
	.byte	0xb
	.byte	0xa5
	.byte	0xb
	.long	0x1d1b
	.uleb128 0x14
	.byte	0xb
	.byte	0xa6
	.byte	0xb
	.long	0x1d2e
	.uleb128 0x14
	.byte	0xb
	.byte	0xa7
	.byte	0xb
	.long	0x1d49
	.uleb128 0x14
	.byte	0xb
	.byte	0xa8
	.byte	0xb
	.long	0x1d69
	.uleb128 0x14
	.byte	0xb
	.byte	0xa9
	.byte	0xb
	.long	0x1d89
	.uleb128 0x14
	.byte	0xb
	.byte	0xab
	.byte	0xb
	.long	0x1da0
	.uleb128 0x14
	.byte	0xb
	.byte	0xac
	.byte	0xb
	.long	0x1dc6
	.uleb128 0x14
	.byte	0xb
	.byte	0xf0
	.byte	0x16
	.long	0x1b31
	.uleb128 0x14
	.byte	0xb
	.byte	0xf5
	.byte	0x16
	.long	0x1a70
	.uleb128 0x14
	.byte	0xb
	.byte	0xf6
	.byte	0x16
	.long	0x1de1
	.uleb128 0x14
	.byte	0xb
	.byte	0xf8
	.byte	0x16
	.long	0x1dfd
	.uleb128 0x14
	.byte	0xb
	.byte	0xf9
	.byte	0x16
	.long	0x1e54
	.uleb128 0x14
	.byte	0xb
	.byte	0xfa
	.byte	0x16
	.long	0x1e14
	.uleb128 0x14
	.byte	0xb
	.byte	0xfb
	.byte	0x16
	.long	0x1e34
	.uleb128 0x14
	.byte	0xb
	.byte	0xfc
	.byte	0x16
	.long	0x1e6f
	.uleb128 0x15
	.string	"abs"
	.byte	0xc
	.byte	0x67
	.byte	0x3
	.long	.LASF253
	.long	0x1a93
	.long	0x81f
	.uleb128 0x16
	.long	0x1a93
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0xc
	.byte	0x55
	.byte	0x3
	.long	.LASF254
	.long	0x1eba
	.long	0x839
	.uleb128 0x16
	.long	0x1eba
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0xc
	.byte	0x4f
	.byte	0x3
	.long	.LASF255
	.long	0x1a9a
	.long	0x853
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0xc
	.byte	0x4b
	.byte	0x3
	.long	.LASF256
	.long	0x37
	.long	0x86d
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0xc
	.byte	0x47
	.byte	0x3
	.long	.LASF257
	.long	0x29
	.long	0x887
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0xc
	.byte	0x3d
	.byte	0x3
	.long	.LASF258
	.long	0xed
	.long	0x8a1
	.uleb128 0x16
	.long	0xed
	.byte	0
	.uleb128 0x15
	.string	"abs"
	.byte	0xc
	.byte	0x38
	.byte	0x3
	.long	.LASF259
	.long	0x76
	.long	0x8bb
	.uleb128 0x16
	.long	0x76
	.byte	0
	.uleb128 0x15
	.string	"div"
	.byte	0xb
	.byte	0xb1
	.byte	0x3
	.long	.LASF260
	.long	0x1afd
	.long	0x8da
	.uleb128 0x16
	.long	0x76
	.uleb128 0x16
	.long	0x76
	.byte	0
	.uleb128 0x9
	.long	.LASF262
	.byte	0x1
	.byte	0xd
	.byte	0x7f
	.byte	0xc
	.long	0x906
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0xd
	.byte	0x81
	.byte	0xc
	.long	0x8fc
	.uleb128 0x10
	.long	.LASF263
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"_Tp"
	.long	0x1a9a
	.byte	0
	.uleb128 0x9
	.long	.LASF264
	.byte	0x1
	.byte	0xd
	.byte	0x7f
	.byte	0xc
	.long	0x932
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0xd
	.byte	0x81
	.byte	0xc
	.long	0x928
	.uleb128 0x10
	.long	.LASF263
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"_Tp"
	.long	0x29
	.byte	0
	.uleb128 0x9
	.long	.LASF265
	.byte	0x1
	.byte	0xd
	.byte	0x7f
	.byte	0xc
	.long	0x95e
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0xd
	.byte	0x81
	.byte	0xc
	.long	0x954
	.uleb128 0x10
	.long	.LASF263
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"_Tp"
	.long	0x37
	.byte	0
	.uleb128 0x18
	.byte	0xe
	.value	0x429
	.byte	0xb
	.long	0x1fa5
	.uleb128 0x18
	.byte	0xe
	.value	0x42a
	.byte	0xb
	.long	0x1f99
	.uleb128 0x19
	.long	.LASF266
	.byte	0xe
	.byte	0x5b
	.byte	0x3
	.long	.LASF267
	.long	0x1a9a
	.long	0x98a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x19
	.long	.LASF266
	.byte	0xe
	.byte	0x57
	.byte	0x3
	.long	.LASF268
	.long	0x37
	.long	0x9a4
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x19
	.long	.LASF269
	.byte	0xe
	.byte	0x6e
	.byte	0x3
	.long	.LASF270
	.long	0x1a9a
	.long	0x9be
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x19
	.long	.LASF269
	.byte	0xe
	.byte	0x6a
	.byte	0x3
	.long	.LASF271
	.long	0x37
	.long	0x9d8
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x19
	.long	.LASF272
	.byte	0xe
	.byte	0x81
	.byte	0x3
	.long	.LASF273
	.long	0x1a9a
	.long	0x9f2
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x19
	.long	.LASF272
	.byte	0xe
	.byte	0x7d
	.byte	0x3
	.long	.LASF274
	.long	0x37
	.long	0xa0c
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x19
	.long	.LASF275
	.byte	0xe
	.byte	0x94
	.byte	0x3
	.long	.LASF276
	.long	0x1a9a
	.long	0xa2b
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x19
	.long	.LASF275
	.byte	0xe
	.byte	0x90
	.byte	0x3
	.long	.LASF277
	.long	0x37
	.long	0xa4a
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x15
	.string	"cos"
	.byte	0xe
	.byte	0xbc
	.byte	0x3
	.long	.LASF278
	.long	0x1a9a
	.long	0xa64
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x15
	.string	"cos"
	.byte	0xe
	.byte	0xb8
	.byte	0x3
	.long	.LASF279
	.long	0x37
	.long	0xa7e
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1a
	.string	"sin"
	.byte	0xe
	.value	0x1ad
	.byte	0x3
	.long	.LASF280
	.long	0x1a9a
	.long	0xa99
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1a
	.string	"sin"
	.byte	0xe
	.value	0x1a9
	.byte	0x3
	.long	.LASF281
	.long	0x37
	.long	0xab4
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1a
	.string	"tan"
	.byte	0xe
	.value	0x1e6
	.byte	0x3
	.long	.LASF282
	.long	0x1a9a
	.long	0xacf
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1a
	.string	"tan"
	.byte	0xe
	.value	0x1e2
	.byte	0x3
	.long	.LASF283
	.long	0x37
	.long	0xaea
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x19
	.long	.LASF284
	.byte	0xe
	.byte	0xcf
	.byte	0x3
	.long	.LASF285
	.long	0x1a9a
	.long	0xb04
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x19
	.long	.LASF284
	.byte	0xe
	.byte	0xcb
	.byte	0x3
	.long	.LASF286
	.long	0x37
	.long	0xb1e
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF287
	.byte	0xe
	.value	0x1c0
	.byte	0x3
	.long	.LASF288
	.long	0x1a9a
	.long	0xb39
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF287
	.byte	0xe
	.value	0x1bc
	.byte	0x3
	.long	.LASF289
	.long	0x37
	.long	0xb54
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF290
	.byte	0xe
	.value	0x1f9
	.byte	0x3
	.long	.LASF291
	.long	0x1a9a
	.long	0xb6f
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF290
	.byte	0xe
	.value	0x1f5
	.byte	0x3
	.long	.LASF292
	.long	0x37
	.long	0xb8a
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x15
	.string	"exp"
	.byte	0xe
	.byte	0xe2
	.byte	0x3
	.long	.LASF293
	.long	0x1a9a
	.long	0xba4
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x15
	.string	"exp"
	.byte	0xe
	.byte	0xde
	.byte	0x3
	.long	.LASF294
	.long	0x37
	.long	0xbbe
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF295
	.byte	0xe
	.value	0x130
	.byte	0x3
	.long	.LASF296
	.long	0x1a9a
	.long	0xbde
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x2099
	.byte	0
	.uleb128 0x1b
	.long	.LASF295
	.byte	0xe
	.value	0x12c
	.byte	0x3
	.long	.LASF297
	.long	0x37
	.long	0xbfe
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x2099
	.byte	0
	.uleb128 0x1b
	.long	.LASF298
	.byte	0xe
	.value	0x143
	.byte	0x3
	.long	.LASF299
	.long	0x1a9a
	.long	0xc1e
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LASF298
	.byte	0xe
	.value	0x13f
	.byte	0x3
	.long	.LASF300
	.long	0x37
	.long	0xc3e
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x1a
	.string	"log"
	.byte	0xe
	.value	0x156
	.byte	0x3
	.long	.LASF301
	.long	0x1a9a
	.long	0xc59
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1a
	.string	"log"
	.byte	0xe
	.value	0x152
	.byte	0x3
	.long	.LASF302
	.long	0x37
	.long	0xc74
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF303
	.byte	0xe
	.value	0x169
	.byte	0x3
	.long	.LASF304
	.long	0x1a9a
	.long	0xc8f
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF303
	.byte	0xe
	.value	0x165
	.byte	0x3
	.long	.LASF305
	.long	0x37
	.long	0xcaa
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF306
	.byte	0xe
	.value	0x17c
	.byte	0x3
	.long	.LASF307
	.long	0x1a9a
	.long	0xcca
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x20df
	.byte	0
	.uleb128 0x1b
	.long	.LASF306
	.byte	0xe
	.value	0x178
	.byte	0x3
	.long	.LASF308
	.long	0x37
	.long	0xcea
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x20ed
	.byte	0
	.uleb128 0x1a
	.string	"pow"
	.byte	0xe
	.value	0x188
	.byte	0x3
	.long	.LASF309
	.long	0x1a9a
	.long	0xd0a
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1a
	.string	"pow"
	.byte	0xe
	.value	0x184
	.byte	0x3
	.long	.LASF310
	.long	0x37
	.long	0xd2a
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF311
	.byte	0xe
	.value	0x1d3
	.byte	0x3
	.long	.LASF312
	.long	0x1a9a
	.long	0xd45
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF311
	.byte	0xe
	.value	0x1cf
	.byte	0x3
	.long	.LASF313
	.long	0x37
	.long	0xd60
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x19
	.long	.LASF314
	.byte	0xe
	.byte	0xa9
	.byte	0x3
	.long	.LASF315
	.long	0x1a9a
	.long	0xd7a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x19
	.long	.LASF314
	.byte	0xe
	.byte	0xa5
	.byte	0x3
	.long	.LASF316
	.long	0x37
	.long	0xd94
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x19
	.long	.LASF317
	.byte	0xe
	.byte	0xf5
	.byte	0x3
	.long	.LASF318
	.long	0x1a9a
	.long	0xdae
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x19
	.long	.LASF317
	.byte	0xe
	.byte	0xf1
	.byte	0x3
	.long	.LASF319
	.long	0x37
	.long	0xdc8
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF320
	.byte	0xe
	.value	0x108
	.byte	0x3
	.long	.LASF321
	.long	0x1a9a
	.long	0xde3
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF320
	.byte	0xe
	.value	0x104
	.byte	0x3
	.long	.LASF322
	.long	0x37
	.long	0xdfe
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF323
	.byte	0xe
	.value	0x11b
	.byte	0x3
	.long	.LASF324
	.long	0x1a9a
	.long	0xe1e
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF323
	.byte	0xe
	.value	0x117
	.byte	0x3
	.long	.LASF325
	.long	0x37
	.long	0xe3e
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF326
	.byte	0xe
	.value	0x223
	.byte	0x3
	.long	.LASF327
	.long	0x30
	.long	0xe59
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF326
	.byte	0xe
	.value	0x21e
	.byte	0x3
	.long	.LASF328
	.long	0x30
	.long	0xe74
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF326
	.byte	0xe
	.value	0x219
	.byte	0x3
	.long	.LASF329
	.long	0x30
	.long	0xe8f
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF330
	.byte	0xe
	.value	0x23a
	.byte	0x3
	.long	.LASF331
	.long	0x2173
	.long	0xeaa
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF330
	.byte	0xe
	.value	0x236
	.byte	0x3
	.long	.LASF332
	.long	0x2173
	.long	0xec5
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF330
	.byte	0xe
	.value	0x232
	.byte	0x3
	.long	.LASF333
	.long	0x2173
	.long	0xee0
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF334
	.byte	0xe
	.value	0x255
	.byte	0x3
	.long	.LASF335
	.long	0x2173
	.long	0xefb
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF334
	.byte	0xe
	.value	0x250
	.byte	0x3
	.long	.LASF336
	.long	0x2173
	.long	0xf16
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF334
	.byte	0xe
	.value	0x248
	.byte	0x3
	.long	.LASF337
	.long	0x2173
	.long	0xf31
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF338
	.byte	0xe
	.value	0x270
	.byte	0x3
	.long	.LASF339
	.long	0x2173
	.long	0xf4c
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF338
	.byte	0xe
	.value	0x26b
	.byte	0x3
	.long	.LASF340
	.long	0x2173
	.long	0xf67
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF338
	.byte	0xe
	.value	0x263
	.byte	0x3
	.long	.LASF341
	.long	0x2173
	.long	0xf82
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF342
	.byte	0xe
	.value	0x286
	.byte	0x3
	.long	.LASF343
	.long	0x2173
	.long	0xf9d
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF342
	.byte	0xe
	.value	0x282
	.byte	0x3
	.long	.LASF344
	.long	0x2173
	.long	0xfb8
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF342
	.byte	0xe
	.value	0x27e
	.byte	0x3
	.long	.LASF345
	.long	0x2173
	.long	0xfd3
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF346
	.byte	0xe
	.value	0x29d
	.byte	0x3
	.long	.LASF347
	.long	0x2173
	.long	0xfee
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF346
	.byte	0xe
	.value	0x299
	.byte	0x3
	.long	.LASF348
	.long	0x2173
	.long	0x1009
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF346
	.byte	0xe
	.value	0x295
	.byte	0x3
	.long	.LASF349
	.long	0x2173
	.long	0x1024
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF350
	.byte	0xe
	.value	0x2b3
	.byte	0x3
	.long	.LASF351
	.long	0x2173
	.long	0x1044
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF350
	.byte	0xe
	.value	0x2af
	.byte	0x3
	.long	.LASF352
	.long	0x2173
	.long	0x1064
	.uleb128 0x16
	.long	0x29
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF350
	.byte	0xe
	.value	0x2ab
	.byte	0x3
	.long	.LASF353
	.long	0x2173
	.long	0x1084
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF354
	.byte	0xe
	.value	0x2cd
	.byte	0x3
	.long	.LASF355
	.long	0x2173
	.long	0x10a4
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF354
	.byte	0xe
	.value	0x2c9
	.byte	0x3
	.long	.LASF356
	.long	0x2173
	.long	0x10c4
	.uleb128 0x16
	.long	0x29
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF354
	.byte	0xe
	.value	0x2c5
	.byte	0x3
	.long	.LASF357
	.long	0x2173
	.long	0x10e4
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF358
	.byte	0xe
	.value	0x2e7
	.byte	0x3
	.long	.LASF359
	.long	0x2173
	.long	0x1104
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF358
	.byte	0xe
	.value	0x2e3
	.byte	0x3
	.long	.LASF360
	.long	0x2173
	.long	0x1124
	.uleb128 0x16
	.long	0x29
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF358
	.byte	0xe
	.value	0x2df
	.byte	0x3
	.long	.LASF361
	.long	0x2173
	.long	0x1144
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF362
	.byte	0xe
	.value	0x301
	.byte	0x3
	.long	.LASF363
	.long	0x2173
	.long	0x1164
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF362
	.byte	0xe
	.value	0x2fd
	.byte	0x3
	.long	.LASF364
	.long	0x2173
	.long	0x1184
	.uleb128 0x16
	.long	0x29
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF362
	.byte	0xe
	.value	0x2f9
	.byte	0x3
	.long	.LASF365
	.long	0x2173
	.long	0x11a4
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF366
	.byte	0xe
	.value	0x31b
	.byte	0x3
	.long	.LASF367
	.long	0x2173
	.long	0x11c4
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF366
	.byte	0xe
	.value	0x317
	.byte	0x3
	.long	.LASF368
	.long	0x2173
	.long	0x11e4
	.uleb128 0x16
	.long	0x29
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF366
	.byte	0xe
	.value	0x313
	.byte	0x3
	.long	.LASF369
	.long	0x2173
	.long	0x1204
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF370
	.byte	0xe
	.value	0x335
	.byte	0x3
	.long	.LASF371
	.long	0x2173
	.long	0x1224
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF370
	.byte	0xe
	.value	0x331
	.byte	0x3
	.long	.LASF372
	.long	0x2173
	.long	0x1244
	.uleb128 0x16
	.long	0x29
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x1b
	.long	.LASF370
	.byte	0xe
	.value	0x32d
	.byte	0x3
	.long	.LASF373
	.long	0x2173
	.long	0x1264
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF374
	.byte	0xe
	.value	0x4c2
	.byte	0x3
	.long	.LASF375
	.long	0x1a9a
	.long	0x127f
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF374
	.byte	0xe
	.value	0x4be
	.byte	0x3
	.long	.LASF376
	.long	0x37
	.long	0x129a
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF377
	.byte	0xe
	.value	0x4d4
	.byte	0x3
	.long	.LASF378
	.long	0x1a9a
	.long	0x12b5
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF377
	.byte	0xe
	.value	0x4d0
	.byte	0x3
	.long	.LASF379
	.long	0x37
	.long	0x12d0
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF380
	.byte	0xe
	.value	0x4e6
	.byte	0x3
	.long	.LASF381
	.long	0x1a9a
	.long	0x12eb
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF380
	.byte	0xe
	.value	0x4e2
	.byte	0x3
	.long	.LASF382
	.long	0x37
	.long	0x1306
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF383
	.byte	0xe
	.value	0x4f8
	.byte	0x3
	.long	.LASF384
	.long	0x1a9a
	.long	0x1321
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF383
	.byte	0xe
	.value	0x4f4
	.byte	0x3
	.long	.LASF385
	.long	0x37
	.long	0x133c
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF386
	.byte	0xe
	.value	0x50a
	.byte	0x3
	.long	.LASF387
	.long	0x1a9a
	.long	0x135c
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF386
	.byte	0xe
	.value	0x506
	.byte	0x3
	.long	.LASF388
	.long	0x37
	.long	0x137c
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1a
	.string	"erf"
	.byte	0xe
	.value	0x51e
	.byte	0x3
	.long	.LASF389
	.long	0x1a9a
	.long	0x1397
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1a
	.string	"erf"
	.byte	0xe
	.value	0x51a
	.byte	0x3
	.long	.LASF390
	.long	0x37
	.long	0x13b2
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF391
	.byte	0xe
	.value	0x530
	.byte	0x3
	.long	.LASF392
	.long	0x1a9a
	.long	0x13cd
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF391
	.byte	0xe
	.value	0x52c
	.byte	0x3
	.long	.LASF393
	.long	0x37
	.long	0x13e8
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF394
	.byte	0xe
	.value	0x542
	.byte	0x3
	.long	.LASF395
	.long	0x1a9a
	.long	0x1403
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF394
	.byte	0xe
	.value	0x53e
	.byte	0x3
	.long	.LASF396
	.long	0x37
	.long	0x141e
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF397
	.byte	0xe
	.value	0x554
	.byte	0x3
	.long	.LASF398
	.long	0x1a9a
	.long	0x1439
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF397
	.byte	0xe
	.value	0x550
	.byte	0x3
	.long	.LASF399
	.long	0x37
	.long	0x1454
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF400
	.byte	0xe
	.value	0x566
	.byte	0x3
	.long	.LASF401
	.long	0x1a9a
	.long	0x1474
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF400
	.byte	0xe
	.value	0x562
	.byte	0x3
	.long	.LASF402
	.long	0x37
	.long	0x1494
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1a
	.string	"fma"
	.byte	0xe
	.value	0x57a
	.byte	0x3
	.long	.LASF403
	.long	0x1a9a
	.long	0x14b9
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1a
	.string	"fma"
	.byte	0xe
	.value	0x576
	.byte	0x3
	.long	.LASF404
	.long	0x37
	.long	0x14de
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF405
	.byte	0xe
	.value	0x58e
	.byte	0x3
	.long	.LASF406
	.long	0x1a9a
	.long	0x14fe
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF405
	.byte	0xe
	.value	0x58a
	.byte	0x3
	.long	.LASF407
	.long	0x37
	.long	0x151e
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF408
	.byte	0xe
	.value	0x5a2
	.byte	0x3
	.long	.LASF409
	.long	0x1a9a
	.long	0x153e
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF408
	.byte	0xe
	.value	0x59e
	.byte	0x3
	.long	.LASF410
	.long	0x37
	.long	0x155e
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF411
	.byte	0xe
	.value	0x5b6
	.byte	0x3
	.long	.LASF412
	.long	0x1a9a
	.long	0x157e
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF411
	.byte	0xe
	.value	0x5b2
	.byte	0x3
	.long	.LASF413
	.long	0x37
	.long	0x159e
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF414
	.byte	0xe
	.value	0x5ca
	.byte	0x3
	.long	.LASF415
	.long	0x30
	.long	0x15b9
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF414
	.byte	0xe
	.value	0x5c6
	.byte	0x3
	.long	.LASF416
	.long	0x30
	.long	0x15d4
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF417
	.byte	0xe
	.value	0x5dd
	.byte	0x3
	.long	.LASF418
	.long	0x1a9a
	.long	0x15ef
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF417
	.byte	0xe
	.value	0x5d9
	.byte	0x3
	.long	.LASF419
	.long	0x37
	.long	0x160a
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF420
	.byte	0xe
	.value	0x5ef
	.byte	0x3
	.long	.LASF421
	.long	0xed
	.long	0x1625
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF420
	.byte	0xe
	.value	0x5eb
	.byte	0x3
	.long	.LASF422
	.long	0xed
	.long	0x1640
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF423
	.byte	0xe
	.value	0x601
	.byte	0x3
	.long	.LASF424
	.long	0xed
	.long	0x165b
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF423
	.byte	0xe
	.value	0x5fd
	.byte	0x3
	.long	.LASF425
	.long	0xed
	.long	0x1676
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF426
	.byte	0xe
	.value	0x613
	.byte	0x3
	.long	.LASF427
	.long	0x1a9a
	.long	0x1691
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF426
	.byte	0xe
	.value	0x60f
	.byte	0x3
	.long	.LASF428
	.long	0x37
	.long	0x16ac
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF429
	.byte	0xe
	.value	0x626
	.byte	0x3
	.long	.LASF430
	.long	0x1a9a
	.long	0x16c7
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF429
	.byte	0xe
	.value	0x622
	.byte	0x3
	.long	.LASF431
	.long	0x37
	.long	0x16e2
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF432
	.byte	0xe
	.value	0x638
	.byte	0x3
	.long	.LASF433
	.long	0x1a9a
	.long	0x16fd
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF432
	.byte	0xe
	.value	0x634
	.byte	0x3
	.long	.LASF434
	.long	0x37
	.long	0x1718
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF435
	.byte	0xe
	.value	0x64a
	.byte	0x3
	.long	.LASF436
	.long	0x76
	.long	0x1733
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF435
	.byte	0xe
	.value	0x646
	.byte	0x3
	.long	.LASF437
	.long	0x76
	.long	0x174e
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF438
	.byte	0xe
	.value	0x65c
	.byte	0x3
	.long	.LASF439
	.long	0x76
	.long	0x1769
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF438
	.byte	0xe
	.value	0x658
	.byte	0x3
	.long	.LASF440
	.long	0x76
	.long	0x1784
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF441
	.byte	0xe
	.value	0x66e
	.byte	0x3
	.long	.LASF442
	.long	0x1a9a
	.long	0x179f
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF441
	.byte	0xe
	.value	0x66a
	.byte	0x3
	.long	.LASF443
	.long	0x37
	.long	0x17ba
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF444
	.byte	0xe
	.value	0x680
	.byte	0x3
	.long	.LASF445
	.long	0x1a9a
	.long	0x17da
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF444
	.byte	0xe
	.value	0x67c
	.byte	0x3
	.long	.LASF446
	.long	0x37
	.long	0x17fa
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF447
	.byte	0xe
	.value	0x694
	.byte	0x3
	.long	.LASF448
	.long	0x1a9a
	.long	0x181a
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF447
	.byte	0xe
	.value	0x690
	.byte	0x3
	.long	.LASF449
	.long	0x37
	.long	0x183a
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF450
	.byte	0xe
	.value	0x6a6
	.byte	0x3
	.long	.LASF451
	.long	0x1a9a
	.long	0x185a
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF450
	.byte	0xe
	.value	0x6a2
	.byte	0x3
	.long	.LASF452
	.long	0x37
	.long	0x187a
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF453
	.byte	0xe
	.value	0x6ba
	.byte	0x3
	.long	.LASF454
	.long	0x1a9a
	.long	0x189f
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x2099
	.byte	0
	.uleb128 0x1b
	.long	.LASF453
	.byte	0xe
	.value	0x6b6
	.byte	0x3
	.long	.LASF455
	.long	0x37
	.long	0x18c4
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x2099
	.byte	0
	.uleb128 0x1b
	.long	.LASF456
	.byte	0xe
	.value	0x6ce
	.byte	0x3
	.long	.LASF457
	.long	0x1a9a
	.long	0x18df
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF456
	.byte	0xe
	.value	0x6ca
	.byte	0x3
	.long	.LASF458
	.long	0x37
	.long	0x18fa
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF459
	.byte	0xe
	.value	0x6e0
	.byte	0x3
	.long	.LASF460
	.long	0x1a9a
	.long	0x1915
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF459
	.byte	0xe
	.value	0x6dc
	.byte	0x3
	.long	.LASF461
	.long	0x37
	.long	0x1930
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF462
	.byte	0xe
	.value	0x6f2
	.byte	0x3
	.long	.LASF463
	.long	0x1a9a
	.long	0x1950
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x76
	.byte	0
	.uleb128 0x1b
	.long	.LASF462
	.byte	0xe
	.value	0x6ee
	.byte	0x3
	.long	.LASF464
	.long	0x37
	.long	0x1970
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x76
	.byte	0
	.uleb128 0x1b
	.long	.LASF465
	.byte	0xe
	.value	0x704
	.byte	0x3
	.long	.LASF466
	.long	0x1a9a
	.long	0x1990
	.uleb128 0x16
	.long	0x1a9a
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LASF465
	.byte	0xe
	.value	0x700
	.byte	0x3
	.long	.LASF467
	.long	0x37
	.long	0x19b0
	.uleb128 0x16
	.long	0x37
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LASF468
	.byte	0xe
	.value	0x716
	.byte	0x3
	.long	.LASF469
	.long	0x1a9a
	.long	0x19cb
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1b
	.long	.LASF468
	.byte	0xe
	.value	0x712
	.byte	0x3
	.long	.LASF470
	.long	0x37
	.long	0x19e6
	.uleb128 0x16
	.long	0x37
	.byte	0
	.uleb128 0x1b
	.long	.LASF471
	.byte	0xe
	.value	0x728
	.byte	0x3
	.long	.LASF472
	.long	0x1a9a
	.long	0x1a01
	.uleb128 0x16
	.long	0x1a9a
	.byte	0
	.uleb128 0x1c
	.long	.LASF471
	.byte	0xe
	.value	0x724
	.byte	0x3
	.long	.LASF582
	.long	0x37
	.uleb128 0x16
	.long	0x37
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF583
	.byte	0xf
	.value	0x120
	.byte	0xb
	.long	0x1a8c
	.uleb128 0x12
	.long	.LASF473
	.byte	0xf
	.value	0x122
	.byte	0x41
	.uleb128 0x13
	.byte	0xf
	.value	0x122
	.byte	0x41
	.long	0x1a26
	.uleb128 0x14
	.byte	0xb
	.byte	0xc8
	.byte	0xb
	.long	0x1b31
	.uleb128 0x14
	.byte	0xb
	.byte	0xd8
	.byte	0xb
	.long	0x1de1
	.uleb128 0x14
	.byte	0xb
	.byte	0xe3
	.byte	0xb
	.long	0x1dfd
	.uleb128 0x14
	.byte	0xb
	.byte	0xe4
	.byte	0xb
	.long	0x1e14
	.uleb128 0x14
	.byte	0xb
	.byte	0xe5
	.byte	0xb
	.long	0x1e34
	.uleb128 0x14
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x1e54
	.uleb128 0x14
	.byte	0xb
	.byte	0xe8
	.byte	0xb
	.long	0x1e6f
	.uleb128 0x1e
	.string	"div"
	.byte	0xb
	.byte	0xd5
	.byte	0x3
	.long	.LASF584
	.long	0x1b31
	.uleb128 0x16
	.long	0xed
	.uleb128 0x16
	.long	0xed
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x20
	.byte	0x3
	.long	.LASF474
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF475
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF476
	.uleb128 0x1f
	.byte	0x8
	.byte	0x4
	.byte	0x3b
	.byte	0x3
	.long	.LASF479
	.long	0x1ac9
	.uleb128 0xa
	.long	.LASF477
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x30
	.byte	0
	.uleb128 0x20
	.string	"rem"
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF478
	.byte	0x4
	.byte	0x3e
	.byte	0x5
	.long	0x1aa1
	.uleb128 0x1f
	.byte	0x10
	.byte	0x4
	.byte	0x43
	.byte	0x3
	.long	.LASF480
	.long	0x1afd
	.uleb128 0xa
	.long	.LASF477
	.byte	0x4
	.byte	0x44
	.byte	0xe
	.long	0x76
	.byte	0
	.uleb128 0x20
	.string	"rem"
	.byte	0x4
	.byte	0x45
	.byte	0xe
	.long	0x76
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF481
	.byte	0x4
	.byte	0x46
	.byte	0x5
	.long	0x1ad5
	.uleb128 0x1f
	.byte	0x10
	.byte	0x4
	.byte	0x4d
	.byte	0x3
	.long	.LASF482
	.long	0x1b31
	.uleb128 0xa
	.long	.LASF477
	.byte	0x4
	.byte	0x4e
	.byte	0x13
	.long	0xed
	.byte	0
	.uleb128 0x20
	.string	"rem"
	.byte	0x4
	.byte	0x4f
	.byte	0x13
	.long	0xed
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF483
	.byte	0x4
	.byte	0x50
	.byte	0x5
	.long	0x1b09
	.uleb128 0x21
	.long	.LASF484
	.byte	0x4
	.value	0x328
	.byte	0xf
	.long	0x1b4a
	.uleb128 0x6
	.byte	0x8
	.long	0x1b50
	.uleb128 0x22
	.long	0x30
	.long	0x1b64
	.uleb128 0x16
	.long	0x1b64
	.uleb128 0x16
	.long	0x1b64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b6a
	.uleb128 0x23
	.uleb128 0x24
	.long	.LASF485
	.byte	0x4
	.value	0x253
	.byte	0xc
	.long	0x30
	.long	0x1b82
	.uleb128 0x16
	.long	0x1b82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b88
	.uleb128 0x25
	.uleb128 0x1b
	.long	.LASF486
	.byte	0x4
	.value	0x258
	.byte	0x12
	.long	.LASF486
	.long	0x30
	.long	0x1ba4
	.uleb128 0x16
	.long	0x1b82
	.byte	0
	.uleb128 0x26
	.long	.LASF487
	.byte	0x10
	.byte	0x19
	.byte	0x1
	.long	0x29
	.long	0x1bba
	.uleb128 0x16
	.long	0xa7
	.byte	0
	.uleb128 0x27
	.long	.LASF488
	.byte	0x4
	.value	0x169
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x1bda
	.uleb128 0x28
	.long	.LASF547
	.byte	0x4
	.value	0x169
	.byte	0x1
	.long	0xa7
	.byte	0
	.uleb128 0x24
	.long	.LASF489
	.byte	0x4
	.value	0x16e
	.byte	0x1
	.long	0x76
	.long	0x1bf1
	.uleb128 0x16
	.long	0xa7
	.byte	0
	.uleb128 0x26
	.long	.LASF490
	.byte	0x11
	.byte	0x14
	.byte	0x1
	.long	0x58
	.long	0x1c1b
	.uleb128 0x16
	.long	0x1b64
	.uleb128 0x16
	.long	0x1b64
	.uleb128 0x16
	.long	0x3e
	.uleb128 0x16
	.long	0x3e
	.uleb128 0x16
	.long	0x1b3d
	.byte	0
	.uleb128 0x29
	.string	"div"
	.byte	0x4
	.value	0x354
	.byte	0xe
	.long	0x1ac9
	.long	0x1c37
	.uleb128 0x16
	.long	0x30
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x24
	.long	.LASF491
	.byte	0x4
	.value	0x27a
	.byte	0xe
	.long	0x95
	.long	0x1c4e
	.uleb128 0x16
	.long	0xa7
	.byte	0
	.uleb128 0x24
	.long	.LASF492
	.byte	0x4
	.value	0x356
	.byte	0xf
	.long	0x1afd
	.long	0x1c6a
	.uleb128 0x16
	.long	0x76
	.uleb128 0x16
	.long	0x76
	.byte	0
	.uleb128 0x24
	.long	.LASF493
	.byte	0x4
	.value	0x39a
	.byte	0xc
	.long	0x30
	.long	0x1c86
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x3e
	.byte	0
	.uleb128 0x26
	.long	.LASF494
	.byte	0x12
	.byte	0x71
	.byte	0x1
	.long	0x3e
	.long	0x1ca6
	.uleb128 0x16
	.long	0x1ca6
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1cac
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF495
	.uleb128 0x7
	.long	0x1cac
	.uleb128 0x24
	.long	.LASF496
	.byte	0x4
	.value	0x39d
	.byte	0xc
	.long	0x30
	.long	0x1cd9
	.uleb128 0x16
	.long	0x1ca6
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x3e
	.byte	0
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x4
	.value	0x33e
	.byte	0xd
	.long	0x1cfb
	.uleb128 0x16
	.long	0x58
	.uleb128 0x16
	.long	0x3e
	.uleb128 0x16
	.long	0x3e
	.uleb128 0x16
	.long	0x1b3d
	.byte	0
	.uleb128 0x2b
	.long	.LASF497
	.byte	0x4
	.value	0x26f
	.byte	0xd
	.long	0x1d0e
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x2c
	.long	.LASF585
	.byte	0x4
	.value	0x1c5
	.byte	0xc
	.long	0x30
	.uleb128 0x2a
	.long	.LASF499
	.byte	0x4
	.value	0x1c7
	.byte	0xd
	.long	0x1d2e
	.uleb128 0x16
	.long	0x51
	.byte	0
	.uleb128 0x26
	.long	.LASF500
	.byte	0x4
	.byte	0x75
	.byte	0xf
	.long	0x29
	.long	0x1d49
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x1c9
	.byte	0
	.uleb128 0x26
	.long	.LASF501
	.byte	0x4
	.byte	0xb0
	.byte	0x11
	.long	0x76
	.long	0x1d69
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x1c9
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x26
	.long	.LASF502
	.byte	0x4
	.byte	0xb4
	.byte	0x1a
	.long	0x4a
	.long	0x1d89
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x1c9
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x24
	.long	.LASF503
	.byte	0x4
	.value	0x310
	.byte	0xc
	.long	0x30
	.long	0x1da0
	.uleb128 0x16
	.long	0xa7
	.byte	0
	.uleb128 0x26
	.long	.LASF504
	.byte	0x12
	.byte	0x90
	.byte	0x1
	.long	0x3e
	.long	0x1dc0
	.uleb128 0x16
	.long	0x95
	.uleb128 0x16
	.long	0x1dc0
	.uleb128 0x16
	.long	0x3e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1cb3
	.uleb128 0x26
	.long	.LASF505
	.byte	0x12
	.byte	0x53
	.byte	0x1
	.long	0x30
	.long	0x1de1
	.uleb128 0x16
	.long	0x95
	.uleb128 0x16
	.long	0x1cac
	.byte	0
	.uleb128 0x24
	.long	.LASF506
	.byte	0x4
	.value	0x35a
	.byte	0x1e
	.long	0x1b31
	.long	0x1dfd
	.uleb128 0x16
	.long	0xed
	.uleb128 0x16
	.long	0xed
	.byte	0
	.uleb128 0x24
	.long	.LASF507
	.byte	0x4
	.value	0x175
	.byte	0x1
	.long	0xed
	.long	0x1e14
	.uleb128 0x16
	.long	0xa7
	.byte	0
	.uleb128 0x26
	.long	.LASF508
	.byte	0x4
	.byte	0xc8
	.byte	0x16
	.long	0xed
	.long	0x1e34
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x1c9
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x26
	.long	.LASF509
	.byte	0x4
	.byte	0xcd
	.byte	0x1f
	.long	0xda
	.long	0x1e54
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x1c9
	.uleb128 0x16
	.long	0x30
	.byte	0
	.uleb128 0x26
	.long	.LASF510
	.byte	0x4
	.byte	0x7b
	.byte	0xe
	.long	0x37
	.long	0x1e6f
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x1c9
	.byte	0
	.uleb128 0x26
	.long	.LASF511
	.byte	0x4
	.byte	0x7e
	.byte	0x14
	.long	0x1a9a
	.long	0x1e8a
	.uleb128 0x16
	.long	0xa7
	.uleb128 0x16
	.long	0x1c9
	.byte	0
	.uleb128 0x14
	.byte	0x13
	.byte	0x27
	.byte	0xc
	.long	0x1b6b
	.uleb128 0x14
	.byte	0x13
	.byte	0x2b
	.byte	0xe
	.long	0x1b89
	.uleb128 0x14
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x1cfb
	.uleb128 0x14
	.byte	0x13
	.byte	0x33
	.byte	0xc
	.long	0x1ac9
	.uleb128 0x14
	.byte	0x13
	.byte	0x34
	.byte	0xc
	.long	0x1afd
	.uleb128 0x14
	.byte	0x13
	.byte	0x36
	.byte	0xc
	.long	0x805
	.uleb128 0x2
	.byte	0x10
	.byte	0x5
	.long	.LASF512
	.uleb128 0x14
	.byte	0x13
	.byte	0x36
	.byte	0xc
	.long	0x81f
	.uleb128 0x14
	.byte	0x13
	.byte	0x36
	.byte	0xc
	.long	0x839
	.uleb128 0x14
	.byte	0x13
	.byte	0x36
	.byte	0xc
	.long	0x853
	.uleb128 0x14
	.byte	0x13
	.byte	0x36
	.byte	0xc
	.long	0x86d
	.uleb128 0x14
	.byte	0x13
	.byte	0x36
	.byte	0xc
	.long	0x887
	.uleb128 0x14
	.byte	0x13
	.byte	0x36
	.byte	0xc
	.long	0x8a1
	.uleb128 0x14
	.byte	0x13
	.byte	0x37
	.byte	0xc
	.long	0x1ba4
	.uleb128 0x14
	.byte	0x13
	.byte	0x38
	.byte	0xc
	.long	0x1bba
	.uleb128 0x14
	.byte	0x13
	.byte	0x39
	.byte	0xc
	.long	0x1bda
	.uleb128 0x14
	.byte	0x13
	.byte	0x3a
	.byte	0xc
	.long	0x1bf1
	.uleb128 0x14
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.long	0x1a70
	.uleb128 0x14
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.long	0x8bb
	.uleb128 0x14
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.long	0x1c1b
	.uleb128 0x14
	.byte	0x13
	.byte	0x3e
	.byte	0xc
	.long	0x1c37
	.uleb128 0x14
	.byte	0x13
	.byte	0x40
	.byte	0xc
	.long	0x1c4e
	.uleb128 0x14
	.byte	0x13
	.byte	0x43
	.byte	0xc
	.long	0x1c6a
	.uleb128 0x14
	.byte	0x13
	.byte	0x44
	.byte	0xc
	.long	0x1c86
	.uleb128 0x14
	.byte	0x13
	.byte	0x45
	.byte	0xc
	.long	0x1cb8
	.uleb128 0x14
	.byte	0x13
	.byte	0x47
	.byte	0xc
	.long	0x1cd9
	.uleb128 0x14
	.byte	0x13
	.byte	0x48
	.byte	0xc
	.long	0x1d0e
	.uleb128 0x14
	.byte	0x13
	.byte	0x4a
	.byte	0xc
	.long	0x1d1b
	.uleb128 0x14
	.byte	0x13
	.byte	0x4b
	.byte	0xc
	.long	0x1d2e
	.uleb128 0x14
	.byte	0x13
	.byte	0x4c
	.byte	0xc
	.long	0x1d49
	.uleb128 0x14
	.byte	0x13
	.byte	0x4d
	.byte	0xc
	.long	0x1d69
	.uleb128 0x14
	.byte	0x13
	.byte	0x4e
	.byte	0xc
	.long	0x1d89
	.uleb128 0x14
	.byte	0x13
	.byte	0x50
	.byte	0xc
	.long	0x1da0
	.uleb128 0x14
	.byte	0x13
	.byte	0x51
	.byte	0xc
	.long	0x1dc6
	.uleb128 0x4
	.long	.LASF513
	.byte	0x14
	.byte	0x95
	.byte	0xf
	.long	0x37
	.uleb128 0x4
	.long	.LASF514
	.byte	0x14
	.byte	0x96
	.byte	0x10
	.long	0x29
	.uleb128 0x14
	.byte	0x15
	.byte	0x26
	.byte	0xc
	.long	0x805
	.uleb128 0x14
	.byte	0x15
	.byte	0x26
	.byte	0xc
	.long	0x81f
	.uleb128 0x14
	.byte	0x15
	.byte	0x26
	.byte	0xc
	.long	0x839
	.uleb128 0x14
	.byte	0x15
	.byte	0x26
	.byte	0xc
	.long	0x853
	.uleb128 0x14
	.byte	0x15
	.byte	0x26
	.byte	0xc
	.long	0x86d
	.uleb128 0x14
	.byte	0x15
	.byte	0x26
	.byte	0xc
	.long	0x887
	.uleb128 0x14
	.byte	0x15
	.byte	0x26
	.byte	0xc
	.long	0x8a1
	.uleb128 0x14
	.byte	0x15
	.byte	0x27
	.byte	0xc
	.long	0x970
	.uleb128 0x14
	.byte	0x15
	.byte	0x27
	.byte	0xc
	.long	0x98a
	.uleb128 0x14
	.byte	0x15
	.byte	0x28
	.byte	0xc
	.long	0x9a4
	.uleb128 0x14
	.byte	0x15
	.byte	0x28
	.byte	0xc
	.long	0x9be
	.uleb128 0x14
	.byte	0x15
	.byte	0x29
	.byte	0xc
	.long	0x9d8
	.uleb128 0x14
	.byte	0x15
	.byte	0x29
	.byte	0xc
	.long	0x9f2
	.uleb128 0x14
	.byte	0x15
	.byte	0x2a
	.byte	0xc
	.long	0xa0c
	.uleb128 0x14
	.byte	0x15
	.byte	0x2a
	.byte	0xc
	.long	0xa2b
	.uleb128 0x14
	.byte	0x15
	.byte	0x2b
	.byte	0xc
	.long	0xa4a
	.uleb128 0x14
	.byte	0x15
	.byte	0x2b
	.byte	0xc
	.long	0xa64
	.uleb128 0x14
	.byte	0x15
	.byte	0x2c
	.byte	0xc
	.long	0xa7e
	.uleb128 0x14
	.byte	0x15
	.byte	0x2c
	.byte	0xc
	.long	0xa99
	.uleb128 0x14
	.byte	0x15
	.byte	0x2d
	.byte	0xc
	.long	0xab4
	.uleb128 0x14
	.byte	0x15
	.byte	0x2d
	.byte	0xc
	.long	0xacf
	.uleb128 0x14
	.byte	0x15
	.byte	0x2e
	.byte	0xc
	.long	0xaea
	.uleb128 0x14
	.byte	0x15
	.byte	0x2e
	.byte	0xc
	.long	0xb04
	.uleb128 0x14
	.byte	0x15
	.byte	0x2f
	.byte	0xc
	.long	0xb1e
	.uleb128 0x14
	.byte	0x15
	.byte	0x2f
	.byte	0xc
	.long	0xb39
	.uleb128 0x14
	.byte	0x15
	.byte	0x30
	.byte	0xc
	.long	0xb54
	.uleb128 0x14
	.byte	0x15
	.byte	0x30
	.byte	0xc
	.long	0xb6f
	.uleb128 0x14
	.byte	0x15
	.byte	0x31
	.byte	0xc
	.long	0xb8a
	.uleb128 0x14
	.byte	0x15
	.byte	0x31
	.byte	0xc
	.long	0xba4
	.uleb128 0x6
	.byte	0x8
	.long	0x30
	.uleb128 0x14
	.byte	0x15
	.byte	0x32
	.byte	0xc
	.long	0xbbe
	.uleb128 0x14
	.byte	0x15
	.byte	0x32
	.byte	0xc
	.long	0xbde
	.uleb128 0x14
	.byte	0x15
	.byte	0x33
	.byte	0xc
	.long	0xbfe
	.uleb128 0x14
	.byte	0x15
	.byte	0x33
	.byte	0xc
	.long	0xc1e
	.uleb128 0x14
	.byte	0x15
	.byte	0x34
	.byte	0xc
	.long	0xc3e
	.uleb128 0x14
	.byte	0x15
	.byte	0x34
	.byte	0xc
	.long	0xc59
	.uleb128 0x14
	.byte	0x15
	.byte	0x35
	.byte	0xc
	.long	0xc74
	.uleb128 0x14
	.byte	0x15
	.byte	0x35
	.byte	0xc
	.long	0xc8f
	.uleb128 0x6
	.byte	0x8
	.long	0x1a9a
	.uleb128 0x14
	.byte	0x15
	.byte	0x36
	.byte	0xc
	.long	0xcaa
	.uleb128 0x6
	.byte	0x8
	.long	0x37
	.uleb128 0x14
	.byte	0x15
	.byte	0x36
	.byte	0xc
	.long	0xcca
	.uleb128 0x14
	.byte	0x15
	.byte	0x37
	.byte	0xc
	.long	0xcea
	.uleb128 0x14
	.byte	0x15
	.byte	0x37
	.byte	0xc
	.long	0xd0a
	.uleb128 0x14
	.byte	0x15
	.byte	0x38
	.byte	0xc
	.long	0xd2a
	.uleb128 0x14
	.byte	0x15
	.byte	0x38
	.byte	0xc
	.long	0xd45
	.uleb128 0x14
	.byte	0x15
	.byte	0x39
	.byte	0xc
	.long	0xd60
	.uleb128 0x14
	.byte	0x15
	.byte	0x39
	.byte	0xc
	.long	0xd7a
	.uleb128 0x14
	.byte	0x15
	.byte	0x3a
	.byte	0xc
	.long	0xd94
	.uleb128 0x14
	.byte	0x15
	.byte	0x3a
	.byte	0xc
	.long	0xdae
	.uleb128 0x14
	.byte	0x15
	.byte	0x3b
	.byte	0xc
	.long	0xdc8
	.uleb128 0x14
	.byte	0x15
	.byte	0x3b
	.byte	0xc
	.long	0xde3
	.uleb128 0x14
	.byte	0x15
	.byte	0x3c
	.byte	0xc
	.long	0xdfe
	.uleb128 0x14
	.byte	0x15
	.byte	0x3c
	.byte	0xc
	.long	0xe1e
	.uleb128 0x14
	.byte	0x15
	.byte	0x3f
	.byte	0xc
	.long	0xe3e
	.uleb128 0x14
	.byte	0x15
	.byte	0x3f
	.byte	0xc
	.long	0xe59
	.uleb128 0x14
	.byte	0x15
	.byte	0x3f
	.byte	0xc
	.long	0xe74
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF515
	.uleb128 0x14
	.byte	0x15
	.byte	0x40
	.byte	0xc
	.long	0xe8f
	.uleb128 0x14
	.byte	0x15
	.byte	0x40
	.byte	0xc
	.long	0xeaa
	.uleb128 0x14
	.byte	0x15
	.byte	0x40
	.byte	0xc
	.long	0xec5
	.uleb128 0x14
	.byte	0x15
	.byte	0x41
	.byte	0xc
	.long	0xee0
	.uleb128 0x14
	.byte	0x15
	.byte	0x41
	.byte	0xc
	.long	0xefb
	.uleb128 0x14
	.byte	0x15
	.byte	0x41
	.byte	0xc
	.long	0xf16
	.uleb128 0x14
	.byte	0x15
	.byte	0x42
	.byte	0xc
	.long	0xf31
	.uleb128 0x14
	.byte	0x15
	.byte	0x42
	.byte	0xc
	.long	0xf4c
	.uleb128 0x14
	.byte	0x15
	.byte	0x42
	.byte	0xc
	.long	0xf67
	.uleb128 0x14
	.byte	0x15
	.byte	0x43
	.byte	0xc
	.long	0xf82
	.uleb128 0x14
	.byte	0x15
	.byte	0x43
	.byte	0xc
	.long	0xf9d
	.uleb128 0x14
	.byte	0x15
	.byte	0x43
	.byte	0xc
	.long	0xfb8
	.uleb128 0x14
	.byte	0x15
	.byte	0x44
	.byte	0xc
	.long	0xfd3
	.uleb128 0x14
	.byte	0x15
	.byte	0x44
	.byte	0xc
	.long	0xfee
	.uleb128 0x14
	.byte	0x15
	.byte	0x44
	.byte	0xc
	.long	0x1009
	.uleb128 0x14
	.byte	0x15
	.byte	0x45
	.byte	0xc
	.long	0x1024
	.uleb128 0x14
	.byte	0x15
	.byte	0x45
	.byte	0xc
	.long	0x1044
	.uleb128 0x14
	.byte	0x15
	.byte	0x45
	.byte	0xc
	.long	0x1064
	.uleb128 0x14
	.byte	0x15
	.byte	0x46
	.byte	0xc
	.long	0x1084
	.uleb128 0x14
	.byte	0x15
	.byte	0x46
	.byte	0xc
	.long	0x10a4
	.uleb128 0x14
	.byte	0x15
	.byte	0x46
	.byte	0xc
	.long	0x10c4
	.uleb128 0x14
	.byte	0x15
	.byte	0x47
	.byte	0xc
	.long	0x10e4
	.uleb128 0x14
	.byte	0x15
	.byte	0x47
	.byte	0xc
	.long	0x1104
	.uleb128 0x14
	.byte	0x15
	.byte	0x47
	.byte	0xc
	.long	0x1124
	.uleb128 0x14
	.byte	0x15
	.byte	0x48
	.byte	0xc
	.long	0x1144
	.uleb128 0x14
	.byte	0x15
	.byte	0x48
	.byte	0xc
	.long	0x1164
	.uleb128 0x14
	.byte	0x15
	.byte	0x48
	.byte	0xc
	.long	0x1184
	.uleb128 0x14
	.byte	0x15
	.byte	0x49
	.byte	0xc
	.long	0x11a4
	.uleb128 0x14
	.byte	0x15
	.byte	0x49
	.byte	0xc
	.long	0x11c4
	.uleb128 0x14
	.byte	0x15
	.byte	0x49
	.byte	0xc
	.long	0x11e4
	.uleb128 0x14
	.byte	0x15
	.byte	0x4a
	.byte	0xc
	.long	0x1204
	.uleb128 0x14
	.byte	0x15
	.byte	0x4a
	.byte	0xc
	.long	0x1224
	.uleb128 0x14
	.byte	0x15
	.byte	0x4a
	.byte	0xc
	.long	0x1244
	.uleb128 0x14
	.byte	0x15
	.byte	0x4e
	.byte	0xc
	.long	0x1264
	.uleb128 0x14
	.byte	0x15
	.byte	0x4e
	.byte	0xc
	.long	0x127f
	.uleb128 0x14
	.byte	0x15
	.byte	0x4f
	.byte	0xc
	.long	0x129a
	.uleb128 0x14
	.byte	0x15
	.byte	0x4f
	.byte	0xc
	.long	0x12b5
	.uleb128 0x14
	.byte	0x15
	.byte	0x50
	.byte	0xc
	.long	0x12d0
	.uleb128 0x14
	.byte	0x15
	.byte	0x50
	.byte	0xc
	.long	0x12eb
	.uleb128 0x14
	.byte	0x15
	.byte	0x51
	.byte	0xc
	.long	0x1306
	.uleb128 0x14
	.byte	0x15
	.byte	0x51
	.byte	0xc
	.long	0x1321
	.uleb128 0x14
	.byte	0x15
	.byte	0x52
	.byte	0xc
	.long	0x133c
	.uleb128 0x14
	.byte	0x15
	.byte	0x52
	.byte	0xc
	.long	0x135c
	.uleb128 0x14
	.byte	0x15
	.byte	0x53
	.byte	0xc
	.long	0x137c
	.uleb128 0x14
	.byte	0x15
	.byte	0x53
	.byte	0xc
	.long	0x1397
	.uleb128 0x14
	.byte	0x15
	.byte	0x54
	.byte	0xc
	.long	0x13b2
	.uleb128 0x14
	.byte	0x15
	.byte	0x54
	.byte	0xc
	.long	0x13cd
	.uleb128 0x14
	.byte	0x15
	.byte	0x55
	.byte	0xc
	.long	0x13e8
	.uleb128 0x14
	.byte	0x15
	.byte	0x55
	.byte	0xc
	.long	0x1403
	.uleb128 0x14
	.byte	0x15
	.byte	0x56
	.byte	0xc
	.long	0x141e
	.uleb128 0x14
	.byte	0x15
	.byte	0x56
	.byte	0xc
	.long	0x1439
	.uleb128 0x14
	.byte	0x15
	.byte	0x57
	.byte	0xc
	.long	0x1454
	.uleb128 0x14
	.byte	0x15
	.byte	0x57
	.byte	0xc
	.long	0x1474
	.uleb128 0x14
	.byte	0x15
	.byte	0x58
	.byte	0xc
	.long	0x1494
	.uleb128 0x14
	.byte	0x15
	.byte	0x58
	.byte	0xc
	.long	0x14b9
	.uleb128 0x14
	.byte	0x15
	.byte	0x59
	.byte	0xc
	.long	0x14de
	.uleb128 0x14
	.byte	0x15
	.byte	0x59
	.byte	0xc
	.long	0x14fe
	.uleb128 0x14
	.byte	0x15
	.byte	0x5a
	.byte	0xc
	.long	0x151e
	.uleb128 0x14
	.byte	0x15
	.byte	0x5a
	.byte	0xc
	.long	0x153e
	.uleb128 0x14
	.byte	0x15
	.byte	0x5b
	.byte	0xc
	.long	0x155e
	.uleb128 0x14
	.byte	0x15
	.byte	0x5b
	.byte	0xc
	.long	0x157e
	.uleb128 0x14
	.byte	0x15
	.byte	0x5c
	.byte	0xc
	.long	0x159e
	.uleb128 0x14
	.byte	0x15
	.byte	0x5c
	.byte	0xc
	.long	0x15b9
	.uleb128 0x14
	.byte	0x15
	.byte	0x5d
	.byte	0xc
	.long	0x15d4
	.uleb128 0x14
	.byte	0x15
	.byte	0x5d
	.byte	0xc
	.long	0x15ef
	.uleb128 0x14
	.byte	0x15
	.byte	0x5e
	.byte	0xc
	.long	0x160a
	.uleb128 0x14
	.byte	0x15
	.byte	0x5e
	.byte	0xc
	.long	0x1625
	.uleb128 0x14
	.byte	0x15
	.byte	0x5f
	.byte	0xc
	.long	0x1640
	.uleb128 0x14
	.byte	0x15
	.byte	0x5f
	.byte	0xc
	.long	0x165b
	.uleb128 0x14
	.byte	0x15
	.byte	0x60
	.byte	0xc
	.long	0x1676
	.uleb128 0x14
	.byte	0x15
	.byte	0x60
	.byte	0xc
	.long	0x1691
	.uleb128 0x14
	.byte	0x15
	.byte	0x61
	.byte	0xc
	.long	0x16ac
	.uleb128 0x14
	.byte	0x15
	.byte	0x61
	.byte	0xc
	.long	0x16c7
	.uleb128 0x14
	.byte	0x15
	.byte	0x62
	.byte	0xc
	.long	0x16e2
	.uleb128 0x14
	.byte	0x15
	.byte	0x62
	.byte	0xc
	.long	0x16fd
	.uleb128 0x14
	.byte	0x15
	.byte	0x63
	.byte	0xc
	.long	0x1718
	.uleb128 0x14
	.byte	0x15
	.byte	0x63
	.byte	0xc
	.long	0x1733
	.uleb128 0x14
	.byte	0x15
	.byte	0x64
	.byte	0xc
	.long	0x174e
	.uleb128 0x14
	.byte	0x15
	.byte	0x64
	.byte	0xc
	.long	0x1769
	.uleb128 0x14
	.byte	0x15
	.byte	0x65
	.byte	0xc
	.long	0x1784
	.uleb128 0x14
	.byte	0x15
	.byte	0x65
	.byte	0xc
	.long	0x179f
	.uleb128 0x14
	.byte	0x15
	.byte	0x66
	.byte	0xc
	.long	0x17ba
	.uleb128 0x14
	.byte	0x15
	.byte	0x66
	.byte	0xc
	.long	0x17da
	.uleb128 0x14
	.byte	0x15
	.byte	0x67
	.byte	0xc
	.long	0x17fa
	.uleb128 0x14
	.byte	0x15
	.byte	0x67
	.byte	0xc
	.long	0x181a
	.uleb128 0x14
	.byte	0x15
	.byte	0x68
	.byte	0xc
	.long	0x183a
	.uleb128 0x14
	.byte	0x15
	.byte	0x68
	.byte	0xc
	.long	0x185a
	.uleb128 0x14
	.byte	0x15
	.byte	0x69
	.byte	0xc
	.long	0x187a
	.uleb128 0x14
	.byte	0x15
	.byte	0x69
	.byte	0xc
	.long	0x189f
	.uleb128 0x14
	.byte	0x15
	.byte	0x6a
	.byte	0xc
	.long	0x18c4
	.uleb128 0x14
	.byte	0x15
	.byte	0x6a
	.byte	0xc
	.long	0x18df
	.uleb128 0x14
	.byte	0x15
	.byte	0x6b
	.byte	0xc
	.long	0x18fa
	.uleb128 0x14
	.byte	0x15
	.byte	0x6b
	.byte	0xc
	.long	0x1915
	.uleb128 0x14
	.byte	0x15
	.byte	0x6c
	.byte	0xc
	.long	0x1930
	.uleb128 0x14
	.byte	0x15
	.byte	0x6c
	.byte	0xc
	.long	0x1950
	.uleb128 0x14
	.byte	0x15
	.byte	0x6d
	.byte	0xc
	.long	0x1970
	.uleb128 0x14
	.byte	0x15
	.byte	0x6d
	.byte	0xc
	.long	0x1990
	.uleb128 0x14
	.byte	0x15
	.byte	0x6e
	.byte	0xc
	.long	0x19b0
	.uleb128 0x14
	.byte	0x15
	.byte	0x6e
	.byte	0xc
	.long	0x19cb
	.uleb128 0x14
	.byte	0x15
	.byte	0x6f
	.byte	0xc
	.long	0x19e6
	.uleb128 0x14
	.byte	0x15
	.byte	0x6f
	.byte	0xc
	.long	0x1a01
	.uleb128 0x2d
	.long	.LASF586
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0x18
	.value	0x109
	.byte	0x6
	.long	0x24ce
	.uleb128 0x10
	.long	.LASF516
	.byte	0
	.uleb128 0x10
	.long	.LASF517
	.byte	0x1
	.uleb128 0x10
	.long	.LASF518
	.byte	0x2
	.uleb128 0x10
	.long	.LASF519
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.byte	0x30
	.byte	0x2
	.byte	0x19
	.byte	0x12
	.long	.LASF520
	.long	0x2510
	.uleb128 0xa
	.long	.LASF521
	.byte	0x2
	.byte	0x1b
	.byte	0x16
	.long	0xb2
	.byte	0
	.uleb128 0xa
	.long	.LASF522
	.byte	0x2
	.byte	0x1b
	.byte	0x22
	.long	0xb2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF523
	.byte	0x2
	.byte	0x1c
	.byte	0x10
	.long	0xed
	.byte	0x20
	.uleb128 0xa
	.long	.LASF524
	.byte	0x2
	.byte	0x1d
	.byte	0xb
	.long	0x76
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.long	.LASF525
	.byte	0x2
	.byte	0x1f
	.byte	0x5
	.long	0x24ce
	.uleb128 0xd
	.long	0xe1
	.long	0x252c
	.uleb128 0xe
	.long	0x4a
	.byte	0x3f
	.byte	0
	.uleb128 0x2e
	.long	.LASF526
	.byte	0x1
	.byte	0x35
	.byte	0xb
	.long	0x251c
	.uleb128 0x9
	.byte	0x3
	.quad	Thread
	.uleb128 0xd
	.long	0x30
	.long	0x2552
	.uleb128 0xe
	.long	0x4a
	.byte	0x3f
	.byte	0
	.uleb128 0x2e
	.long	.LASF527
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.long	0x2542
	.uleb128 0x9
	.byte	0x3
	.quad	my_thread_id
	.uleb128 0xd
	.long	0x37
	.long	0x2578
	.uleb128 0xe
	.long	0x4a
	.byte	0x3f
	.byte	0
	.uleb128 0x2e
	.long	.LASF528
	.byte	0x1
	.byte	0x37
	.byte	0x7
	.long	0x2568
	.uleb128 0x9
	.byte	0x3
	.quad	partialSum
	.uleb128 0x2e
	.long	.LASF529
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.long	0x30
	.uleb128 0x9
	.byte	0x3
	.quad	nThreads
	.uleb128 0x2e
	.long	.LASF530
	.byte	0x1
	.byte	0x3b
	.byte	0x5
	.long	0x30
	.uleb128 0x9
	.byte	0x3
	.quad	nTotalElements
	.uleb128 0xd
	.long	0x37
	.long	0x25cd
	.uleb128 0x2f
	.long	0x4a
	.long	0x1dcd64ff
	.byte	0
	.uleb128 0x2e
	.long	.LASF531
	.byte	0x1
	.byte	0x3e
	.byte	0x7
	.long	0x25ba
	.uleb128 0x9
	.byte	0x3
	.quad	InputVector
	.uleb128 0x2e
	.long	.LASF532
	.byte	0x1
	.byte	0x41
	.byte	0x13
	.long	0x12a
	.uleb128 0x9
	.byte	0x3
	.quad	myBarrier
	.uleb128 0x30
	.long	.LASF548
	.byte	0x1
	.byte	0x8f
	.byte	0x5
	.long	0x30
	.quad	.LFB362
	.quad	.LFE362-.LFB362
	.uleb128 0x1
	.byte	0x9c
	.long	0x2daa
	.uleb128 0x31
	.long	.LASF533
	.byte	0x1
	.byte	0x8f
	.byte	0xf
	.long	0x30
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x31
	.long	.LASF534
	.byte	0x1
	.byte	0x8f
	.byte	0x1b
	.long	0x1c9
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0x91
	.byte	0x9
	.long	0x30
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x33
	.long	.LASF587
	.byte	0x1
	.byte	0x92
	.byte	0x13
	.long	0x2510
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.long	.LASF535
	.byte	0x1
	.byte	0xcc
	.byte	0xb
	.long	0x37
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x34
	.long	.LASF536
	.byte	0x1
	.byte	0xe1
	.byte	0xc
	.long	0x29
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x32
	.string	"OPS"
	.byte	0x1
	.byte	0xe5
	.byte	0xc
	.long	0x29
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x35
	.long	.Ldebug_ranges0+0xb0
	.long	0x26bd
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.byte	0xe
	.long	0x30
	.long	.LLST23
	.long	.LVUS23
	.byte	0
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x120
	.long	0x2715
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0xcd
	.byte	0xe
	.long	0x30
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x36
	.long	0x30b3
	.quad	.LBI156
	.byte	.LVU217
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0xce
	.byte	0xf
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x38
	.quad	.LVL66
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI138
	.byte	.LVU106
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.byte	0x1
	.byte	0x95
	.byte	0x10
	.long	0x2768
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x38
	.quad	.LVL41
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x1bba
	.quad	.LBI140
	.byte	.LVU115
	.quad	.LBB140
	.quad	.LBE140-.LBB140
	.byte	0x1
	.byte	0x99
	.byte	0x19
	.long	0x27b3
	.uleb128 0x37
	.long	0x1bcc
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x38
	.quad	.LVL44
	.long	0x1d49
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x1bba
	.quad	.LBI142
	.byte	.LVU124
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.byte	0x1
	.byte	0xa6
	.byte	0x1f
	.long	0x27fe
	.uleb128 0x37
	.long	0x1bcc
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x38
	.quad	.LVL46
	.long	0x1d49
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI144
	.byte	.LVU131
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.byte	0x1
	.byte	0xaf
	.byte	0xb
	.long	0x2851
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x38
	.quad	.LVL48
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x3095
	.quad	.LBI147
	.byte	.LVU171
	.long	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xb6
	.byte	0x11
	.long	0x2878
	.uleb128 0x37
	.long	0x30a6
	.long	.LLST24
	.long	.LVUS24
	.byte	0
	.uleb128 0x3a
	.long	0x3077
	.quad	.LBI153
	.byte	.LVU203
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.byte	0x1
	.byte	0xc6
	.byte	0x11
	.long	0x28c5
	.uleb128 0x37
	.long	0x3088
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x38
	.quad	.LVL63
	.long	0x31cf
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x3013
	.quad	.LBI165
	.byte	.LVU232
	.long	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.byte	0xd3
	.byte	0x10
	.long	0x2933
	.uleb128 0x37
	.long	0x3024
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x3d
	.long	0x3030
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x3d
	.long	0x303c
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x3d
	.long	0x3048
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x38
	.quad	.LVL71
	.long	0x31cf
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x30b3
	.quad	.LBI175
	.byte	.LVU255
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0xd6
	.byte	0xb
	.long	0x297a
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x38
	.quad	.LVL76
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x2feb
	.quad	.LBI181
	.byte	.LVU269
	.quad	.LBB181
	.quad	.LBE181-.LBB181
	.byte	0x1
	.byte	0xde
	.byte	0x16
	.long	0x2a0a
	.uleb128 0x37
	.long	0x3008
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x37
	.long	0x2ffc
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x36
	.long	0x30b3
	.quad	.LBI183
	.byte	.LVU273
	.long	.Ldebug_ranges0+0x240
	.byte	0x2
	.byte	0x44
	.byte	0xb
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x38
	.quad	.LVL82
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x3055
	.quad	.LBI189
	.byte	.LVU282
	.quad	.LBB189
	.quad	.LBE189-.LBB189
	.byte	0x1
	.byte	0xe1
	.byte	0x3c
	.long	0x2a3d
	.uleb128 0x37
	.long	0x306a
	.long	.LLST36
	.long	.LVUS36
	.byte	0
	.uleb128 0x3b
	.long	0x30b3
	.quad	.LBI191
	.byte	.LVU291
	.long	.Ldebug_ranges0+0x280
	.byte	0x1
	.byte	0xe3
	.byte	0xb
	.long	0x2a8e
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x38
	.quad	.LVL84
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x30b3
	.quad	.LBI197
	.byte	.LVU297
	.long	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.byte	0xe6
	.byte	0xb
	.long	0x2ad5
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x38
	.quad	.LVL85
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI205
	.byte	.LVU309
	.quad	.LBB205
	.quad	.LBE205-.LBB205
	.byte	0x1
	.byte	0x9b
	.byte	0x15
	.long	0x2b28
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x38
	.quad	.LVL87
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI207
	.byte	.LVU314
	.quad	.LBB207
	.quad	.LBE207-.LBB207
	.byte	0x1
	.byte	0x9d
	.byte	0x15
	.long	0x2b76
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x38
	.quad	.LVL88
	.long	0x31f6
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI209
	.byte	.LVU321
	.quad	.LBB209
	.quad	.LBE209-.LBB209
	.byte	0x1
	.byte	0xa8
	.byte	0x15
	.long	0x2bc9
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x38
	.quad	.LVL90
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI211
	.byte	.LVU326
	.quad	.LBB211
	.quad	.LBE211-.LBB211
	.byte	0x1
	.byte	0xaa
	.byte	0x15
	.long	0x2c25
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x38
	.quad	.LVL91
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.long	0x1dcd6500
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI213
	.byte	.LVU333
	.quad	.LBB213
	.quad	.LBE213-.LBB213
	.byte	0x1
	.byte	0xa1
	.byte	0x15
	.long	0x2c78
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x38
	.quad	.LVL93
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x30b3
	.quad	.LBI215
	.byte	.LVU338
	.quad	.LBB215
	.quad	.LBE215-.LBB215
	.byte	0x1
	.byte	0xa3
	.byte	0x15
	.long	0x2cd1
	.uleb128 0x37
	.long	0x30c4
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x38
	.quad	.LVL94
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL56
	.long	0x31ff
	.long	0x2cf5
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	myBarrier
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.quad	.LVL60
	.long	0x320c
	.long	0x2d23
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x73
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 -4
	.byte	0
	.uleb128 0x3e
	.quad	.LVL62
	.long	0x3218
	.long	0x2d42
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	myBarrier
	.byte	0
	.uleb128 0x3e
	.quad	.LVL64
	.long	0x2daa
	.long	0x2d66
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.byte	0x7d
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.quad	my_thread_id
	.byte	0x22
	.byte	0
	.uleb128 0x3e
	.quad	.LVL79
	.long	0x3225
	.long	0x2d7d
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.quad	.LVL80
	.long	0x3231
	.long	0x2d9c
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	myBarrier
	.byte	0
	.uleb128 0x3f
	.quad	.LVL99
	.long	0x323e
	.byte	0
	.uleb128 0x40
	.long	.LASF542
	.byte	0x1
	.byte	0x50
	.byte	0x7
	.long	.LASF544
	.long	0x58
	.quad	.LFB361
	.quad	.LFE361-.LFB361
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ecc
	.uleb128 0x41
	.string	"ptr"
	.byte	0x1
	.byte	0x50
	.byte	0x1e
	.long	0x58
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x34
	.long	.LASF537
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.long	0x30
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x34
	.long	.LASF538
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.long	0x30
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x34
	.long	.LASF539
	.byte	0x1
	.byte	0x56
	.byte	0x9
	.long	0x30
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x34
	.long	.LASF540
	.byte	0x1
	.byte	0x57
	.byte	0x9
	.long	0x30
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x34
	.long	.LASF541
	.byte	0x1
	.byte	0x68
	.byte	0x17
	.long	0x37
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.long	0x2e80
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.byte	0x11
	.long	0x30
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0
	.uleb128 0x43
	.long	.LASF541
	.byte	0x1
	.byte	0x68
	.byte	0x17
	.long	0x37
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.byte	0x11
	.long	0x30
	.long	.LLST6
	.long	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL14
	.long	0x3218
	.long	0x2e9f
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	myBarrier
	.byte	0
	.uleb128 0x3e
	.quad	.LVL19
	.long	0x3218
	.long	0x2ebe
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	myBarrier
	.byte	0
	.uleb128 0x3f
	.quad	.LVL21
	.long	0x323e
	.byte	0
	.uleb128 0x40
	.long	.LASF543
	.byte	0x1
	.byte	0x4b
	.byte	0x7
	.long	.LASF545
	.long	0x37
	.quad	.LFB360
	.quad	.LFE360-.LFB360
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f11
	.uleb128 0x41
	.string	"a"
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.long	0x37
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x44
	.string	"b"
	.byte	0x1
	.byte	0x4b
	.byte	0x1c
	.long	0x37
	.uleb128 0x1
	.byte	0x62
	.byte	0
	.uleb128 0x45
	.string	"min"
	.byte	0x1
	.byte	0x43
	.byte	0x5
	.long	.LASF546
	.long	0x30
	.byte	0x1
	.long	0x2f3b
	.uleb128 0x46
	.string	"a"
	.byte	0x1
	.byte	0x43
	.byte	0xe
	.long	0x30
	.uleb128 0x46
	.string	"b"
	.byte	0x1
	.byte	0x43
	.byte	0x15
	.long	0x30
	.byte	0
	.uleb128 0x47
	.long	.LASF549
	.byte	0x2
	.byte	0x4a
	.byte	0x8
	.long	.LASF588
	.quad	.LFB358
	.quad	.LFE358-.LFB358
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fe5
	.uleb128 0x31
	.long	.LASF550
	.byte	0x2
	.byte	0x4a
	.byte	0x31
	.long	0x2fe5
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x41
	.string	"s"
	.byte	0x2
	.byte	0x4a
	.byte	0x3f
	.long	0x95
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x31
	.long	.LASF551
	.byte	0x2
	.byte	0x4a
	.byte	0x46
	.long	0x30
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x36
	.long	0x30b3
	.quad	.LBI90
	.byte	.LVU79
	.long	.Ldebug_ranges0+0x70
	.byte	0x2
	.byte	0x4c
	.byte	0xb
	.uleb128 0x48
	.long	0x30c4
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x49
	.quad	.LVL33
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2510
	.uleb128 0x4a
	.long	.LASF552
	.byte	0x2
	.byte	0x42
	.byte	0x8
	.long	.LASF554
	.byte	0x1
	.long	0x3013
	.uleb128 0x4b
	.long	.LASF550
	.byte	0x2
	.byte	0x42
	.byte	0x2a
	.long	0x2fe5
	.uleb128 0x46
	.string	"s"
	.byte	0x2
	.byte	0x42
	.byte	0x38
	.long	0x95
	.byte	0
	.uleb128 0x4a
	.long	.LASF553
	.byte	0x2
	.byte	0x34
	.byte	0xf
	.long	.LASF555
	.byte	0x3
	.long	0x3055
	.uleb128 0x4b
	.long	.LASF550
	.byte	0x2
	.byte	0x34
	.byte	0x2b
	.long	0x2fe5
	.uleb128 0x42
	.string	"ns1"
	.byte	0x2
	.byte	0x38
	.byte	0x11
	.long	0xed
	.uleb128 0x42
	.string	"ns2"
	.byte	0x2
	.byte	0x3a
	.byte	0x11
	.long	0xed
	.uleb128 0x43
	.long	.LASF556
	.byte	0x2
	.byte	0x3c
	.byte	0x11
	.long	0xed
	.byte	0
	.uleb128 0x4c
	.long	.LASF557
	.byte	0x2
	.byte	0x2c
	.byte	0x15
	.long	.LASF558
	.long	0xed
	.byte	0x3
	.long	0x3077
	.uleb128 0x4b
	.long	.LASF550
	.byte	0x2
	.byte	0x2c
	.byte	0x35
	.long	0x2fe5
	.byte	0
	.uleb128 0x4a
	.long	.LASF559
	.byte	0x2
	.byte	0x28
	.byte	0xf
	.long	.LASF560
	.byte	0x3
	.long	0x3095
	.uleb128 0x4b
	.long	.LASF550
	.byte	0x2
	.byte	0x28
	.byte	0x2c
	.long	0x2fe5
	.byte	0
	.uleb128 0x4a
	.long	.LASF561
	.byte	0x2
	.byte	0x22
	.byte	0x8
	.long	.LASF562
	.byte	0x1
	.long	0x30b3
	.uleb128 0x4b
	.long	.LASF550
	.byte	0x2
	.byte	0x22
	.byte	0x25
	.long	0x2fe5
	.byte	0
	.uleb128 0x4d
	.long	.LASF563
	.byte	0x3
	.byte	0x69
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x30d2
	.uleb128 0x4b
	.long	.LASF564
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.long	0xad
	.uleb128 0x4e
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x10
	.long	.LASF565
	.uleb128 0x2
	.byte	0x4
	.byte	0x10
	.long	.LASF566
	.uleb128 0x2
	.byte	0x10
	.byte	0x7
	.long	.LASF567
	.uleb128 0x4f
	.long	0x3095
	.long	.LASF562
	.quad	.LFB352
	.quad	.LFE352-.LFB352
	.uleb128 0x1
	.byte	0x9c
	.long	0x310e
	.uleb128 0x48
	.long	0x30a6
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4f
	.long	0x2feb
	.long	.LASF554
	.quad	.LFB357
	.quad	.LFE357-.LFB357
	.uleb128 0x1
	.byte	0x9c
	.long	0x3195
	.uleb128 0x37
	.long	0x2ffc
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x37
	.long	0x3008
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x36
	.long	0x30b3
	.quad	.LBI84
	.byte	.LVU63
	.long	.Ldebug_ranges0+0x30
	.byte	0x2
	.byte	0x44
	.byte	0xb
	.uleb128 0x48
	.long	0x30c4
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x49
	.quad	.LVL27
	.long	0x31c3
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.long	0x2f11
	.long	.LASF546
	.quad	.LFB359
	.quad	.LFE359-.LFB359
	.uleb128 0x1
	.byte	0x9c
	.long	0x31c3
	.uleb128 0x48
	.long	0x2f26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x48
	.long	0x2f30
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x50
	.long	.LASF568
	.long	.LASF568
	.byte	0x3
	.byte	0x5a
	.byte	0xc
	.uleb128 0x50
	.long	.LASF569
	.long	.LASF569
	.byte	0x16
	.byte	0xd5
	.byte	0xc
	.uleb128 0x51
	.uleb128 0x19
	.byte	0x9e
	.uleb128 0x17
	.byte	0x3c
	.byte	0x6e
	.byte	0x54
	.byte	0x68
	.byte	0x72
	.byte	0x65
	.byte	0x61
	.byte	0x64
	.byte	0x73
	.byte	0x3e
	.byte	0x20
	.byte	0x63
	.byte	0x61
	.byte	0x6e
	.byte	0x27
	.byte	0x74
	.byte	0x20
	.byte	0x62
	.byte	0x65
	.byte	0x20
	.byte	0x30
	.byte	0xa
	.byte	0
	.uleb128 0x52
	.long	.LASF575
	.long	.LASF577
	.uleb128 0x53
	.long	.LASF570
	.long	.LASF570
	.byte	0x9
	.value	0x438
	.byte	0xc
	.uleb128 0x50
	.long	.LASF571
	.long	.LASF571
	.byte	0x9
	.byte	0xc6
	.byte	0xc
	.uleb128 0x53
	.long	.LASF572
	.long	.LASF572
	.byte	0x9
	.value	0x442
	.byte	0xc
	.uleb128 0x50
	.long	.LASF573
	.long	.LASF573
	.byte	0x9
	.byte	0xd7
	.byte	0xc
	.uleb128 0x53
	.long	.LASF574
	.long	.LASF574
	.byte	0x9
	.value	0x43e
	.byte	0xc
	.uleb128 0x52
	.long	.LASF576
	.long	.LASF576
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS13:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST13:
	.quad	.LVL37
	.quad	.LVL39
	.value	0x1
	.byte	0x55
	.quad	.LVL39
	.quad	.LVL42
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL42
	.quad	.LVL43
	.value	0x1
	.byte	0x55
	.quad	.LVL43
	.quad	.LFE362
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 0
.LLST14:
	.quad	.LVL37
	.quad	.LVL40
	.value	0x1
	.byte	0x54
	.quad	.LVL40
	.quad	.LVL41
	.value	0x1
	.byte	0x53
	.quad	.LVL41
	.quad	.LVL42
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL42
	.quad	.LVL55
	.value	0x1
	.byte	0x53
	.quad	.LVL55
	.quad	.LVL86
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL95
	.value	0x1
	.byte	0x53
	.quad	.LVL95
	.quad	.LVL97
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL98
	.value	0x1
	.byte	0x53
	.quad	.LVL98
	.quad	.LFE362
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU187
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU198
	.uleb128 .LVU258
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 .LVU263
	.uleb128 .LVU344
	.uleb128 .LVU345
.LLST15:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL59
	.value	0x1
	.byte	0x53
	.quad	.LVL59
	.quad	.LVL60-1
	.value	0x2
	.byte	0x72
	.sleb128 0
	.quad	.LVL60-1
	.quad	.LVL60
	.value	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x5d
	.quad	.LVL76
	.quad	.LVL77
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL78
	.value	0x1
	.byte	0x53
	.quad	.LVL95
	.quad	.LVL96
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU211
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU229
	.uleb128 .LVU345
	.uleb128 .LVU346
.LLST16:
	.quad	.LVL64
	.quad	.LVL65
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	.LVL65
	.quad	.LVL66-1
	.value	0x1
	.byte	0x62
	.quad	.LVL66-1
	.quad	.LVL67
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL67
	.quad	.LVL69
	.value	0x1
	.byte	0x62
	.quad	.LVL96
	.quad	.LVL97
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU290
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU307
.LLST17:
	.quad	.LVL83
	.quad	.LVL84-1
	.value	0x1
	.byte	0x61
	.quad	.LVL84-1
	.quad	.LVL86
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU296
	.uleb128 .LVU306
.LLST18:
	.quad	.LVL84
	.quad	.LVL85-1
	.value	0x17
	.byte	0x3
	.quad	nTotalElements
	.byte	0x94
	.byte	0x4
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU143
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU160
	.uleb128 .LVU346
	.uleb128 .LVU347
.LLST23:
	.quad	.LVL48
	.quad	.LVL49
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL50
	.quad	.LVL51
	.value	0x1
	.byte	0x50
	.quad	.LVL51
	.quad	.LVL52
	.value	0x1
	.byte	0x51
	.quad	.LVL97
	.quad	.LVL98
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU212
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU228
	.uleb128 .LVU345
	.uleb128 .LVU346
.LLST26:
	.quad	.LVL64
	.quad	.LVL65
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL67
	.value	0x1
	.byte	0x53
	.quad	.LVL67
	.quad	.LVL68
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL96
	.quad	.LVL97
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU217
	.uleb128 .LVU223
.LLST27:
	.quad	.LVL65
	.quad	.LVL66
	.value	0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU106
	.uleb128 .LVU111
.LLST19:
	.quad	.LVL38
	.quad	.LVL41
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST20:
	.quad	.LVL42
	.quad	.LVL44-1
	.value	0x2
	.byte	0x73
	.sleb128 16
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU124
	.uleb128 .LVU127
.LLST21:
	.quad	.LVL45
	.quad	.LVL46-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU131
	.uleb128 .LVU134
.LLST22:
	.quad	.LVL47
	.quad	.LVL48
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU171
	.uleb128 .LVU178
.LLST24:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU203
	.uleb128 .LVU206
.LLST25:
	.quad	.LVL62
	.quad	.LVL63
	.value	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU232
	.uleb128 .LVU253
.LLST28:
	.quad	.LVL70
	.quad	.LVL75
	.value	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU237
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU253
.LLST29:
	.quad	.LVL71
	.quad	.LVL73
	.value	0x10
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0xc
	.long	0x3b9aca00
	.byte	0x1e
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL75
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU238
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU253
.LLST30:
	.quad	.LVL71
	.quad	.LVL72
	.value	0x10
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0xc
	.long	0x3b9aca00
	.byte	0x1e
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL72
	.quad	.LVL74
	.value	0x1
	.byte	0x50
	.quad	.LVL74
	.quad	.LVL75
	.value	0x10
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0xc
	.long	0x3b9aca00
	.byte	0x1e
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU239
	.uleb128 .LVU253
.LLST31:
	.quad	.LVL71
	.quad	.LVL75
	.value	0x20
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0xc
	.long	0x3b9aca00
	.byte	0x1e
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0xc
	.long	0x3b9aca00
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU255
	.uleb128 .LVU258
.LLST32:
	.quad	.LVL75
	.quad	.LVL76
	.value	0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU269
	.uleb128 .LVU280
.LLST33:
	.quad	.LVL80
	.quad	.LVL82
	.value	0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU269
	.uleb128 .LVU280
.LLST34:
	.quad	.LVL80
	.quad	.LVL82
	.value	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU273
	.uleb128 .LVU280
.LLST35:
	.quad	.LVL81
	.quad	.LVL82
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU282
	.uleb128 .LVU284
.LLST36:
	.quad	.LVL82
	.quad	.LVL82
	.value	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS37:
	.uleb128 .LVU291
	.uleb128 .LVU294
.LLST37:
	.quad	.LVL83
	.quad	.LVL84
	.value	0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 .LVU297
	.uleb128 .LVU307
.LLST38:
	.quad	.LVL84
	.quad	.LVL86
	.value	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU309
	.uleb128 .LVU312
.LLST39:
	.quad	.LVL86
	.quad	.LVL87
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU314
	.uleb128 .LVU317
.LLST40:
	.quad	.LVL87
	.quad	.LVL88
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+12763
	.sleb128 0
	.quad	0
	.quad	0
.LVUS41:
	.uleb128 .LVU321
	.uleb128 .LVU324
.LLST41:
	.quad	.LVL89
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS42:
	.uleb128 .LVU326
	.uleb128 .LVU329
.LLST42:
	.quad	.LVL90
	.quad	.LVL91
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS43:
	.uleb128 .LVU333
	.uleb128 .LVU336
.LLST43:
	.quad	.LVL92
	.quad	.LVL93
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS44:
	.uleb128 .LVU338
	.uleb128 .LVU341
.LLST44:
	.quad	.LVL93
	.quad	.LVL94
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL6
	.value	0x1
	.byte	0x55
	.quad	.LVL6
	.quad	.LVL17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL18
	.value	0x1
	.byte	0x55
	.quad	.LVL18
	.quad	.LFE361
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU46
	.uleb128 .LVU47
	.uleb128 0
.LLST1:
	.quad	.LVL1
	.quad	.LVL16
	.value	0x1
	.byte	0x5c
	.quad	.LVL17
	.quad	.LFE361
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU10
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU47
	.uleb128 .LVU50
.LLST2:
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x50
	.quad	.LVL4
	.quad	.LVL5
	.value	0xf
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	nThreads
	.byte	0x94
	.byte	0x4
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL6
	.value	0x18
	.byte	0x3
	.quad	nTotalElements
	.byte	0x94
	.byte	0x4
	.byte	0x3
	.quad	nThreads
	.byte	0x94
	.byte	0x4
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL19-1
	.value	0x18
	.byte	0x3
	.quad	nTotalElements
	.byte	0x94
	.byte	0x4
	.byte	0x3
	.quad	nThreads
	.byte	0x94
	.byte	0x4
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU12
	.uleb128 .LVU22
	.uleb128 .LVU47
	.uleb128 .LVU51
.LLST3:
	.quad	.LVL3
	.quad	.LVL9
	.value	0x1
	.byte	0x53
	.quad	.LVL17
	.quad	.LVL20
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU16
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 0
.LLST4:
	.quad	.LVL5
	.quad	.LVL15
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL17
	.quad	.LFE361
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU18
	.uleb128 .LVU38
.LLST5:
	.quad	.LVL6
	.quad	.LVL13
	.value	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU23
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU31
.LLST6:
	.quad	.LVL7
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x53
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 0
.LLST12:
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x61
	.quad	.LVL36
	.quad	.LFE360
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x37
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST9:
	.quad	.LVL28
	.quad	.LVL30
	.value	0x1
	.byte	0x55
	.quad	.LVL30
	.quad	.LFE358
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
.LLST10:
	.quad	.LVL28
	.quad	.LVL32
	.value	0x1
	.byte	0x54
	.quad	.LVL32
	.quad	.LVL33-1
	.value	0x1
	.byte	0x51
	.quad	.LVL33-1
	.quad	.LFE358
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 0
.LLST11:
	.quad	.LVL28
	.quad	.LVL31
	.value	0x1
	.byte	0x51
	.quad	.LVL31
	.quad	.LFE358
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 0
.LLST7:
	.quad	.LVL23
	.quad	.LVL25
	.value	0x1
	.byte	0x55
	.quad	.LVL25
	.quad	.LFE357
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST8:
	.quad	.LVL23
	.quad	.LVL26
	.value	0x1
	.byte	0x54
	.quad	.LVL26
	.quad	.LVL27-1
	.value	0x1
	.byte	0x51
	.quad	.LVL27-1
	.quad	.LFE357
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB362
	.quad	.LFE362-.LFB362
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB83
	.quad	.LBE83
	.quad	0
	.quad	0
	.quad	.LBB84
	.quad	.LBE84
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB89
	.quad	.LBE89
	.quad	0
	.quad	0
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB94
	.quad	.LBE94
	.quad	.LBB95
	.quad	.LBE95
	.quad	0
	.quad	0
	.quad	.LBB146
	.quad	.LBE146
	.quad	.LBB217
	.quad	.LBE217
	.quad	0
	.quad	0
	.quad	.LBB147
	.quad	.LBE147
	.quad	.LBB151
	.quad	.LBE151
	.quad	.LBB152
	.quad	.LBE152
	.quad	0
	.quad	0
	.quad	.LBB155
	.quad	.LBE155
	.quad	.LBB164
	.quad	.LBE164
	.quad	0
	.quad	0
	.quad	.LBB156
	.quad	.LBE156
	.quad	.LBB161
	.quad	.LBE161
	.quad	.LBB162
	.quad	.LBE162
	.quad	.LBB163
	.quad	.LBE163
	.quad	0
	.quad	0
	.quad	.LBB165
	.quad	.LBE165
	.quad	.LBB172
	.quad	.LBE172
	.quad	.LBB173
	.quad	.LBE173
	.quad	.LBB174
	.quad	.LBE174
	.quad	.LBB178
	.quad	.LBE178
	.quad	.LBB179
	.quad	.LBE179
	.quad	0
	.quad	0
	.quad	.LBB175
	.quad	.LBE175
	.quad	.LBB180
	.quad	.LBE180
	.quad	0
	.quad	0
	.quad	.LBB183
	.quad	.LBE183
	.quad	.LBB187
	.quad	.LBE187
	.quad	.LBB188
	.quad	.LBE188
	.quad	0
	.quad	0
	.quad	.LBB191
	.quad	.LBE191
	.quad	.LBB195
	.quad	.LBE195
	.quad	.LBB196
	.quad	.LBE196
	.quad	0
	.quad	0
	.quad	.LBB197
	.quad	.LBE197
	.quad	.LBB202
	.quad	.LBE202
	.quad	.LBB203
	.quad	.LBE203
	.quad	.LBB204
	.quad	.LBE204
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB362
	.quad	.LFE362
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF400:
	.string	"fdim"
.LASF324:
	.string	"_ZSt4fmodee"
.LASF257:
	.string	"_ZSt3absd"
.LASF255:
	.string	"_ZSt3abse"
.LASF256:
	.string	"_ZSt3absf"
.LASF253:
	.string	"_ZSt3absg"
.LASF233:
	.string	"_SC_LEVEL3_CACHE_SIZE"
.LASF259:
	.string	"_ZSt3absl"
.LASF467:
	.string	"_ZSt6scalbnfi"
.LASF254:
	.string	"_ZSt3absn"
.LASF143:
	.string	"_SC_INT_MAX"
.LASF348:
	.string	"_ZSt7signbitd"
.LASF9:
	.string	"size_t"
.LASF349:
	.string	"_ZSt7signbitf"
.LASF258:
	.string	"_ZSt3absx"
.LASF54:
	.string	"_SC_MAPPED_FILES"
.LASF39:
	.string	"_SC_CHILD_MAX"
.LASF263:
	.string	"__value"
.LASF265:
	.string	"__is_integer<float>"
.LASF410:
	.string	"_ZSt4fminff"
.LASF40:
	.string	"_SC_CLK_TCK"
.LASF305:
	.string	"_ZSt5log10f"
.LASF72:
	.string	"_SC_SIGQUEUE_MAX"
.LASF564:
	.string	"__fmt"
.LASF517:
	.string	"F_OWNER_PID"
.LASF251:
	.string	"_SC_THREAD_ROBUST_PRIO_INHERIT"
.LASF556:
	.string	"deltat_ns"
.LASF179:
	.string	"_SC_DEVICE_IO"
.LASF325:
	.string	"_ZSt4fmodff"
.LASF489:
	.string	"atol"
.LASF237:
	.string	"_SC_LEVEL4_CACHE_ASSOC"
.LASF45:
	.string	"_SC_JOB_CONTROL"
.LASF537:
	.string	"myIndex"
.LASF506:
	.string	"lldiv"
.LASF445:
	.string	"_ZSt9nextafteree"
.LASF141:
	.string	"_SC_CHAR_MAX"
.LASF408:
	.string	"fmin"
.LASF418:
	.string	"_ZSt6lgammae"
.LASF419:
	.string	"_ZSt6lgammaf"
.LASF30:
	.string	"PTHREAD_MUTEX_STALLED"
.LASF222:
	.string	"_SC_TRACE_INHERIT"
.LASF508:
	.string	"strtoll"
.LASF128:
	.string	"_SC_XOPEN_VERSION"
.LASF108:
	.string	"_SC_GETGR_R_SIZE_MAX"
.LASF524:
	.string	"xn_events"
.LASF93:
	.string	"_SC_PII_SOCKET"
.LASF377:
	.string	"asinh"
.LASF486:
	.string	"at_quick_exit"
.LASF46:
	.string	"_SC_SAVED_IDS"
.LASF575:
	.string	"puts"
.LASF403:
	.string	"_ZSt3fmaeee"
.LASF446:
	.string	"_ZSt9nextafterff"
.LASF150:
	.string	"_SC_SCHAR_MAX"
.LASF549:
	.string	"chrono_report_TimeInLoop"
.LASF291:
	.string	"_ZSt4tanhe"
.LASF292:
	.string	"_ZSt4tanhf"
.LASF38:
	.string	"_SC_ARG_MAX"
.LASF484:
	.string	"__compar_fn_t"
.LASF203:
	.string	"_SC_TIMEOUTS"
.LASF140:
	.string	"_SC_CHAR_BIT"
.LASF61:
	.string	"_SC_AIO_LISTIO_MAX"
.LASF436:
	.string	"_ZSt5lrinte"
.LASF437:
	.string	"_ZSt5lrintf"
.LASF147:
	.string	"_SC_MB_LEN_MAX"
.LASF120:
	.string	"_SC_THREAD_PRIO_PROTECT"
.LASF488:
	.string	"atoi"
.LASF414:
	.string	"ilogb"
.LASF94:
	.string	"_SC_PII_INTERNET"
.LASF507:
	.string	"atoll"
.LASF313:
	.string	"_ZSt4sqrtf"
.LASF121:
	.string	"_SC_THREAD_PROCESS_SHARED"
.LASF535:
	.string	"globalSum"
.LASF247:
	.string	"_SC_TRACE_NAME_MAX"
.LASF372:
	.string	"_ZSt11isunordereddd"
.LASF286:
	.string	"_ZSt4coshf"
.LASF500:
	.string	"strtod"
.LASF568:
	.string	"__printf_chk"
.LASF91:
	.string	"_SC_PII"
.LASF63:
	.string	"_SC_AIO_PRIO_DELTA_MAX"
.LASF428:
	.string	"_ZSt5log1pf"
.LASF447:
	.string	"nexttoward"
.LASF487:
	.string	"atof"
.LASF57:
	.string	"_SC_MEMORY_PROTECTION"
.LASF405:
	.string	"fmax"
.LASF42:
	.string	"_SC_OPEN_MAX"
.LASF115:
	.string	"_SC_THREAD_THREADS_MAX"
.LASF192:
	.string	"_SC_READER_WRITER_LOCKS"
.LASF213:
	.string	"_SC_STREAMS"
.LASF371:
	.string	"_ZSt11isunorderedee"
.LASF8:
	.string	"long int"
.LASF65:
	.string	"_SC_MQ_OPEN_MAX"
.LASF183:
	.string	"_SC_FIFO"
.LASF180:
	.string	"_SC_DEVICE_SPECIFIC"
.LASF33:
	.string	"PTHREAD_MUTEX_ROBUST_NP"
.LASF550:
	.string	"chrono"
.LASF135:
	.string	"_SC_2_C_VERSION"
.LASF505:
	.string	"wctomb"
.LASF252:
	.string	"_SC_THREAD_ROBUST_PRIO_PROTECT"
.LASF443:
	.string	"_ZSt9nearbyintf"
.LASF546:
	.string	"_Z3minii"
.LASF75:
	.string	"_SC_BC_DIM_MAX"
.LASF548:
	.string	"main"
.LASF559:
	.string	"chrono_start"
.LASF585:
	.string	"rand"
.LASF346:
	.string	"signbit"
.LASF401:
	.string	"_ZSt4fdimee"
.LASF373:
	.string	"_ZSt11isunorderedff"
.LASF116:
	.string	"_SC_THREAD_ATTR_STACKADDR"
.LASF569:
	.string	"clock_gettime"
.LASF290:
	.string	"tanh"
.LASF241:
	.string	"_SC_V7_ILP32_OFF32"
.LASF155:
	.string	"_SC_UINT_MAX"
.LASF466:
	.string	"_ZSt6scalbnei"
.LASF209:
	.string	"_SC_2_PBS_LOCATE"
.LASF553:
	.string	"chrono_stop"
.LASF442:
	.string	"_ZSt9nearbyinte"
.LASF318:
	.string	"_ZSt4fabse"
.LASF319:
	.string	"_ZSt4fabsf"
.LASF6:
	.string	"signed char"
.LASF229:
	.string	"_SC_LEVEL1_DCACHE_LINESIZE"
.LASF441:
	.string	"nearbyint"
.LASF304:
	.string	"_ZSt5log10e"
.LASF273:
	.string	"_ZSt4atane"
.LASF274:
	.string	"_ZSt4atanf"
.LASF328:
	.string	"_ZSt10fpclassifyd"
.LASF327:
	.string	"_ZSt10fpclassifye"
.LASF329:
	.string	"_ZSt10fpclassifyf"
.LASF503:
	.string	"system"
.LASF334:
	.string	"isinf"
.LASF430:
	.string	"_ZSt4log2e"
.LASF431:
	.string	"_ZSt4log2f"
.LASF570:
	.string	"pthread_barrier_init"
.LASF221:
	.string	"_SC_TRACE_EVENT_FILTER"
.LASF159:
	.string	"_SC_NL_LANGMAX"
.LASF266:
	.string	"acos"
.LASF217:
	.string	"_SC_V6_LP64_OFF64"
.LASF392:
	.string	"_ZSt4erfce"
.LASF393:
	.string	"_ZSt4erfcf"
.LASF160:
	.string	"_SC_NL_MSGMAX"
.LASF4:
	.string	"unsigned char"
.LASF514:
	.string	"double_t"
.LASF103:
	.string	"_SC_PII_OSI_CLTS"
.LASF307:
	.string	"_ZSt4modfePe"
.LASF282:
	.string	"_ZSt3tane"
.LASF283:
	.string	"_ZSt3tanf"
.LASF362:
	.string	"islessequal"
.LASF344:
	.string	"_ZSt8isnormald"
.LASF343:
	.string	"_ZSt8isnormale"
.LASF225:
	.string	"_SC_LEVEL1_ICACHE_ASSOC"
.LASF387:
	.string	"_ZSt8copysignee"
.LASF323:
	.string	"fmod"
.LASF181:
	.string	"_SC_DEVICE_SPECIFIC_R"
.LASF482:
	.string	"7lldiv_t"
.LASF148:
	.string	"_SC_NZERO"
.LASF35:
	.string	"PTHREAD_RWLOCK_PREFER_WRITER_NP"
.LASF137:
	.string	"_SC_XOPEN_XPG2"
.LASF138:
	.string	"_SC_XOPEN_XPG3"
.LASF139:
	.string	"_SC_XOPEN_XPG4"
.LASF156:
	.string	"_SC_ULONG_MAX"
.LASF11:
	.string	"__syscall_slong_t"
.LASF132:
	.string	"_SC_XOPEN_ENH_I18N"
.LASF435:
	.string	"lrint"
.LASF284:
	.string	"cosh"
.LASF557:
	.string	"chrono_gettotal"
.LASF144:
	.string	"_SC_INT_MIN"
.LASF12:
	.string	"char"
.LASF136:
	.string	"_SC_2_UPE"
.LASF492:
	.string	"ldiv"
.LASF584:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF68:
	.string	"_SC_PAGESIZE"
.LASF187:
	.string	"_SC_FILE_SYSTEM"
.LASF396:
	.string	"_ZSt4exp2f"
.LASF326:
	.string	"fpclassify"
.LASF288:
	.string	"_ZSt4sinhe"
.LASF31:
	.string	"PTHREAD_MUTEX_STALLED_NP"
.LASF350:
	.string	"isgreater"
.LASF84:
	.string	"_SC_2_VERSION"
.LASF439:
	.string	"_ZSt6lrounde"
.LASF440:
	.string	"_ZSt6lroundf"
.LASF545:
	.string	"_Z4plusff"
.LASF303:
	.string	"log10"
.LASF562:
	.string	"_Z12chrono_resetP13chronometer_t"
.LASF287:
	.string	"sinh"
.LASF82:
	.string	"_SC_RE_DUP_MAX"
.LASF543:
	.string	"plus"
.LASF479:
	.string	"5div_t"
.LASF234:
	.string	"_SC_LEVEL3_CACHE_ASSOC"
.LASF87:
	.string	"_SC_2_FORT_DEV"
.LASF142:
	.string	"_SC_CHAR_MIN"
.LASF336:
	.string	"_ZSt5isinfd"
.LASF335:
	.string	"_ZSt5isinfe"
.LASF337:
	.string	"_ZSt5isinff"
.LASF366:
	.string	"islessgreater"
.LASF560:
	.string	"_Z12chrono_startP13chronometer_t"
.LASF270:
	.string	"_ZSt4asine"
.LASF271:
	.string	"_ZSt4asinf"
.LASF99:
	.string	"_SC_IOV_MAX"
.LASF493:
	.string	"mblen"
.LASF275:
	.string	"atan2"
.LASF178:
	.string	"_SC_THREAD_CPUTIME"
.LASF426:
	.string	"log1p"
.LASF201:
	.string	"_SC_SYSTEM_DATABASE"
.LASF101:
	.string	"_SC_PII_INTERNET_DGRAM"
.LASF530:
	.string	"nTotalElements"
.LASF368:
	.string	"_ZSt13islessgreaterdd"
.LASF186:
	.string	"_SC_FILE_LOCKING"
.LASF388:
	.string	"_ZSt8copysignff"
.LASF398:
	.string	"_ZSt5expm1e"
.LASF399:
	.string	"_ZSt5expm1f"
.LASF151:
	.string	"_SC_SCHAR_MIN"
.LASF280:
	.string	"_ZSt3sine"
.LASF281:
	.string	"_ZSt3sinf"
.LASF380:
	.string	"atanh"
.LASF494:
	.string	"mbstowcs"
.LASF463:
	.string	"_ZSt7scalblnel"
.LASF98:
	.string	"_SC_UIO_MAXIOV"
.LASF563:
	.string	"printf"
.LASF34:
	.string	"PTHREAD_RWLOCK_PREFER_READER_NP"
.LASF502:
	.string	"strtoul"
.LASF293:
	.string	"_ZSt3expe"
.LASF294:
	.string	"_ZSt3expf"
.LASF412:
	.string	"_ZSt5hypotee"
.LASF67:
	.string	"_SC_VERSION"
.LASF469:
	.string	"_ZSt6tgammae"
.LASF367:
	.string	"_ZSt13islessgreateree"
.LASF468:
	.string	"tgamma"
.LASF27:
	.string	"PTHREAD_MUTEX_ERRORCHECK"
.LASF424:
	.string	"_ZSt7llrounde"
.LASF425:
	.string	"_ZSt7llroundf"
.LASF311:
	.string	"sqrt"
.LASF193:
	.string	"_SC_SPIN_LOCKS"
.LASF448:
	.string	"_ZSt10nexttowardee"
.LASF464:
	.string	"_ZSt7scalblnfl"
.LASF352:
	.string	"_ZSt9isgreaterdd"
.LASF227:
	.string	"_SC_LEVEL1_DCACHE_SIZE"
.LASF541:
	.string	"myPartialSum"
.LASF520:
	.string	"13chronometer_t"
.LASF320:
	.string	"floor"
.LASF429:
	.string	"log2"
.LASF240:
	.string	"_SC_RAW_SOCKETS"
.LASF106:
	.string	"_SC_THREADS"
.LASF107:
	.string	"_SC_THREAD_SAFE_FUNCTIONS"
.LASF516:
	.string	"F_OWNER_TID"
.LASF146:
	.string	"_SC_WORD_BIT"
.LASF194:
	.string	"_SC_REGEXP"
.LASF433:
	.string	"_ZSt4logbe"
.LASF434:
	.string	"_ZSt4logbf"
.LASF50:
	.string	"_SC_ASYNCHRONOUS_IO"
.LASF83:
	.string	"_SC_CHARCLASS_NAME_MAX"
.LASF369:
	.string	"_ZSt13islessgreaterff"
.LASF296:
	.string	"_ZSt5frexpePi"
.LASF228:
	.string	"_SC_LEVEL1_DCACHE_ASSOC"
.LASF317:
	.string	"fabs"
.LASF235:
	.string	"_SC_LEVEL3_CACHE_LINESIZE"
.LASF114:
	.string	"_SC_THREAD_STACK_MIN"
.LASF491:
	.string	"getenv"
.LASF432:
	.string	"logb"
.LASF2:
	.string	"long unsigned int"
.LASF130:
	.string	"_SC_XOPEN_UNIX"
.LASF483:
	.string	"lldiv_t"
.LASF351:
	.string	"_ZSt9isgreateree"
.LASF16:
	.string	"pthread_t"
.LASF163:
	.string	"_SC_NL_TEXTMAX"
.LASF100:
	.string	"_SC_PII_INTERNET_STREAM"
.LASF85:
	.string	"_SC_2_C_BIND"
.LASF216:
	.string	"_SC_V6_ILP32_OFFBIG"
.LASF384:
	.string	"_ZSt4cbrte"
.LASF385:
	.string	"_ZSt4cbrtf"
.LASF480:
	.string	"6ldiv_t"
.LASF242:
	.string	"_SC_V7_ILP32_OFFBIG"
.LASF308:
	.string	"_ZSt4modffPf"
.LASF59:
	.string	"_SC_SEMAPHORES"
.LASF236:
	.string	"_SC_LEVEL4_CACHE_SIZE"
.LASF460:
	.string	"_ZSt5rounde"
.LASF461:
	.string	"_ZSt5roundf"
.LASF566:
	.string	"char32_t"
.LASF391:
	.string	"erfc"
.LASF189:
	.string	"_SC_MULTI_PROCESS"
.LASF123:
	.string	"_SC_NPROCESSORS_ONLN"
.LASF353:
	.string	"_ZSt9isgreaterff"
.LASF18:
	.string	"__size"
.LASF289:
	.string	"_ZSt4sinhf"
.LASF470:
	.string	"_ZSt6tgammaf"
.LASF475:
	.string	"__float128"
.LASF205:
	.string	"_SC_USER_GROUPS"
.LASF533:
	.string	"argc"
.LASF90:
	.string	"_SC_2_LOCALEDEF"
.LASF81:
	.string	"_SC_LINE_MAX"
.LASF124:
	.string	"_SC_PHYS_PAGES"
.LASF169:
	.string	"_SC_XOPEN_REALTIME"
.LASF527:
	.string	"my_thread_id"
.LASF534:
	.string	"argv"
.LASF197:
	.string	"_SC_SIGNALS"
.LASF188:
	.string	"_SC_MONOTONIC_CLOCK"
.LASF340:
	.string	"_ZSt5isnand"
.LASF69:
	.string	"_SC_RTSIG_MAX"
.LASF341:
	.string	"_ZSt5isnanf"
.LASF449:
	.string	"_ZSt10nexttowardfe"
.LASF185:
	.string	"_SC_FILE_ATTRIBUTES"
.LASF206:
	.string	"_SC_USER_GROUPS_R"
.LASF129:
	.string	"_SC_XOPEN_XCU_VERSION"
.LASF21:
	.string	"PTHREAD_MUTEX_TIMED_NP"
.LASF576:
	.string	"__stack_chk_fail"
.LASF472:
	.string	"_ZSt5trunce"
.LASF92:
	.string	"_SC_PII_XTI"
.LASF170:
	.string	"_SC_XOPEN_REALTIME_THREADS"
.LASF17:
	.string	"long long int"
.LASF145:
	.string	"_SC_LONG_BIT"
.LASF165:
	.string	"_SC_XBS5_ILP32_OFFBIG"
.LASF509:
	.string	"strtoull"
.LASF262:
	.string	"__is_integer<long double>"
.LASF574:
	.string	"pthread_barrier_destroy"
.LASF0:
	.string	"double"
.LASF496:
	.string	"mbtowc"
.LASF538:
	.string	"nElements"
.LASF360:
	.string	"_ZSt6islessdd"
.LASF312:
	.string	"_ZSt4sqrte"
.LASF154:
	.string	"_SC_UCHAR_MAX"
.LASF587:
	.string	"parallelReductionTime"
.LASF184:
	.string	"_SC_PIPE"
.LASF204:
	.string	"_SC_TYPED_MEMORY_OBJECTS"
.LASF577:
	.string	"__builtin_puts"
.LASF110:
	.string	"_SC_LOGIN_NAME_MAX"
.LASF536:
	.string	"total_time_in_seconds"
.LASF459:
	.string	"round"
.LASF113:
	.string	"_SC_THREAD_KEYS_MAX"
.LASF171:
	.string	"_SC_ADVISORY_INFO"
.LASF264:
	.string	"__is_integer<double>"
.LASF521:
	.string	"xadd_time1"
.LASF522:
	.string	"xadd_time2"
.LASF581:
	.string	"17pthread_barrier_t"
.LASF3:
	.string	"unsigned int"
.LASF423:
	.string	"llround"
.LASF579:
	.string	"reduceSumPth.c"
.LASF370:
	.string	"isunordered"
.LASF528:
	.string	"partialSum"
.LASF356:
	.string	"_ZSt14isgreaterequaldd"
.LASF78:
	.string	"_SC_COLL_WEIGHTS_MAX"
.LASF104:
	.string	"_SC_PII_OSI_M"
.LASF86:
	.string	"_SC_2_C_DEV"
.LASF504:
	.string	"wcstombs"
.LASF202:
	.string	"_SC_SYSTEM_DATABASE_R"
.LASF427:
	.string	"_ZSt5log1pe"
.LASF453:
	.string	"remquo"
.LASF246:
	.string	"_SC_TRACE_EVENT_NAME_MAX"
.LASF157:
	.string	"_SC_USHRT_MAX"
.LASF454:
	.string	"_ZSt6remquoeePi"
.LASF239:
	.string	"_SC_IPV6"
.LASF219:
	.string	"_SC_HOST_NAME_MAX"
.LASF77:
	.string	"_SC_BC_STRING_MAX"
.LASF118:
	.string	"_SC_THREAD_PRIORITY_SCHEDULING"
.LASF297:
	.string	"_ZSt5frexpfPi"
.LASF381:
	.string	"_ZSt5atanhe"
.LASF382:
	.string	"_ZSt5atanhf"
.LASF267:
	.string	"_ZSt4acose"
.LASF268:
	.string	"_ZSt4acosf"
.LASF321:
	.string	"_ZSt5floore"
.LASF539:
	.string	"first"
.LASF96:
	.string	"_SC_POLL"
.LASF529:
	.string	"nThreads"
.LASF383:
	.string	"cbrt"
.LASF347:
	.string	"_ZSt7signbite"
.LASF277:
	.string	"_ZSt5atan2ff"
.LASF89:
	.string	"_SC_2_SW_DEV"
.LASF583:
	.string	"__gnu_cxx"
.LASF47:
	.string	"_SC_REALTIME_SIGNALS"
.LASF354:
	.string	"isgreaterequal"
.LASF462:
	.string	"scalbln"
.LASF515:
	.string	"bool"
.LASF278:
	.string	"_ZSt3cose"
.LASF279:
	.string	"_ZSt3cosf"
.LASF474:
	.string	"__unknown__"
.LASF167:
	.string	"_SC_XBS5_LPBIG_OFFBIG"
.LASF208:
	.string	"_SC_2_PBS_ACCOUNTING"
.LASF112:
	.string	"_SC_THREAD_DESTRUCTOR_ITERATIONS"
.LASF498:
	.string	"qsort"
.LASF223:
	.string	"_SC_TRACE_LOG"
.LASF476:
	.string	"long double"
.LASF513:
	.string	"float_t"
.LASF55:
	.string	"_SC_MEMLOCK"
.LASF95:
	.string	"_SC_PII_OSI"
.LASF64:
	.string	"_SC_DELAYTIMER_MAX"
.LASF88:
	.string	"_SC_2_FORT_RUN"
.LASF243:
	.string	"_SC_V7_LP64_OFF64"
.LASF122:
	.string	"_SC_NPROCESSORS_CONF"
.LASF364:
	.string	"_ZSt11islessequaldd"
.LASF152:
	.string	"_SC_SHRT_MAX"
.LASF62:
	.string	"_SC_AIO_MAX"
.LASF172:
	.string	"_SC_BARRIERS"
.LASF395:
	.string	"_ZSt4exp2e"
.LASF195:
	.string	"_SC_REGEX_VERSION"
.LASF232:
	.string	"_SC_LEVEL2_CACHE_LINESIZE"
.LASF37:
	.string	"PTHREAD_RWLOCK_DEFAULT_NP"
.LASF481:
	.string	"ldiv_t"
.LASF572:
	.string	"pthread_barrier_wait"
.LASF261:
	.string	"timespec"
.LASF60:
	.string	"_SC_SHARED_MEMORY_OBJECTS"
.LASF518:
	.string	"F_OWNER_PGRP"
.LASF272:
	.string	"atan"
.LASF402:
	.string	"_ZSt4fdimff"
.LASF490:
	.string	"bsearch"
.LASF413:
	.string	"_ZSt5hypotff"
.LASF22:
	.string	"PTHREAD_MUTEX_RECURSIVE_NP"
.LASF363:
	.string	"_ZSt11islessequalee"
.LASF552:
	.string	"chrono_reportTime"
.LASF166:
	.string	"_SC_XBS5_LP64_OFF64"
.LASF15:
	.string	"long long unsigned int"
.LASF554:
	.string	"_Z17chrono_reportTimeP13chronometer_tPc"
.LASF244:
	.string	"_SC_V7_LPBIG_OFFBIG"
.LASF332:
	.string	"_ZSt8isfinited"
.LASF331:
	.string	"_ZSt8isfinitee"
.LASF333:
	.string	"_ZSt8isfinitef"
.LASF298:
	.string	"ldexp"
.LASF158:
	.string	"_SC_NL_ARGMAX"
.LASF558:
	.string	"_Z15chrono_gettotalP13chronometer_t"
.LASF295:
	.string	"frexp"
.LASF190:
	.string	"_SC_SINGLE_PROCESS"
.LASF199:
	.string	"_SC_SPORADIC_SERVER"
.LASF238:
	.string	"_SC_LEVEL4_CACHE_LINESIZE"
.LASF397:
	.string	"expm1"
.LASF444:
	.string	"nextafter"
.LASF125:
	.string	"_SC_AVPHYS_PAGES"
.LASF133:
	.string	"_SC_XOPEN_SHM"
.LASF200:
	.string	"_SC_THREAD_SPORADIC_SERVER"
.LASF32:
	.string	"PTHREAD_MUTEX_ROBUST"
.LASF365:
	.string	"_ZSt11islessequalff"
.LASF386:
	.string	"copysign"
.LASF245:
	.string	"_SC_SS_REPL_MAX"
.LASF161:
	.string	"_SC_NL_NMAX"
.LASF269:
	.string	"asin"
.LASF473:
	.string	"__cxx11"
.LASF10:
	.string	"__time_t"
.LASF531:
	.string	"InputVector"
.LASF260:
	.string	"_ZSt3divll"
.LASF471:
	.string	"trunc"
.LASF477:
	.string	"quot"
.LASF36:
	.string	"PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP"
.LASF374:
	.string	"acosh"
.LASF210:
	.string	"_SC_2_PBS_MESSAGE"
.LASF523:
	.string	"xtotal_ns"
.LASF70:
	.string	"_SC_SEM_NSEMS_MAX"
.LASF532:
	.string	"myBarrier"
.LASF105:
	.string	"_SC_T_IOV_MAX"
.LASF555:
	.string	"_Z11chrono_stopP13chronometer_t"
.LASF51:
	.string	"_SC_PRIORITIZED_IO"
.LASF512:
	.string	"__int128"
.LASF19:
	.string	"__align"
.LASF578:
	.string	"GNU C++14 10.3.0 -mtune=generic -march=x86-64 -g -O6 -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1:
	.string	"float"
.LASF215:
	.string	"_SC_V6_ILP32_OFF32"
.LASF519:
	.string	"F_OWNER_GID"
.LASF43:
	.string	"_SC_STREAM_MAX"
.LASF44:
	.string	"_SC_TZNAME_MAX"
.LASF214:
	.string	"_SC_2_PBS_CHECKPOINT"
.LASF198:
	.string	"_SC_SPAWN"
.LASF56:
	.string	"_SC_MEMLOCK_RANGE"
.LASF76:
	.string	"_SC_BC_SCALE_MAX"
.LASF511:
	.string	"strtold"
.LASF248:
	.string	"_SC_TRACE_SYS_MAX"
.LASF212:
	.string	"_SC_SYMLOOP_MAX"
.LASF302:
	.string	"_ZSt3logf"
.LASF345:
	.string	"_ZSt8isnormalf"
.LASF134:
	.string	"_SC_2_CHAR_TERM"
.LASF196:
	.string	"_SC_SHELL"
.LASF182:
	.string	"_SC_FD_MGMT"
.LASF456:
	.string	"rint"
.LASF23:
	.string	"PTHREAD_MUTEX_ERRORCHECK_NP"
.LASF338:
	.string	"isnan"
.LASF580:
	.string	"/home/parallel22/aa-paralela23/threads/parallel-reduce-with-pthreads/ninja"
.LASF131:
	.string	"_SC_XOPEN_CRYPT"
.LASF226:
	.string	"_SC_LEVEL1_ICACHE_LINESIZE"
.LASF175:
	.string	"_SC_C_LANG_SUPPORT_R"
.LASF378:
	.string	"_ZSt5asinhe"
.LASF379:
	.string	"_ZSt5asinhf"
.LASF285:
	.string	"_ZSt4coshe"
.LASF249:
	.string	"_SC_TRACE_USER_EVENT_MAX"
.LASF588:
	.string	"_Z24chrono_report_TimeInLoopP13chronometer_tPci"
.LASF73:
	.string	"_SC_TIMER_MAX"
.LASF25:
	.string	"PTHREAD_MUTEX_NORMAL"
.LASF510:
	.string	"strtof"
.LASF207:
	.string	"_SC_2_PBS"
.LASF177:
	.string	"_SC_CPUTIME"
.LASF501:
	.string	"strtol"
.LASF586:
	.string	"__pid_type"
.LASF438:
	.string	"lround"
.LASF24:
	.string	"PTHREAD_MUTEX_ADAPTIVE_NP"
.LASF7:
	.string	"short int"
.LASF465:
	.string	"scalbn"
.LASF176:
	.string	"_SC_CLOCK_SELECTION"
.LASF164:
	.string	"_SC_XBS5_ILP32_OFF32"
.LASF389:
	.string	"_ZSt3erfe"
.LASF306:
	.string	"modf"
.LASF117:
	.string	"_SC_THREAD_ATTR_STACKSIZE"
.LASF330:
	.string	"isfinite"
.LASF191:
	.string	"_SC_NETWORKING"
.LASF29:
	.string	"PTHREAD_MUTEX_FAST_NP"
.LASF451:
	.string	"_ZSt9remainderee"
.LASF14:
	.string	"tv_nsec"
.LASF126:
	.string	"_SC_ATEXIT_MAX"
.LASF485:
	.string	"atexit"
.LASF359:
	.string	"_ZSt6islessee"
.LASF339:
	.string	"_ZSt5isnane"
.LASF458:
	.string	"_ZSt4rintf"
.LASF102:
	.string	"_SC_PII_OSI_COTS"
.LASF542:
	.string	"reducePartialSum"
.LASF544:
	.string	"_Z16reducePartialSumPv"
.LASF66:
	.string	"_SC_MQ_PRIO_MAX"
.LASF71:
	.string	"_SC_SEM_VALUE_MAX"
.LASF174:
	.string	"_SC_C_LANG_SUPPORT"
.LASF49:
	.string	"_SC_TIMERS"
.LASF127:
	.string	"_SC_PASS_MAX"
.LASF420:
	.string	"llrint"
.LASF53:
	.string	"_SC_FSYNC"
.LASF457:
	.string	"_ZSt4rinte"
.LASF411:
	.string	"hypot"
.LASF355:
	.string	"_ZSt14isgreaterequalee"
.LASF97:
	.string	"_SC_SELECT"
.LASF322:
	.string	"_ZSt5floorf"
.LASF28:
	.string	"PTHREAD_MUTEX_DEFAULT"
.LASF111:
	.string	"_SC_TTY_NAME_MAX"
.LASF526:
	.string	"Thread"
.LASF499:
	.string	"srand"
.LASF361:
	.string	"_ZSt6islessff"
.LASF547:
	.string	"__nptr"
.LASF315:
	.string	"_ZSt4ceile"
.LASF316:
	.string	"_ZSt4ceilf"
.LASF416:
	.string	"_ZSt5ilogbf"
.LASF309:
	.string	"_ZSt3powee"
.LASF404:
	.string	"_ZSt3fmafff"
.LASF573:
	.string	"pthread_join"
.LASF415:
	.string	"_ZSt5ilogbe"
.LASF357:
	.string	"_ZSt14isgreaterequalff"
.LASF58:
	.string	"_SC_MESSAGE_PASSING"
.LASF231:
	.string	"_SC_LEVEL2_CACHE_ASSOC"
.LASF74:
	.string	"_SC_BC_BASE_MAX"
.LASF301:
	.string	"_ZSt3loge"
.LASF230:
	.string	"_SC_LEVEL2_CACHE_SIZE"
.LASF525:
	.string	"chronometer_t"
.LASF80:
	.string	"_SC_EXPR_NEST_MAX"
.LASF52:
	.string	"_SC_SYNCHRONIZED_IO"
.LASF250:
	.string	"_SC_XOPEN_STREAMS"
.LASF310:
	.string	"_ZSt3powff"
.LASF153:
	.string	"_SC_SHRT_MIN"
.LASF417:
	.string	"lgamma"
.LASF358:
	.string	"isless"
.LASF211:
	.string	"_SC_2_PBS_TRACK"
.LASF299:
	.string	"_ZSt5ldexpei"
.LASF41:
	.string	"_SC_NGROUPS_MAX"
.LASF478:
	.string	"div_t"
.LASF218:
	.string	"_SC_V6_LPBIG_OFFBIG"
.LASF565:
	.string	"char16_t"
.LASF452:
	.string	"_ZSt9remainderff"
.LASF5:
	.string	"short unsigned int"
.LASF224:
	.string	"_SC_LEVEL1_ICACHE_SIZE"
.LASF314:
	.string	"ceil"
.LASF79:
	.string	"_SC_EQUIV_CLASS_MAX"
.LASF567:
	.string	"__int128 unsigned"
.LASF173:
	.string	"_SC_BASE"
.LASF48:
	.string	"_SC_PRIORITY_SCHEDULING"
.LASF421:
	.string	"_ZSt6llrinte"
.LASF422:
	.string	"_ZSt6llrintf"
.LASF561:
	.string	"chrono_reset"
.LASF300:
	.string	"_ZSt5ldexpfi"
.LASF390:
	.string	"_ZSt3erff"
.LASF149:
	.string	"_SC_SSIZE_MAX"
.LASF406:
	.string	"_ZSt4fmaxee"
.LASF109:
	.string	"_SC_GETPW_R_SIZE_MAX"
.LASF168:
	.string	"_SC_XOPEN_LEGACY"
.LASF394:
	.string	"exp2"
.LASF119:
	.string	"_SC_THREAD_PRIO_INHERIT"
.LASF582:
	.string	"_ZSt5truncf"
.LASF455:
	.string	"_ZSt6remquoffPi"
.LASF571:
	.string	"pthread_create"
.LASF220:
	.string	"_SC_TRACE"
.LASF450:
	.string	"remainder"
.LASF551:
	.string	"loop_count"
.LASF162:
	.string	"_SC_NL_SETMAX"
.LASF13:
	.string	"tv_sec"
.LASF497:
	.string	"quick_exit"
.LASF409:
	.string	"_ZSt4fminee"
.LASF495:
	.string	"wchar_t"
.LASF276:
	.string	"_ZSt5atan2ee"
.LASF26:
	.string	"PTHREAD_MUTEX_RECURSIVE"
.LASF407:
	.string	"_ZSt4fmaxff"
.LASF540:
	.string	"last"
.LASF342:
	.string	"isnormal"
.LASF375:
	.string	"_ZSt5acoshe"
.LASF376:
	.string	"_ZSt5acoshf"
.LASF20:
	.string	"pthread_barrier_t"
	.ident	"GCC: (Ubuntu 10.3.0-1ubuntu1~20.04) 10.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
