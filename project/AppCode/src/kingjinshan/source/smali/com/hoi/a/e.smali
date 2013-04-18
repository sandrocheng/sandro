.class public final Lcom/hoi/a/e;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static b:[B = null

.field private static final c:I = 0x800


# instance fields
.field private final a:Lcom/hoi/a/b;

.field private d:Z

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/hoi/a/e;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hoi/a/e;-><init>(Ljava/io/InputStream;IZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x800

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    iput-boolean v2, p0, Lcom/hoi/a/e;->d:Z

    .line 64
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/hoi/a/e;->e:[B

    .line 65
    if-eqz p3, :cond_0

    .line 66
    new-instance v0, Lcom/hoi/a/d;

    invoke-direct {v0, p2, v1}, Lcom/hoi/a/d;-><init>(I[B)V

    iput-object v0, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    iget-object v1, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    invoke-virtual {v1, v3}, Lcom/hoi/a/b;->a(I)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/hoi/a/b;->a:[B

    .line 71
    iput v2, p0, Lcom/hoi/a/e;->f:I

    .line 72
    iput v2, p0, Lcom/hoi/a/e;->g:I

    .line 73
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/hoi/a/c;

    invoke-direct {v0, p2, v1}, Lcom/hoi/a/c;-><init>(I[B)V

    iput-object v0, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/hoi/a/e;->d:Z

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/hoi/a/e;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/hoi/a/e;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 149
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 150
    iput-boolean v2, p0, Lcom/hoi/a/e;->d:Z

    .line 151
    iget-object v0, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    sget-object v1, Lcom/hoi/a/e;->b:[B

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/hoi/a/b;->a([BIIZ)Z

    move-result v0

    .line 155
    :goto_1
    if-nez v0, :cond_2

    .line 156
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    iget-object v2, p0, Lcom/hoi/a/e;->e:[B

    invoke-virtual {v1, v2, v3, v0, v3}, Lcom/hoi/a/b;->a([BIIZ)Z

    move-result v0

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    iget v0, v0, Lcom/hoi/a/b;->b:I

    iput v0, p0, Lcom/hoi/a/e;->g:I

    .line 159
    iput v3, p0, Lcom/hoi/a/e;->f:I

    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/hoi/a/e;->g:I

    iget v1, p0, Lcom/hoi/a/e;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hoi/a/e;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hoi/a/e;->e:[B

    .line 94
    return-void
.end method

.method public final mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 116
    iget v0, p0, Lcom/hoi/a/e;->f:I

    iget v1, p0, Lcom/hoi/a/e;->g:I

    if-lt v0, v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/hoi/a/e;->a()V

    .line 119
    :cond_0
    iget v0, p0, Lcom/hoi/a/e;->f:I

    iget v1, p0, Lcom/hoi/a/e;->g:I

    if-lt v0, v1, :cond_1

    .line 120
    const/4 v0, -0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    iget-object v0, v0, Lcom/hoi/a/b;->a:[B

    iget v1, p0, Lcom/hoi/a/e;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hoi/a/e;->f:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/hoi/a/e;->f:I

    iget v1, p0, Lcom/hoi/a/e;->g:I

    if-lt v0, v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/hoi/a/e;->a()V

    .line 131
    :cond_0
    iget v0, p0, Lcom/hoi/a/e;->f:I

    iget v1, p0, Lcom/hoi/a/e;->g:I

    if-lt v0, v1, :cond_1

    .line 132
    const/4 v0, -0x1

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_1
    iget v0, p0, Lcom/hoi/a/e;->g:I

    iget v1, p0, Lcom/hoi/a/e;->f:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/hoi/a/e;->a:Lcom/hoi/a/b;

    iget-object v1, v1, Lcom/hoi/a/b;->a:[B

    iget v2, p0, Lcom/hoi/a/e;->f:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v1, p0, Lcom/hoi/a/e;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/hoi/a/e;->f:I

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final skip(J)J
    .locals 4
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/hoi/a/e;->f:I

    iget v1, p0, Lcom/hoi/a/e;->g:I

    if-lt v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/hoi/a/e;->a()V

    .line 106
    :cond_0
    iget v0, p0, Lcom/hoi/a/e;->f:I

    iget v1, p0, Lcom/hoi/a/e;->g:I

    if-lt v0, v1, :cond_1

    .line 107
    const-wide/16 v0, 0x0

    .line 111
    :goto_0
    return-wide v0

    .line 109
    :cond_1
    iget v0, p0, Lcom/hoi/a/e;->g:I

    iget v1, p0, Lcom/hoi/a/e;->f:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 110
    iget v2, p0, Lcom/hoi/a/e;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/hoi/a/e;->f:I

    goto :goto_0
.end method
