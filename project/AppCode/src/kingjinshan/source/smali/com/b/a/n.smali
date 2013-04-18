.class public final Lcom/b/a/n;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# static fields
.field public static final a:I = 0x1000

.field public static final b:I = 0x4

.field public static final c:I = 0x8


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I

.field private final g:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    .line 86
    iput-object p2, p0, Lcom/b/a/n;->d:[B

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 88
    array-length v0, p2

    iput v0, p0, Lcom/b/a/n;->e:I

    .line 89
    return-void
.end method

.method private constructor <init>([BI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    .line 79
    iput-object p1, p0, Lcom/b/a/n;->d:[B

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 81
    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/b/a/n;->e:I

    .line 82
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static a(I)I
    .locals 1
    .parameter

    .prologue
    const/16 v0, 0x1000

    .line 72
    if-le p0, v0, :cond_0

    .line 73
    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/b/a/n;
    .locals 1
    .parameter

    .prologue
    .line 96
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/b/a/n;->a(Ljava/io/OutputStream;I)Lcom/b/a/n;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/b/a/n;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/b/a/n;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/b/a/n;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static a([B)Lcom/b/a/n;
    .locals 2
    .parameter

    .prologue
    .line 116
    array-length v0, p0

    new-instance v1, Lcom/b/a/n;

    invoke-direct {v1, p0, v0}, Lcom/b/a/n;-><init>([BI)V

    return-object v1
.end method

.method private static a([BI)Lcom/b/a/n;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/b/a/n;

    invoke-direct {v0, p0, p1}, Lcom/b/a/n;-><init>([BI)V

    return-object v0
.end method

.method private a(B)V
    .locals 3
    .parameter

    .prologue
    .line 861
    iget v0, p0, Lcom/b/a/n;->f:I

    iget v1, p0, Lcom/b/a/n;->e:I

    if-ne v0, v1, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/b/a/n;->l()V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/b/a/n;->d:[B

    iget v1, p0, Lcom/b/a/n;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/b/a/n;->f:I

    aput-byte p1, v0, v1

    .line 866
    return-void
.end method

.method private a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/b/a/n;->a(F)V

    .line 146
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/b/a/n;->a(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private a(Lcom/b/a/i;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 917
    iget v0, p0, Lcom/b/a/n;->e:I

    iget v1, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    .line 919
    iget-object v0, p0, Lcom/b/a/n;->d:[B

    iget v1, p0, Lcom/b/a/n;->f:I

    invoke-virtual {p1, v0, v7, v1, p2}, Lcom/b/a/i;->a([BIII)V

    .line 920
    iget v0, p0, Lcom/b/a/n;->f:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget v0, p0, Lcom/b/a/n;->e:I

    iget v1, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v0, v1

    .line 925
    iget-object v1, p0, Lcom/b/a/n;->d:[B

    iget v2, p0, Lcom/b/a/n;->f:I

    invoke-virtual {p1, v1, v7, v2, v0}, Lcom/b/a/i;->a([BIII)V

    .line 926
    add-int/lit8 v1, v0, 0x0

    .line 927
    sub-int v0, p2, v0

    .line 928
    iget v2, p0, Lcom/b/a/n;->e:I

    iput v2, p0, Lcom/b/a/n;->f:I

    .line 929
    invoke-direct {p0}, Lcom/b/a/n;->l()V

    .line 934
    iget v2, p0, Lcom/b/a/n;->e:I

    if-gt v0, v2, :cond_2

    .line 936
    iget-object v2, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {p1, v2, v1, v7, v0}, Lcom/b/a/i;->a([BIII)V

    .line 937
    iput v0, p0, Lcom/b/a/n;->f:I

    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/i;->c()Ljava/io/InputStream;

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
    iget-object v1, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {v1, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 955
    sub-int/2addr v0, v3

    .line 948
    :cond_4
    if-lez v0, :cond_0

    .line 949
    iget v1, p0, Lcom/b/a/n;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 950
    iget-object v3, p0, Lcom/b/a/n;->d:[B

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

.method public static b()I
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static b(ILjava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1}, Lcom/b/a/n;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/b/a/i;)I
    .locals 2
    .parameter

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/b/a/i;->a()I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->r(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/i;->a()I

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

    invoke-static {v1}, Lcom/b/a/n;->r(I)I

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

.method private b([B)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 880
    array-length v0, p1

    iget v1, p0, Lcom/b/a/n;->e:I

    iget v2, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/b/a/n;->d:[B

    iget v2, p0, Lcom/b/a/n;->f:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/b/a/n;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 881
    :goto_0
    return-void

    .line 880
    :cond_0
    iget v1, p0, Lcom/b/a/n;->e:I

    iget v2, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/n;->d:[B

    iget v3, p0, Lcom/b/a/n;->f:I

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/n;->e:I

    iput v1, p0, Lcom/b/a/n;->f:I

    invoke-direct {p0}, Lcom/b/a/n;->l()V

    iget v1, p0, Lcom/b/a/n;->e:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/b/a/n;->d:[B

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/b/a/n;->f:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private b([BI)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 886
    iget v0, p0, Lcom/b/a/n;->e:I

    iget v1, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_0

    .line 888
    iget-object v0, p0, Lcom/b/a/n;->d:[B

    iget v1, p0, Lcom/b/a/n;->f:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    iget v0, p0, Lcom/b/a/n;->f:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 912
    :goto_0
    return-void

    .line 893
    :cond_0
    iget v0, p0, Lcom/b/a/n;->e:I

    iget v1, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v0, v1

    .line 894
    iget-object v1, p0, Lcom/b/a/n;->d:[B

    iget v2, p0, Lcom/b/a/n;->f:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    add-int/lit8 v1, v0, 0x0

    .line 896
    sub-int v0, p2, v0

    .line 897
    iget v2, p0, Lcom/b/a/n;->e:I

    iput v2, p0, Lcom/b/a/n;->f:I

    .line 898
    invoke-direct {p0}, Lcom/b/a/n;->l()V

    .line 903
    iget v2, p0, Lcom/b/a/n;->e:I

    if-gt v0, v2, :cond_1

    .line 905
    iget-object v2, p0, Lcom/b/a/n;->d:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 906
    iput v0, p0, Lcom/b/a/n;->f:I

    goto :goto_0

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 624
    const/16 v0, 0x8

    return v0
.end method

.method public static c(ILcom/b/a/i;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1}, Lcom/b/a/n;->b(Lcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Lcom/b/a/ex;)I
    .locals 1
    .parameter

    .prologue
    .line 707
    invoke-interface {p0}, Lcom/b/a/ex;->b()I

    move-result v0

    return v0
.end method

.method private c(Lcom/b/a/i;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 875
    invoke-virtual {p1}, Lcom/b/a/i;->a()I

    move-result v0

    iget v1, p0, Lcom/b/a/n;->e:I

    iget v2, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/b/a/n;->d:[B

    iget v2, p0, Lcom/b/a/n;->f:I

    invoke-virtual {p1, v1, v7, v2, v0}, Lcom/b/a/i;->a([BIII)V

    iget v1, p0, Lcom/b/a/n;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget v1, p0, Lcom/b/a/n;->e:I

    iget v2, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/n;->d:[B

    iget v3, p0, Lcom/b/a/n;->f:I

    invoke-virtual {p1, v2, v7, v3, v1}, Lcom/b/a/i;->a([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/n;->e:I

    iput v1, p0, Lcom/b/a/n;->f:I

    invoke-direct {p0}, Lcom/b/a/n;->l()V

    iget v1, p0, Lcom/b/a/n;->e:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {p1, v1, v2, v7, v0}, Lcom/b/a/i;->a([BIII)V

    iput v0, p0, Lcom/b/a/n;->f:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/b/a/i;->c()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v3, v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {v2, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_0

    iget v2, p0, Lcom/b/a/n;->e:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {v1, v3, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x4

    return v0
.end method

.method public static d(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1}, Lcom/b/a/n;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(IJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/b/a/n;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/b/a/ex;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Lcom/b/a/ex;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/b/a/i;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 612
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/b/a/n;->p(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/b/a/n;->k(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Lcom/b/a/ex;)I
    .locals 2
    .parameter

    .prologue
    .line 728
    invoke-interface {p0}, Lcom/b/a/ex;->b()I

    move-result v0

    .line 729
    invoke-static {v0}, Lcom/b/a/n;->r(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 669
    const/16 v0, 0x8

    return v0
.end method

.method public static e(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 556
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1}, Lcom/b/a/n;->l(I)I

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
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/b/a/n;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(ILcom/b/a/ex;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1}, Lcom/b/a/n;->d(Lcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private e(Lcom/b/a/ex;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    invoke-interface {p1, p0}, Lcom/b/a/ex;->a(Lcom/b/a/n;)V

    .line 375
    return-void
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x4

    return v0
.end method

.method public static f(ILcom/b/a/ex;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/b/a/n;->p(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/b/a/n;->k(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(J)I
    .locals 1
    .parameter

    .prologue
    .line 640
    invoke-static {p0, p1}, Lcom/b/a/n;->i(J)I

    move-result v0

    return v0
.end method

.method private static f(Lcom/b/a/ex;)I
    .locals 1
    .parameter

    .prologue
    .line 720
    invoke-interface {p0}, Lcom/b/a/ex;->b()I

    move-result v0

    return v0
.end method

.method private f(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 260
    invoke-direct {p0, p2, p3}, Lcom/b/a/n;->l(J)V

    .line 261
    return-void
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public static g(J)I
    .locals 1
    .parameter

    .prologue
    .line 648
    invoke-static {p0, p1}, Lcom/b/a/n;->i(J)I

    move-result v0

    return v0
.end method

.method private g(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 253
    invoke-direct {p0, p2}, Lcom/b/a/n;->x(I)V

    .line 254
    return-void
.end method

.method private g(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 274
    invoke-virtual {p0, p2, p3}, Lcom/b/a/n;->e(J)V

    .line 275
    return-void
.end method

.method private g(ILcom/b/a/ex;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/b/a/n;->a(ILcom/b/a/ex;)V

    .line 216
    return-void
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x4

    return v0
.end method

.method private static h(IJ)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 590
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/b/a/n;->j(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/b/a/n;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static h(ILcom/b/a/ex;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 521
    invoke-static {p0, p1}, Lcom/b/a/n;->d(ILcom/b/a/ex;)I

    move-result v0

    return v0
.end method

.method public static h(J)I
    .locals 2
    .parameter

    .prologue
    .line 786
    invoke-static {p0, p1}, Lcom/b/a/n;->j(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/b/a/n;->i(J)I

    move-result v0

    return v0
.end method

.method private h(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/b/a/n;->h(I)V

    .line 268
    return-void
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 770
    const/16 v0, 0x8

    return v0
.end method

.method public static i(I)I
    .locals 1
    .parameter

    .prologue
    .line 471
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static i(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p1}, Lcom/b/a/n;->s(I)I

    move-result v1

    invoke-static {v1}, Lcom/b/a/n;->r(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static i(J)I
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

.method public static j(I)I
    .locals 1
    .parameter

    .prologue
    .line 480
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static j(J)J
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

.method public static k(I)I
    .locals 2
    .parameter

    .prologue
    .line 547
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/b/a/n;->p(I)I

    move-result v0

    invoke-static {p0}, Lcom/b/a/n;->r(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private k(J)V
    .locals 6
    .parameter

    .prologue
    .line 1004
    move-wide v0, p1

    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1005
    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1006
    return-void

    .line 1008
    :cond_0
    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-direct {p0, v2}, Lcom/b/a/n;->w(I)V

    .line 1009
    const/4 v2, 0x7

    ushr-long/2addr v0, v2

    goto :goto_0
.end method

.method public static l(I)I
    .locals 1
    .parameter

    .prologue
    .line 656
    if-ltz p0, :cond_0

    .line 657
    invoke-static {p0}, Lcom/b/a/n;->r(I)I

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/b/a/o;

    invoke-direct {v0}, Lcom/b/a/o;-><init>()V

    throw v0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/b/a/n;->d:[B

    iget v2, p0, Lcom/b/a/n;->f:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    iput v3, p0, Lcom/b/a/n;->f:I

    .line 805
    return-void
.end method

.method private l(J)V
    .locals 2
    .parameter

    .prologue
    .line 1040
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1041
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1042
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1043
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1044
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1045
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1046
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1047
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1048
    return-void
.end method

.method private m()I
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 823
    iget v0, p0, Lcom/b/a/n;->e:I

    iget v1, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v0, v1

    return v0

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m(I)I
    .locals 1
    .parameter

    .prologue
    .line 746
    invoke-static {p0}, Lcom/b/a/n;->r(I)I

    move-result v0

    return v0
.end method

.method public static n(I)I
    .locals 1
    .parameter

    .prologue
    .line 754
    invoke-static {p0}, Lcom/b/a/n;->l(I)I

    move-result v0

    return v0
.end method

.method public static o(I)I
    .locals 1
    .parameter

    .prologue
    .line 778
    invoke-static {p0}, Lcom/b/a/n;->s(I)I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->r(I)I

    move-result v0

    return v0
.end method

.method public static p(I)I
    .locals 1
    .parameter

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/b/a/go;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/b/a/n;->r(I)I

    move-result v0

    return v0
.end method

.method public static r(I)I
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

.method public static s(I)I
    .locals 2
    .parameter

    .prologue
    .line 1064
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private static t(I)I
    .locals 1
    .parameter

    .prologue
    .line 438
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static u(I)I
    .locals 1
    .parameter

    .prologue
    .line 565
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static v(I)I
    .locals 1
    .parameter

    .prologue
    .line 574
    invoke-static {p0}, Lcom/b/a/n;->p(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private w(I)V
    .locals 4
    .parameter

    .prologue
    .line 870
    int-to-byte v0, p1

    iget v1, p0, Lcom/b/a/n;->f:I

    iget v2, p0, Lcom/b/a/n;->e:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/b/a/n;->l()V

    :cond_0
    iget-object v1, p0, Lcom/b/a/n;->d:[B

    iget v2, p0, Lcom/b/a/n;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/b/a/n;->f:I

    aput-byte v0, v1, v2

    .line 871
    return-void
.end method

.method private x(I)V
    .locals 1
    .parameter

    .prologue
    .line 1030
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1031
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1032
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1033
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 1034
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 2
    .parameter

    .prologue
    .line 137
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->f(II)V

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/b/a/n;->b(D)V

    .line 139
    return-void
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/b/a/n;->x(I)V

    .line 313
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/b/a/n;->c(I)V

    .line 167
    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 152
    invoke-direct {p0, p2, p3}, Lcom/b/a/n;->k(J)V

    .line 153
    return-void
.end method

.method public final a(ILcom/b/a/ex;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 201
    invoke-interface {p2, p0}, Lcom/b/a/ex;->a(Lcom/b/a/n;)V

    .line 202
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 203
    return-void
.end method

.method public final a(ILcom/b/a/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 229
    invoke-virtual {p0, p2}, Lcom/b/a/n;->a(Lcom/b/a/i;)V

    .line 230
    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 187
    invoke-virtual {p0, p2}, Lcom/b/a/n;->a(Z)V

    .line 188
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/b/a/n;->k(J)V

    .line 318
    return-void
.end method

.method public final a(Lcom/b/a/ex;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    invoke-interface {p1, p0}, Lcom/b/a/ex;->a(Lcom/b/a/n;)V

    .line 363
    return-void
.end method

.method public final a(Lcom/b/a/i;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 385
    invoke-virtual {p1}, Lcom/b/a/i;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->q(I)V

    .line 386
    invoke-virtual {p1}, Lcom/b/a/i;->a()I

    move-result v0

    iget v1, p0, Lcom/b/a/n;->e:I

    iget v2, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/b/a/n;->d:[B

    iget v2, p0, Lcom/b/a/n;->f:I

    invoke-virtual {p1, v1, v7, v2, v0}, Lcom/b/a/i;->a([BIII)V

    iget v1, p0, Lcom/b/a/n;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget v1, p0, Lcom/b/a/n;->e:I

    iget v2, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/n;->d:[B

    iget v3, p0, Lcom/b/a/n;->f:I

    invoke-virtual {p1, v2, v7, v3, v1}, Lcom/b/a/i;->a([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/n;->e:I

    iput v1, p0, Lcom/b/a/n;->f:I

    invoke-direct {p0}, Lcom/b/a/n;->l()V

    iget v1, p0, Lcom/b/a/n;->e:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {p1, v1, v2, v7, v0}, Lcom/b/a/i;->a([BIII)V

    iput v0, p0, Lcom/b/a/n;->f:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/b/a/i;->c()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v3, v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {v2, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_0

    iget v2, p0, Lcom/b/a/n;->e:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/b/a/n;->d:[B

    invoke-virtual {v1, v3, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 355
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 356
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/b/a/n;->q(I)V

    .line 357
    array-length v1, v0

    iget v2, p0, Lcom/b/a/n;->e:I

    iget v3, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/b/a/n;->d:[B

    iget v3, p0, Lcom/b/a/n;->f:I

    invoke-static {v0, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/b/a/n;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/n;->f:I

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget v2, p0, Lcom/b/a/n;->e:I

    iget v3, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/b/a/n;->d:[B

    iget v4, p0, Lcom/b/a/n;->f:I

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x0

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/b/a/n;->e:I

    iput v2, p0, Lcom/b/a/n;->f:I

    invoke-direct {p0}, Lcom/b/a/n;->l()V

    iget v2, p0, Lcom/b/a/n;->e:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/b/a/n;->d:[B

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/b/a/n;->f:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 347
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 348
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(D)V
    .locals 2
    .parameter

    .prologue
    .line 307
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/b/a/n;->l(J)V

    .line 308
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/n;->f(II)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/b/a/n;->q(I)V

    .line 237
    return-void
.end method

.method public final b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 180
    invoke-direct {p0, p2}, Lcom/b/a/n;->x(I)V

    .line 181
    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/b/a/n;->k(J)V

    .line 160
    return-void
.end method

.method public final b(ILcom/b/a/ex;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 222
    invoke-virtual {p0, p2}, Lcom/b/a/n;->b(Lcom/b/a/ex;)V

    .line 223
    return-void
.end method

.method public final b(ILcom/b/a/i;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 297
    invoke-virtual {p0, v1, v0}, Lcom/b/a/n;->f(II)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/b/a/n;->b(I)V

    .line 299
    invoke-virtual {p0, v0, p2}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 300
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/b/a/n;->f(II)V

    .line 301
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Lcom/b/a/n;->k(J)V

    .line 323
    return-void
.end method

.method public final b(Lcom/b/a/ex;)V
    .locals 1
    .parameter

    .prologue
    .line 379
    invoke-interface {p1}, Lcom/b/a/ex;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->q(I)V

    .line 380
    invoke-interface {p1, p0}, Lcom/b/a/ex;->a(Lcom/b/a/n;)V

    .line 381
    return-void
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 327
    if-ltz p1, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lcom/b/a/n;->q(I)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/b/a/n;->k(J)V

    goto :goto_0
.end method

.method public final c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 246
    invoke-virtual {p0, p2}, Lcom/b/a/n;->c(I)V

    .line 247
    return-void
.end method

.method public final c(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/b/a/n;->f(II)V

    .line 173
    invoke-direct {p0, p2, p3}, Lcom/b/a/n;->l(J)V

    .line 174
    return-void
.end method

.method public final c(ILcom/b/a/ex;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0, v1, v0}, Lcom/b/a/n;->f(II)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/b/a/n;->b(I)V

    .line 286
    invoke-virtual {p0, v0, p2}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 287
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/b/a/n;->f(II)V

    .line 288
    return-void
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/b/a/n;->l(J)V

    .line 338
    return-void
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/b/a/n;->x(I)V

    .line 343
    return-void
.end method

.method public final d(J)V
    .locals 0
    .parameter

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Lcom/b/a/n;->l(J)V

    .line 410
    return-void
.end method

.method public final e(I)V
    .locals 0
    .parameter

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/b/a/n;->q(I)V

    .line 392
    return-void
.end method

.method public final e(J)V
    .locals 2
    .parameter

    .prologue
    .line 419
    invoke-static {p1, p2}, Lcom/b/a/n;->j(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/b/a/n;->k(J)V

    .line 420
    return-void
.end method

.method public final f(I)V
    .locals 0
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/b/a/n;->c(I)V

    .line 400
    return-void
.end method

.method public final f(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 964
    invoke-static {p1, p2}, Lcom/b/a/go;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->q(I)V

    .line 965
    return-void
.end method

.method public final g(I)V
    .locals 0
    .parameter

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/b/a/n;->x(I)V

    .line 405
    return-void
.end method

.method public final h(I)V
    .locals 1
    .parameter

    .prologue
    .line 414
    invoke-static {p1}, Lcom/b/a/n;->s(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/n;->q(I)V

    .line 415
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/b/a/n;->l()V

    .line 815
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/b/a/n;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/n;->e:I

    iget v1, p0, Lcom/b/a/n;->f:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_1
    return-void
.end method

.method public final q(I)V
    .locals 2
    .parameter

    .prologue
    .line 978
    move v0, p1

    :goto_0
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_0

    .line 979
    invoke-direct {p0, v0}, Lcom/b/a/n;->w(I)V

    .line 980
    return-void

    .line 982
    :cond_0
    and-int/lit8 v1, v0, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-direct {p0, v1}, Lcom/b/a/n;->w(I)V

    .line 983
    ushr-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method
