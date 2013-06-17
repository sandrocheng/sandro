.class public Landroid/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:[I

.field private c:[I

.field private d:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a([II)I
    .locals 2

    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method public static a(Landroid/a/a/e;)Landroid/a/a/g;
    .locals 6

    const v0, 0x1c0001

    invoke-static {p0, v0}, Landroid/a/a/d;->a(Landroid/a/a/e;I)V

    invoke-virtual {p0}, Landroid/a/a/e;->b()I

    move-result v1

    invoke-virtual {p0}, Landroid/a/a/e;->b()I

    move-result v0

    invoke-virtual {p0}, Landroid/a/a/e;->b()I

    move-result v3

    invoke-virtual {p0}, Landroid/a/a/e;->b()I

    invoke-virtual {p0}, Landroid/a/a/e;->b()I

    move-result v4

    invoke-virtual {p0}, Landroid/a/a/e;->b()I

    move-result v2

    new-instance v5, Landroid/a/a/g;

    invoke-direct {v5}, Landroid/a/a/g;-><init>()V

    invoke-virtual {p0, v0}, Landroid/a/a/e;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Landroid/a/a/g;->a:[I

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/a/a/e;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Landroid/a/a/g;->c:[I

    :cond_0
    if-nez v2, :cond_2

    move v0, v1

    :goto_0
    sub-int/2addr v0, v4

    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    div-int/lit8 v3, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v3, v0}, Landroid/a/a/e;->a(II)[I

    move-result-object v0

    iput-object v0, v5, Landroid/a/a/g;->b:[I

    :goto_1
    if-eqz v2, :cond_1

    sub-int v0, v1, v2

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    div-int/lit8 v1, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/a/a/e;->a(II)[I

    move-result-object v0

    iput-object v0, v5, Landroid/a/a/g;->d:[I

    :cond_1
    :goto_2
    return-object v5

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Landroid/a/a/e;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Landroid/a/a/g;->b:[I

    goto :goto_1

    :cond_4
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Landroid/a/a/e;->b(I)[I

    move-result-object v0

    iput-object v0, v5, Landroid/a/a/g;->d:[I

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 8

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/a/a/g;->a:[I

    array-length v3, v3

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Landroid/a/a/g;->a:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/a/a/g;->b:[I

    invoke-static {v4, v3}, Landroid/a/a/g;->a([II)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    move v3, v1

    :goto_2
    if-eq v3, v5, :cond_3

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Landroid/a/a/g;->b:[I

    invoke-static {v7, v4}, Landroid/a/a/g;->a([II)I

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/a/a/g;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/a/a/g;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/a/a/g;->a:[I

    aget v1, v0, p1

    iget-object v0, p0, Landroid/a/a/g;->b:[I

    invoke-static {v0, v1}, Landroid/a/a/g;->a([II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Landroid/a/a/g;->b:[I

    invoke-static {v3, v1}, Landroid/a/a/g;->a([II)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
