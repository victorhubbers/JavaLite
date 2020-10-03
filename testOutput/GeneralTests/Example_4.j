.class public Example_4
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

getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "How old are you?"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextInt()I
istore 1
iload 1
ldc 18
if_icmpge true0
false0:
ldc 0
goto end0
true0:
ldc 1
end0:
ifne ifLabel1
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "You are not old enough to buy alcohol."
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
goto end1
ifLabel1:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "You are old enough to buy alcohol."
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
end1:

return
.end method
