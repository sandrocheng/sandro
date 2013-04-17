.class public Lcom/tencent/lbsapi/core/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x4c11db7

.field public static final b:I = 0x2

.field public static final c:I = 0x7


# instance fields
.field private d:[B

.field private e:[B

.field private f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[B

.field private l:Z

.field private m:I

.field private n:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/a;->l:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/a;->n:Ljava/util/Random;

    return-void
.end method

.method public static a([BII)J
    .locals 6

    const/16 v5, 0x8

    const-wide/16 v1, 0x0

    if-le p2, v5, :cond_0

    add-int/lit8 v0, p1, 0x8

    :goto_0
    if-ge p1, v0, :cond_1

    shl-long/2addr v1, v5

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int v0, p1, p2

    goto :goto_0

    :cond_1
    const-wide v3, 0xffffffffL

    and-long/2addr v3, v1

    const/16 v0, 0x20

    ushr-long v0, v1, v0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method private a()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/lbsapi/core/a;->i:I

    :goto_0
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v0, v7, :cond_1

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iget v4, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_1
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    iget v4, p0, Lcom/tencent/lbsapi/core/a;->h:I

    iget v5, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    invoke-direct {p0, v0}, Lcom/tencent/lbsapi/core/a;->a([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->g:I

    invoke-static {v0, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, p0, Lcom/tencent/lbsapi/core/a;->i:I

    :goto_2
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v0, v7, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/2addr v1, v2

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iget v4, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    iget-object v1, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->h:I

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->g:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iput v6, p0, Lcom/tencent/lbsapi/core/a;->i:I

    iput-boolean v6, p0, Lcom/tencent/lbsapi/core/a;->l:Z

    return-void
.end method

.method private a([B)[B
    .locals 23

    const/16 v7, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x4

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v5

    const/4 v1, 0x4

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/4 v2, 0x0

    const/4 v8, 0x4

    invoke-static {v1, v2, v8}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/4 v2, 0x4

    const/4 v8, 0x4

    invoke-static {v1, v2, v8}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/16 v2, 0x8

    const/4 v8, 0x4

    invoke-static {v1, v2, v8}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/16 v2, 0xc

    const/4 v8, 0x4

    invoke-static {v1, v2, v8}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v15

    const-wide/16 v1, 0x0

    const-wide/32 v17, -0x61c88647

    const-wide v19, 0xffffffffL

    and-long v17, v17, v19

    :goto_0
    add-int/lit8 v8, v7, -0x1

    if-lez v7, :cond_0

    add-long v1, v1, v17

    const-wide v19, 0xffffffffL

    and-long v1, v1, v19

    const/4 v7, 0x4

    shl-long v19, v3, v7

    add-long v19, v19, v9

    add-long v21, v3, v1

    xor-long v19, v19, v21

    const/4 v7, 0x5

    ushr-long v21, v3, v7

    add-long v21, v21, v11

    xor-long v19, v19, v21

    add-long v5, v5, v19

    const-wide v19, 0xffffffffL

    and-long v5, v5, v19

    const/4 v7, 0x4

    shl-long v19, v5, v7

    add-long v19, v19, v13

    add-long v21, v5, v1

    xor-long v19, v19, v21

    const/4 v7, 0x5

    ushr-long v21, v5, v7

    add-long v21, v21, v15

    xor-long v19, v19, v21

    add-long v3, v3, v19

    const-wide v19, 0xffffffffL

    and-long v3, v3, v19

    move v7, v8

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    long-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a([BI)[B
    .locals 24

    const/16 v8, 0x10

    const/4 v2, 0x4

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v6

    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/16 v3, 0x8

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/a;->k:[B

    const/16 v3, 0xc

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/lbsapi/core/a;->a([BII)J

    move-result-wide v16

    const-wide/32 v2, -0x1c886470

    const-wide v18, 0xffffffffL

    and-long v2, v2, v18

    const-wide/32 v18, -0x61c88647

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    :goto_0
    add-int/lit8 v9, v8, -0x1

    if-lez v8, :cond_0

    const/4 v8, 0x4

    shl-long v20, v6, v8

    add-long v20, v20, v14

    add-long v22, v6, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v6, v8

    add-long v22, v22, v16

    xor-long v20, v20, v22

    sub-long v4, v4, v20

    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    const/4 v8, 0x4

    shl-long v20, v4, v8

    add-long v20, v20, v10

    add-long v22, v4, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v4, v8

    add-long v22, v22, v12

    xor-long v20, v20, v22

    sub-long v6, v6, v20

    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    sub-long v2, v2, v18

    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    move v8, v9

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    long-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private b()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->n:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private b([BII)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    :goto_0
    iget v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->m:I

    iget v3, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_0

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iget v3, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/tencent/lbsapi/core/a;->g:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    invoke-direct {p0, v2}, Lcom/tencent/lbsapi/core/a;->b([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iget-object v2, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/tencent/lbsapi/core/a;->m:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->m:I

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->g:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iput v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    goto :goto_1
.end method

.method private b([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/lbsapi/core/a;->a([BI)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([BII[B)[B
    .locals 11

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->h:I

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iput-object p4, p0, Lcom/tencent/lbsapi/core/a;->k:[B

    add-int/lit8 v0, p2, 0x8

    new-array v1, v0, [B

    rem-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    const/16 v0, 0x10

    if-ge p3, v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/lbsapi/core/a;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    sub-int v0, p3, v0

    add-int/lit8 v4, v0, -0xa

    if-gez v4, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->h:I

    iput v8, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iput v8, p0, Lcom/tencent/lbsapi/core/a;->m:I

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    iput v9, p0, Lcom/tencent/lbsapi/core/a;->j:I

    move-object v0, v1

    :cond_4
    :goto_2
    iget v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    const/4 v5, 0x2

    if-gt v1, v5, :cond_6

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v1, v8, :cond_5

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    :cond_5
    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ne v1, v8, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/lbsapi/core/a;->b([BII)Z

    move-result v0

    if-nez v0, :cond_10

    move-object v0, v3

    goto :goto_0

    :cond_6
    move v1, v4

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    :cond_7
    :goto_3
    if-eqz v1, :cond_9

    iget v4, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v4, v8, :cond_8

    iget-object v4, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    iget v5, p0, Lcom/tencent/lbsapi/core/a;->h:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/2addr v5, v6

    aget-byte v5, v2, v5

    iget-object v6, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iget v7, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/lbsapi/core/a;->i:I

    :cond_8
    iget v4, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ne v4, v8, :cond_7

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->g:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->h:I

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/lbsapi/core/a;->b([BII)Z

    move-result v2

    if-nez v2, :cond_f

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    iput v9, p0, Lcom/tencent/lbsapi/core/a;->j:I

    move-object v0, v2

    :goto_4
    iget v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    if-ge v1, v8, :cond_e

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v1, v8, :cond_b

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->h:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/2addr v1, v2

    aget-byte v1, v0, v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iget v4, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aget-byte v2, v2, v4

    xor-int/2addr v1, v2

    if-eqz v1, :cond_a

    move-object v0, v3

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    :cond_b
    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ne v1, v8, :cond_d

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->h:I

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/lbsapi/core/a;->b([BII)Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v3

    goto/16 :goto_0

    :cond_c
    move-object v0, p1

    :cond_d
    iget v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    goto/16 :goto_0

    :cond_f
    move-object v2, p1

    goto :goto_3

    :cond_10
    move-object v0, p1

    goto/16 :goto_2
.end method

.method public a([B[B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/tencent/lbsapi/core/a;->a([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public b([BII[B)[B
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x8

    new-array v0, v7, [B

    iput-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    new-array v0, v7, [B

    iput-object v0, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    iput v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    iput v4, p0, Lcom/tencent/lbsapi/core/a;->j:I

    iput v4, p0, Lcom/tencent/lbsapi/core/a;->h:I

    iput v4, p0, Lcom/tencent/lbsapi/core/a;->g:I

    iput-object p4, p0, Lcom/tencent/lbsapi/core/a;->k:[B

    iput-boolean v1, p0, Lcom/tencent/lbsapi/core/a;->l:Z

    add-int/lit8 v0, p3, 0xa

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    rsub-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    :cond_0
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/a;->b()I

    move-result v2

    and-int/lit16 v2, v2, 0xf8

    iget v3, p0, Lcom/tencent/lbsapi/core/a;->i:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/a;->b()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    move v0, v4

    :goto_1
    if-ge v0, v7, :cond_2

    iget-object v2, p0, Lcom/tencent/lbsapi/core/a;->e:[B

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    :cond_3
    :goto_2
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->j:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_5

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v0, v7, :cond_4

    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    iget v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/lbsapi/core/a;->i:I

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/a;->b()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->j:I

    :cond_4
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ne v0, v7, :cond_3

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/a;->a()V

    goto :goto_2

    :cond_5
    move v2, p2

    move v3, p3

    :goto_3
    if-lez v3, :cond_6

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v0, v7, :cond_b

    iget-object v5, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    iget v6, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v5, v6

    add-int/lit8 v2, v3, -0x1

    :goto_4
    iget v3, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ne v3, v7, :cond_a

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/a;->a()V

    move v3, v2

    move v2, v0

    goto :goto_3

    :cond_6
    iput v1, p0, Lcom/tencent/lbsapi/core/a;->j:I

    :cond_7
    :goto_5
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->j:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_9

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ge v0, v7, :cond_8

    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->d:[B

    iget v1, p0, Lcom/tencent/lbsapi/core/a;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/lbsapi/core/a;->i:I

    aput-byte v4, v0, v1

    iget v0, p0, Lcom/tencent/lbsapi/core/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/lbsapi/core/a;->j:I

    :cond_8
    iget v0, p0, Lcom/tencent/lbsapi/core/a;->i:I

    if-ne v0, v7, :cond_7

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/a;->a()V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/tencent/lbsapi/core/a;->f:[B

    return-object v0

    :cond_a
    move v3, v2

    move v2, v0

    goto :goto_3

    :cond_b
    move v0, v2

    move v2, v3

    goto :goto_4
.end method

.method public b([B[B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/tencent/lbsapi/core/a;->b([BII[B)[B

    move-result-object v0

    return-object v0
.end method
