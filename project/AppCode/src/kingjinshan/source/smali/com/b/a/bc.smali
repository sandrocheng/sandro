.class public final Lcom/b/a/bc;
.super Lcom/b/a/dq;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bf;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Lcom/b/a/bd;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/util/List;

.field private k:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9563
    invoke-direct {p0}, Lcom/b/a/dq;-><init>()V

    .line 9850
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9886
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9964
    sget-object v0, Lcom/b/a/bd;->a:Lcom/b/a/bd;

    iput-object v0, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    .line 10051
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 9564
    invoke-direct {p0}, Lcom/b/a/bc;->V()V

    .line 9565
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 9549
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bc;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9568
    invoke-direct {p0, p1}, Lcom/b/a/dq;-><init>(Lcom/b/a/dp;)V

    .line 9850
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9886
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9964
    sget-object v0, Lcom/b/a/bd;->a:Lcom/b/a/bd;

    iput-object v0, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    .line 10051
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 9569
    invoke-direct {p0}, Lcom/b/a/bc;->V()V

    .line 9570
    return-void
.end method

.method static synthetic E()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9549
    new-instance v0, Lcom/b/a/bc;

    invoke-direct {v0}, Lcom/b/a/bc;-><init>()V

    return-object v0
.end method

.method private static U()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9554
    invoke-static {}, Lcom/b/a/p;->t()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private V()V
    .locals 1

    .prologue
    .line 9572
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 9573
    invoke-direct {p0}, Lcom/b/a/bc;->an()Lcom/b/a/fc;

    .line 9575
    :cond_0
    return-void
.end method

.method private static W()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9577
    new-instance v0, Lcom/b/a/bc;

    invoke-direct {v0}, Lcom/b/a/bc;-><init>()V

    return-object v0
.end method

.method private X()Lcom/b/a/bc;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9581
    invoke-super {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    .line 9582
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9583
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9584
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9585
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9586
    iput-boolean v1, p0, Lcom/b/a/bc;->d:Z

    .line 9587
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9588
    iput-boolean v1, p0, Lcom/b/a/bc;->e:Z

    .line 9589
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9590
    sget-object v0, Lcom/b/a/bd;->a:Lcom/b/a/bd;

    iput-object v0, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    .line 9591
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9592
    iput-boolean v1, p0, Lcom/b/a/bc;->g:Z

    .line 9593
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9594
    iput-boolean v1, p0, Lcom/b/a/bc;->h:Z

    .line 9595
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9596
    iput-boolean v1, p0, Lcom/b/a/bc;->i:Z

    .line 9597
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9598
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 9599
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 9600
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9604
    :goto_0
    return-object p0

    .line 9602
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private Y()Lcom/b/a/bc;
    .locals 2

    .prologue
    .line 9608
    new-instance v0, Lcom/b/a/bc;

    invoke-direct {v0}, Lcom/b/a/bc;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/bc;->D()Lcom/b/a/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/bc;->a(Lcom/b/a/bb;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method private static Z()Lcom/b/a/bb;
    .locals 1

    .prologue
    .line 9617
    invoke-static {}, Lcom/b/a/bb;->e()Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bc;)Lcom/b/a/bb;
    .locals 2
    .parameter

    .prologue
    .line 9549
    invoke-virtual {p0}, Lcom/b/a/bc;->D()Lcom/b/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/bc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/cb;)Lcom/b/a/bc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10086
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 10087
    if-nez p2, :cond_0

    .line 10088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10090
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10091
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10092
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10096
    :goto_0
    return-object p0

    .line 10094
    :cond_1
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/cc;)Lcom/b/a/bc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10100
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10101
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10102
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10103
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10107
    :goto_0
    return-object p0

    .line 10105
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bd;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9972
    if-nez p1, :cond_0

    .line 9973
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9975
    :cond_0
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9976
    iput-object p1, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    .line 9977
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9978
    return-object p0
.end method

.method private a(Lcom/b/a/cb;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 10110
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 10111
    if-nez p1, :cond_0

    .line 10112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10114
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10115
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10116
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10120
    :goto_0
    return-object p0

    .line 10118
    :cond_1
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cc;)Lcom/b/a/bc;
    .locals 2
    .parameter

    .prologue
    .line 10138
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10139
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10140
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10141
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10145
    :goto_0
    return-object p0

    .line 10143
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 10160
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10161
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10162
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dq;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10163
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10167
    :goto_0
    return-object p0

    .line 10165
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9865
    if-nez p1, :cond_0

    .line 9866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9868
    :cond_0
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9869
    iput-object p1, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9870
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9871
    return-object p0
