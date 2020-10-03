.class public Conditions_b
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

ldc 8
istore 1
iload 1
ldc 6
if_icmplt true0
false0:
ldc 0
goto end0
true0:
ldc 1
end0:
ifne ifLabel1
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "elseStatement Executed"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
goto end1
ifLabel1:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "ifStatement Executed"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
end1:

return
.end method
