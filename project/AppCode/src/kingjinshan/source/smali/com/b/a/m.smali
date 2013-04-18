.class public final Lcom/b/a/m;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# static fields
.field private static final l:I = 0x40

.field private static final m:I = 0x4000000

.field private static final n:I = 0x1000


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const v0, 0x7fffffff

    iput v0, p0, Lcom/b/a/m;->h:I

    .line 520
    const/16 v0, 0x40

    iput v0, p0, Lcom/b/a/m;->j:I

    .line 523
    const/high16 v0, 0x400

    iput v0, p0, Lcom/b/a/m;->k:I

    .line 538
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/a/m;->a:[B

    .line 539
    iput v1, p0, Lcom/b/a/m;->b:I

    .line 540
    iput v1, p0, Lcom/b/a/m;->d:I

    .line 541
    iput v1, p0, Lcom/b/a/m;->g:I

    .line 542
    iput-object p1, p0, Lcom/b/a/m;->e:Ljava/io/InputStream;

    .line 543
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const v0, 0x7fffffff

    iput v0, p0, Lcom/b/a/m;->h:I

    .line 520
    const/16 v0, 0x40

    iput v0, p0, Lcom/b/a/m;->j:I

    .line 523
    const/high16 v0, 0x400

    iput v0, p0, Lcom/b/a/m;->k:I

    .line 530
    iput-object p1, p0, Lcom/b/a/m;->a:[B

    .line 531
    add-int v0, p2, p3

    iput v0, p0, Lcom/b/a/m;->b:I

    .line 532
    iput p2, p0, Lcom/b/a/m;->d:I

    .line 533
    neg-int v0, p2

    iput v0, p0, Lcom/b/a/m;->g:I

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/m;->e:Ljava/io/InputStream;

    .line 535
    return-void
.end method

.method private A()I
    .locals 2

    .prologue
    .line 674
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method private B()B
    .locals 3

    .prologue
    .line 733
    iget v0, p0, Lcom/b/a/m;->d:I

    iget v1, p0, Lcom/b/a/m;->b:I

    if-ne v0, v1, :cond_0

    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/b/a/m;->a(Z)Z

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/b/a/m;->a:[B

    iget v1, p0, Lcom/b/a/m;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/b/a/m;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public static a(ILjava/io/InputStream;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 393
    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    move v0, p0

    .line 416
    :goto_0
    return v0

    .line 397
    :cond_0
    and-int/lit8 v0, p0, 0x7f

    .line 398
    const/4 v1, 0x7

    move v5, v1

    move v1, v0

    move v0, v5

    .line 399
    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_4

    .line 400
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 401
    if-ne v2, v4, :cond_1

    .line 402
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 404
    :cond_1
    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    .line 405
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    move v0, v1

    .line 406
    goto :goto_0

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 410
    :cond_3
    add-int/lit8 v0, v0, 0x7

    :cond_4
    const/16 v2, 0x40

    if-ge v0, v2, :cond_6

    .line 411
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 412
    if-ne v2, v4, :cond_5

    .line 413
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 415
    :cond_5
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_3

    move v0, v1

    .line 416
    goto :goto_0

    .line 419
    :cond_6
    invoke-static {}, Lcom/b/a/es;->c()Lcom/b/a/es;

    move-result-object v0

    throw v0
.end method

.method private static a(J)J
    .locals 4
    .parameter

    .prologue
    .line 494
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/b/a/m;
    .locals 1
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/b/a/m;

    invoke-direct {v0, p0}, Lcom/b/a/m;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a([B)Lcom/b/a/m;
    .locals 2
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/b/a/m;->a([BII)Lcom/b/a/m;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/b/a/m;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/b/a/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/m;-><init>([BII)V

    .line 77
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/b/a/m;->c(I)I
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(ILcom/b/a/ey;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/b/a/m;->a(ILcom/b/a/ey;Lcom/b/a/df;)V

    .line 263
    return-void
.end method

.method private a(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 685
    iget v0, p0, Lcom/b/a/m;->d:I

    iget v1, p0, Lcom/b/a/m;->b:I

    if-ge v0, v1, :cond_0

    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/m;->h:I

    if-ne v0, v1, :cond_2

    .line 692
    if-eqz p1, :cond_1

    .line 693
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    .line 722
    :goto_0
    return v0

    .line 699
    :cond_2
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/m;->g:I

    .line 701
    iput v2, p0, Lcom/b/a/m;->d:I

    .line 702
    iget-object v0, p0, Lcom/b/a/m;->e:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v3

    :goto_1
    iput v0, p0, Lcom/b/a/m;->b:I

    .line 703
    iget v0, p0, Lcom/b/a/m;->b:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/b/a/m;->b:I

    if-ge v0, v3, :cond_5

    .line 704
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_4
    iget-object v0, p0, Lcom/b/a/m;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/b/a/m;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 708
    :cond_5
    iget v0, p0, Lcom/b/a/m;->b:I

    if-ne v0, v3, :cond_7

    .line 709
    iput v2, p0, Lcom/b/a/m;->b:I

    .line 710
    if-eqz p1, :cond_6

    .line 711
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    .line 713
    goto :goto_0

    .line 716
    :cond_7
    invoke-direct {p0}, Lcom/b/a/m;->y()V

    .line 717
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/m;->c:I

    add-int/2addr v0, v1

    .line 719
    iget v1, p0, Lcom/b/a/m;->k:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 720
    :cond_8
    invoke-static {}, Lcom/b/a/es;->h()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 722
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)I
    .locals 2
    .parameter

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 380
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 381
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 383
    :cond_0
    invoke-static {v0, p0}, Lcom/b/a/m;->a(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private static e(I)I
    .locals 2
    .parameter

    .prologue
    .line 480
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private f(I)I
    .locals 3
    .parameter

    .prologue
    .line 553
    if-gez p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    iget v0, p0, Lcom/b/a/m;->j:I

    .line 558
    iput p1, p0, Lcom/b/a/m;->j:I

    .line 559
    return v0
.end method

.method private g(I)I
    .locals 3
    .parameter

    .prologue
    .line 579
    if-gez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    iget v0, p0, Lcom/b/a/m;->k:I

    .line 584
    iput p1, p0, Lcom/b/a/m;->k:I

    .line 585
    return v0
.end method

.method private h(I)[B
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x1000

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 746
    if-gez p1, :cond_0

    .line 747
    invoke-static {}, Lcom/b/a/es;->b()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 750
    :cond_0
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/b/a/m;->h:I

    if-le v0, v1, :cond_1

    .line 752
    iget v0, p0, Lcom/b/a/m;->h:I

    iget v1, p0, Lcom/b/a/m;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/b/a/m;->i(I)V

    .line 754
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 757
    :cond_1
    iget v0, p0, Lcom/b/a/m;->b:I

    iget v1, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 759
    new-array v0, p1, [B

    .line 760
    iget-object v1, p0, Lcom/b/a/m;->a:[B

    iget v2, p0, Lcom/b/a/m;->d:I

    invoke-static {v1, v2, v0, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    iget v1, p0, Lcom/b/a/m;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/b/a/m;->d:I

    .line 842
    :goto_0
    return-object v0

    .line 763
    :cond_2
    if-ge p1, v10, :cond_4

    .line 768
    new-array v0, p1, [B

    .line 769
    iget v1, p0, Lcom/b/a/m;->b:I

    iget v2, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v1, v2

    .line 770
    iget-object v2, p0, Lcom/b/a/m;->a:[B

    iget v3, p0, Lcom/b/a/m;->d:I

    invoke-static {v2, v3, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    iget v2, p0, Lcom/b/a/m;->b:I

    iput v2, p0, Lcom/b/a/m;->d:I

    .line 776
    invoke-direct {p0, v4}, Lcom/b/a/m;->a(Z)Z

    .line 778
    :goto_1
    sub-int v2, p1, v1

    iget v3, p0, Lcom/b/a/m;->b:I

    if-le v2, v3, :cond_3

    .line 779
    iget-object v2, p0, Lcom/b/a/m;->a:[B

    iget v3, p0, Lcom/b/a/m;->b:I

    invoke-static {v2, v8, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    iget v2, p0, Lcom/b/a/m;->b:I

    add-int/2addr v1, v2

    .line 781
    iget v2, p0, Lcom/b/a/m;->b:I

    iput v2, p0, Lcom/b/a/m;->d:I

    .line 782
    invoke-direct {p0, v4}, Lcom/b/a/m;->a(Z)Z

    goto :goto_1

    .line 785
    :cond_3
    iget-object v2, p0, Lcom/b/a/m;->a:[B

    sub-int v3, p1, v1

    invoke-static {v2, v8, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    sub-int v1, p1, v1

    iput v1, p0, Lcom/b/a/m;->d:I

    goto :goto_0

    .line 800
    :cond_4
    iget v0, p0, Lcom/b/a/m;->d:I

    .line 801
    iget v1, p0, Lcom/b/a/m;->b:I

    .line 804
    iget v2, p0, Lcom/b/a/m;->g:I

    iget v3, p0, Lcom/b/a/m;->b:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/b/a/m;->g:I

    .line 805
    iput v8, p0, Lcom/b/a/m;->d:I

    .line 806
    iput v8, p0, Lcom/b/a/m;->b:I

    .line 809
    sub-int v2, v1, v0

    sub-int v2, p1, v2

    .line 810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 812
    :goto_2
    if-lez v2, :cond_8

    .line 813
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    move v5, v8

    .line 815
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 816
    iget-object v6, p0, Lcom/b/a/m;->e:Ljava/io/InputStream;

    if-nez v6, :cond_5

    move v6, v9

    .line 818
    :goto_4
    if-ne v6, v9, :cond_6

    .line 819
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 816
    :cond_5
    iget-object v6, p0, Lcom/b/a/m;->e:Ljava/io/InputStream;

    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-virtual {v6, v4, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    goto :goto_4

    .line 821
    :cond_6
    iget v7, p0, Lcom/b/a/m;->g:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/b/a/m;->g:I

    .line 822
    add-int/2addr v5, v6

    .line 823
    goto :goto_3

    .line 824
    :cond_7
    array-length v5, v4

    sub-int/2addr v2, v5

    .line 825
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 829
    :cond_8
    new-array v2, p1, [B

    .line 832
    sub-int/2addr v1, v0

    .line 833
    iget-object v4, p0, Lcom/b/a/m;->a:[B

    invoke-static {v4, v0, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 837
    array-length v3, p0

    invoke-static {p0, v8, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    array-length v3, p0

    add-int/2addr v1, v3

    goto :goto_5

    :cond_9
    move-object v0, v2

    .line 842
    goto/16 :goto_0
.end method

.method private i(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 853
    if-gez p1, :cond_0

    .line 854
    invoke-static {}, Lcom/b/a/es;->b()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 857
    :cond_0
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/b/a/m;->h:I

    if-le v0, v1, :cond_1

    .line 859
    iget v0, p0, Lcom/b/a/m;->h:I

    iget v1, p0, Lcom/b/a/m;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/b/a/m;->i(I)V

    .line 861
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 864
    :cond_1
    iget v0, p0, Lcom/b/a/m;->b:I

    iget v1, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 866
    iget v0, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/b/a/m;->d:I

    .line 884
    :goto_0
    return-void

    .line 869
    :cond_2
    iget v0, p0, Lcom/b/a/m;->b:I

    iget v1, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v0, v1

    .line 870
    iget v1, p0, Lcom/b/a/m;->b:I

    iput v1, p0, Lcom/b/a/m;->d:I

    .line 875
    invoke-direct {p0, v3}, Lcom/b/a/m;->a(Z)Z

    .line 876
    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/b/a/m;->b:I

    if-le v1, v2, :cond_3

    .line 877
    iget v1, p0, Lcom/b/a/m;->b:I

    add-int/2addr v0, v1

    .line 878
    iget v1, p0, Lcom/b/a/m;->b:I

    iput v1, p0, Lcom/b/a/m;->d:I

    .line 879
    invoke-direct {p0, v3}, Lcom/b/a/m;->a(Z)Z

    goto :goto_1

    .line 882
    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/b/a/m;->d:I

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/m;->a()I

    move-result v0

    .line 168
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/b/a/m;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :cond_1
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/b/a/m;->d:I

    neg-int v0, v0

    iput v0, p0, Lcom/b/a/m;->g:I

    .line 593
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 626
    iget v0, p0, Lcom/b/a/m;->b:I

    iget v1, p0, Lcom/b/a/m;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/m;->b:I

    .line 627
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->b:I

    add-int/2addr v0, v1

    .line 628
    iget v1, p0, Lcom/b/a/m;->h:I

    if-le v0, v1, :cond_0

    .line 630
    iget v1, p0, Lcom/b/a/m;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/m;->c:I

    .line 631
    iget v0, p0, Lcom/b/a/m;->b:I

    iget v1, p0, Lcom/b/a/m;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/m;->b:I

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/m;->c:I

    goto :goto_0
.end method

.method private z()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    iget v0, p0, Lcom/b/a/m;->d:I

    iget v1, p0, Lcom/b/a/m;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/b/a/m;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lcom/b/a/m;->d:I

    iget v1, p0, Lcom/b/a/m;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/b/a/m;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 100
    iput v2, p0, Lcom/b/a/m;->f:I

    move v0, v2

    .line 110
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    iput v0, p0, Lcom/b/a/m;->f:I

    .line 105
    iget v0, p0, Lcom/b/a/m;->f:I

    invoke-static {v0}, Lcom/b/a/go;->b(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-static {}, Lcom/b/a/es;->d()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 110
    :cond_2
    iget v0, p0, Lcom/b/a/m;->f:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/b/a/m;->f:I

    if-eq v0, p1, :cond_0

    .line 124
    invoke-static {}, Lcom/b/a/es;->e()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public final a(ILcom/b/a/ey;Lcom/b/a/df;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iget v0, p0, Lcom/b/a/m;->i:I

    iget v1, p0, Lcom/b/a/m;->j:I

    if-lt v0, v1, :cond_0

    .line 237
    invoke-static {}, Lcom/b/a/es;->g()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 239
    :cond_0
    iget v0, p0, Lcom/b/a/m;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/m;->i:I

    .line 240
    invoke-interface {p2, p0, p3}, Lcom/b/a/ey;->c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;

    .line 241
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/b/a/go;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/m;->a(I)V

    .line 243
    iget v0, p0, Lcom/b/a/m;->i:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/m;->i:I

    .line 244
    return-void
.end method

.method public final a(Lcom/b/a/ey;Lcom/b/a/df;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    .line 270
    iget v1, p0, Lcom/b/a/m;->i:I

    iget v2, p0, Lcom/b/a/m;->j:I

    if-lt v1, v2, :cond_0

    .line 271
    invoke-static {}, Lcom/b/a/es;->g()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 273
    :cond_0
    invoke-virtual {p0, v0}, Lcom/b/a/m;->c(I)I

    move-result v0

    .line 274
    iget v1, p0, Lcom/b/a/m;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/m;->i:I

    .line 275
    invoke-interface {p1, p0, p2}, Lcom/b/a/ey;->c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/b/a/m;->a(I)V

    .line 277
    iget v1, p0, Lcom/b/a/m;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/b/a/m;->i:I

    .line 278
    invoke-virtual {p0, v0}, Lcom/b/a/m;->d(I)V

    .line 279
    return-void
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/b/a/m;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-static {p1}, Lcom/b/a/go;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-static {}, Lcom/b/a/es;->f()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 137
    :pswitch_0
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move v0, v2

    .line 155
    :goto_0
    return v0

    .line 140
    :pswitch_1
    invoke-virtual {p0}, Lcom/b/a/m;->u()J

    move v0, v2

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/b/a/m;->i(I)V

    move v0, v2

    .line 144
    goto :goto_0

    .line 146
    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/b/a/m;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/b/a/m;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :cond_1
    invoke-static {p1}, Lcom/b/a/go;->b(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/b/a/go;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/m;->a(I)V

    move v0, v2

    .line 150
    goto :goto_0

    .line 152
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :pswitch_5
    invoke-virtual {p0}, Lcom/b/a/m;->t()I

    move v0, v2

    .line 155
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/b/a/m;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 2
    .parameter

    .prologue
    .line 610
    if-gez p1, :cond_0

    .line 611
    invoke-static {}, Lcom/b/a/es;->b()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 613
    :cond_0
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 614
    iget v1, p0, Lcom/b/a/m;->h:I

    .line 615
    if-le v0, v1, :cond_1

    .line 616
    invoke-static {}, Lcom/b/a/es;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 618
    :cond_1
    iput v0, p0, Lcom/b/a/m;->h:I

    .line 620
    invoke-direct {p0}, Lcom/b/a/m;->y()V

    .line 622
    return v1
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/b/a/m;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput p1, p0, Lcom/b/a/m;->h:I

    .line 644
    invoke-direct {p0}, Lcom/b/a/m;->y()V

    .line 645
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/b/a/m;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/b/a/m;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/b/a/m;->t()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    .line 219
    iget v1, p0, Lcom/b/a/m;->b:I

    iget v2, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 222
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/m;->a:[B

    iget v3, p0, Lcom/b/a/m;->d:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 223
    iget v2, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/b/a/m;->d:I

    move-object v0, v1

    .line 227
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/b/a/m;->h(I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final k()Lcom/b/a/i;
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    .line 284
    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    .line 294
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget v1, p0, Lcom/b/a/m;->b:I

    iget v2, p0, Lcom/b/a/m;->d:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 289
    iget-object v1, p0, Lcom/b/a/m;->a:[B

    iget v2, p0, Lcom/b/a/m;->d:I

    invoke-static {v1, v2, v0}, Lcom/b/a/i;->a([BII)Lcom/b/a/i;

    move-result-object v1

    .line 290
    iget v2, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/b/a/m;->d:I

    move-object v0, v1

    .line 291
    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {p0, v0}, Lcom/b/a/m;->h(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/i;->a([B)Lcom/b/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/b/a/m;->t()I

    move-result v0

    return v0
.end method

.method public final o()J
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/b/a/m;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()I
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/b/a/m;->r()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final q()J
    .locals 6

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/b/a/m;->s()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final r()I
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v0

    .line 339
    if-ltz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 343
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v1

    if-ltz v1, :cond_2

    .line 344
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 346
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 347
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v1

    if-ltz v1, :cond_3

    .line 348
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 350
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 351
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v1

    if-ltz v1, :cond_4

    .line 352
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 354
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 355
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 356
    if-gez v1, :cond_0

    .line 358
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 359
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v2

    if-gez v2, :cond_0

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_5
    invoke-static {}, Lcom/b/a/es;->c()Lcom/b/a/es;

    move-result-object v0

    throw v0
.end method

.method public final s()J
    .locals 8

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    const-wide/16 v1, 0x0

    move-wide v6, v1

    move v2, v0

    move-wide v0, v6

    .line 426
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v3

    .line 428
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 429
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 430
    return-wide v0

    .line 432
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 433
    goto :goto_0

    .line 434
    :cond_1
    invoke-static {}, Lcom/b/a/es;->c()Lcom/b/a/es;

    move-result-object v0

    throw v0
.end method

.method public final t()I
    .locals 4

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v0

    .line 440
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v1

    .line 441
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v2

    .line 442
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v3

    .line 443
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final u()J
    .locals 13

    .prologue
    const-wide/16 v11, 0xff

    .line 451
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v0

    .line 452
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v1

    .line 453
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v2

    .line 454
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v3

    .line 455
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v4

    .line 456
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v5

    .line 457
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v6

    .line 458
    invoke-direct {p0}, Lcom/b/a/m;->B()B

    move-result v7

    .line 459
    int-to-long v8, v0

    and-long/2addr v8, v11

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final v()I
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/b/a/m;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 653
    const/4 v0, -0x1

    .line 657
    :goto_0
    return v0

    .line 656
    :cond_0
    iget v0, p0, Lcom/b/a/m;->g:I

    iget v1, p0, Lcom/b/a/m;->d:I

    add-int/2addr v0, v1

    .line 657
    iget v1, p0, Lcom/b/a/m;->h:I

    sub-int v0, v1, v0

    goto :goto_0
.end method
