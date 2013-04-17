.class public final Lp;
.super Ljava/lang/Object;


# static fields
.field private static k:Ljava/util/Random;


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:[B

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lp;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length must be 16!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp;->i:Z

    iput-object p1, p0, Lp;->h:[B

    return-void
.end method

.method private a()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iput v6, p0, Lp;->f:I

    :goto_0
    iget v0, p0, Lp;->f:I

    if-ge v0, v7, :cond_1

    iget-boolean v0, p0, Lp;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp;->a:[B

    iget v1, p0, Lp;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lp;->b:[B

    iget v4, p0, Lp;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_1
    iget v0, p0, Lp;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->f:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp;->a:[B

    iget v1, p0, Lp;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lp;->c:[B

    iget v4, p0, Lp;->e:I

    iget v5, p0, Lp;->f:I

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lp;->a:[B

    invoke-direct {p0, v0}, Lp;->c([B)[B

    move-result-object v0

    iget-object v1, p0, Lp;->c:[B

    iget v2, p0, Lp;->d:I

    invoke-static {v0, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, p0, Lp;->f:I

    :goto_2
    iget v0, p0, Lp;->f:I

    if-ge v0, v7, :cond_2

    iget-object v0, p0, Lp;->c:[B

    iget v1, p0, Lp;->d:I

    iget v2, p0, Lp;->f:I

    add-int/2addr v1, v2

    aget-byte v2, v0, v1

    iget-object v3, p0, Lp;->b:[B

    iget v4, p0, Lp;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lp;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->f:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lp;->a:[B

    iget-object v1, p0, Lp;->b:[B

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lp;->d:I

    iput v0, p0, Lp;->e:I

    iget v0, p0, Lp;->d:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lp;->d:I

    iput v6, p0, Lp;->f:I

    iput-boolean v6, p0, Lp;->i:Z

    return-void
.end method

.method private a([BII)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lp;->f:I

    :goto_0
    iget v2, p0, Lp;->f:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget v2, p0, Lp;->j:I

    iget v3, p0, Lp;->f:I

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_0

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lp;->b:[B

    iget v3, p0, Lp;->f:I

    aget-byte v4, v2, v3

    iget v5, p0, Lp;->d:I

    add-int/lit8 v5, v5, 0x0

    iget v6, p0, Lp;->f:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lp;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lp;->f:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lp;->b:[B

    invoke-direct {p0, v2, v1}, Lp;->a([BI)[B

    move-result-object v2

    iput-object v2, p0, Lp;->b:[B

    iget-object v2, p0, Lp;->b:[B

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Lp;->j:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lp;->j:I

    iget v2, p0, Lp;->d:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lp;->d:I

    iput v1, p0, Lp;->f:I

    goto :goto_1
.end method

.method private a([BI)[B
    .locals 21

    const/16 v7, 0x10

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lp;->b([BI)J

    move-result-wide v5

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lp;->b([BI)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v15

    const-wide v1, 0xe3779b90L

    :goto_0
    add-int/lit8 v8, v7, -0x1

    if-lez v7, :cond_0

    const/4 v7, 0x4

    shl-long v17, v5, v7

    add-long v17, v17, v13

    add-long v19, v5, v1

    xor-long v17, v17, v19

    const/4 v7, 0x5

    ushr-long v19, v5, v7

    add-long v19, v19, v15

    xor-long v17, v17, v19

    sub-long v3, v3, v17

    const-wide v17, 0xffffffffL

    and-long v3, v3, v17

    const/4 v7, 0x4

    shl-long v17, v3, v7

    add-long v17, v17, v9

    add-long v19, v3, v1

    xor-long v17, v17, v19

    const/4 v7, 0x5

    ushr-long v19, v3, v7

    add-long v19, v19, v11

    xor-long v17, v17, v19

    sub-long v5, v5, v17

    const-wide v17, 0xffffffffL

    and-long v5, v5, v17

    const-wide v17, 0x9e3779b9L

    sub-long v1, v1, v17

    const-wide v17, 0xffffffffL

    and-long v1, v1, v17

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

.method private static b([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    add-int/lit8 v2, p1, 0x4

    :goto_0
    if-ge p1, v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private c([B)[B
    .locals 21

    const/16 v7, 0x10

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lp;->b([BI)J

    move-result-wide v5

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lp;->b([BI)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lp;->h:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lp;->b([BI)J

    move-result-wide v15

    const-wide/16 v1, 0x0

    :goto_0
    add-int/lit8 v8, v7, -0x1

    if-lez v7, :cond_0

    const-wide v17, 0x9e3779b9L

    add-long v1, v1, v17

    const-wide v17, 0xffffffffL

    and-long v1, v1, v17

    const/4 v7, 0x4

    shl-long v17, v3, v7

    add-long v17, v17, v9

    add-long v19, v3, v1

    xor-long v17, v17, v19

    const/4 v7, 0x5

    ushr-long v19, v3, v7

    add-long v19, v19, v11

    xor-long v17, v17, v19

    add-long v5, v5, v17

    const-wide v17, 0xffffffffL

    and-long v5, v5, v17

    const/4 v7, 0x4

    shl-long v17, v5, v7

    add-long v17, v17, v13

    add-long v19, v5, v1

    xor-long v17, v17, v19

    const/4 v7, 0x5

    ushr-long v19, v5, v7

    add-long v19, v19, v15

    xor-long v17, v17, v19

    add-long v3, v3, v17

    const-wide v17, 0xffffffffL

    and-long v3, v3, v17

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


# virtual methods
.method public final a([B)[B
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x8

    array-length v2, p1

    new-array v0, v7, [B

    iput-object v0, p0, Lp;->a:[B

    new-array v0, v7, [B

    iput-object v0, p0, Lp;->b:[B

    iput v1, p0, Lp;->f:I

    iput v4, p0, Lp;->g:I

    iput v4, p0, Lp;->e:I

    iput v4, p0, Lp;->d:I

    iput-boolean v1, p0, Lp;->i:Z

    add-int/lit8 v0, v2, 0xa

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lp;->f:I

    iget v0, p0, Lp;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lp;->f:I

    rsub-int/lit8 v0, v0, 0x8

    iput v0, p0, Lp;->f:I

    :cond_0
    iget v0, p0, Lp;->f:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lp;->c:[B

    iget-object v0, p0, Lp;->a:[B

    sget-object v3, Lp;->k:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xf8

    iget v5, p0, Lp;->f:I

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    move v0, v1

    :goto_0
    iget v3, p0, Lp;->f:I

    if-gt v0, v3, :cond_1

    iget-object v3, p0, Lp;->a:[B

    sget-object v5, Lp;->k:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lp;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->f:I

    move v0, v4

    :goto_1
    if-ge v0, v7, :cond_2

    iget-object v3, p0, Lp;->b:[B

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lp;->g:I

    :cond_3
    :goto_2
    iget v0, p0, Lp;->g:I

    const/4 v3, 0x2

    if-gt v0, v3, :cond_5

    iget v0, p0, Lp;->f:I

    if-ge v0, v7, :cond_4

    iget-object v0, p0, Lp;->a:[B

    iget v3, p0, Lp;->f:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lp;->f:I

    sget-object v5, Lp;->k:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    iget v0, p0, Lp;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->g:I

    :cond_4
    iget v0, p0, Lp;->f:I

    if-ne v0, v7, :cond_3

    invoke-direct {p0}, Lp;->a()V

    goto :goto_2

    :cond_5
    move v3, v2

    move v2, v4

    :goto_3
    if-lez v3, :cond_6

    iget v0, p0, Lp;->f:I

    if-ge v0, v7, :cond_b

    iget-object v5, p0, Lp;->a:[B

    iget v6, p0, Lp;->f:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lp;->f:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v5, v6

    add-int/lit8 v2, v3, -0x1

    :goto_4
    iget v3, p0, Lp;->f:I

    if-ne v3, v7, :cond_a

    invoke-direct {p0}, Lp;->a()V

    move v3, v2

    move v2, v0

    goto :goto_3

    :cond_6
    iput v1, p0, Lp;->g:I

    :cond_7
    :goto_5
    iget v0, p0, Lp;->g:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_9

    iget v0, p0, Lp;->f:I

    if-ge v0, v7, :cond_8

    iget-object v0, p0, Lp;->a:[B

    iget v1, p0, Lp;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lp;->f:I

    aput-byte v4, v0, v1

    iget v0, p0, Lp;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->g:I

    :cond_8
    iget v0, p0, Lp;->f:I

    if-ne v0, v7, :cond_7

    invoke-direct {p0}, Lp;->a()V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lp;->c:[B

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

.method public final b([B)[B
    .locals 12

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/16 v10, 0x8

    const/4 v1, 0x0

    array-length v5, p1

    iput v1, p0, Lp;->e:I

    iput v1, p0, Lp;->d:I

    new-array v2, v10, [B

    rem-int/lit8 v0, v5, 0x8

    if-nez v0, :cond_0

    const/16 v0, 0x10

    if-ge v5, v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, v1}, Lp;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lp;->b:[B

    iget-object v0, p0, Lp;->b:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lp;->f:I

    iget v0, p0, Lp;->f:I

    sub-int v0, v5, v0

    add-int/lit8 v3, v0, -0xa

    if-gez v3, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_3

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-array v0, v3, [B

    iput-object v0, p0, Lp;->c:[B

    iput v1, p0, Lp;->e:I

    iput v10, p0, Lp;->d:I

    iput v10, p0, Lp;->j:I

    iget v0, p0, Lp;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->f:I

    iput v11, p0, Lp;->g:I

    move-object v0, v2

    :cond_4
    :goto_2
    iget v2, p0, Lp;->g:I

    const/4 v6, 0x2

    if-gt v2, v6, :cond_6

    iget v2, p0, Lp;->f:I

    if-ge v2, v10, :cond_5

    iget v2, p0, Lp;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lp;->f:I

    iget v2, p0, Lp;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lp;->g:I

    :cond_5
    iget v2, p0, Lp;->f:I

    if-ne v2, v10, :cond_4

    invoke-direct {p0, p1, v1, v5}, Lp;->a([BII)Z

    move-result v0

    if-nez v0, :cond_10

    move-object v0, v4

    goto :goto_0

    :cond_6
    move v2, v3

    move-object v3, v0

    move v0, v1

    :cond_7
    :goto_3
    if-eqz v2, :cond_9

    iget v6, p0, Lp;->f:I

    if-ge v6, v10, :cond_8

    iget-object v6, p0, Lp;->c:[B

    iget v7, p0, Lp;->e:I

    add-int/lit8 v7, v7, 0x0

    iget v8, p0, Lp;->f:I

    add-int/2addr v7, v8

    aget-byte v7, v3, v7

    iget-object v8, p0, Lp;->b:[B

    iget v9, p0, Lp;->f:I

    aget-byte v8, v8, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, -0x1

    iget v6, p0, Lp;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lp;->f:I

    :cond_8
    iget v6, p0, Lp;->f:I

    if-ne v6, v10, :cond_7

    iget v3, p0, Lp;->d:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lp;->e:I

    invoke-direct {p0, p1, v1, v5}, Lp;->a([BII)Z

    move-result v3

    if-nez v3, :cond_f

    move-object v0, v4

    goto/16 :goto_0

    :cond_9
    iput v11, p0, Lp;->g:I

    move-object v0, v3

    :goto_4
    iget v2, p0, Lp;->g:I

    if-ge v2, v10, :cond_e

    iget v2, p0, Lp;->f:I

    if-ge v2, v10, :cond_b

    iget v2, p0, Lp;->e:I

    add-int/lit8 v2, v2, 0x0

    iget v3, p0, Lp;->f:I

    add-int/2addr v2, v3

    aget-byte v2, v0, v2

    iget-object v3, p0, Lp;->b:[B

    iget v6, p0, Lp;->f:I

    aget-byte v3, v3, v6

    xor-int/2addr v2, v3

    if-eqz v2, :cond_a

    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lp;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lp;->f:I

    :cond_b
    iget v2, p0, Lp;->f:I

    if-ne v2, v10, :cond_d

    iget v0, p0, Lp;->d:I

    iput v0, p0, Lp;->e:I

    invoke-direct {p0, p1, v1, v5}, Lp;->a([BII)Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v4

    goto/16 :goto_0

    :cond_c
    move-object v0, p1

    :cond_d
    iget v2, p0, Lp;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lp;->g:I

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lp;->c:[B

    goto/16 :goto_0

    :cond_f
    move-object v3, p1

    goto :goto_3

    :cond_10
    move-object v0, p1

    goto/16 :goto_2
.end method
