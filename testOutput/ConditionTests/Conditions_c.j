.class public Conditions_c
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
ldc 0
istore 2
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
iload 2
iconst_1
iadd
iconst_2
irem
ifne ifLabel2
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "elseStatement Executed"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
goto end2
ifLabel2:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "elseIfStatement Executed"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
end2:
goto end1
ifLabel1:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "ifStatement Executed"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
end1:

return
.end method
