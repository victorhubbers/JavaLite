.class public Example_3
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
ldc 100
istore 2
goto check0
begin0:
new Example_3
dup
invokenonvirtual Example_3/<init>()V
iload 1
invokevirtual Example_3/increment(I)I
istore 1
iload 1
ldc 50
if_icmpeq true1
false1:
ldc 0
goto end1
true1:
ldc 1
end1:
ifne ifLabel2
iload 1
ldc 100
if_icmpeq true3
false3:
ldc 0
goto end3
true3:
ldc 1
end3:
ifne ifLabel4
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream/println(I)V
goto end4
ifLabel4:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Yay - I'm done"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
end4:
goto end2
ifLabel2:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "The big five-O"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
end2:
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
