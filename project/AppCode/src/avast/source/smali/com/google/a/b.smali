.class public abstract Lcom/google/a/b;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/a/ab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method protected static a(Lcom/google/a/aa;)Lcom/google/a/al;
    .locals 1
    .parameter

    .prologue
    .line 298
    new-instance v0, Lcom/google/a/al;

    invoke-direct {v0, p0}, Lcom/google/a/al;-><init>(Lcom/google/a/aa;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/a/d;)Lcom/google/a/b;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/google/a/g;->a()Lcom/google/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/b;->b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/google/a/b;
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/a/d;->a(Ljava/io/InputStream;)Lcom/google/a/d;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/a/b;->a(Lcom/google/a/d;)Lcom/google/a/b;

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/d;->a(I)V

    .line 204
    return-object p0
.end method

.method public a([B)Lcom/google/a/b;
    .locals 2
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/a/b;->a([BII)Lcom/google/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a([BII)Lcom/google/a/b;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/a/d;->a([BII)Lcom/google/a/d;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/a/b;->a(Lcom/google/a/d;)Lcom/google/a/b;

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/d;->a(I)V
    :try_end_0
    .catch Lcom/google/a/x; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    return-object p0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    throw v0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/google/a/b;->b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/a/b;->i()Lcom/google/a/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract i()Lcom/google/a/b;
.end method
