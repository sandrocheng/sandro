.class public final Lcom/google/a/e;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/e;->d:Ljava/io/OutputStream;

    .line 79
    iput-object p1, p0, Lcom/google/a/e;->a:[B

    .line 80
    iput p2, p0, Lcom/google/a/e;->c:I

    .line 81
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/a/e;->b:I

    .line 82
    return-void
.end method

.method public static a([B)Lcom/google/a/e;
    .locals 2
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/a/e;->a([BII)Lcom/google/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/a/e;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/google/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/e;-><init>([BII)V

    return-object v0
.end method

.method public static b(D)I
    .locals 1
    .parameter

    .prologue
    .line 624
    const/16 v0, 0x8

    return v0
.end method

.method public static b(F)I
    .locals 1
    .parameter

    .prologue
    .line 632
    const/4 v0, 0x4

    return v0
.end method

.method public static b(IF)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/a/c;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/google/a/c;)I
    .locals 2
    .parameter

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/a/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->p(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/a/c;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 694
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 695
    array-length v1, v0

    invoke-static {v1}, Lcom/google/a/e;->p(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Z)I
    .locals 1
    .parameter

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public static c(Lcom/google/a/aa;)I
    .locals 1
    .parameter

    .prologue
    .line 707
    invoke-interface {p0}, Lcom/google/a/aa;->w()I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lcom/google/a/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/google/a/f;

    invoke-direct {v0}, Lcom/google/a/f;-><init>()V

    throw v0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/google/a/e;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/a/e;->a:[B

    iget v2, p0, Lcom/google/a/e;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    iput v3, p0, Lcom/google/a/e;->c:I

    .line 805
    return-void
.end method

.method public static d(IJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/a/e;->f(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/google/a/aa;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->d(Lcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Lcom/google/a/aa;)I
    .locals 2
    .parameter

    .prologue
    .line 728
    invoke-interface {p0}, Lcom/google/a/aa;->w()I

    move-result v0

    .line 729
    invoke-static {v0}, Lcom/google/a/e;->p(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(IJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/a/e;->g(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 547
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->i(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(IJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 590
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/a/e;->j(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(J)I
    .locals 1
    .parameter

    .prologue
    .line 640
    invoke-static {p0, p1}, Lcom/google/a/e;->l(J)I

    move-result v0

    return v0
.end method

.method public static g(I)I
    .locals 1
    .parameter

    .prologue
    .line 656
    if-ltz p0, :cond_0

    .line 657
    invoke-static {p0}, Lcom/google/a/e;->p(I)I

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static g(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 556
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->j(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(J)I
    .locals 1
    .parameter

    .prologue
    .line 648
    invoke-static {p0, p1}, Lcom/google/a/e;->l(J)I

    move-result v0

    return v0
.end method

.method public static h(I)I
    .locals 1
    .parameter

    .prologue
    .line 677
    const/4 v0, 0x4

    return v0
.end method

.method public static h(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-static {p0}, Lcom/google/a/e;->n(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/a/e;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(J)I
    .locals 1
    .parameter

    .prologue
    .line 669
    const/16 v0, 0x8

    return v0
.end method

.method public static i(I)I
    .locals 1
    .parameter

    .prologue
    .line 746
    invoke-static {p0}, Lcom/google/a/e;->p(I)I

    move-result v0

    return v0
.end method

.method public static i(J)I
    .locals 1
    .parameter

    .prologue
    .line 770
    const/16 v0, 0x8

    return v0
.end method

.method public static j(I)I
    .locals 1
    .parameter

    .prologue
    .line 754
    invoke-static {p0}, Lcom/google/a/e;->g(I)I

    move-result v0

    return v0
.end method

.method public static j(J)I
    .locals 2
    .parameter

    .prologue
    .line 786
    invoke-static {p0, p1}, Lcom/google/a/e;->n(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/a/e;->l(J)I

    move-result v0

    return v0
.end method

.method public static k(I)I
    .locals 1
    .parameter

    .prologue
    .line 762
    const/4 v0, 0x4

    return v0
.end method

.method public static l(I)I
    .locals 1
    .parameter

    .prologue
    .line 778
    invoke-static {p0}, Lcom/google/a/e;->r(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->p(I)I

    move-result v0

    return v0
.end method

.method public static l(J)I
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1016
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1025
    :goto_0
    return v0

    .line 1017
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1018
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1019
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1020
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1021
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 1022
    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 1023
    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 1024
    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 1025
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static n(I)I
    .locals 1
    .parameter

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/a/ap;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/a/e;->p(I)I

    move-result v0

    return v0
.end method

.method public static n(J)J
    .locals 4
    .parameter

    .prologue
    .line 1079
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static p(I)I
    .locals 1
    .parameter

    .prologue
    .line 994
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 998
    :goto_0
    return v0

    .line 995
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 996
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 997
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 998
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static r(I)I
    .locals 2
    .parameter

    .prologue
    .line 1064
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/a/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 823
    iget v0, p0, Lcom/google/a/e;->b:I

    iget v1, p0, Lcom/google/a/e;->c:I

    sub-int/2addr v0, v1

    return v0

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(B)V
    .locals 3
    .parameter

    .prologue
    .line 861
    iget v0, p0, Lcom/google/a/e;->c:I

    iget v1, p0, Lcom/google/a/e;->b:I

    if-ne v0, v1, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/google/a/e;->c()V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/google/a/e;->a:[B

    iget v1, p0, Lcom/google/a/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/e;->c:I

    aput-byte p1, v0, v1

    .line 866
    return-void
.end method

.method public a(D)V
    .locals 2
    .parameter

    .prologue
    .line 307
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->m(J)V

    .line 308
    return-void
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->q(I)V

    .line 313
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 327
    if-ltz p1, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lcom/google/a/e;->o(I)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->k(J)V

    goto :goto_0
.end method

.method public a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(F)V

    .line 146
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(I)V

    .line 167
    return-void
.end method

.method public a(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 152
    invoke-virtual {p0, p2, p3}, Lcom/google/a/e;->a(J)V

    .line 153
    return-void
.end method

.method public a(ILcom/google/a/aa;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(Lcom/google/a/aa;)V

    .line 202
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 203
    return-void
.end method

.method public a(ILcom/google/a/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 229
    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(Lcom/google/a/c;)V

    .line 230
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 187
    invoke-virtual {p0, p2}, Lcom/google/a/e;->a(Z)V

    .line 188
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/a/e;->k(J)V

    .line 318
    return-void
.end method

.method public a(Lcom/google/a/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    invoke-interface {p1, p0}, Lcom/google/a/aa;->a(Lcom/google/a/e;)V

    .line 363
    return-void
.end method

.method public a(Lcom/google/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/google/a/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->o(I)V

    .line 386
    invoke-virtual {p0, p1}, Lcom/google/a/e;->c(Lcom/google/a/c;)V

    .line 387
    return-void
.end method

.method public a(Lcom/google/a/c;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 917
    iget v0, p0, Lcom/google/a/e;->b:I

    iget v1, p0, Lcom/google/a/e;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_1

    .line 919
    iget-object v0, p0, Lcom/google/a/e;->a:[B

    iget v1, p0, Lcom/google/a/e;->c:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/a/c;->a([BIII)V

    .line 920
    iget v0, p0, Lcom/google/a/e;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/a/e;->c:I

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget v0, p0, Lcom/google/a/e;->b:I

    iget v1, p0, Lcom/google/a/e;->c:I

    sub-int/2addr v0, v1

    .line 925
    iget-object v1, p0, Lcom/google/a/e;->a:[B

    iget v2, p0, Lcom/google/a/e;->c:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/google/a/c;->a([BIII)V

    .line 926
    add-int v1, p2, v0

    .line 927
    sub-int v0, p3, v0

    .line 928
    iget v2, p0, Lcom/google/a/e;->b:I

    iput v2, p0, Lcom/google/a/e;->c:I

    .line 929
    invoke-direct {p0}, Lcom/google/a/e;->c()V

    .line 934
    iget v2, p0, Lcom/google/a/e;->b:I

    if-gt v0, v2, :cond_2

    .line 936
    iget-object v2, p0, Lcom/google/a/e;->a:[B

    invoke-virtual {p1, v2, v1, v7, v0}, Lcom/google/a/c;->a([BIII)V

    .line 937
    iput v0, p0, Lcom/google/a/e;->c:I

    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {p1}, Lcom/google/a/c;->c()Ljava/io/InputStream;

    move-result-object v2

    .line 944
    int-to-long v3, v1

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    .line 945
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_3
    iget-object v1, p0, Lcom/google/a/e;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/google/a/e;->a:[B

    invoke-virtual {v1, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 955
    sub-int/2addr v0, v3

    .line 948
    :cond_4
    if-lez v0, :cond_0

    .line 949
    iget v1, p0, Lcom/google/a/e;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 950
    iget-object v3, p0, Lcom/google/a/e;->a:[B

    invoke-virtual {v2, v3, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 951
    if-eq v3, v1, :cond_3

    .line 952
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 356
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/a/e;->o(I)V

    .line 357
    invoke-virtual {p0, v0}, Lcom/google/a/e;->b([B)V

    .line 358
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 347
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 348
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/google/a/e;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/google/a/e;->q(I)V

    .line 343
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 236
    invoke-virtual {p0, p2}, Lcom/google/a/e;->c(I)V

    .line 237
    return-void
.end method

.method public b(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 159
    invoke-virtual {p0, p2, p3}, Lcom/google/a/e;->b(J)V

    .line 160
    return-void
.end method

.method public b(ILcom/google/a/aa;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 222
    invoke-virtual {p0, p2}, Lcom/google/a/e;->b(Lcom/google/a/aa;)V

    .line 223
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/a/e;->k(J)V

    .line 323
    return-void
.end method

.method public b(Lcom/google/a/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 379
    invoke-interface {p1}, Lcom/google/a/aa;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->o(I)V

    .line 380
    invoke-interface {p1, p0}, Lcom/google/a/aa;->a(Lcom/google/a/e;)V

    .line 381
    return-void
.end method

.method public b([B)V
    .locals 2
    .parameter

    .prologue
    .line 880
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/a/e;->b([BII)V

    .line 881
    return-void
.end method

.method public b([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    iget v0, p0, Lcom/google/a/e;->b:I

    iget v1, p0, Lcom/google/a/e;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 888
    iget-object v0, p0, Lcom/google/a/e;->a:[B

    iget v1, p0, Lcom/google/a/e;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    iget v0, p0, Lcom/google/a/e;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/a/e;->c:I

    .line 912
    :goto_0
    return-void

    .line 893
    :cond_0
    iget v0, p0, Lcom/google/a/e;->b:I

    iget v1, p0, Lcom/google/a/e;->c:I

    sub-int/2addr v0, v1

    .line 894
    iget-object v1, p0, Lcom/google/a/e;->a:[B

    iget v2, p0, Lcom/google/a/e;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    add-int v1, p2, v0

    .line 896
    sub-int v0, p3, v0

    .line 897
    iget v2, p0, Lcom/google/a/e;->b:I

    iput v2, p0, Lcom/google/a/e;->c:I

    .line 898
    invoke-direct {p0}, Lcom/google/a/e;->c()V

    .line 903
    iget v2, p0, Lcom/google/a/e;->b:I

    if-gt v0, v2, :cond_1

    .line 905
    iget-object v2, p0, Lcom/google/a/e;->a:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 906
    iput v0, p0, Lcom/google/a/e;->c:I

    goto :goto_0

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/google/a/e;->d:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/google/a/e;->o(I)V

    .line 392
    return-void
.end method

.method public c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 246
    invoke-virtual {p0, p2}, Lcom/google/a/e;->d(I)V

    .line 247
    return-void
.end method

.method public c(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 274
    invoke-virtual {p0, p2, p3}, Lcom/google/a/e;->e(J)V

    .line 275
    return-void
.end method

.method public c(ILcom/google/a/aa;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0, v1, v2}, Lcom/google/a/e;->i(II)V

    .line 285
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/a/e;->b(II)V

    .line 286
    invoke-virtual {p0, v2, p2}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 287
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/a/e;->i(II)V

    .line 288
    return-void
.end method

.method public c(J)V
    .locals 0
    .parameter

    .prologue
    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/google/a/e;->m(J)V

    .line 338
    return-void
.end method

.method public c(Lcom/google/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/a/c;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/a/e;->a(Lcom/google/a/c;II)V

    .line 876
    return-void
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/google/a/e;->a(I)V

    .line 400
    return-void
.end method

.method public d(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e;->i(II)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/google/a/e;->f(I)V

    .line 268
    return-void
.end method

.method public d(J)V
    .locals 0
    .parameter

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/google/a/e;->m(J)V

    .line 410
    return-void
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/google/a/e;->q(I)V

    .line 405
    return-void
.end method

.method public e(J)V
    .locals 2
    .parameter

    .prologue
    .line 419
    invoke-static {p1, p2}, Lcom/google/a/e;->n(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/a/e;->k(J)V

    .line 420
    return-void
.end method

.method public f(I)V
    .locals 1
    .parameter

    .prologue
    .line 414
    invoke-static {p1}, Lcom/google/a/e;->r(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->o(I)V

    .line 415
    return-void
.end method

.method public i(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 964
    invoke-static {p1, p2}, Lcom/google/a/ap;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/e;->o(I)V

    .line 965
    return-void
.end method

.method public k(J)V
    .locals 4
    .parameter

    .prologue
    .line 1004
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1005
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1006
    return-void

    .line 1008
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1009
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public m(I)V
    .locals 1
    .parameter

    .prologue
    .line 870
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/a/e;->a(B)V

    .line 871
    return-void
.end method

.method public m(J)V
    .locals 2
    .parameter

    .prologue
    .line 1040
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1041
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1042
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1043
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1044
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1045
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1046
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1047
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1048
    return-void
.end method

.method public o(I)V
    .locals 1
    .parameter

    .prologue
    .line 978
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 979
    invoke-virtual {p0, p1}, Lcom/google/a/e;->m(I)V

    .line 980
    return-void

    .line 982
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 983
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public q(I)V
    .locals 1
    .parameter

    .prologue
    .line 1030
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1031
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1032
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1033
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/a/e;->m(I)V

    .line 1034
    return-void
.end method
