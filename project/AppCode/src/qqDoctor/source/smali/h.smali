.class public final Lh;
.super Ljava/lang/Object;


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lh;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lh;->a:[B

    return-void
.end method

.method private static a([B[I)V
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    shr-int/lit8 v3, v1, 0x2

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    const/16 v0, 0x8

    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_2

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    aget v0, p1, v2

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aput v0, p1, v2

    aget v0, p1, v2

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    aput v0, p1, v2

    aget v4, p1, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v4

    aput v1, p1, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public static a([B)[B
    .locals 15

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lh;->a:[B

    if-eqz v0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    new-array v5, v0, [I

    invoke-static {p0, v5}, Lh;->a([B[I)V

    add-int/lit8 v0, v0, -0x1

    array-length v3, p0

    aput v3, v5, v0

    sget-object v0, Lh;->a:[B

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    sget-object v0, Lh;->a:[B

    array-length v0, v0

    ushr-int/lit8 v0, v0, 0x2

    :goto_1
    if-ge v0, v1, :cond_2

    move v0, v1

    :cond_2
    new-array v6, v0, [I

    move v1, v2

    :goto_2
    if-lt v1, v0, :cond_6

    sget-object v0, Lh;->a:[B

    invoke-static {v0, v6}, Lh;->a([B[I)V

    array-length v0, v5

    add-int/lit8 v7, v0, -0x1

    aget v1, v5, v7

    const/16 v0, 0x34

    add-int/lit8 v3, v7, 0x1

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    move v4, v2

    move v14, v0

    move v0, v1

    move v1, v14

    :goto_3
    add-int/lit8 v3, v1, -0x1

    if-gtz v1, :cond_7

    array-length v0, v5

    shl-int/lit8 v0, v0, 0x2

    new-array p0, v0, [B

    array-length v1, v5

    array-length v0, p0

    shr-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    move v3, v2

    :goto_4
    if-lt v3, v0, :cond_9

    if-le v1, v0, :cond_0

    array-length v0, p0

    if-ge v2, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    aget v1, v5, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    const/16 v1, 0x8

    move v2, v1

    :goto_5
    const/16 v1, 0x18

    if-gt v2, v1, :cond_0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v4, v5, v3

    ushr-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    add-int/lit8 v0, v2, 0x8

    move v2, v0

    move v0, v1

    goto :goto_5

    :cond_4
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_5
    sget-object v0, Lh;->a:[B

    array-length v0, v0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const v1, -0x61c88647

    add-int/2addr v4, v1

    ushr-int/lit8 v1, v4, 0x2

    and-int/lit8 v8, v1, 0x3

    move v1, v0

    move v0, v2

    :goto_6
    if-lt v0, v7, :cond_8

    aget v9, v5, v2

    aget v10, v5, v7

    ushr-int/lit8 v11, v1, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v1, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v4

    and-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, v8

    aget v0, v6, v0

    xor-int/2addr v0, v1

    add-int/2addr v0, v9

    xor-int/2addr v0, v11

    add-int/2addr v0, v10

    aput v0, v5, v7

    move v1, v3

    goto :goto_3

    :cond_8
    add-int/lit8 v9, v0, 0x1

    aget v9, v5, v9

    aget v10, v5, v0

    ushr-int/lit8 v11, v1, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v1, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v4

    and-int/lit8 v12, v0, 0x3

    xor-int/2addr v12, v8

    aget v12, v6, v12

    xor-int/2addr v1, v12

    add-int/2addr v1, v9

    xor-int/2addr v1, v11

    add-int/2addr v1, v10

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v2, 0x1

    aget v6, v5, v3

    int-to-byte v6, v6

    aput-byte v6, p0, v2

    add-int/lit8 v2, v4, 0x1

    aget v6, v5, v3

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, p0, v4

    add-int/lit8 v4, v2, 0x1

    aget v6, v5, v3

    ushr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, p0, v2

    add-int/lit8 v2, v4, 0x1

    aget v6, v5, v3

    shr-int/lit8 v6, v6, 0x18

    aput-byte v6, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4
.end method
