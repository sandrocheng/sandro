.class public final Lcom/keniu/security/a/n;
.super Ljava/lang/Object;
.source "ReadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/io/InputStream;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public static final a(Lcom/keniu/security/a/l;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x1c0001

    .line 34
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    move-result v0

    .line 35
    if-eq v0, v4, :cond_0

    .line 36
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected chunk of type 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", read 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    return-void
.end method

.method public static final a(Ljava/io/InputStream;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    .line 26
    if-eq v0, p1, :cond_0

    .line 27
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected chunk of type 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", read 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    return-void
.end method

.method private static b(Ljava/io/InputStream;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public static final b(Ljava/io/InputStream;I)[I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    new-array v0, p1, [I

    .line 44
    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_0

    .line 45
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v2

    aput v2, v0, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method public static final c(Ljava/io/InputStream;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    move v1, v0

    .line 70
    :goto_0
    if-eq v0, p1, :cond_1

    .line 71
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 72
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 73
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 75
    :cond_0
    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return v1
.end method

.method private static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/keniu/security/a/n;->b(Ljava/io/InputStream;)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/a/n;->b(Ljava/io/InputStream;)I

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
