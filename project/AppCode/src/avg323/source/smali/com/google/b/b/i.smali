.class final Lcom/google/b/b/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/b/b/i;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([CII)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    move v0, p2

    move v2, v1

    :goto_0
    add-int v3, p2, p3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    aget-char v3, p1, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v2, 0x14

    ushr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/b/b/i;->a:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/b/b/i;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, p3, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/google/b/b/i;->a:[Ljava/lang/String;

    aput-object v0, v1, v2

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-ge v1, p3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v1

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/google/b/b/i;->a:[Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_1
.end method
