.class public final Lcom/keniu/security/a/l;
.super Ljava/lang/Object;
.source "IntReader.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/keniu/security/a/l;->a(Ljava/io/InputStream;)V

    .line 28
    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 31
    iput-object p1, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    .line 32
    iput-boolean v0, p0, Lcom/keniu/security/a/l;->b:Z

    .line 33
    iput v0, p0, Lcom/keniu/security/a/l;->c:I

    .line 34
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/keniu/security/a/l;->b:Z

    .line 57
    return-void
.end method

.method private a([III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    move v0, p3

    move v1, p2

    :goto_0
    if-lez v0, :cond_0

    .line 105
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/keniu/security/a/l;->b(I)I

    move-result v3

    aput v3, p1, v1

    .line 104
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 70
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :cond_1
    iget-boolean v0, p0, Lcom/keniu/security/a/l;->b:Z

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x1

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x8

    :goto_0
    if-ltz v0, :cond_3

    .line 76
    iget-object v2, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 77
    if-ne v2, v5, :cond_2

    .line 78
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 80
    :cond_2
    iget v3, p0, Lcom/keniu/security/a/l;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/keniu/security/a/l;->c:I

    .line 81
    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 75
    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_3
    move v0, v1

    .line 94
    :goto_1
    return v0

    .line 84
    :cond_4
    mul-int/lit8 v0, p1, 0x8

    move v2, v1

    .line 85
    :goto_2
    if-eq v1, v0, :cond_6

    .line 86
    iget-object v3, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 87
    if-ne v3, v5, :cond_5

    .line 88
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 90
    :cond_5
    iget v4, p0, Lcom/keniu/security/a/l;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/keniu/security/a/l;->c:I

    .line 91
    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 85
    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/keniu/security/a/l;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method private c(I)[B
    .locals 3
    .parameter

    .prologue
    .line 110
    new-array v0, p1, [B

    .line 111
    iget-object v1, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 112
    iget v2, p0, Lcom/keniu/security/a/l;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/keniu/security/a/l;->c:I

    .line 113
    if-eq v1, p1, :cond_0

    .line 114
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 116
    :cond_0
    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/keniu/security/a/l;->b:Z

    return v0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/keniu/security/a/l;->b(I)I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/keniu/security/a/l;->b(I)I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x4

    .line 120
    iget-object v0, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 124
    iget v2, p0, Lcom/keniu/security/a/l;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/a/l;->c:I

    .line 125
    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x4

    .line 131
    iget-object v0, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/a/l;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/keniu/security/a/l;->c:I

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method private i()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/keniu/security/a/l;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method private j()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/keniu/security/a/l;->c:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/keniu/security/a/l;->b(I)I

    move-result v0

    return v0
.end method

.method public final a(I)[I
    .locals 5
    .parameter

    .prologue
    .line 98
    new-array v0, p1, [I

    .line 99
    const/4 v1, 0x0

    move v2, v1

    move v1, p1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/keniu/security/a/l;->b(I)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v1, v1, -0x1

    move v2, v3

    goto :goto_0

    .line 100
    :cond_0
    return-object v0
.end method
