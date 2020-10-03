.class public Comments
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

new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextLine()Ljava/lang/String;
astore 1
getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

return
.end method
