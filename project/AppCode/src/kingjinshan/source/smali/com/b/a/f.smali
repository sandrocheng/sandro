.class final Lcom/b/a/f;
.super Ljava/io/FilterInputStream;
.source "AbstractMessageLite.java"


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 228
    iput p2, p0, Lcom/b/a/f;->a:I

    .line 229
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/b/a/f;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 238
    iget v0, p0, Lcom/b/a/f;->a:I

    if-gtz v0, :cond_1

    .line 239
    const/4 v0, -0x1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 242
    if-ltz v0, :cond_0

    .line 243
    iget v1, p0, Lcom/b/a/f;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/b/a/f;->a:I

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iget v0, p0, Lcom/b/a/f;->a:I

    if-gtz v0, :cond_1

    .line 252
    const/4 v0, -0x1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    iget v0, p0, Lcom/b/a/f;->a:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 255
    invoke-super {p0, p1, p2, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 256
    if-ltz v0, :cond_0

    .line 257
    iget v1, p0, Lcom/b/a/f;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/b/a/f;->a:I

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 4
    .parameter

    .prologue
    .line 264
    iget v0, p0, Lcom/b/a/f;->a:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 265
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 266
    iget v2, p0, Lcom/b/a/f;->a:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/b/a/f;->a:I

    .line 268
    :cond_0
    return-wide v0
.end method
