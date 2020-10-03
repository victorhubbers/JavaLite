.class public Scope_a
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

ldc 3
istore 1
iload 1
istore 2
goto check0
begin0:
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream/println(I)V
iinc 2 -1
check0:
iload 2
ifgt begin0

return
.end method
