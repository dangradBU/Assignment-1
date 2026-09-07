# 0 "mystery.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "mystery.S"
    .section .note.GNU-stack
    .intel_syntax noprefix
    .global mystery
    .section .text

    # mystery(int a, int b)
    # a in edi
    # b in esi
    # return value in eax

    mystery:
        push rbp
        mov rbp, rsp

        mov eax, edi
        add eax, esi
        imul eax, edi
        sub eax, esi

        pop rbp
        ret
