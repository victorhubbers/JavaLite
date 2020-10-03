.class public Conditions_d
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

ldc 1
istore 1
ldc 0
istore 2
iload 2
iload 1
iand
ifne ifLabel0
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "the AND operator works"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
goto end0
ifLabel0:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Wrong branch"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
end0:

return
.end method
