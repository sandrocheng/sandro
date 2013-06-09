.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .locals 11

    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-lt v10, p2, :cond_0

    return-object v0

    :cond_0
    shl-int/lit8 v1, v10, 0x3

    add-int/lit8 v2, v1, 0x8

    if-lt v2, p4, :cond_1

    add-int/lit8 v1, p4, -0x8

    :cond_1
    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-lt v9, p1, :cond_2

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :cond_2
    shl-int/lit8 v2, v9, 0x3

    add-int/lit8 v3, v2, 0x8

    if-lt v3, p3, :cond_3

    add-int/lit8 v2, p3, -0x8

    :cond_3
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v3, 0x0

    mul-int v7, v1, p3

    add-int/2addr v2, v7

    move v7, v3

    move v8, v2

    move v3, v4

    move v4, v5

    move v5, v6

    :goto_2
    const/16 v2, 0x8

    if-lt v7, v2, :cond_5

    shr-int/lit8 v2, v5, 0x6

    sub-int/2addr v3, v4

    const/16 v5, 0x18

    if-gt v3, v5, :cond_4

    shr-int/lit8 v3, v4, 0x1

    if-lez v10, :cond_8

    if-lez v9, :cond_8

    add-int/lit8 v2, v10, -0x1

    aget-object v2, v0, v2

    aget v2, v2, v9

    aget-object v5, v0, v10

    add-int/lit8 v6, v9, -0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v5, v10, -0x1

    aget-object v5, v0, v5

    add-int/lit8 v6, v9, -0x1

    aget v5, v5, v6

    add-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x2

    if-ge v4, v2, :cond_8

    :cond_4
    :goto_3
    aget-object v3, v0, v10

    aput v2, v3, v9

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    move v6, v5

    move v5, v2

    :goto_4
    const/16 v2, 0x8

    if-lt v5, v2, :cond_6

    add-int/lit8 v2, v7, 0x1

    add-int v5, v8, p3

    move v7, v2

    move v8, v5

    move v5, v6

    goto :goto_2

    :cond_6
    add-int v2, v8, v5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v6, v2

    if-ge v2, v4, :cond_7

    move v4, v2

    :cond_7
    if-le v2, v3, :cond_9

    :goto_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_5
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 11

    const/4 v6, 0x0

    :goto_0
    if-lt v6, p2, :cond_0

    return-void

    :cond_0
    shl-int/lit8 v2, v6, 0x3

    add-int/lit8 v0, v2, 0x8

    if-lt v0, p4, :cond_1

    add-int/lit8 v2, p4, -0x8

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-lt v7, p1, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    shl-int/lit8 v1, v7, 0x3

    add-int/lit8 v0, v1, 0x8

    if-lt v0, p3, :cond_3

    add-int/lit8 v1, p3, -0x8

    :cond_3
    const/4 v0, 0x1

    if-le v7, v0, :cond_4

    move v0, v7

    :goto_2
    add-int/lit8 v3, p1, -0x2

    if-ge v0, v3, :cond_5

    move v5, v0

    :goto_3
    const/4 v0, 0x1

    if-le v6, v0, :cond_6

    move v0, v6

    :goto_4
    add-int/lit8 v3, p2, -0x2

    if-ge v0, v3, :cond_7

    :goto_5
    const/4 v4, 0x0

    const/4 v3, -0x2

    :goto_6
    const/4 v8, 0x2

    if-le v3, v8, :cond_8

    div-int/lit8 v3, v4, 0x19

    move-object v0, p0

    move v4, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/common/HybridBinarizer;->threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    add-int/lit8 v0, p1, -0x3

    move v5, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    goto :goto_4

    :cond_7
    add-int/lit8 v0, p2, -0x3

    goto :goto_5

    :cond_8
    add-int v8, v0, v3

    aget-object v8, p5, v8

    add-int/lit8 v9, v5, -0x2

    aget v9, v8, v9

    add-int/lit8 v10, v5, -0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    aget v10, v8, v5

    add-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget v8, v8, v10

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method private static threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    move v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v6, :cond_0

    return-void

    :cond_0
    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int v0, v2, p4

    move v2, v0

    goto :goto_0

    :cond_1
    add-int v4, v2, v0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, p3, :cond_2

    add-int v4, p1, v0

    add-int v5, p2, v3

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public final getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 7

    const/16 v2, 0x28

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    if-lt v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v0

    if-lt v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v4

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v2, v3, 0x7

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v5, v4, 0x7

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v5

    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    iput-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :goto_1
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_1
.end method
