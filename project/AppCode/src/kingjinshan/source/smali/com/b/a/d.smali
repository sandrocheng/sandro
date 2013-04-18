.class public abstract Lcom/b/a/d;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/b/a/ex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/b/a/d;->b()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->a(I)I

    move-result v0

    .line 77
    invoke-static {p1, v0}, Lcom/b/a/n;->a(Ljava/io/OutputStream;I)Lcom/b/a/n;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/b/a/d;->a(Lcom/b/a/n;)V

    .line 80
    invoke-virtual {v0}, Lcom/b/a/n;->j()V

    .line 81
    return-void
.end method

.method public final b(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/b/a/d;->b()I

    move-result v0

    .line 85
    invoke-static {v0}, Lcom/b/a/n;->r(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/b/a/n;->a(I)I

    move-result v1

    .line 87
    invoke-static {p1, v1}, Lcom/b/a/n;->a(Ljava/io/OutputStream;I)Lcom/b/a/n;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Lcom/b/a/n;->q(I)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/b/a/d;->a(Lcom/b/a/n;)V

    .line 91
    invoke-virtual {v1}, Lcom/b/a/n;->j()V

    .line 92
    return-void
.end method

.method public final c()Lcom/b/a/i;
    .locals 3

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/d;->b()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/i;->b(I)Lcom/b/a/k;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/b/a/k;->b()Lcom/b/a/n;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/b/a/d;->a(Lcom/b/a/n;)V

    .line 52
    invoke-virtual {v0}, Lcom/b/a/k;->a()Lcom/b/a/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d()[B
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/d;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 63
    invoke-static {v0}, Lcom/b/a/n;->a([B)Lcom/b/a/n;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/b/a/d;->a(Lcom/b/a/n;)V

    .line 65
    invoke-virtual {v1}, Lcom/b/a/n;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
