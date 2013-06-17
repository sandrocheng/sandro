.class public final Landroid/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/a/a/e;->a(Ljava/io/InputStream;Z)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v1, p0, Landroid/a/a/e;->b:Z

    if-eqz v1, :cond_3

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_0
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroid/a/a/e;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v5, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    iget v3, p0, Landroid/a/a/e;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/a/a/e;->c:I

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, -0x8

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_3
    mul-int/lit8 v3, p1, 0x8

    move v1, v0

    :goto_1
    if-eq v1, v3, :cond_5

    iget-object v2, p0, Landroid/a/a/e;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v5, :cond_4

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    iget v4, p0, Landroid/a/a/e;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/a/a/e;->c:I

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x8

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_5
    return v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Landroid/a/a/e;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/a/a/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/a/a/e;->a(Ljava/io/InputStream;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/io/InputStream;Z)V
    .locals 1

    iput-object p1, p0, Landroid/a/a/e;->a:Ljava/io/InputStream;

    iput-boolean p2, p0, Landroid/a/a/e;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/a/a/e;->c:I

    return-void
.end method

.method public final a([III)V
    .locals 2

    :goto_0
    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Landroid/a/a/e;->b()I

    move-result v1

    aput v1, p1, p2

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(II)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/a/a/e;->a([III)V

    invoke-virtual {p0, p2}, Landroid/a/a/e;->a(I)I

    move-result v1

    aput v1, v0, p1

    return-object v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/a/a/e;->a(I)I

    move-result v0

    return v0
.end method

.method public final b(I)[I
    .locals 2

    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/a/a/e;->a([III)V

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/a/a/e;->c(I)V

    return-void
.end method

.method public final c(I)V
    .locals 4

    if-gtz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/a/a/e;->a:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget v2, p0, Landroid/a/a/e;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Landroid/a/a/e;->c:I

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
