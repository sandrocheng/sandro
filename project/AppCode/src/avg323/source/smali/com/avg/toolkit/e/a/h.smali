.class public Lcom/avg/toolkit/e/a/h;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lcom/avg/toolkit/e/a/j;

.field static final b:I

.field static final c:[Lcom/avg/toolkit/e/a/j;

.field static final d:I


# instance fields
.field e:Lcom/avg/toolkit/e/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0xf8000

    const/16 v6, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Lcom/avg/toolkit/e/a/j;

    new-instance v1, Lcom/avg/toolkit/e/a/j;

    const-wide v2, 0x68f2cc03de4ac51fL

    invoke-direct {v1, v7, v6, v2, v3}, Lcom/avg/toolkit/e/a/j;-><init>(IIJ)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    sget-object v0, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    array-length v0, v0

    sput v0, Lcom/avg/toolkit/e/a/h;->b:I

    new-array v0, v5, [Lcom/avg/toolkit/e/a/j;

    new-instance v1, Lcom/avg/toolkit/e/a/j;

    const-wide v2, -0x4038cce67ccb5ca7L

    invoke-direct {v1, v7, v6, v2, v3}, Lcom/avg/toolkit/e/a/j;-><init>(IIJ)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/avg/toolkit/e/a/h;->c:[Lcom/avg/toolkit/e/a/j;

    sget-object v0, Lcom/avg/toolkit/e/a/h;->c:[Lcom/avg/toolkit/e/a/j;

    array-length v0, v0

    sput v0, Lcom/avg/toolkit/e/a/h;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/avg/toolkit/e/a/b;)Lcom/avg/toolkit/e/a/b;
    .locals 9

    const/16 v8, 0xe

    const/4 v7, 0x5

    const/16 v6, 0xf

    const/4 v1, 0x0

    const-string v0, "%c%c"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Lcom/avg/toolkit/e/a/b;->a(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p1, v6}, Lcom/avg/toolkit/e/a/b;->a(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/b/a;->b(Ljava/lang/String;)[B

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v4, 0x15

    if-ge v2, v4, :cond_2

    if-eqz v2, :cond_0

    if-eq v2, v8, :cond_0

    if-eq v2, v6, :cond_0

    aget-byte v4, v3, v0

    and-int/lit8 v4, v4, 0x1f

    mul-int/lit8 v5, v2, 0x5

    invoke-virtual {p1, v5, v7}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x5

    invoke-virtual {p1, v4, v5, v7}, Lcom/avg/toolkit/e/a/b;->a(III)V

    if-ne v0, v6, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method a(Ljava/lang/String;Lcom/avg/toolkit/e/a/v;)Lcom/avg/toolkit/e/a/v;
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/e/a/h;->e:Lcom/avg/toolkit/e/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/toolkit/e/a/h;->e:Lcom/avg/toolkit/e/a/k;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/e/a/k;->a(C)Lcom/avg/toolkit/e/a/v;

    move-result-object v0

    sget-object v1, Lcom/avg/toolkit/e/a/v;->d:Lcom/avg/toolkit/e/a/v;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_0
    sget-object v1, Lcom/avg/toolkit/e/a/v;->a:Lcom/avg/toolkit/e/a/v;

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide v1, 0xe0010407L

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_1
    sget-object v0, Lcom/avg/toolkit/e/a/v;->a:Lcom/avg/toolkit/e/a/v;

    :cond_2
    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avg/toolkit/e/a/aa;Ljava/lang/String;Lcom/avg/toolkit/e/a/l;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/avg/toolkit/e/a/e;->a([Ljava/lang/String;Z)Lcom/avg/toolkit/e/a/o;

    move-result-object v15

    const/4 v2, 0x0

    aget-object v6, v3, v2

    sget-object v2, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    if-ne v15, v2, :cond_0

    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2

    :cond_0
    sget-object v2, Lcom/avg/toolkit/e/a/o;->b:Lcom/avg/toolkit/e/a/o;

    if-eq v15, v2, :cond_1

    sget-object v2, Lcom/avg/toolkit/e/a/o;->c:Lcom/avg/toolkit/e/a/o;

    if-ne v15, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_3

    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v3, v4}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2

    :cond_3
    invoke-static {v15, v6}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iput-object v2, v3, Lcom/avg/toolkit/e/a/x;->p:Ljava/lang/String;

    sget-object v2, Lcom/avg/toolkit/e/a/w;->a:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;

    sget-object v2, Lcom/avg/toolkit/e/a/w;->a:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->d:Lcom/avg/toolkit/e/a/w;

    const-string v9, ""

    const-string v10, ""

    const-string v8, ""

    const-string v7, ""

    const-string v2, ""

    const-string v5, ""

    const-string v4, ""

    const-string v2, ""

    const-string v3, ""

    const-string v2, ""

    sget-object v11, Lcom/avg/toolkit/e/a/o;->d:Lcom/avg/toolkit/e/a/o;

    if-eq v15, v11, :cond_4

    sget-object v11, Lcom/avg/toolkit/e/a/o;->e:Lcom/avg/toolkit/e/a/o;

    if-ne v15, v11, :cond_b

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v12, v11, -0x5

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_8

    const/16 v12, 0x24

    if-lt v11, v12, :cond_8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-static {v15, v6, v10, v2}, Lcom/avg/toolkit/e/a/e;->b(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v9, v3, v4

    invoke-static {v15, v6, v9, v3}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    move-object v5, v2

    move-object v7, v8

    :goto_1
    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    move-object v4, v3

    :goto_2
    sget-object v3, Lcom/avg/toolkit/e/a/v;->a:Lcom/avg/toolkit/e/a/v;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/avg/toolkit/e/a/l;->a:Lcom/avg/toolkit/e/a/v;

    sget-object v6, Lcom/avg/toolkit/e/a/v;->d:Lcom/avg/toolkit/e/a/v;

    if-eq v5, v6, :cond_5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/avg/toolkit/e/a/l;->a:Lcom/avg/toolkit/e/a/v;

    :cond_5
    :try_start_0
    sget-object v5, Lcom/avg/toolkit/e/a/o;->d:Lcom/avg/toolkit/e/a/o;

    if-eq v15, v5, :cond_6

    sget-object v5, Lcom/avg/toolkit/e/a/o;->e:Lcom/avg/toolkit/e/a/o;

    if-eq v15, v5, :cond_6

    sget-object v5, Lcom/avg/toolkit/e/a/o;->f:Lcom/avg/toolkit/e/a/o;

    if-ne v15, v5, :cond_c

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_c

    :cond_7
    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v4, 0x1

    invoke-direct {v2, v4, v5}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2
    :try_end_0
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    :goto_3
    iget-wide v4, v2, Lcom/avg/toolkit/e/a/a;->a:J

    const-wide v6, 0xe0010407L

    cmp-long v2, v4, v6

    if-nez v2, :cond_11

    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v3, 0x3e7

    invoke-direct {v2, v3, v4}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2

    :cond_8
    add-int/lit8 v10, v11, -0x6

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x2d

    if-ne v10, v12, :cond_9

    const/16 v10, 0x1f

    if-lt v11, v10, :cond_9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v9, v5, v7

    invoke-static {v15, v6, v9, v5}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    move-object v7, v8

    goto :goto_1

    :cond_9
    add-int/lit8 v8, v11, -0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_a

    const/16 v8, 0x1b

    if-lt v11, v8, :cond_a

    move-object/from16 v17, v7

    move-object v7, v6

    move-object/from16 v6, v17

    goto :goto_1

    :cond_a
    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v3, v4}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2

    :cond_b
    sget-object v11, Lcom/avg/toolkit/e/a/o;->f:Lcom/avg/toolkit/e/a/o;

    if-ne v15, v11, :cond_16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v3, v4}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2

    :sswitch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {v15, v6, v10, v2}, Lcom/avg/toolkit/e/a/e;->b(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v7, v2, v3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v9, v3, v4

    invoke-static {v15, v7, v9, v3}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    move-object v9, v4

    move-object v10, v2

    move-object v11, v7

    move-object v12, v8

    move-object v4, v3

    goto/16 :goto_2

    :sswitch_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v9, v5, v7

    invoke-static {v15, v6, v9, v5}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v7, v5, v6

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v9, v4

    move-object v10, v5

    move-object v11, v7

    move-object v12, v8

    move-object v4, v3

    goto/16 :goto_2

    :sswitch_2
    move-object v9, v4

    move-object v10, v5

    move-object v11, v7

    move-object v12, v6

    move-object v4, v3

    goto/16 :goto_2

    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;Lcom/avg/toolkit/e/a/v;)Lcom/avg/toolkit/e/a/v;
    :try_end_1
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    :try_start_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/avg/toolkit/e/a/h;->a(Lcom/avg/toolkit/e/a/x;Ljava/lang/String;)V

    invoke-static {v15, v9}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v9}, Lcom/avg/toolkit/e/a/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v4}, Lcom/avg/toolkit/e/a/d;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)I

    move-result v4

    invoke-static {v15, v2}, Lcom/avg/toolkit/e/a/d;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iput v4, v2, Lcom/avg/toolkit/e/a/x;->o:I
    :try_end_2
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v2, Lcom/avg/toolkit/e/a/w;->c:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;

    const/4 v2, 0x0

    move v14, v2

    :goto_4
    sget v2, Lcom/avg/toolkit/e/a/h;->b:I

    if-ge v14, v2, :cond_e

    sget-object v2, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v14

    iget v5, v2, Lcom/avg/toolkit/e/a/j;->a:I

    sget-object v2, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v14

    iget v6, v2, Lcom/avg/toolkit/e/a/j;->b:I

    sget-object v2, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v14

    iget-wide v7, v2, Lcom/avg/toolkit/e/a/j;->c:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;IIIJ)V

    if-nez v14, :cond_d

    sget-object v2, Lcom/avg/toolkit/e/a/w;->d:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;

    :cond_d
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/avg/toolkit/e/a/w;->b:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    :try_start_4
    sget-object v2, Lcom/avg/toolkit/e/a/w;->c:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->d:Lcom/avg/toolkit/e/a/w;

    const/4 v2, 0x0

    move v14, v2

    :goto_6
    sget v2, Lcom/avg/toolkit/e/a/h;->d:I

    if-ge v14, v2, :cond_10

    sget-object v2, Lcom/avg/toolkit/e/a/h;->c:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v14

    iget v5, v2, Lcom/avg/toolkit/e/a/j;->a:I

    sget-object v2, Lcom/avg/toolkit/e/a/h;->c:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v14

    iget v6, v2, Lcom/avg/toolkit/e/a/j;->b:I

    sget-object v2, Lcom/avg/toolkit/e/a/h;->c:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v14

    iget-wide v7, v2, Lcom/avg/toolkit/e/a/j;->c:J

    move-object/from16 v2, p0

    move/from16 v4, v16

    invoke-virtual/range {v2 .. v8}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;IIIJ)V

    if-nez v14, :cond_f

    sget-object v2, Lcom/avg/toolkit/e/a/w;->d:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->d:Lcom/avg/toolkit/e/a/w;

    :cond_f
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_6

    :cond_10
    sget-object v2, Lcom/avg/toolkit/e/a/w;->b:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->d:Lcom/avg/toolkit/e/a/w;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_4 .. :try_end_4} :catch_1

    :goto_7
    :try_start_5
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/avg/toolkit/e/a/aa;->a:Ljava/lang/String;
    :try_end_5
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v3, v13

    goto/16 :goto_3

    :cond_11
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_12

    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v4, 0x1

    invoke-direct {v2, v4, v5}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2
    :try_end_6
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v2

    :goto_8
    iget-wide v4, v2, Lcom/avg/toolkit/e/a/a;->a:J

    const-wide v6, 0xe0010407L

    cmp-long v2, v4, v6

    if-nez v2, :cond_15

    new-instance v2, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v3, 0x3e7

    invoke-direct {v2, v3, v4}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v2

    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;Lcom/avg/toolkit/e/a/v;)Lcom/avg/toolkit/e/a/v;
    :try_end_7
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v9

    :try_start_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/avg/toolkit/e/a/h;->a(Lcom/avg/toolkit/e/a/x;Ljava/lang/String;)V

    invoke-static {v15, v11}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v10}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/avg/toolkit/e/a/d;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iput v4, v3, Lcom/avg/toolkit/e/a/x;->o:I

    invoke-static {v2}, Lcom/avg/toolkit/e/a/z;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v3

    :try_start_9
    sget-object v2, Lcom/avg/toolkit/e/a/w;->c:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;

    const/4 v2, 0x0

    move v10, v2

    :goto_9
    sget v2, Lcom/avg/toolkit/e/a/h;->b:I

    if-ge v10, v2, :cond_14

    sget-object v2, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v10

    iget v5, v2, Lcom/avg/toolkit/e/a/j;->a:I

    sget-object v2, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v10

    iget v6, v2, Lcom/avg/toolkit/e/a/j;->b:I

    sget-object v2, Lcom/avg/toolkit/e/a/h;->a:[Lcom/avg/toolkit/e/a/j;

    aget-object v2, v2, v10

    iget-wide v7, v2, Lcom/avg/toolkit/e/a/j;->c:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;IIIJ)V

    if-nez v10, :cond_13

    sget-object v2, Lcom/avg/toolkit/e/a/w;->d:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;

    :cond_13
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_9

    :cond_14
    sget-object v2, Lcom/avg/toolkit/e/a/w;->b:Lcom/avg/toolkit/e/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/avg/toolkit/e/a/aa;->a:Ljava/lang/String;
    :try_end_a
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    move-object v3, v9

    goto :goto_8

    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;Lcom/avg/toolkit/e/a/v;)Lcom/avg/toolkit/e/a/v;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/avg/toolkit/e/a/h;->a(Lcom/avg/toolkit/e/a/x;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/avg/toolkit/e/a/aa;->a:Ljava/lang/String;

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto :goto_a

    :catch_5
    move-exception v2

    goto/16 :goto_7

    :catch_6
    move-exception v2

    goto/16 :goto_5

    :cond_16
    move-object v9, v4

    move-object v10, v5

    move-object v11, v7

    move-object v12, v8

    move-object v4, v3

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_2
        0x1f -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method a(Lcom/avg/toolkit/e/a/x;Lcom/avg/toolkit/e/a/ab;Lcom/avg/toolkit/e/a/b;)V
    .locals 10

    const/16 v6, 0x10

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x7

    const/4 v2, 0x1

    new-instance v4, Lcom/avg/toolkit/e/a/b;

    iget-object v0, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-direct {v4, v0}, Lcom/avg/toolkit/e/a/b;-><init>(Lcom/avg/toolkit/e/a/o;)V

    new-instance v5, Lcom/avg/toolkit/e/a/x;

    invoke-direct {v5}, Lcom/avg/toolkit/e/a/x;-><init>()V

    invoke-virtual {v5, p1}, Lcom/avg/toolkit/e/a/x;->a(Lcom/avg/toolkit/e/a/x;)V

    invoke-virtual {v4, p3}, Lcom/avg/toolkit/e/a/b;->a(Lcom/avg/toolkit/e/a/b;)V

    invoke-virtual {p0, v4}, Lcom/avg/toolkit/e/a/h;->a(Lcom/avg/toolkit/e/a/b;)Lcom/avg/toolkit/e/a/b;

    invoke-virtual {v4, v3, v9}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_0
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, v5, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    const/4 v0, 0x3

    invoke-virtual {v4, v9, v0}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    sget v1, Lcom/avg/toolkit/e/a/g;->e:I

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_1
    sget-object v1, Lcom/avg/toolkit/e/a/g;->d:[Lcom/avg/toolkit/e/a/g;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/avg/toolkit/e/a/g;->a:Lcom/avg/toolkit/e/a/s;

    iput-object v1, v5, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    sget-object v1, Lcom/avg/toolkit/e/a/g;->d:[Lcom/avg/toolkit/e/a/g;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/avg/toolkit/e/a/g;->b:Lcom/avg/toolkit/e/a/q;

    iput-object v1, v5, Lcom/avg/toolkit/e/a/x;->j:Lcom/avg/toolkit/e/a/q;

    sget-object v1, Lcom/avg/toolkit/e/a/g;->d:[Lcom/avg/toolkit/e/a/g;

    aget-object v0, v1, v0

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a/g;->c:Z

    iput-boolean v0, v5, Lcom/avg/toolkit/e/a/x;->m:Z

    iput-boolean v2, p2, Lcom/avg/toolkit/e/a/ab;->c:Z

    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-virtual {v4, v0, v1}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    const/16 v1, 0x29e

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_2
    const/16 v1, 0x64

    if-gt v0, v1, :cond_8

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->s:I

    :cond_3
    :goto_0
    iput-boolean v2, p2, Lcom/avg/toolkit/e/a/ab;->f:Z

    iget-object v0, v5, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    sget-object v1, Lcom/avg/toolkit/e/a/s;->b:Lcom/avg/toolkit/e/a/s;

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/avg/toolkit/e/a/r;->a:Lcom/avg/toolkit/e/a/r;

    iput-object v0, v5, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iput v3, v5, Lcom/avg/toolkit/e/a/x;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v5, Lcom/avg/toolkit/e/a/x;->i:J

    :cond_4
    :goto_1
    iput-boolean v2, p2, Lcom/avg/toolkit/e/a/ab;->d:Z

    const/16 v0, 0x1c

    const/4 v1, 0x6

    invoke-virtual {v4, v0, v1}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->f:I

    const/16 v0, 0x22

    const/16 v1, 0x9

    invoke-virtual {v4, v0, v1}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/avg/toolkit/e/a/u;->a:Lcom/avg/toolkit/e/a/u;

    :goto_2
    iput-boolean v2, p2, Lcom/avg/toolkit/e/a/ab;->e:Z

    invoke-virtual {v5, v0}, Lcom/avg/toolkit/e/a/x;->a(Lcom/avg/toolkit/e/a/u;)V

    const/16 v0, 0x2b

    const/16 v1, 0xa

    invoke-virtual {v4, v0, v1}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->l:I

    iput-boolean v2, p2, Lcom/avg/toolkit/e/a/ab;->b:Z

    const/16 v0, 0x35

    invoke-virtual {v4, v0, v8}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    iget-object v1, v5, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_5

    iget-object v1, v5, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v0, 0x3c

    invoke-virtual {v4, v0, v8}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, v5, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v0, 0x43

    invoke-virtual {v4, v0, v8}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, v5, Lcom/avg/toolkit/e/a/x;->k:Ljava/util/HashSet;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v0, 0x4a

    const/16 v1, 0x1c

    invoke-virtual {v4, v0, v1}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->t:I

    const/16 v0, 0x66

    invoke-virtual {v4, v0, v9}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    invoke-static {}, Lcom/avg/toolkit/e/a/p;->values()[Lcom/avg/toolkit/e/a/p;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, v5, Lcom/avg/toolkit/e/a/x;->n:Lcom/avg/toolkit/e/a/p;

    invoke-virtual {v5, p1}, Lcom/avg/toolkit/e/a/x;->a(Lcom/avg/toolkit/e/a/x;)V

    return-void

    :cond_8
    const/16 v1, 0x64

    if-le v0, v1, :cond_9

    const/16 v1, 0x118

    if-gt v0, v1, :cond_9

    add-int/lit8 v0, v0, -0x64

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x64

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->s:I

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x118

    if-le v0, v1, :cond_a

    const/16 v1, 0x1cc

    if-gt v0, v1, :cond_a

    add-int/lit16 v0, v0, -0x118

    mul-int/lit8 v0, v0, 0x32

    add-int/lit16 v0, v0, 0x3e8

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->s:I

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x1cc

    if-le v0, v1, :cond_b

    const/16 v1, 0x280

    if-gt v0, v1, :cond_b

    add-int/lit16 v0, v0, -0x1cc

    mul-int/lit16 v0, v0, 0x1f4

    add-int/lit16 v0, v0, 0x2710

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->s:I

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x280

    if-le v0, v1, :cond_3

    const/16 v1, 0x29e

    if-gt v0, v1, :cond_3

    add-int/lit16 v0, v0, -0x280

    mul-int/lit16 v0, v0, 0x1388

    const v1, 0x186a0

    add-int/2addr v0, v1

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->s:I

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xf

    invoke-virtual {v4, v0, v2}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/avg/toolkit/e/a/r;->b:Lcom/avg/toolkit/e/a/r;

    iput-object v0, v5, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    iget-object v0, v5, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4, v6, v8}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v5, Lcom/avg/toolkit/e/a/x;->i:J

    goto/16 :goto_1

    :cond_d
    iget-object v0, v5, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {v4, v6, v8}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->h:I

    const/16 v0, 0x17

    invoke-virtual {v4, v0, v2}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    if-ne v0, v2, :cond_f

    move v0, v2

    :goto_3
    if-eqz v0, :cond_e

    iget v0, v5, Lcom/avg/toolkit/e/a/x;->h:I

    mul-int/lit8 v0, v0, 0xf

    add-int/lit16 v0, v0, 0x87

    iput v0, v5, Lcom/avg/toolkit/e/a/x;->h:I

    :cond_e
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v5, Lcom/avg/toolkit/e/a/x;->i:J

    goto/16 :goto_1

    :cond_f
    move v0, v3

    goto :goto_3

    :cond_10
    sget-object v0, Lcom/avg/toolkit/e/a/r;->c:Lcom/avg/toolkit/e/a/r;

    iput-object v0, v5, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    const/16 v0, 0xc

    invoke-virtual {v4, v6, v0}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    const-wide v6, 0xc92a69c000L

    int-to-long v0, v0

    mul-long/2addr v6, v0

    iget-object v0, v5, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    sget-object v1, Lcom/avg/toolkit/e/a/o;->f:Lcom/avg/toolkit/e/a/o;

    if-ne v0, v1, :cond_11

    const-wide v0, 0x1ca8a755c6e0000L

    :goto_4
    add-long/2addr v0, v6

    iput-wide v0, v5, Lcom/avg/toolkit/e/a/x;->i:J

    iput v3, v5, Lcom/avg/toolkit/e/a/x;->h:I

    goto/16 :goto_1

    :cond_11
    const-wide v0, 0x1c84c094076c000L

    goto :goto_4

    :sswitch_0
    sget-object v0, Lcom/avg/toolkit/e/a/u;->b:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_1
    sget-object v0, Lcom/avg/toolkit/e/a/u;->c:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_2
    sget-object v0, Lcom/avg/toolkit/e/a/u;->d:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_3
    sget-object v0, Lcom/avg/toolkit/e/a/u;->e:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_4
    sget-object v0, Lcom/avg/toolkit/e/a/u;->f:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_5
    sget-object v0, Lcom/avg/toolkit/e/a/u;->g:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_6
    sget-object v0, Lcom/avg/toolkit/e/a/u;->h:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_7
    sget-object v0, Lcom/avg/toolkit/e/a/u;->i:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_8
    sget-object v0, Lcom/avg/toolkit/e/a/u;->j:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_9
    sget-object v0, Lcom/avg/toolkit/e/a/u;->k:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_a
    sget-object v0, Lcom/avg/toolkit/e/a/u;->l:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_b
    sget-object v0, Lcom/avg/toolkit/e/a/u;->m:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_c
    sget-object v0, Lcom/avg/toolkit/e/a/u;->n:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_d
    sget-object v0, Lcom/avg/toolkit/e/a/u;->o:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_e
    sget-object v0, Lcom/avg/toolkit/e/a/u;->p:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_f
    sget-object v0, Lcom/avg/toolkit/e/a/u;->q:Lcom/avg/toolkit/e/a/u;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0xfb -> :sswitch_0
        0x100 -> :sswitch_1
        0x105 -> :sswitch_2
        0x114 -> :sswitch_6
        0x12d -> :sswitch_3
        0x12e -> :sswitch_4
        0x12f -> :sswitch_5
        0x131 -> :sswitch_7
        0x134 -> :sswitch_8
        0x135 -> :sswitch_9
        0x137 -> :sswitch_a
        0x138 -> :sswitch_b
        0x139 -> :sswitch_c
        0x13a -> :sswitch_d
        0x13b -> :sswitch_e
        0x13c -> :sswitch_f
    .end sparse-switch
.end method

.method a(Lcom/avg/toolkit/e/a/x;Ljava/lang/String;)V
    .locals 12

    const-wide/16 v10, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v5, Lcom/avg/toolkit/e/a/ab;

    invoke-direct {v5}, Lcom/avg/toolkit/e/a/ab;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-static {v0, v2}, Lcom/avg/toolkit/e/a/e;->a([Ljava/lang/String;Z)Lcom/avg/toolkit/e/a/o;

    move-result-object v0

    iput-object v0, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-static {v0, v1}, Lcom/avg/toolkit/e/a/e;->a([Ljava/lang/String;Z)Lcom/avg/toolkit/e/a/o;

    move-result-object v3

    iput-object v3, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    aget-object v0, v0, v2

    iget-object v3, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    sget-object v4, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    if-ne v3, v4, :cond_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    invoke-direct {v0, v10, v11}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_0
    iget-object v3, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    iget-object v4, p1, Lcom/avg/toolkit/e/a/x;->b:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v3, v4}, Lcom/avg/toolkit/e/a/m;->a(Lcom/avg/toolkit/e/a/o;B)Lcom/avg/toolkit/e/a/t;

    move-result-object v3

    iput-object v3, v5, Lcom/avg/toolkit/e/a/ab;->a:Lcom/avg/toolkit/e/a/t;

    sget-object v3, Lcom/avg/toolkit/e/a/i;->a:[I

    iget-object v4, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-virtual {v4}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v3, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-static {v3, v0}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-static {v0, p2}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/avg/toolkit/e/a/i;->a:[I

    iget-object v4, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-virtual {v4}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    :goto_1
    invoke-virtual {p1}, Lcom/avg/toolkit/e/a/x;->a()V

    iput-object v6, p1, Lcom/avg/toolkit/e/a/x;->q:Ljava/lang/String;

    return-void

    :pswitch_0
    new-array v3, v1, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/avg/toolkit/e/a/e;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    aget-object v0, v3, v2

    goto :goto_0

    :pswitch_1
    new-array v3, v1, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v3, v1}, Lcom/avg/toolkit/e/a/e;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avg/toolkit/e/a/x;->c:Ljava/lang/String;

    aget-object v0, v3, v2

    goto :goto_0

    :pswitch_2
    new-instance v7, Lcom/avg/toolkit/e/a/b;

    iget-object v0, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-direct {v7, v0}, Lcom/avg/toolkit/e/a/b;-><init>(Lcom/avg/toolkit/e/a/o;)V

    iget-object v0, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    sget-object v4, Lcom/avg/toolkit/e/a/o;->d:Lcom/avg/toolkit/e/a/o;

    if-eq v0, v4, :cond_1

    iget-object v0, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    sget-object v4, Lcom/avg/toolkit/e/a/o;->e:Lcom/avg/toolkit/e/a/o;

    if-ne v0, v4, :cond_3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_2

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    invoke-direct {v0, v10, v11}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_2
    move v0, v2

    :goto_2
    move-object v4, v3

    move v3, v2

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    add-int v8, v3, v0

    rem-int/lit8 v8, v8, 0x5

    if-nez v8, :cond_6

    new-array v8, v1, [Ljava/lang/String;

    aput-object v4, v8, v2

    invoke-static {v8}, Lcom/avg/toolkit/e/a/e;->a([Ljava/lang/String;)C

    move-result v4

    const/16 v9, 0x2d

    if-eq v4, v9, :cond_5

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    invoke-direct {v0, v10, v11}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x19

    if-eq v0, v4, :cond_4

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    invoke-direct {v0, v10, v11}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    aget-object v4, v8, v2

    :cond_6
    new-array v8, v1, [Ljava/lang/String;

    aput-object v4, v8, v2

    invoke-static {v8}, Lcom/avg/toolkit/e/a/e;->a([Ljava/lang/String;)C

    move-result v9

    aget-object v4, v8, v2

    iget-object v8, p1, Lcom/avg/toolkit/e/a/x;->a:Lcom/avg/toolkit/e/a/o;

    invoke-static {v8, v9}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;C)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/avg/toolkit/e/a/b;->a(C)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Lcom/avg/toolkit/e/a/b;->a()I

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_8

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    invoke-direct {v0, v10, v11}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_8
    invoke-virtual {p0, p1, v5, v7}, Lcom/avg/toolkit/e/a/h;->a(Lcom/avg/toolkit/e/a/x;Lcom/avg/toolkit/e/a/ab;Lcom/avg/toolkit/e/a/b;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method a(Ljava/lang/String;IIIJ)V
    .locals 4

    invoke-virtual {p0, p5, p6}, Lcom/avg/toolkit/e/a/h;->a(J)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avg/toolkit/e/a/h;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/2addr v0, p4

    and-int/2addr v0, p3

    int-to-long v0, v0

    and-int v2, p2, p3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_0
    return-void
.end method

.method public final a(J)[B
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-array v0, v5, [B

    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-long v2, p1, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-long v1, p1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    return-object v0
.end method

.method a(Ljava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "noalg"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
