.class final Landroid/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/a/a/b;->a:[I

    return-void
.end method

.method private final a(IZ)I
    .locals 6

    const/4 v0, -0x1

    iget v1, p0, Landroid/a/a/b;->b:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v2, v1, -0x1

    iget v1, p0, Landroid/a/a/b;->d:I

    move v3, v1

    :goto_1
    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/a/a/b;->a:[I

    aget v1, v1, v2

    add-int/lit8 v2, v2, -0x2

    :goto_2
    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    iget-object v4, p0, Landroid/a/a/b;->a:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_3

    iget-object v0, p0, Landroid/a/a/b;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/a/a/b;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_3

    iget-object v0, p0, Landroid/a/a/b;->a:[I

    aget v0, v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1
.end method

.method private final b(IZ)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Landroid/a/a/b;->b:I

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    iget v1, p0, Landroid/a/a/b;->d:I

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/a/a/b;->a:[I

    aget v3, v3, v2

    if-lt p1, v3, :cond_2

    sub-int/2addr p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-nez p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v1, p0, Landroid/a/a/b;->a:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/a/a/b;->a:[I

    array-length v0, v0

    iget v1, p0, Landroid/a/a/b;->b:I

    sub-int/2addr v0, v1

    if-le v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/a/a/b;->a:[I

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/a/a/b;->a:[I

    iget v2, p0, Landroid/a/a/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/a/a/b;->a:[I

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/a/a/b;->b:I

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Landroid/a/a/b;->d:I

    if-le p1, v1, :cond_2

    iget p1, p0, Landroid/a/a/b;->d:I

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    aget v3, v2, v1

    add-int v2, v0, v3

    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/a/a/b;->b:I

    iput v0, p0, Landroid/a/a/b;->c:I

    iput v0, p0, Landroid/a/a/b;->d:I

    return-void
.end method

.method public final a(II)V
    .locals 5

    iget v0, p0, Landroid/a/a/b;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/a/a/b;->e()V

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/a/a/b;->e(I)V

    iget v0, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/a/a/b;->a:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aput v4, v2, v3

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    aput p1, v2, v0

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    add-int/lit8 v3, v0, 0x1

    aput p2, v2, v3

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    iget v0, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/a/a/b;->b:I

    iget v0, p0, Landroid/a/a/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/a/a/b;->c:I

    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Landroid/a/a/b;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/a/a/b;->a:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/a/a/b;->b(IZ)I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/a/a/b;->b(IZ)I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/a/a/b;->b:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    aput v0, v2, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/a/a/b;->a:[I

    aput v0, v2, v1

    iget v0, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/a/a/b;->b:I

    iget v0, p0, Landroid/a/a/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/a/a/b;->c:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroid/a/a/b;->d:I

    return v0
.end method

.method public final d(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/a/a/b;->a(IZ)I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/a/a/b;->e(I)V

    iget v0, p0, Landroid/a/a/b;->b:I

    iget-object v1, p0, Landroid/a/a/b;->a:[I

    aput v2, v1, v0

    iget-object v1, p0, Landroid/a/a/b;->a:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v1, v0

    iget v0, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/a/a/b;->b:I

    iget v0, p0, Landroid/a/a/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/a/a/b;->d:I

    return-void
.end method

.method public final f()V
    .locals 3

    iget v0, p0, Landroid/a/a/b;->b:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/a/a/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/a/a/b;->a:[I

    aget v1, v1, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/a/a/b;->b:I

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/a/a/b;->b:I

    iget v0, p0, Landroid/a/a/b;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/a/a/b;->c:I

    iget v0, p0, Landroid/a/a/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/a/a/b;->d:I

    goto :goto_0
.end method
