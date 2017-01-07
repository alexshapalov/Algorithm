#include <stdio.h>

unsigned int multiply(unsigned int x, unsigned int y)
{
    if (x == 1)
    {
        /* Terminating case */
        return y;
    }
    else if (x > 1)
    {
        /* Recursive step */
        return y + multiply(x-1, y);
    }

    /* Catch scenario when x is zero */
    return 0;
}

int main() {
    printf("3 times 5 is %d", multiply(3, 5));
    return 0;
}


// ➜  Clang git:(master) ✗ otool -tv hello
// hello:
// (__TEXT,__text) section
// _main:
// 0000000100000f30        pushq   %rbp
// 0000000100000f31        movq    %rsp, %rbp
// 0000000100000f34        subq    $0x10, %rsp
// 0000000100000f38        movl    $0x0, -0x4(%rbp)
// 0000000100000f3f        movl    $0x5, -0x8(%rbp)
// 0000000100000f46        movl    $0x1, -0xc(%rbp)
// 0000000100000f4d        movl    -0xc(%rbp), %eax
// 0000000100000f50        cmpl    -0x8(%rbp), %eax
// 0000000100000f53        jg      0x100000f78
// 0000000100000f59        leaq    0x42(%rip), %rdi
//
// 0000000100000f60        movb    $0x0, %al
// 0000000100000f62        callq   0x100000f80
// 0000000100000f67        movl    %eax, -0x10(%rbp)
// 0000000100000f6a        movl    -0xc(%rbp), %eax
// 0000000100000f6d        addl    $0x1, %eax
// 0000000100000f70        movl    %eax, -0xc(%rbp)
// 0000000100000f73        jmp     0x100000f4d
// 0000000100000f78        xorl    %eax, %eax
// 0000000100000f7a        addq    $0x10, %rsp
// 0000000100000f7e        popq    %rbp
// 0000000100000f7f        retq
