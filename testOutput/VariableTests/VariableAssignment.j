.class public VariableAssignment
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

ldc 2
istore 1
ldc 1
istore 2
ldc "test"
astore 3
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream/println(I)V
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 2
invokevirtual java/io/PrintStream/println(Z)V
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 3
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

return
.end method
