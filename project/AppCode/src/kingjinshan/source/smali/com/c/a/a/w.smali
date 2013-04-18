.class public final Lcom/c/a/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/c/a/a/x;

.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public varargs constructor <init>(Lcom/c/a/a/x;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Lcom/c/a/a/w;->a:Lcom/c/a/a/x;

    .line 498
    iput-object p2, p0, Lcom/c/a/a/w;->b:[Ljava/lang/Object;

    .line 499
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 13
    const-string v0, ""

    .line 14
    new-instance v1, Lcom/c/a/a/t;

    invoke-direct {v1}, Lcom/c/a/a/t;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object v3, v0

    move v0, v9

    .line 16
    :goto_0
    array-length v4, v2

    div-int/lit8 v4, v4, 0x10

    if-ge v0, v4, :cond_1

    .line 17
    new-array v4, v10, [B

    move v5, v9

    .line 18
    :goto_1
    const/4 v6, 0x7

    if-gt v5, v6, :cond_0

    .line 19
    mul-int/lit8 v6, v0, 0x10

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    aget-byte v6, v2, v6

    const/16 v7, 0x41

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    .line 20
    mul-int/lit8 v7, v0, 0x10

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, v2, v7

    const/16 v8, 0x61

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    .line 21
    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 18
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v4}, Lcom/c/a/a/t;->a([B)J

    move-result-wide v4

    .line 24
    new-array v6, v10, [B

    .line 25
    invoke-virtual {v1, v4, v5}, Lcom/c/a/a/t;->a(J)J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lcom/c/a/a/t;->a(J[B)V

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 36
    const-string v0, ""

    .line 37
    new-instance v1, Lcom/c/a/a/t;

    invoke-direct {v1}, Lcom/c/a/a/t;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 40
    array-length v3, v2

    .line 41
    rem-int/lit8 v4, v3, 0x8

    sub-int v4, v11, v4

    rem-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v3

    .line 42
    new-array v5, v4, [B

    move v6, v10

    .line 43
    :goto_0
    if-ge v6, v4, :cond_1

    .line 44
    const/4 v7, 0x1

    sub-int v7, v3, v7

    if-gt v6, v7, :cond_0

    .line 45
    aget-byte v7, v2, v6

    aput-byte v7, v5, v6

    .line 43
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const/16 v7, 0x20

    aput-byte v7, v5, v6

    goto :goto_1

    :cond_1
    move-object v2, v0

    move v0, v10

    .line 50
    :goto_2
    div-int/lit8 v3, v4, 0x8

    if-ge v0, v3, :cond_4

    .line 51
    new-array v3, v11, [B

    move v6, v10

    .line 52
    :goto_3
    const/4 v7, 0x7

    if-gt v6, v7, :cond_2

    .line 53
    mul-int/lit8 v7, v0, 0x8

    add-int/2addr v7, v6

    aget-byte v7, v5, v7

    aput-byte v7, v3, v6

    .line 52
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 55
    :cond_2
    invoke-static {v3}, Lcom/c/a/a/t;->a([B)J

    move-result-wide v6

    .line 56
    new-array v3, v11, [B

    .line 57
    invoke-virtual {v1, v6, v7}, Lcom/c/a/a/t;->b(J)J

    move-result-wide v6

    invoke-static {v6, v7, v3}, Lcom/c/a/a/t;->a(J[B)V

    .line 58
    const/16 v6, 0x10

    new-array v6, v6, [B

    move v7, v10

    .line 59
    :goto_4
    if-ge v7, v11, :cond_3

    .line 60
    mul-int/lit8 v8, v7, 0x2

    aget-byte v9, v3, v7

    int-to-char v9, v9

    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x41

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 61
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v9, v3, v7

    int-to-char v9, v9

    and-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, 0x61

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 59
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 63
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 65
    :cond_4
    return-object v2
.end method
