.class public Lking/org/apache/commons/codec/language/ColognePhonetic;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"

# interfaces
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field private static final PREPROCESS_MAP:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 267
    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lking/org/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    return-void

    :array_0
    .array-data 0x2
        0xc4t 0x0t
        0x41t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0xdct 0x0t
        0x55t 0x0t
    .end array-data

    :array_2
    .array-data 0x2
        0xd6t 0x0t
        0x4ft 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0xdft 0x0t
        0x53t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method private static arrayContains([CC)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 277
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 278
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 282
    :goto_1
    return v0

    .line 277
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 282
    goto :goto_1
.end method

.method private preprocess(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 407
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v1, v5

    .line 411
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 412
    aget-char v2, v0, v1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_0

    move v2, v5

    .line 413
    :goto_1
    sget-object v3, Lking/org/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 414
    aget-char v3, v0, v1

    sget-object v4, Lking/org/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    aget-object v4, v4, v2

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_1

    .line 415
    sget-object v3, Lking/org/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    aget-object v2, v3, v2

    const/4 v3, 0x1

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 411
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 421
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public colognePhonetic(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter

    .prologue
    const/16 v12, 0x34

    const/16 v11, 0x2f

    const/16 v10, 0x2d

    const/4 v9, 0x3

    const/16 v8, 0x38

    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    .line 301
    :cond_0
    invoke-direct {p0, p1}, Lking/org/apache/commons/codec/language/ColognePhonetic;->preprocess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v1, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, p0, v2}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;-><init>(Lking/org/apache/commons/codec/language/ColognePhonetic;I)V

    .line 304
    new-instance v2, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;-><init>(Lking/org/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 313
    invoke-virtual {v2}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v0

    move v3, v11

    move v4, v10

    .line 315
    :goto_1
    if-lez v0, :cond_1b

    .line 316
    invoke-virtual {v2}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->removeNext()C

    move-result v0

    .line 318
    invoke-virtual {v2}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 319
    invoke-virtual {v2}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v6

    .line 324
    :goto_2
    const/4 v7, 0x7

    new-array v7, v7, [C

    fill-array-data v7, :array_0

    invoke-static {v7, v0}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 325
    const/16 v4, 0x30

    move v13, v5

    move v5, v4

    move v4, v13

    .line 372
    :goto_3
    if-eq v5, v10, :cond_3

    if-eq v3, v5, :cond_1

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    if-eq v3, v11, :cond_2

    :cond_1
    const/16 v3, 0x30

    if-lt v5, v3, :cond_2

    if-le v5, v8, :cond_3

    .line 373
    :cond_2
    invoke-virtual {v1, v5}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->addRight(C)V

    :cond_3
    move v3, v5

    move v13, v4

    move v4, v0

    move v0, v13

    .line 377
    goto :goto_1

    :cond_4
    move v6, v10

    .line 321
    goto :goto_2

    .line 326
    :cond_5
    const/16 v7, 0x48

    if-eq v0, v7, :cond_6

    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-le v0, v7, :cond_7

    .line 327
    :cond_6
    if-eq v3, v11, :cond_1c

    move v4, v5

    move v5, v10

    .line 328
    goto :goto_3

    .line 331
    :cond_7
    const/16 v7, 0x42

    if-eq v0, v7, :cond_8

    const/16 v7, 0x50

    if-ne v0, v7, :cond_9

    const/16 v7, 0x48

    if-eq v6, v7, :cond_9

    .line 332
    :cond_8
    const/16 v4, 0x31

    move v13, v5

    move v5, v4

    move v4, v13

    goto :goto_3

    .line 333
    :cond_9
    const/16 v7, 0x44

    if-eq v0, v7, :cond_a

    const/16 v7, 0x54

    if-ne v0, v7, :cond_b

    :cond_a
    new-array v7, v9, [C

    fill-array-data v7, :array_1

    invoke-static {v7, v6}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-nez v7, :cond_b

    .line 334
    const/16 v4, 0x32

    move v13, v5

    move v5, v4

    move v4, v13

    goto :goto_3

    .line 335
    :cond_b
    const/4 v7, 0x4

    new-array v7, v7, [C

    fill-array-data v7, :array_2

    invoke-static {v7, v0}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 336
    const/16 v4, 0x33

    move v13, v5

    move v5, v4

    move v4, v13

    goto :goto_3

    .line 337
    :cond_c
    new-array v7, v9, [C

    fill-array-data v7, :array_3

    invoke-static {v7, v0}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-eqz v7, :cond_d

    move v4, v5

    move v5, v12

    .line 338
    goto :goto_3

    .line 339
    :cond_d
    const/16 v7, 0x58

    if-ne v0, v7, :cond_e

    new-array v7, v9, [C

    fill-array-data v7, :array_4

    invoke-static {v7, v4}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v7

    if-nez v7, :cond_e

    .line 341
    const/16 v4, 0x53

    invoke-virtual {v2, v4}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->addLeft(C)V

    .line 342
    add-int/lit8 v4, v5, 0x1

    move v5, v12

    goto/16 :goto_3

    .line 343
    :cond_e
    const/16 v7, 0x53

    if-eq v0, v7, :cond_f

    const/16 v7, 0x5a

    if-ne v0, v7, :cond_10

    :cond_f
    move v4, v5

    move v5, v8

    .line 344
    goto/16 :goto_3

    .line 345
    :cond_10
    const/16 v7, 0x43

    if-ne v0, v7, :cond_15

    .line 346
    if-ne v3, v11, :cond_12

    .line 347
    const/16 v4, 0x9

    new-array v4, v4, [C

    fill-array-data v4, :array_5

    invoke-static {v4, v6}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    move v5, v12

    .line 348
    goto/16 :goto_3

    :cond_11
    move v4, v5

    move v5, v8

    .line 350
    goto/16 :goto_3

    .line 353
    :cond_12
    const/4 v7, 0x2

    new-array v7, v7, [C

    fill-array-data v7, :array_6

    invoke-static {v7, v4}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x7

    new-array v4, v4, [C

    fill-array-data v4, :array_7

    invoke-static {v4, v6}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    move v4, v5

    move v5, v8

    .line 355
    goto/16 :goto_3

    :cond_14
    move v4, v5

    move v5, v12

    .line 357
    goto/16 :goto_3

    .line 360
    :cond_15
    new-array v4, v9, [C

    fill-array-data v4, :array_8

    invoke-static {v4, v0}, Lking/org/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v5

    move v5, v8

    .line 361
    goto/16 :goto_3

    .line 362
    :cond_16
    const/16 v4, 0x52

    if-ne v0, v4, :cond_17

    .line 363
    const/16 v4, 0x37

    move v13, v5

    move v5, v4

    move v4, v13

    goto/16 :goto_3

    .line 364
    :cond_17
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_18

    .line 365
    const/16 v4, 0x35

    move v13, v5

    move v5, v4

    move v4, v13

    goto/16 :goto_3

    .line 366
    :cond_18
    const/16 v4, 0x4d

    if-eq v0, v4, :cond_19

    const/16 v4, 0x4e

    if-ne v0, v4, :cond_1a

    .line 367
    :cond_19
    const/16 v4, 0x36

    move v13, v5

    move v5, v4

    move v4, v13

    goto/16 :goto_3

    :cond_1a
    move v4, v5

    move v5, v0

    .line 369
    goto/16 :goto_3

    .line 379
    :cond_1b
    invoke-virtual {v1}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    move v0, v5

    goto/16 :goto_1

    .line 324
    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x45t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x59t 0x0t
    .end array-data

    .line 333
    nop

    :array_1
    .array-data 0x2
        0x53t 0x0t
        0x43t 0x0t
        0x5at 0x0t
    .end array-data

    .line 335
    nop

    :array_2
    .array-data 0x2
        0x57t 0x0t
        0x46t 0x0t
        0x50t 0x0t
        0x56t 0x0t
    .end array-data

    .line 337
    :array_3
    .array-data 0x2
        0x47t 0x0t
        0x4bt 0x0t
        0x51t 0x0t
    .end array-data

    .line 339
    nop

    :array_4
    .array-data 0x2
        0x43t 0x0t
        0x4bt 0x0t
        0x51t 0x0t
    .end array-data

    .line 347
    nop

    :array_5
    .array-data 0x2
        0x41t 0x0t
        0x48t 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4ft 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x55t 0x0t
        0x58t 0x0t
    .end array-data

    .line 353
    nop

    :array_6
    .array-data 0x2
        0x53t 0x0t
        0x5at 0x0t
    .end array-data

    :array_7
    .array-data 0x2
        0x41t 0x0t
        0x48t 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x4bt 0x0t
        0x51t 0x0t
        0x58t 0x0t
    .end array-data

    .line 360
    nop

    :array_8
    .array-data 0x2
        0x54t 0x0t
        0x44t 0x0t
        0x58t 0x0t
    .end array-data
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 384
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lking/org/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method\u2019s parameter was expected to be of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". But actually it was of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/ColognePhonetic;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lking/org/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
