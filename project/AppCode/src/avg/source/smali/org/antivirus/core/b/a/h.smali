.class public final Lorg/antivirus/core/b/a/h;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lorg/antivirus/core/b/a/j;

.field static final b:I

.field static final c:[Lorg/antivirus/core/b/a/j;

.field static final d:I


# instance fields
.field e:Lorg/antivirus/core/b/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Lorg/antivirus/core/b/a/j;

    new-instance v1, Lorg/antivirus/core/b/a/j;

    const-wide v2, 0x68f2cc03de4ac51fL

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/j;-><init>(J)V

    aput-object v1, v0, v4

    sput-object v0, Lorg/antivirus/core/b/a/h;->a:[Lorg/antivirus/core/b/a/j;

    array-length v0, v0

    sput v0, Lorg/antivirus/core/b/a/h;->b:I

    new-array v0, v5, [Lorg/antivirus/core/b/a/j;

    new-instance v1, Lorg/antivirus/core/b/a/j;

    const-wide v2, -0x4038cce67ccb5ca7L

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/j;-><init>(J)V

    aput-object v1, v0, v4

    sput-object v0, Lorg/antivirus/core/b/a/h;->c:[Lorg/antivirus/core/b/a/j;

    array-length v0, v0

    sput v0, Lorg/antivirus/core/b/a/h;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lorg/antivirus/core/b/a/v;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/b/a/h;->e:Lorg/antivirus/core/b/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/b/a/h;->e:Lorg/antivirus/core/b/a/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    sget-object v0, Lorg/antivirus/core/b/a/v;->d:Lorg/antivirus/core/b/a/v;

    sget-object v1, Lorg/antivirus/core/b/a/v;->d:Lorg/antivirus/core/b/a/v;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_0
    sget-object v1, Lorg/antivirus/core/b/a/v;->a:Lorg/antivirus/core/b/a/v;

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide v1, 0xe0010407L

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_1
    sget-object v0, Lorg/antivirus/core/b/a/v;->a:Lorg/antivirus/core/b/a/v;

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;IIIJ)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-array v0, v5, [B

    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p4, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p4, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p4, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p4, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p4, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p4, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-long v2, p4, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-long v1, p4, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    invoke-static {p0, v0}, Lorg/antivirus/core/b/a/h;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    aget-byte v0, v0, v4

    shl-int/2addr v0, p3

    and-int/2addr v0, p2

    int-to-long v0, v0

    and-int v2, p1, p2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_0
    return-void
.end method

.method private static a(Lorg/antivirus/core/b/a/x;Ljava/lang/String;)V
    .locals 11

    new-instance v4, Lorg/antivirus/core/b/a/aa;

    invoke-direct {v4}, Lorg/antivirus/core/b/a/aa;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/core/b/a/e;->a([Ljava/lang/String;Z)Lorg/antivirus/core/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/core/b/a/e;->a([Ljava/lang/String;Z)Lorg/antivirus/core/b/a/o;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    sget-object v2, Lorg/antivirus/core/b/a/o;->a:Lorg/antivirus/core/b/a/o;

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    iget-object v2, p0, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    sget-object v3, Lorg/antivirus/core/b/a/n;->a:[I

    invoke-virtual {v0}, Lorg/antivirus/core/b/a/o;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lorg/antivirus/core/b/a/t;->a:Lorg/antivirus/core/b/a/t;

    :goto_1
    iput-object v0, v4, Lorg/antivirus/core/b/a/aa;->a:Lorg/antivirus/core/b/a/t;

    sget-object v0, Lorg/antivirus/core/b/a/i;->a:[I

    iget-object v2, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-virtual {v2}, Lorg/antivirus/core/b/a/o;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    move-object v0, v1

    :goto_2
    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-static {v1, v0}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-static {v0, p1}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/antivirus/core/b/a/i;->a:[I

    iget-object v1, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    :goto_3
    iput-object v5, p0, Lorg/antivirus/core/b/a/x;->q:Ljava/lang/String;

    return-void

    :pswitch_0
    sget-object v0, Lorg/antivirus/core/b/a/t;->b:Lorg/antivirus/core/b/a/t;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lorg/antivirus/core/b/a/t;->c:Lorg/antivirus/core/b/a/t;

    goto :goto_1

    :pswitch_2
    packed-switch v2, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/antivirus/core/b/a/t;->d:Lorg/antivirus/core/b/a/t;

    goto :goto_1

    :pswitch_4
    packed-switch v2, :pswitch_data_4

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/antivirus/core/b/a/t;->e:Lorg/antivirus/core/b/a/t;

    goto :goto_1

    :pswitch_6
    packed-switch v2, :pswitch_data_5

    goto :goto_0

    :pswitch_7
    sget-object v0, Lorg/antivirus/core/b/a/t;->f:Lorg/antivirus/core/b/a/t;

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/antivirus/core/b/a/e;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_2

    :pswitch_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/core/b/a/e;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/b/a/x;->c:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_2

    :pswitch_a
    new-instance v6, Lorg/antivirus/core/b/a/b;

    iget-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-direct {v6, v0}, Lorg/antivirus/core/b/a/b;-><init>(Lorg/antivirus/core/b/a/o;)V

    iget-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    sget-object v1, Lorg/antivirus/core/b/a/o;->d:Lorg/antivirus/core/b/a/o;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    sget-object v1, Lorg/antivirus/core/b/a/o;->e:Lorg/antivirus/core/b/a/o;

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x0

    move v10, v1

    move-object v1, v2

    move v2, v10

    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    add-int v3, v2, v0

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v3, v7

    invoke-static {v3}, Lorg/antivirus/core/b/a/e;->a([Ljava/lang/String;)C

    move-result v1

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_5

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_4

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    aget-object v1, v3, v1

    :cond_6
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v3, v7

    invoke-static {v3}, Lorg/antivirus/core/b/a/e;->a([Ljava/lang/String;)C

    move-result v1

    const/4 v7, 0x0

    aget-object v3, v3, v7

    iget-object v7, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_7
    invoke-virtual {v6, v1}, Lorg/antivirus/core/b/a/b;->a(C)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_5

    :cond_8
    iget-object v0, v6, Lorg/antivirus/core/b/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_9

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_9
    new-instance v2, Lorg/antivirus/core/b/a/b;

    iget-object v0, p0, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    invoke-direct {v2, v0}, Lorg/antivirus/core/b/a/b;-><init>(Lorg/antivirus/core/b/a/o;)V

    new-instance v3, Lorg/antivirus/core/b/a/x;

    invoke-direct {v3}, Lorg/antivirus/core/b/a/x;-><init>()V

    invoke-virtual {v3, p0}, Lorg/antivirus/core/b/a/x;->a(Lorg/antivirus/core/b/a/x;)V

    iget-object v0, v2, Lorg/antivirus/core/b/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, v6, Lorg/antivirus/core/b/a/b;->a:Ljava/util/Vector;

    iput-object v0, v2, Lorg/antivirus/core/b/a/b;->a:Ljava/util/Vector;

    const-string v0, "%c%c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Lorg/antivirus/core/b/a/b;->a(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lorg/antivirus/core/b/a/b;->a(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/b/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    const/16 v7, 0x15

    if-ge v1, v7, :cond_c

    if-eqz v1, :cond_a

    const/16 v7, 0xe

    if-eq v1, v7, :cond_a

    const/16 v7, 0xf

    if-eq v1, v7, :cond_a

    aget-byte v7, v6, v0

    and-int/lit8 v7, v7, 0x1f

    mul-int/lit8 v8, v1, 0x5

    const/4 v9, 0x5

    invoke-virtual {v2, v8, v9}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v8

    xor-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x5

    invoke-virtual {v2, v7, v8}, Lorg/antivirus/core/b/a/b;->a(II)V

    const/16 v7, 0xf

    if-ne v0, v7, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_d
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    sget v1, Lorg/antivirus/core/b/a/g;->e:I

    if-lt v0, v1, :cond_e

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_e
    sget-object v1, Lorg/antivirus/core/b/a/g;->d:[Lorg/antivirus/core/b/a/g;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/antivirus/core/b/a/g;->a:Lorg/antivirus/core/b/a/s;

    iput-object v1, v3, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    sget-object v1, Lorg/antivirus/core/b/a/g;->d:[Lorg/antivirus/core/b/a/g;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/antivirus/core/b/a/g;->b:Lorg/antivirus/core/b/a/q;

    iput-object v1, v3, Lorg/antivirus/core/b/a/x;->j:Lorg/antivirus/core/b/a/q;

    sget-object v1, Lorg/antivirus/core/b/a/g;->d:[Lorg/antivirus/core/b/a/g;

    aget-object v0, v1, v0

    iget-boolean v0, v0, Lorg/antivirus/core/b/a/g;->c:Z

    iput-boolean v0, v3, Lorg/antivirus/core/b/a/x;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/antivirus/core/b/a/aa;->c:Z

    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    const/16 v1, 0x29e

    if-le v0, v1, :cond_f

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_f
    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    iput v0, v3, Lorg/antivirus/core/b/a/x;->s:I

    :cond_10
    :goto_8
    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/antivirus/core/b/a/aa;->f:Z

    iget-object v0, v3, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    sget-object v1, Lorg/antivirus/core/b/a/s;->b:Lorg/antivirus/core/b/a/s;

    if-ne v0, v1, :cond_19

    sget-object v0, Lorg/antivirus/core/b/a/r;->a:Lorg/antivirus/core/b/a/r;

    iput-object v0, v3, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    const/4 v0, 0x0

    iput v0, v3, Lorg/antivirus/core/b/a/x;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v3, Lorg/antivirus/core/b/a/x;->i:J

    :cond_11
    :goto_9
    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/antivirus/core/b/a/aa;->d:Z

    const/16 v0, 0x1c

    const/4 v1, 0x6

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    iput v0, v3, Lorg/antivirus/core/b/a/x;->f:I

    const/16 v0, 0x22

    const/16 v1, 0x9

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lorg/antivirus/core/b/a/u;->a:Lorg/antivirus/core/b/a/u;

    :goto_a
    const/4 v1, 0x1

    iput-boolean v1, v4, Lorg/antivirus/core/b/a/aa;->e:Z

    iput-object v0, v3, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    const/16 v0, 0x2b

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    iput v0, v3, Lorg/antivirus/core/b/a/x;->l:I

    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/antivirus/core/b/a/aa;->b:Z

    const/16 v0, 0x35

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    iget-object v1, v3, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz v0, :cond_12

    iget-object v1, v3, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    const/16 v0, 0x3c

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v1, v3, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    const/16 v0, 0x43

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v1, v3, Lorg/antivirus/core/b/a/x;->k:Ljava/util/HashSet;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    const/16 v0, 0x4a

    const/16 v1, 0x1c

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    iput v0, v3, Lorg/antivirus/core/b/a/x;->t:I

    const/16 v0, 0x66

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    invoke-static {}, Lorg/antivirus/core/b/a/p;->values()[Lorg/antivirus/core/b/a/p;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, v3, Lorg/antivirus/core/b/a/x;->n:Lorg/antivirus/core/b/a/p;

    invoke-virtual {v3, p0}, Lorg/antivirus/core/b/a/x;->a(Lorg/antivirus/core/b/a/x;)V

    goto/16 :goto_3

    :cond_15
    const/16 v1, 0x64

    if-le v0, v1, :cond_16

    const/16 v1, 0x118

    if-gt v0, v1, :cond_16

    add-int/lit8 v0, v0, -0x64

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x64

    iput v0, v3, Lorg/antivirus/core/b/a/x;->s:I

    goto/16 :goto_8

    :cond_16
    const/16 v1, 0x118

    if-le v0, v1, :cond_17

    const/16 v1, 0x1cc

    if-gt v0, v1, :cond_17

    add-int/lit16 v0, v0, -0x118

    mul-int/lit8 v0, v0, 0x32

    add-int/lit16 v0, v0, 0x3e8

    iput v0, v3, Lorg/antivirus/core/b/a/x;->s:I

    goto/16 :goto_8

    :cond_17
    const/16 v1, 0x1cc

    if-le v0, v1, :cond_18

    const/16 v1, 0x280

    if-gt v0, v1, :cond_18

    add-int/lit16 v0, v0, -0x1cc

    mul-int/lit16 v0, v0, 0x1f4

    add-int/lit16 v0, v0, 0x2710

    iput v0, v3, Lorg/antivirus/core/b/a/x;->s:I

    goto/16 :goto_8

    :cond_18
    const/16 v1, 0x280

    if-le v0, v1, :cond_10

    const/16 v1, 0x29e

    if-gt v0, v1, :cond_10

    add-int/lit16 v0, v0, -0x280

    mul-int/lit16 v0, v0, 0x1388

    const v1, 0x186a0

    add-int/2addr v0, v1

    iput v0, v3, Lorg/antivirus/core/b/a/x;->s:I

    goto/16 :goto_8

    :cond_19
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lorg/antivirus/core/b/a/r;->b:Lorg/antivirus/core/b/a/r;

    iput-object v0, v3, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    iget-object v0, v3, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x10

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    iput v0, v3, Lorg/antivirus/core/b/a/x;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v3, Lorg/antivirus/core/b/a/x;->i:J

    goto/16 :goto_9

    :cond_1a
    iget-object v0, v3, Lorg/antivirus/core/b/a/x;->b:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/16 v0, 0x10

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    iput v0, v3, Lorg/antivirus/core/b/a/x;->h:I

    const/16 v0, 0x17

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_1b

    iget v0, v3, Lorg/antivirus/core/b/a/x;->h:I

    mul-int/lit8 v0, v0, 0xf

    add-int/lit16 v0, v0, 0x87

    iput v0, v3, Lorg/antivirus/core/b/a/x;->h:I

    :cond_1b
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v3, Lorg/antivirus/core/b/a/x;->i:J

    goto/16 :goto_9

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    :cond_1d
    sget-object v0, Lorg/antivirus/core/b/a/r;->c:Lorg/antivirus/core/b/a/r;

    iput-object v0, v3, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    const/16 v0, 0x10

    const/16 v1, 0xc

    invoke-virtual {v2, v0, v1}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    const-wide v6, 0xc92a69c000L

    int-to-long v0, v0

    mul-long/2addr v6, v0

    iget-object v0, v3, Lorg/antivirus/core/b/a/x;->a:Lorg/antivirus/core/b/a/o;

    sget-object v1, Lorg/antivirus/core/b/a/o;->f:Lorg/antivirus/core/b/a/o;

    if-ne v0, v1, :cond_1e

    const-wide v0, 0x1ca8a755c6e0000L

    :goto_c
    add-long/2addr v0, v6

    iput-wide v0, v3, Lorg/antivirus/core/b/a/x;->i:J

    const/4 v0, 0x0

    iput v0, v3, Lorg/antivirus/core/b/a/x;->h:I

    goto/16 :goto_9

    :cond_1e
    const-wide v0, 0x1c84c094076c000L

    goto :goto_c

    :sswitch_0
    sget-object v0, Lorg/antivirus/core/b/a/u;->b:Lorg/antivirus/core/b/a/u;

    goto/16 :goto_a

    :sswitch_1
    sget-object v0, Lorg/antivirus/core/b/a/u;->c:Lorg/antivirus/core/b/a/u;

    goto/16 :goto_a

    :sswitch_2
    sget-object v0, Lorg/antivirus/core/b/a/u;->d:Lorg/antivirus/core/b/a/u;

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xfb -> :sswitch_0
        0x100 -> :sswitch_1
        0x105 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

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

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/antivirus/core/b/a/z;Ljava/lang/String;Lorg/antivirus/core/b/a/l;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/antivirus/core/b/a/o;->a:Lorg/antivirus/core/b/a/o;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lorg/antivirus/core/b/a/e;->a([Ljava/lang/String;Z)Lorg/antivirus/core/b/a/o;

    move-result-object v11

    const/4 v1, 0x0

    aget-object v6, v2, v1

    sget-object v1, Lorg/antivirus/core/b/a/o;->a:Lorg/antivirus/core/b/a/o;

    if-ne v11, v1, :cond_0

    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1

    :cond_0
    sget-object v1, Lorg/antivirus/core/b/a/o;->b:Lorg/antivirus/core/b/a/o;

    if-eq v11, v1, :cond_1

    sget-object v1, Lorg/antivirus/core/b/a/o;->c:Lorg/antivirus/core/b/a/o;

    if-ne v11, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_3

    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1

    :cond_3
    invoke-static {v11, v6}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iput-object v1, v2, Lorg/antivirus/core/b/a/x;->p:Ljava/lang/String;

    sget-object v1, Lorg/antivirus/core/b/a/w;->a:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v1, v0, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;

    sget-object v1, Lorg/antivirus/core/b/a/w;->a:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v1, v0, Lorg/antivirus/core/b/a/z;->d:Lorg/antivirus/core/b/a/w;

    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    const-string v5, ""

    const-string v3, ""

    const-string v4, ""

    const-string v2, ""

    const-string v1, ""

    sget-object v10, Lorg/antivirus/core/b/a/o;->d:Lorg/antivirus/core/b/a/o;

    if-eq v11, v10, :cond_4

    sget-object v10, Lorg/antivirus/core/b/a/o;->e:Lorg/antivirus/core/b/a/o;

    if-ne v11, v10, :cond_b

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v12, v10, -0x5

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_8

    const/16 v12, 0x24

    if-lt v10, v12, :cond_8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-static {v11, v6, v1}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v11, v6, v8, v2}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    move-object v8, v6

    move-object v9, v7

    move-object v7, v1

    move-object v14, v1

    move-object v1, v3

    move-object v3, v14

    :goto_1
    sget-object v4, Lorg/antivirus/core/b/a/v;->a:Lorg/antivirus/core/b/a/v;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/antivirus/core/b/a/l;->a:Lorg/antivirus/core/b/a/v;

    sget-object v5, Lorg/antivirus/core/b/a/v;->d:Lorg/antivirus/core/b/a/v;

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/antivirus/core/b/a/l;->a:Lorg/antivirus/core/b/a/v;

    :cond_5
    :try_start_0
    sget-object v4, Lorg/antivirus/core/b/a/o;->d:Lorg/antivirus/core/b/a/o;

    if-eq v11, v4, :cond_6

    sget-object v4, Lorg/antivirus/core/b/a/o;->e:Lorg/antivirus/core/b/a/o;

    if-eq v11, v4, :cond_6

    sget-object v4, Lorg/antivirus/core/b/a/o;->f:Lorg/antivirus/core/b/a/o;

    if-ne v11, v4, :cond_c

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_c

    :cond_7
    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1
    :try_end_0
    .catch Lorg/antivirus/core/b/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget-wide v1, v1, Lorg/antivirus/core/b/a/a;->a:J

    const-wide v3, 0xe0010407L

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x3e7

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1

    :cond_8
    add-int/lit8 v9, v10, -0x6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v9, v12, :cond_9

    const/16 v9, 0x1f

    if-lt v10, v9, :cond_9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v8, v3, v5

    invoke-static {v11, v6, v8, v3}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    move-object v8, v5

    move-object v9, v7

    move-object v7, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v7, v10, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_a

    const/16 v7, 0x1b

    if-lt v10, v7, :cond_a

    move-object v7, v3

    move-object v8, v5

    move-object v9, v6

    move-object v3, v1

    move-object v1, v4

    goto :goto_1

    :cond_a
    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1

    :cond_b
    sget-object v10, Lorg/antivirus/core/b/a/o;->f:Lorg/antivirus/core/b/a/o;

    if-ne v11, v10, :cond_16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1

    :sswitch_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-static {v11, v6, v1}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v4, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v11, v4, v8, v2}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    move-object v8, v4

    move-object v9, v7

    move-object v7, v1

    move-object v14, v1

    move-object v1, v3

    move-object v3, v14

    goto/16 :goto_1

    :sswitch_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v8, v3, v5

    invoke-static {v11, v6, v8, v3}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    move-object v8, v5

    move-object v9, v7

    move-object v7, v3

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_1

    :sswitch_2
    move-object v7, v3

    move-object v8, v5

    move-object v9, v6

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_1

    :cond_c
    :try_start_1
    invoke-direct {p0, v1}, Lorg/antivirus/core/b/a/h;->a(Ljava/lang/String;)Lorg/antivirus/core/b/a/v;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    invoke-static {v4, v1}, Lorg/antivirus/core/b/a/h;->a(Lorg/antivirus/core/b/a/x;Ljava/lang/String;)V

    invoke-static {v11, v1}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v2}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v11, v2}, Lorg/antivirus/core/b/a/d;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)I

    move-result v2

    invoke-static {v11, v3}, Lorg/antivirus/core/b/a/d;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iput v2, v3, Lorg/antivirus/core/b/a/x;->o:I
    :try_end_1
    .catch Lorg/antivirus/core/b/a/a; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v3, Lorg/antivirus/core/b/a/w;->c:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;

    const/4 v3, 0x0

    move v10, v3

    :goto_2
    sget v3, Lorg/antivirus/core/b/a/h;->b:I

    if-ge v10, v3, :cond_e

    sget-object v3, Lorg/antivirus/core/b/a/h;->a:[Lorg/antivirus/core/b/a/j;

    aget-object v3, v3, v10

    iget v3, v3, Lorg/antivirus/core/b/a/j;->a:I

    sget-object v4, Lorg/antivirus/core/b/a/h;->a:[Lorg/antivirus/core/b/a/j;

    aget-object v4, v4, v10

    iget v4, v4, Lorg/antivirus/core/b/a/j;->b:I

    sget-object v5, Lorg/antivirus/core/b/a/h;->a:[Lorg/antivirus/core/b/a/j;

    aget-object v5, v5, v10

    iget-wide v5, v5, Lorg/antivirus/core/b/a/j;->c:J

    invoke-static/range {v1 .. v6}, Lorg/antivirus/core/b/a/h;->a(Ljava/lang/String;IIIJ)V

    if-nez v10, :cond_d

    sget-object v3, Lorg/antivirus/core/b/a/w;->d:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;

    :cond_d
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_2

    :cond_e
    sget-object v2, Lorg/antivirus/core/b/a/w;->b:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/antivirus/core/b/a/a; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :try_start_3
    sget-object v2, Lorg/antivirus/core/b/a/w;->c:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/antivirus/core/b/a/z;->d:Lorg/antivirus/core/b/a/w;

    const/4 v2, 0x0

    move v10, v2

    :goto_4
    sget v2, Lorg/antivirus/core/b/a/h;->d:I

    if-ge v10, v2, :cond_10

    sget-object v2, Lorg/antivirus/core/b/a/h;->c:[Lorg/antivirus/core/b/a/j;

    aget-object v2, v2, v10

    iget v3, v2, Lorg/antivirus/core/b/a/j;->a:I

    sget-object v2, Lorg/antivirus/core/b/a/h;->c:[Lorg/antivirus/core/b/a/j;

    aget-object v2, v2, v10

    iget v4, v2, Lorg/antivirus/core/b/a/j;->b:I

    sget-object v2, Lorg/antivirus/core/b/a/h;->c:[Lorg/antivirus/core/b/a/j;

    aget-object v2, v2, v10

    iget-wide v5, v2, Lorg/antivirus/core/b/a/j;->c:J

    move v2, v12

    invoke-static/range {v1 .. v6}, Lorg/antivirus/core/b/a/h;->a(Ljava/lang/String;IIIJ)V

    if-nez v10, :cond_f

    sget-object v2, Lorg/antivirus/core/b/a/w;->d:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/antivirus/core/b/a/z;->d:Lorg/antivirus/core/b/a/w;

    :cond_f
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_4

    :cond_10
    sget-object v2, Lorg/antivirus/core/b/a/w;->b:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/antivirus/core/b/a/z;->d:Lorg/antivirus/core/b/a/w;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/antivirus/core/b/a/a; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    :try_start_4
    move-object/from16 v0, p1

    iput-object v1, v0, Lorg/antivirus/core/b/a/z;->a:Ljava/lang/String;
    :try_end_4
    .catch Lorg/antivirus/core/b/a/a; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_11
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_12

    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1
    :try_end_5
    .catch Lorg/antivirus/core/b/a/a; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    iget-wide v1, v1, Lorg/antivirus/core/b/a/a;->a:J

    const-wide v3, 0xe0010407L

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    new-instance v1, Lorg/antivirus/core/b/a/a;

    const-wide/16 v2, 0x3e7

    invoke-direct {v1, v2, v3}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v1

    :cond_12
    :try_start_6
    invoke-direct {p0, v8}, Lorg/antivirus/core/b/a/h;->a(Ljava/lang/String;)Lorg/antivirus/core/b/a/v;

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    invoke-static {v1, v8}, Lorg/antivirus/core/b/a/h;->a(Lorg/antivirus/core/b/a/x;Ljava/lang/String;)V

    invoke-static {v11, v8}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v7}, Lorg/antivirus/core/b/a/e;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lorg/antivirus/core/b/a/d;->a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iput v2, v3, Lorg/antivirus/core/b/a/x;->o:I
    :try_end_6
    .catch Lorg/antivirus/core/b/a/a; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    sget-object v3, Lorg/antivirus/core/b/a/w;->c:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;

    const/4 v3, 0x0

    move v7, v3

    :goto_6
    sget v3, Lorg/antivirus/core/b/a/h;->b:I

    if-ge v7, v3, :cond_14

    sget-object v3, Lorg/antivirus/core/b/a/h;->a:[Lorg/antivirus/core/b/a/j;

    aget-object v3, v3, v7

    iget v3, v3, Lorg/antivirus/core/b/a/j;->a:I

    sget-object v4, Lorg/antivirus/core/b/a/h;->a:[Lorg/antivirus/core/b/a/j;

    aget-object v4, v4, v7

    iget v4, v4, Lorg/antivirus/core/b/a/j;->b:I

    sget-object v5, Lorg/antivirus/core/b/a/h;->a:[Lorg/antivirus/core/b/a/j;

    aget-object v5, v5, v7

    iget-wide v5, v5, Lorg/antivirus/core/b/a/j;->c:J

    invoke-static/range {v1 .. v6}, Lorg/antivirus/core/b/a/h;->a(Ljava/lang/String;IIIJ)V

    if-nez v7, :cond_13

    sget-object v3, Lorg/antivirus/core/b/a/w;->d:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;

    :cond_13
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_6

    :cond_14
    sget-object v1, Lorg/antivirus/core/b/a/w;->b:Lorg/antivirus/core/b/a/w;

    move-object/from16 v0, p1

    iput-object v1, v0, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/antivirus/core/b/a/a; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    move-object/from16 v0, p1

    iput-object v8, v0, Lorg/antivirus/core/b/a/z;->a:Ljava/lang/String;
    :try_end_8
    .catch Lorg/antivirus/core/b/a/a; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0, v9}, Lorg/antivirus/core/b/a/h;->a(Ljava/lang/String;)Lorg/antivirus/core/b/a/v;

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    invoke-static {v1, v9}, Lorg/antivirus/core/b/a/h;->a(Lorg/antivirus/core/b/a/x;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v9, v0, Lorg/antivirus/core/b/a/z;->a:Ljava/lang/String;

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v2

    goto/16 :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_3

    :cond_16
    move-object v8, v5

    move-object v9, v7

    move-object v7, v3

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_2
        0x1f -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method
