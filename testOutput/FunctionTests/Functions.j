.class public Functions
.super java/lang/Object

.method public <init>()V
.limit stack 1
aload_0
invokenonvirtual java/lang/Object/<init>()V
return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 99
.limit locals 99

ldc 0
istore 1
ldc 5
istore 2
goto check0
begin0:
new Functions
dup
invokenonvirtual Functions/<init>()V
iload 1
invokevirtual Functions/increment(I)I
istore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream/println(I)V
iinc 2 -1
check0:
iload 2
ifgt begin0

return
.end method
.method public increment(I)I
.limit stack 99
.limit locals 99

iload 1
ldc 1
iadd
ireturn
.end method