.end method

.method private a(Z)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9930
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9931
    iput-boolean p1, p0, Lcom/b/a/bc;->d:Z

    .line 9932
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9933
    return-object p0
.end method

.method private aa()Lcom/b/a/bb;
    .locals 2

    .prologue
    .line 9630
    invoke-virtual {p0}, Lcom/b/a/bc;->D()Lcom/b/a/bb;

    move-result-object v0

    .line 9631
    invoke-virtual {v0}, Lcom/b/a/bb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9632
    invoke-static {v0}, Lcom/b/a/bc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 9635
    :cond_0
    return-object v0
.end method

.method private ab()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9874
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9875
    invoke-static {}, Lcom/b/a/bb;->e()Lcom/b/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bb;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9876
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9877
    return-object p0
.end method

.method private ac()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9910
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9911
    invoke-static {}, Lcom/b/a/bb;->e()Lcom/b/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bb;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9912
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9913
    return-object p0
.end method

.method private ad()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9936
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/bc;->d:Z

    .line 9938
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9939
    return-object p0
.end method

.method private ae()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9957
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/bc;->e:Z

    .line 9959
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9960
    return-object p0
.end method

.method private af()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9981
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9982
    sget-object v0, Lcom/b/a/bd;->a:Lcom/b/a/bd;

    iput-object v0, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    .line 9983
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9984
    return-object p0
.end method

.method private ag()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 10002
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 10003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/bc;->g:Z

    .line 10004
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10005
    return-object p0
.end method

.method private ah()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 10023
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 10024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/bc;->h:Z

    .line 10025
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10026
    return-object p0
.end method

.method private ai()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 10044
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 10045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/bc;->i:Z

    .line 10046
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10047
    return-object p0
.end method

.method private aj()V
    .locals 2

    .prologue
    .line 10054
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 10055
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 10056
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 10058
    :cond_0
    return-void
.end method

.method private ak()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 10170
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 10172
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 10173
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10177
    :goto_0
    return-object p0

    .line 10175
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private al()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 10209
    invoke-direct {p0}, Lcom/b/a/bc;->an()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private am()Ljava/util/List;
    .locals 1

    .prologue
    .line 10219
    invoke-direct {p0}, Lcom/b/a/bc;->an()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private an()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 10224
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10225
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    iget v2, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bc;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/bc;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    .line 10231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 10233
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    return-object v0

    .line 10225
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private b(ILcom/b/a/cb;)Lcom/b/a/bc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10124
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 10125
    if-nez p2, :cond_0

    .line 10126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10128
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10129
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10130
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10134
    :goto_0
    return-object p0

    .line 10132
    :cond_1
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cc;)Lcom/b/a/bc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10149
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10150
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10151
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10152
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10156
    :goto_0
    return-object p0

    .line 10154
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9901
    if-nez p1, :cond_0

    .line 9902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9904
    :cond_0
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9905
    iput-object p1, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9906
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9907
    return-object p0
.end method

.method private b(Z)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9951
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9952
    iput-boolean p1, p0, Lcom/b/a/bc;->e:Z

    .line 9953
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9954
    return-object p0
.end method

.method private c(I)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 10180
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10181
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 10182
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10183
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10187
    :goto_0
    return-object p0

    .line 10185
    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private c(Z)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9996
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9997
    iput-boolean p1, p0, Lcom/b/a/bc;->g:Z

    .line 9998
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9999
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9689
    instance-of v0, p1, Lcom/b/a/bb;

    if-eqz v0, :cond_0

    .line 9690
    check-cast p1, Lcom/b/a/bb;

    invoke-virtual {p0, p1}, Lcom/b/a/bc;->a(Lcom/b/a/bb;)Lcom/b/a/bc;

    move-result-object v0

    .line 9693
    :goto_0
    return-object v0

    .line 9692
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dq;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 9693
    goto :goto_0
.end method

.method private d(Z)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 10017
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 10018
    iput-boolean p1, p0, Lcom/b/a/bc;->h:Z

    .line 10019
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10020
    return-object p0
