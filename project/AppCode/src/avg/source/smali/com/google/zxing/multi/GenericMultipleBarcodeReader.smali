.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V
    .locals 19

    move/from16 v7, p5

    move/from16 v6, p4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v2, p0

    :goto_0
    :try_start_0
    iget-object v3, v2, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v8

    :goto_1
    if-eqz v3, :cond_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v9, v6, v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v15

    if-eqz v15, :cond_1

    array-length v3, v15

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v17

    move/from16 v0, v16

    int-to-float v10, v0

    move/from16 v0, v17

    int-to-float v9, v0

    const/4 v8, 0x0

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v18, v0

    const/4 v3, 0x0

    move v11, v10

    move v10, v8

    move v8, v3

    :goto_3
    move/from16 v0, v18

    if-lt v8, v0, :cond_7

    const/high16 v3, 0x42c8

    cmpl-float v3, v11, v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    const/4 v8, 0x0

    float-to-int v11, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v3, v8, v11, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    :cond_4
    const/high16 v3, 0x42c8

    cmpl-float v3, v9, v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    const/4 v8, 0x0

    float-to-int v9, v9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v8, v1, v9}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    :cond_5
    add-int/lit8 v3, v16, -0x64

    int-to-float v3, v3

    cmpg-float v3, v10, v3

    if-gez v3, :cond_6

    float-to-int v3, v10

    const/4 v8, 0x0

    float-to-int v9, v10

    sub-int v9, v16, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v3, v8, v9, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    float-to-int v3, v10

    add-int v12, v6, v3

    move-object v8, v2

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    :cond_6
    add-int/lit8 v3, v17, -0x64

    int-to-float v3, v3

    cmpg-float v3, v14, v3

    if-gez v3, :cond_1

    const/4 v3, 0x0

    float-to-int v8, v14

    float-to-int v9, v14

    sub-int v9, v17, v9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v8, v1, v9}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    float-to-int v3, v14

    add-int/2addr v7, v3

    goto/16 :goto_0

    :cond_7
    aget-object v3, v15, v8

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    cmpg-float v12, v13, v11

    if-gez v12, :cond_b

    move v12, v13

    :goto_4
    cmpg-float v11, v3, v9

    if-gez v11, :cond_a

    move v11, v3

    :goto_5
    cmpl-float v9, v13, v10

    if-lez v9, :cond_9

    move v9, v13

    :goto_6
    cmpl-float v10, v3, v14

    if-lez v10, :cond_8

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move v14, v3

    move v10, v9

    move v9, v11

    move v11, v12

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :cond_8
    move v3, v14

    goto :goto_7

    :cond_9
    move v9, v10

    goto :goto_6

    :cond_a
    move v11, v9

    goto :goto_5

    :cond_b
    move v12, v11

    goto :goto_4
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 7

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    array-length v0, v1

    new-array v2, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    aget-object v3, v1, v0

    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    int-to-float v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    int-to-float v6, p2

    add-float/2addr v3, v6

    invoke-direct {v4, v5, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public final decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/Result;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/Result;

    return-object v0
.end method
