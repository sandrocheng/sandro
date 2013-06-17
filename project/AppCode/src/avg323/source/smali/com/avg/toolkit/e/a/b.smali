.class public Lcom/avg/toolkit/e/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Vector;

.field b:Lcom/avg/toolkit/e/a/o;

.field private c:[C

.field private d:[C


# direct methods
.method public constructor <init>(Lcom/avg/toolkit/e/a/o;)V
    .locals 2

    const/16 v1, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/avg/toolkit/e/a/b;->c:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/avg/toolkit/e/a/b;->d:[C

    iput-object p1, p0, Lcom/avg/toolkit/e/a/b;->b:Lcom/avg/toolkit/e/a/o;

    return-void

    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x39t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(I)C
    .locals 3

    mul-int/lit8 v0, p1, 0x5

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/avg/toolkit/e/a/b;->b(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/b;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/b;->b()[C

    move-result-object v1

    aget-char v0, v1, v0

    return v0
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method a([CCI)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-char v1, p1, v0

    if-ne p2, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(C)V
    .locals 3

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/b;->b()[C

    move-result-object v0

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/b;->c()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/avg/toolkit/e/a/b;->a([CCI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_0
    new-instance v1, Lcom/avg/toolkit/e/a/b;

    iget-object v2, p0, Lcom/avg/toolkit/e/a/b;->b:Lcom/avg/toolkit/e/a/o;

    invoke-direct {v1, v2}, Lcom/avg/toolkit/e/a/b;-><init>(Lcom/avg/toolkit/e/a/o;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/avg/toolkit/e/a/b;->a(II)V

    invoke-virtual {p0, v1}, Lcom/avg/toolkit/e/a/b;->b(Lcom/avg/toolkit/e/a/b;)V

    return-void
.end method

.method a(II)V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/avg/toolkit/e/a/b;->a(III)V

    return-void
.end method

.method public a(III)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v4, p3, :cond_2

    and-int v0, p1, v3

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object v5, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge p2, v5, :cond_1

    iget-object v5, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v5, p2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p1, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    iput-object v0, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    return-void
.end method

.method public b(II)I
    .locals 5

    const/4 v1, 0x0

    add-int v0, p1, p2

    iget-object v2, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ge v3, p2, :cond_1

    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    add-int v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-eqz v0, :cond_2

    or-int v0, v1, v2

    :goto_1
    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method b(Lcom/avg/toolkit/e/a/b;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    iget-object v2, p1, Lcom/avg/toolkit/e/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()[C
    .locals 3

    sget-object v0, Lcom/avg/toolkit/e/a/c;->a:[I

    iget-object v1, p0, Lcom/avg/toolkit/e/a/b;->b:Lcom/avg/toolkit/e/a/o;

    invoke-virtual {v1}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->c:[C

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->d:[C

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method c()I
    .locals 3

    sget-object v0, Lcom/avg/toolkit/e/a/c;->a:[I

    iget-object v1, p0, Lcom/avg/toolkit/e/a/b;->b:Lcom/avg/toolkit/e/a/o;

    invoke-virtual {v1}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->c:[C

    array-length v0, v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/avg/toolkit/e/a/b;->d:[C

    array-length v0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
