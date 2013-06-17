.class public final La/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/e;->d:Ljava/io/OutputStream;

    iput-object p1, p0, La/a/e;->a:[B

    const/4 v0, 0x0

    iput v0, p0, La/a/e;->c:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, La/a/e;->b:I

    return-void
.end method

.method public static a(La/a/c;)I
    .locals 2

    invoke-virtual {p0}, La/a/c;->a()I

    move-result v0

    invoke-static {v0}, La/a/e;->d(I)I

    move-result v0

    invoke-virtual {p0}, La/a/c;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a([BI)La/a/e;
    .locals 1

    new-instance v0, La/a/e;

    invoke-direct {v0, p0, p1}, La/a/e;-><init>([BI)V

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, La/a/u;->a(II)I

    move-result v0

    invoke-static {v0}, La/a/e;->d(I)I

    move-result v0

    return v0
.end method

.method public static b(II)I
    .locals 2

    invoke-static {p0}, La/a/e;->b(I)I

    move-result v0

    invoke-static {p1}, La/a/e;->e(I)I

    move-result v1

    invoke-static {v1}, La/a/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0}, La/a/e;->b(I)I

    move-result v1

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v2, -0x2

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(ILa/a/c;)I
    .locals 2

    invoke-static {p0}, La/a/e;->b(I)I

    move-result v0

    invoke-static {p1}, La/a/e;->a(La/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, La/a/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, La/a/f;

    invoke-direct {v0}, La/a/f;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/e;->d:Ljava/io/OutputStream;

    iget-object v1, p0, La/a/e;->a:[B

    iget v2, p0, La/a/e;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, La/a/e;->c:I

    return-void
.end method

.method public static d(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private static e(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, La/a/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget v0, p0, La/a/e;->b:I

    iget v1, p0, La/a/e;->c:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .locals 4

    int-to-byte v0, p1

    iget v1, p0, La/a/e;->c:I

    iget v2, p0, La/a/e;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, La/a/e;->b()V

    :cond_0
    iget-object v1, p0, La/a/e;->a:[B

    iget v2, p0, La/a/e;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/a/e;->c:I

    aput-byte v0, v1, v2

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/a/e;->c(II)V

    invoke-static {p2}, La/a/e;->e(I)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/e;->c(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/a/e;->c(II)V

    invoke-virtual {p0, p2, p3}, La/a/e;->a(J)V

    return-void
.end method

.method public final a(ILa/a/c;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, La/a/e;->c(II)V

    invoke-virtual {p2}, La/a/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, La/a/e;->c(I)V

    invoke-virtual {p2}, La/a/c;->a()I

    move-result v0

    iget v1, p0, La/a/e;->b:I

    iget v2, p0, La/a/e;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    iget-object v1, p0, La/a/e;->a:[B

    iget v2, p0, La/a/e;->c:I

    invoke-virtual {p2, v1, v7, v2, v0}, La/a/c;->a([BIII)V

    iget v1, p0, La/a/e;->c:I

    add-int/2addr v0, v1

    iput v0, p0, La/a/e;->c:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, La/a/e;->b:I

    iget v2, p0, La/a/e;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, La/a/e;->a:[B

    iget v3, p0, La/a/e;->c:I

    invoke-virtual {p2, v2, v7, v3, v1}, La/a/c;->a([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, La/a/e;->b:I

    iput v1, p0, La/a/e;->c:I

    invoke-direct {p0}, La/a/e;->b()V

    iget v1, p0, La/a/e;->b:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, La/a/e;->a:[B

    invoke-virtual {p2, v1, v2, v7, v0}, La/a/c;->a([BIII)V

    iput v0, p0, La/a/e;->c:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, La/a/c;->c()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v3, v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, La/a/e;->d:Ljava/io/OutputStream;

    iget-object v4, p0, La/a/e;->a:[B

    invoke-virtual {v2, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_0

    iget v2, p0, La/a/e;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, La/a/e;->a:[B

    invoke-virtual {v1, v3, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, La/a/e;->a(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/a/e;->a(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, La/a/e;->a(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/a/e;->a(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final c(II)V
    .locals 1

    invoke-static {p1, p2}, La/a/u;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/e;->c(I)V

    return-void
.end method
