.class public FunctionDeclaration_b
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

ldc 10
istore 1

return
.end method
.method public increment(Ljava/lang/String;I)I
.limit stack 99
.limit locals 99

getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
iload 2
ldc 1
iadd
ireturn
.end method
