.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0x1e


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    add-int/lit8 v0, v0, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    add-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    add-int/lit8 v0, v0, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    add-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    shr-int/lit8 v0, p2, 0x1

    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 12

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f80

    sub-float/2addr v7, v11

    const/high16 v11, 0x3f80

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f80

    add-float/2addr v3, v9

    const/high16 v9, 0x3f80

    add-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v7, 0x3f80

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v5, 0x3f80

    add-float/2addr v1, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f80

    add-float/2addr v7, v11

    const/high16 v11, 0x3f80

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f80

    add-float/2addr v3, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v7, 0x3f80

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v5, 0x3f80

    sub-float/2addr v1, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    goto :goto_0
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    :goto_0
    if-le p1, p2, :cond_1

    :goto_1
    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-le p1, p2, :cond_2

    goto :goto_1
.end method

.method private static distanceL2(FFFF)I
    .locals 2

    sub-float v0, p0, p2

    sub-float v1, p1, p3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    move-result v0

    return v0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 7

    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->distanceL2(FFFF)I

    move-result v1

    sub-float v0, p3, p1

    int-to-float v2, v1

    div-float v2, v0, v2

    sub-float v0, p4, p2

    int-to-float v3, v1

    div-float v3, v0, v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    invoke-static {v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    move-result v4

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v5, p2

    invoke-static {v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final detect()[Lcom/google/zxing/ResultPoint;
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    iget v5, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    move v9, v2

    move v8, v0

    :cond_0
    :goto_0
    if-nez v8, :cond_2

    move v7, v4

    move v8, v5

    move v4, v6

    move v6, v3

    :goto_1
    if-nez v2, :cond_1e

    if-eqz v9, :cond_1e

    sub-int v9, v8, v4

    move v3, v0

    move-object v2, v1

    :goto_2
    if-lt v3, v9, :cond_13

    :cond_1
    move-object v5, v2

    if-nez v5, :cond_14

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_2
    move v8, v0

    move v7, v2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v5, v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v5, v8, :cond_6

    move v2, v0

    move v7, v4

    move v8, v5

    move v4, v6

    move v6, v3

    goto :goto_1

    :cond_5
    invoke-direct {p0, v4, v3, v5, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    move v7, v0

    goto :goto_3

    :cond_6
    move v8, v0

    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v8, :cond_9

    :cond_8
    iget v8, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v8, :cond_a

    move v2, v0

    move v7, v4

    move v8, v5

    move v4, v6

    move v6, v3

    goto :goto_1

    :cond_9
    invoke-direct {p0, v6, v5, v3, v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v3, v3, 0x1

    move v7, v0

    goto :goto_4

    :cond_a
    move v8, v0

    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    if-gez v6, :cond_d

    :cond_c
    if-gez v6, :cond_e

    move v2, v0

    move v7, v4

    move v8, v5

    move v4, v6

    move v6, v3

    goto :goto_1

    :cond_d
    invoke-direct {p0, v4, v3, v6, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v6, v6, -0x1

    move v7, v0

    goto :goto_5

    :cond_e
    move v8, v7

    move v7, v0

    :cond_f
    :goto_6
    if-eqz v7, :cond_10

    if-gez v4, :cond_11

    :cond_10
    if-gez v4, :cond_12

    move v2, v0

    move v7, v4

    move v8, v5

    move v4, v6

    move v6, v3

    goto :goto_1

    :cond_11
    invoke-direct {p0, v6, v5, v4, v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v4, v4, -0x1

    move v8, v0

    goto :goto_6

    :cond_12
    if-eqz v8, :cond_0

    move v9, v0

    goto/16 :goto_0

    :cond_13
    int-to-float v2, v4

    sub-int v5, v6, v3

    int-to-float v5, v5

    add-int v10, v4, v3

    int-to-float v10, v10

    int-to-float v11, v6

    invoke-direct {p0, v2, v5, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v2

    if-nez v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_14
    move v3, v0

    move-object v2, v1

    :goto_7
    if-lt v3, v9, :cond_16

    :cond_15
    move-object v4, v2

    if-nez v4, :cond_17

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    int-to-float v2, v4

    add-int v10, v7, v3

    int-to-float v10, v10

    add-int v11, v4, v3

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v2, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v2

    if-nez v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_17
    move-object v2, v1

    move v3, v0

    :goto_8
    if-lt v3, v9, :cond_19

    :cond_18
    if-nez v2, :cond_1a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_19
    int-to-float v2, v8

    add-int v10, v7, v3

    int-to-float v10, v10

    sub-int v11, v8, v3

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v2, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v2

    if-nez v2, :cond_18

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1a
    move v13, v0

    move-object v0, v1

    move v1, v13

    :goto_9
    if-lt v1, v9, :cond_1c

    :cond_1b
    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    int-to-float v0, v8

    sub-int v3, v6, v1

    int-to-float v3, v3

    sub-int v7, v8, v1

    int-to-float v7, v7

    int-to-float v10, v6

    invoke-direct {p0, v0, v3, v7, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    invoke-direct {p0, v0, v5, v2, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
