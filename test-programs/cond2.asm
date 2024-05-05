section .data
	int_format db "%ld",10,0


	global _main
	extern _printf
section .text


_start:	call _main
	mov rax, 60
	xor rdi, rdi
	syscall


_main:	push rbp
	mov rbp, rsp
	sub rsp, 304
	mov esi, 10
	mov [rbp-48], esi
	mov esi, 2
	mov [rbp-96], esi
	mov esi, 3
	mov [rbp-88], esi
	mov esi, [rbp-96]
	mov [rbp-32], esi
	mov edi, [rbp-88]
	mov eax, [rbp-32]
	imul eax, edi
	mov [rbp-32], eax
	mov esi, [rbp-48]
	mov [rbp-80], esi
	mov edi, [rbp-32]
	mov eax, [rbp-80]
	sub eax, edi
	mov [rbp-80], eax
	mov esi, 0
	mov [rbp-40], esi
	mov edi, [rbp-40]
	mov eax, [rbp-80]
	cmp eax, edi
	mov [rbp-80], eax
	jz lab1275
	jmp lab1277
lab1275:	mov esi, 4
	mov [rbp-16], esi
	mov esi, [rbp-16]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1277:	mov esi, 10
	mov [rbp-72], esi
	mov esi, 2
	mov [rbp-152], esi
	mov esi, 2
	mov [rbp-144], esi
	mov esi, [rbp-152]
	mov [rbp-136], esi
	mov edi, [rbp-144]
	mov eax, [rbp-136]
	add eax, edi
	mov [rbp-136], eax
	mov esi, [rbp-72]
	mov [rbp-128], esi
	mov edi, [rbp-136]
	mov eax, [rbp-128]
	imul eax, edi
	mov [rbp-128], eax
	mov esi, 0
	mov [rbp-104], esi
	mov edi, [rbp-104]
	mov eax, [rbp-128]
	cmp eax, edi
	mov [rbp-128], eax
	jz lab1283
	jmp lab1285
lab1283:	mov esi, 40
	mov [rbp-64], esi
	mov esi, [rbp-64]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
lab1285:	mov esi, 5
	mov [rbp-120], esi
	mov esi, [rbp-120]
	lea rdi, [rel int_format]
	mov eax, 0
	call _printf
	mov rax, 0
	jmp finish_up
finish_up:	add rsp, 304
	leave 
	ret 

