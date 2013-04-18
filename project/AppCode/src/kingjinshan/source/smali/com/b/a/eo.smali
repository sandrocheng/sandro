.class final Lcom/b/a/eo;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J


# instance fields
.field private b:Ljava/lang/String;

.field private c:[B


# direct methods
.method constructor <init>(Lcom/b/a/ex;)V
    .locals 1
    .parameter

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/eo;->b:Ljava/lang/String;

    .line 691
    invoke-interface {p1}, Lcom/b/a/ex;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/eo;->c:[B

    .line 692
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/b/a/eo;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 703
    const-string v1, "newBuilder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 704
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ey;

    .line 706
    iget-object v1, p0, Lcom/b/a/eo;->c:[B

    invoke-interface {v0, v1}, Lcom/b/a/ey;->c([B)Lcom/b/a/ey;

    .line 707
    invoke-interface {v0}, Lcom/b/a/ey;->L()Lcom/b/a/ex;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    return-object v0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find proto buffer class"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 710
    :catch_1
    move-exception v0

    .line 711
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find newBuilder method"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 712
    :catch_2
    move-exception v0

    .line 713
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to call newBuilder method"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 714
    :catch_3
    move-exception v0

    .line 715
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error calling newBuilder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 716
    :catch_4
    move-exception v0

    .line 717
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to understand proto buffer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