.end method

.method private d(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 10191
    invoke-direct {p0}, Lcom/b/a/bc;->an()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private e(Z)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 10038
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 10039
    iput-boolean p1, p0, Lcom/b/a/bc;->i:Z

    .line 10040
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 10041
    return-object p0
.end method

.method private e(I)Lcom/b/a/cc;
    .locals 2
    .parameter

    .prologue
    .line 10214
    invoke-direct {p0}, Lcom/b/a/bc;->an()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 9880
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9881
    iput-object p1, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9882
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9883
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 9916
    iget v0, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9917
    iput-object p1, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9918
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9919
    return-void
.end method


# virtual methods
.method public final A()Lcom/b/a/bb;
    .locals 2

    .prologue
    .line 9621
    invoke-virtual {p0}, Lcom/b/a/bc;->D()Lcom/b/a/bb;

    move-result-object v0

    .line 9622
    invoke-virtual {v0}, Lcom/b/a/bb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9623
    invoke-static {v0}, Lcom/b/a/bc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 9625
    :cond_0
    return-object v0
.end method

.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9559
    invoke-static {}, Lcom/b/a/p;->u()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9613
    invoke-static {}, Lcom/b/a/bb;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/b/a/bb;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 9639
    new-instance v0, Lcom/b/a/bb;

    invoke-direct {v0, p0}, Lcom/b/a/bb;-><init>(Lcom/b/a/bc;)V

    .line 9640
    iget v1, p0, Lcom/b/a/bc;->a:I

    .line 9641
    const/4 v2, 0x0

    .line 9642
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 9645
    :cond_0
    iget-object v3, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/b/a/bb;->a(Lcom/b/a/bb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9646
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9647
    or-int/lit8 v2, v2, 0x2

    .line 9649
    :cond_1
    iget-object v3, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/b/a/bb;->b(Lcom/b/a/bb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9650
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9651
    or-int/lit8 v2, v2, 0x4

    .line 9653
    :cond_2
    iget-boolean v3, p0, Lcom/b/a/bc;->d:Z

    invoke-static {v0, v3}, Lcom/b/a/bb;->a(Lcom/b/a/bb;Z)Z

    .line 9654
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 9655
    or-int/lit8 v2, v2, 0x8

    .line 9657
    :cond_3
    iget-boolean v3, p0, Lcom/b/a/bc;->e:Z

    invoke-static {v0, v3}, Lcom/b/a/bb;->b(Lcom/b/a/bb;Z)Z

    .line 9658
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 9659
    or-int/lit8 v2, v2, 0x10

    .line 9661
    :cond_4
    iget-object v3, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    invoke-static {v0, v3}, Lcom/b/a/bb;->a(Lcom/b/a/bb;Lcom/b/a/bd;)Lcom/b/a/bd;

    .line 9662
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 9663
    or-int/lit8 v2, v2, 0x20

    .line 9665
    :cond_5
    iget-boolean v3, p0, Lcom/b/a/bc;->g:Z

    invoke-static {v0, v3}, Lcom/b/a/bb;->c(Lcom/b/a/bb;Z)Z

    .line 9666
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 9667
    or-int/lit8 v2, v2, 0x40

    .line 9669
    :cond_6
    iget-boolean v3, p0, Lcom/b/a/bc;->h:Z

    invoke-static {v0, v3}, Lcom/b/a/bb;->d(Lcom/b/a/bb;Z)Z

    .line 9670
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_9

    .line 9671
    or-int/lit16 v1, v2, 0x80

    .line 9673
    :goto_0
    iget-boolean v2, p0, Lcom/b/a/bc;->i:Z

    invoke-static {v0, v2}, Lcom/b/a/bb;->e(Lcom/b/a/bb;Z)Z

    .line 9674
    iget-object v2, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v2, :cond_8

    .line 9675
    iget v2, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_7

    .line 9676
    iget-object v2, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 9677
    iget v2, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/b/a/bc;->a:I

    .line 9679
    :cond_7
    iget-object v2, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/b/a/bb;->a(Lcom/b/a/bb;Ljava/util/List;)Ljava/util/List;

    .line 9683
    :goto_1
    invoke-static {v0, v1}, Lcom/b/a/bb;->a(Lcom/b/a/bb;I)I

    .line 9684
    invoke-virtual {p0}, Lcom/b/a/bc;->ab_()V

    .line 9685
    return-object v0

    .line 9681
    :cond_8
    iget-object v2, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v2}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/b/a/bb;->a(Lcom/b/a/bb;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->X()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->Y()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9549
    invoke-static {}, Lcom/b/a/bb;->e()Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9549
    invoke-static {}, Lcom/b/a/bb;->e()Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9549
    invoke-virtual {p0}, Lcom/b/a/bc;->D()Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9549
    invoke-virtual {p0}, Lcom/b/a/bc;->A()Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9549
    invoke-virtual {p0}, Lcom/b/a/bc;->D()Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9549
    invoke-virtual {p0}, Lcom/b/a/bc;->A()Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/bb;)Lcom/b/a/bc;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 9698
    invoke-static {}, Lcom/b/a/bb;->e()Lcom/b/a/bb;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9751
    :goto_0
    return-object v0

    .line 9699
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/bb;->t_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9700
    invoke-virtual {p1}, Lcom/b/a/bb;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-object v0, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9702
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/bb;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9703
    invoke-virtual {p1}, Lcom/b/a/bb;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-object v0, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9705
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/bb;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9706
    invoke-virtual {p1}, Lcom/b/a/bb;->u_()Z

    move-result v0

    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-boolean v0, p0, Lcom/b/a/bc;->d:Z

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9708
    :cond_5
    invoke-virtual {p1}, Lcom/b/a/bb;->v_()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9709
    invoke-virtual {p1}, Lcom/b/a/bb;->o()Z

    move-result v0

    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-boolean v0, p0, Lcom/b/a/bc;->e:Z

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9711
    :cond_6
    invoke-virtual {p1}, Lcom/b/a/bb;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9712
    invoke-virtual {p1}, Lcom/b/a/bb;->q()Lcom/b/a/bd;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-object v0, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9714
    :cond_8
    invoke-virtual {p1}, Lcom/b/a/bb;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9715
    invoke-virtual {p1}, Lcom/b/a/bb;->s()Z

    move-result v0

    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-boolean v0, p0, Lcom/b/a/bc;->g:Z

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9717
    :cond_9
    invoke-virtual {p1}, Lcom/b/a/bb;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9718
    invoke-virtual {p1}, Lcom/b/a/bb;->u()Z

    move-result v0

    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-boolean v0, p0, Lcom/b/a/bc;->h:Z

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9720
    :cond_a
    invoke-virtual {p1}, Lcom/b/a/bb;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9721
    invoke-virtual {p1}, Lcom/b/a/bb;->w()Z

    move-result v0

    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/b/a/bc;->a:I

    iput-boolean v0, p0, Lcom/b/a/bc;->i:Z

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9723
    :cond_b
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_e

    .line 9724
    invoke-static {p1}, Lcom/b/a/bb;->b(Lcom/b/a/bb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 9725
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9726
    invoke-static {p1}, Lcom/b/a/bb;->b(Lcom/b/a/bb;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 9727
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9732
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    .line 9749
    :cond_c
    :goto_2
    invoke-virtual {p0, p1}, Lcom/b/a/bc;->a(Lcom/b/a/dr;)V

    .line 9750
    invoke-virtual {p1}, Lcom/b/a/bb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bc;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 9751
    goto/16 :goto_0

    .line 9729
    :cond_d
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    .line 9730
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bb;->b(Lcom/b/a/bb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9735
    :cond_e
    invoke-static {p1}, Lcom/b/a/bb;->b(Lcom/b/a/bb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 9736
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 9737
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 9738
    iput-object v2, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    .line 9739
    invoke-static {p1}, Lcom/b/a/bb;->b(Lcom/b/a/bb;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    .line 9740
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/b/a/bc;->a:I

    .line 9741
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/b/a/bc;->an()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    goto :goto_2

    :cond_f
    move-object v0, v2

    goto :goto_3

    .line 9745
    :cond_10
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/bb;->b(Lcom/b/a/bb;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 9549
    invoke-direct {p0, p1}, Lcom/b/a/bc;->d(Lcom/b/a/ev;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9549
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 10078
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10079
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    .line 10081
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9755
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bc;->z()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 9756
    invoke-virtual {p0, v0}, Lcom/b/a/bc;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 9765
    :goto_1
    return v0

    .line 9755
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9761
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bc;->N()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 9763
    goto :goto_1

    .line 9765
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->Y()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 10195
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10196
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    .line 10197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9549
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->X()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9549
    invoke-direct {p0, p1}, Lcom/b/a/bc;->d(Lcom/b/a/ev;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9549
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->Y()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->Y()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9549
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bc;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 9772
    invoke-virtual {p0}, Lcom/b/a/bc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 9776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 9777
    sparse-switch v1, :sswitch_data_0

    .line 9783
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/bc;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9785
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9786
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    move-object v0, p0

    .line 9787
    :goto_1
    return-object v0

    .line 9779
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9780
    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    move-object v0, p0

    .line 9781
    goto :goto_1

    .line 9792
    :sswitch_1
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9793
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    goto :goto_0

    .line 9797
    :sswitch_2
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9798
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    goto :goto_0

    .line 9802
    :sswitch_3
    invoke-virtual {p1}, Lcom/b/a/m;->m()I

    move-result v1

    .line 9803
    invoke-static {v1}, Lcom/b/a/bd;->a(I)Lcom/b/a/bd;

    move-result-object v2

    .line 9804
    if-nez v2, :cond_1

    .line 9805
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/b/a/gi;->a(II)Lcom/b/a/gi;

    goto :goto_0

    .line 9807
    :cond_1
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9808
    iput-object v2, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    goto :goto_0

    .line 9813
    :sswitch_4
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9814
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/bc;->d:Z

    goto :goto_0

    .line 9818
    :sswitch_5
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9819
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/bc;->g:Z

    goto :goto_0

    .line 9823
    :sswitch_6
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9824
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/bc;->h:Z

    goto :goto_0

    .line 9828
    :sswitch_7
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9829
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/bc;->i:Z

    goto/16 :goto_0

    .line 9833
    :sswitch_8
    iget v1, p0, Lcom/b/a/bc;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/bc;->a:I

    .line 9834
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/bc;->e:Z

    goto/16 :goto_0

    .line 9838
    :sswitch_9
    invoke-static {}, Lcom/b/a/cb;->w()Lcom/b/a/cc;

    move-result-object v1

    .line 9839
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 9840
    invoke-virtual {v1}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/b/a/bc;->aj()V

    iget-object v2, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/bc;->af_()V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 9777
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x42 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x80 -> :sswitch_5
        0x88 -> :sswitch_6
        0x90 -> :sswitch_7
        0xa0 -> :sswitch_8
        0x1f3a -> :sswitch_9
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->Y()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->X()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->Y()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->X()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9855
    iget-object v0, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9856
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9857
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 9858
    iput-object v0, p0, Lcom/b/a/bc;->b:Ljava/lang/Object;

    .line 9861
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 9888
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9891
    iget-object v0, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9892
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9893
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 9894
    iput-object v0, p0, Lcom/b/a/bc;->c:Ljava/lang/Object;

    .line 9897
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 9924
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic m()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->Y()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 9549
    invoke-direct {p0}, Lcom/b/a/bc;->X()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 9948
    iget-boolean v0, p0, Lcom/b/a/bc;->e:Z

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 9966
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/b/a/bd;
    .locals 1

    .prologue
    .line 9969
    iget-object v0, p0, Lcom/b/a/bc;->f:Lcom/b/a/bd;

    return-object v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 9990
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 9993
    iget-boolean v0, p0, Lcom/b/a/bc;->g:Z

    return v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 10011
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9852
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 10014
    iget-boolean v0, p0, Lcom/b/a/bc;->h:Z

    return v0
.end method

.method public final u_()Z
    .locals 1

    .prologue
    .line 9927
    iget-boolean v0, p0, Lcom/b/a/bc;->d:Z

    return v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 10032
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v_()Z
    .locals 2

    .prologue
    .line 9945
    iget v0, p0, Lcom/b/a/bc;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 10035
    iget-boolean v0, p0, Lcom/b/a/bc;->i:Z

    return v0
.end method

.method public final x()Ljava/util/List;
    .locals 1

    .prologue
    .line 10064
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10065
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 10067
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final y()Ljava/util/List;
    .locals 1

    .prologue
    .line 10202
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 10203
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 10205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final z()I
    .locals 1

    .prologue
    .line 10071
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10072
    iget-object v0, p0, Lcom/b/a/bc;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 10074
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bc;->k:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method
