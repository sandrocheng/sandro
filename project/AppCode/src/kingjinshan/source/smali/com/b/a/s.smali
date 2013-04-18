.class public final Lcom/b/a/s;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/w;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;

.field private d:Lcom/b/a/fc;

.field private e:Ljava/util/List;

.field private f:Lcom/b/a/fc;

.field private g:Ljava/util/List;

.field private h:Lcom/b/a/fc;

.field private i:Ljava/util/List;

.field private j:Lcom/b/a/fc;

.field private k:Ljava/util/List;

.field private l:Lcom/b/a/fc;

.field private m:Lcom/b/a/bg;

.field private n:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3443
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 3864
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3900
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 4086
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 4272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 4458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 4644
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 4830
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 3444
    invoke-direct {p0}, Lcom/b/a/s;->V()V

    .line 3445
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 3429
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/s;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3448
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 3864
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3900
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 4086
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 4272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 4458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 4644
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 4830
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 3449
    invoke-direct {p0}, Lcom/b/a/s;->V()V

    .line 3450
    return-void
.end method

.method static synthetic N()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 3429
    new-instance v0, Lcom/b/a/s;

    invoke-direct {v0}, Lcom/b/a/s;-><init>()V

    return-object v0
.end method

.method private static U()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3434
    invoke-static {}, Lcom/b/a/p;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private V()V
    .locals 1

    .prologue
    .line 3452
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 3453
    invoke-direct {p0}, Lcom/b/a/s;->ag()Lcom/b/a/fc;

    .line 3454
    invoke-direct {p0}, Lcom/b/a/s;->al()Lcom/b/a/fc;

    .line 3455
    invoke-direct {p0}, Lcom/b/a/s;->aq()Lcom/b/a/fc;

    .line 3456
    invoke-direct {p0}, Lcom/b/a/s;->av()Lcom/b/a/fc;

    .line 3457
    invoke-direct {p0}, Lcom/b/a/s;->aA()Lcom/b/a/fc;

    .line 3458
    invoke-direct {p0}, Lcom/b/a/s;->aD()Lcom/b/a/fp;

    .line 3460
    :cond_0
    return-void
.end method

.method private static W()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 3462
    new-instance v0, Lcom/b/a/s;

    invoke-direct {v0}, Lcom/b/a/s;-><init>()V

    return-object v0
.end method

.method private X()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 3466
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 3467
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3468
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3469
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 3470
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 3471
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3475
    :goto_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 3476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 3477
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3481
    :goto_1
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_2

    .line 3482
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 3483
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3487
    :goto_2
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 3488
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 3489
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3493
    :goto_3
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_4

    .line 3494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 3495
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3499
    :goto_4
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_5

    .line 3500
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 3504
    :goto_5
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3505
    return-object p0

    .line 3473
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0

    .line 3479
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_1

    .line 3485
    :cond_2
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_2

    .line 3491
    :cond_3
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_3

    .line 3497
    :cond_4
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_4

    .line 3502
    :cond_5
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_5
.end method

.method private Y()Lcom/b/a/s;
    .locals 2

    .prologue
    .line 3509
    new-instance v0, Lcom/b/a/s;

    invoke-direct {v0}, Lcom/b/a/s;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/s;->E()Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/s;->a(Lcom/b/a/r;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method private static Z()Lcom/b/a/r;
    .locals 1

    .prologue
    .line 3518
    invoke-static {}, Lcom/b/a/r;->e()Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/s;)Lcom/b/a/r;
    .locals 2
    .parameter

    .prologue
    .line 3429
    invoke-virtual {p0}, Lcom/b/a/s;->E()Lcom/b/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/s;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/aj;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 3936
    if-nez p2, :cond_0

    .line 3937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3939
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 3940
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3941
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3945
    :goto_0
    return-object p0

    .line 3943
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/ak;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 3950
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 3951
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3952
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3956
    :goto_0
    return-object p0

    .line 3954
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/r;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4307
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4308
    if-nez p2, :cond_0

    .line 4309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4311
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4312
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4313
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4317
    :goto_0
    return-object p0

    .line 4315
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/s;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4321
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4322
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4323
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4324
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4328
    :goto_0
    return-object p0

    .line 4326
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/t;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4679
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4680
    if-nez p2, :cond_0

    .line 4681
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4683
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4684
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4685
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4689
    :goto_0
    return-object p0

    .line 4687
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/u;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4693
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4694
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4695
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4696
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4700
    :goto_0
    return-object p0

    .line 4698
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/x;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4494
    if-nez p2, :cond_0

    .line 4495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4497
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4498
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4499
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4503
    :goto_0
    return-object p0

    .line 4501
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/y;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4507
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4508
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4509
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4510
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4514
    :goto_0
    return-object p0

    .line 4512
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/aj;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 3960
    if-nez p1, :cond_0

    .line 3961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3963
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 3964
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3965
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3969
    :goto_0
    return-object p0

    .line 3967
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/ak;)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 3988
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 3989
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3990
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3994
    :goto_0
    return-object p0

    .line 3992
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bg;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4845
    if-nez p1, :cond_0

    .line 4846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4848
    :cond_0
    iput-object p1, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 4849
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4853
    :goto_0
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4854
    return-object p0

    .line 4851
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bh;)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 4858
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4859
    invoke-virtual {p1}, Lcom/b/a/bh;->o()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 4860
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4864
    :goto_0
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4865
    return-object p0

    .line 4862
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/b/a/bh;->o()Lcom/b/a/bg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/t;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4703
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4704
    if-nez p1, :cond_0

    .line 4705
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4707
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4708
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4709
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4713
    :goto_0
    return-object p0

    .line 4711
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/u;)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 4731
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4732
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4733
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4734
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4738
    :goto_0
    return-object p0

    .line 4736
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/x;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4517
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4518
    if-nez p1, :cond_0

    .line 4519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4521
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4522
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4523
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4527
    :goto_0
    return-object p0

    .line 4525
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/y;)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 4545
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4546
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4547
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4548
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4552
    :goto_0
    return-object p0

    .line 4550
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4009
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4010
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 4011
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4012
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4016
    :goto_0
    return-object p0

    .line 4014
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 3879
    if-nez p1, :cond_0

    .line 3880
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3882
    :cond_0
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3883
    iput-object p1, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3884
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3885
    return-object p0
.end method

.method private aA()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 4817
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4818
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/s;->k:Ljava/util/List;

    iget v2, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/s;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/s;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    .line 4824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 4826
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    return-object v0

    .line 4818
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private aB()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 4884
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4885
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 4886
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4890
    :goto_0
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4891
    return-object p0

    .line 4888
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private aC()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 4894
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4895
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4896
    invoke-direct {p0}, Lcom/b/a/s;->aD()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/bh;

    return-object p0
.end method

.method private aD()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 4908
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4909
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    invoke-virtual {p0}, Lcom/b/a/s;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/s;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    .line 4914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 4916
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    return-object v0
.end method

.method private aa()Lcom/b/a/r;
    .locals 2

    .prologue
    .line 3531
    invoke-virtual {p0}, Lcom/b/a/s;->E()Lcom/b/a/r;

    move-result-object v0

    .line 3532
    invoke-virtual {v0}, Lcom/b/a/r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3533
    invoke-static {v0}, Lcom/b/a/s;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 3536
    :cond_0
    return-object v0
.end method

.method private ab()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 3888
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3889
    invoke-static {}, Lcom/b/a/r;->e()Lcom/b/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/r;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3890
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3891
    return-object p0
.end method

.method private ac()V
    .locals 2

    .prologue
    .line 3903
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3904
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 3905
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3907
    :cond_0
    return-void
.end method

.method private ad()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4020
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 4021
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4022
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4026
    :goto_0
    return-object p0

    .line 4024
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private ae()Lcom/b/a/ak;
    .locals 2

    .prologue
    .line 4058
    invoke-direct {p0}, Lcom/b/a/s;->ag()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    return-object p0
.end method

.method private af()Ljava/util/List;
    .locals 1

    .prologue
    .line 4068
    invoke-direct {p0}, Lcom/b/a/s;->ag()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private ag()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 4073
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4074
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/s;->c:Ljava/util/List;

    iget v2, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/s;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/s;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    .line 4080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 4082
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    return-object v0

    .line 4074
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private ah()V
    .locals 2

    .prologue
    .line 4089
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4090
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 4091
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4093
    :cond_0
    return-void
.end method

.method private ai()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 4205
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 4207
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4208
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4212
    :goto_0
    return-object p0

    .line 4210
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private aj()Lcom/b/a/ak;
    .locals 2

    .prologue
    .line 4244
    invoke-direct {p0}, Lcom/b/a/s;->al()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    return-object p0
.end method

.method private ak()Ljava/util/List;
    .locals 1

    .prologue
    .line 4254
    invoke-direct {p0}, Lcom/b/a/s;->al()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private al()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4260
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/s;->e:Ljava/util/List;

    iget v2, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/s;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/s;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    .line 4266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 4268
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    return-object v0

    .line 4260
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private am()V
    .locals 2

    .prologue
    .line 4275
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4276
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 4277
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4279
    :cond_0
    return-void
.end method

.method private an()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 4391
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4392
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 4393
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4394
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4398
    :goto_0
    return-object p0

    .line 4396
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private ao()Lcom/b/a/s;
    .locals 2

    .prologue
    .line 4430
    invoke-direct {p0}, Lcom/b/a/s;->aq()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/r;->e()Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    return-object p0
.end method

.method private ap()Ljava/util/List;
    .locals 1

    .prologue
    .line 4440
    invoke-direct {p0}, Lcom/b/a/s;->aq()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private aq()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 4445
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4446
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/s;->g:Ljava/util/List;

    iget v2, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/s;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/s;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    .line 4452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 4454
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    return-object v0

    .line 4446
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private ar()V
    .locals 2

    .prologue
    .line 4461
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 4462
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 4463
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4465
    :cond_0
    return-void
.end method

.method private as()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4578
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 4579
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4580
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4584
    :goto_0
    return-object p0

    .line 4582
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private at()Lcom/b/a/y;
    .locals 2

    .prologue
    .line 4616
    invoke-direct {p0}, Lcom/b/a/s;->av()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/x;->e()Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/y;

    return-object p0
.end method

.method private au()Ljava/util/List;
    .locals 1

    .prologue
    .line 4626
    invoke-direct {p0}, Lcom/b/a/s;->av()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private av()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 4631
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4632
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/s;->i:Ljava/util/List;

    iget v2, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/s;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/s;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    .line 4638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 4640
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    return-object v0

    .line 4632
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private aw()V
    .locals 2

    .prologue
    .line 4647
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 4648
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 4649
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4651
    :cond_0
    return-void
.end method

.method private ax()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 4763
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4764
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 4765
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4766
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4770
    :goto_0
    return-object p0

    .line 4768
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private ay()Lcom/b/a/u;
    .locals 2

    .prologue
    .line 4802
    invoke-direct {p0}, Lcom/b/a/s;->aA()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/t;->e()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    return-object p0
.end method

.method private az()Ljava/util/List;
    .locals 1

    .prologue
    .line 4812
    invoke-direct {p0}, Lcom/b/a/s;->aA()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(ILcom/b/a/aj;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3973
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 3974
    if-nez p2, :cond_0

    .line 3975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3977
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 3978
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3979
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3983
    :goto_0
    return-object p0

    .line 3981
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/ak;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 3999
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 4000
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4001
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4005
    :goto_0
    return-object p0

    .line 4003
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/r;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4345
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4346
    if-nez p2, :cond_0

    .line 4347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4349
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4350
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4351
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4355
    :goto_0
    return-object p0

    .line 4353
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/s;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4371
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4372
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4373
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4377
    :goto_0
    return-object p0

    .line 4375
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/t;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4717
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4718
    if-nez p2, :cond_0

    .line 4719
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4721
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4722
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4723
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4727
    :goto_0
    return-object p0

    .line 4725
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/u;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4742
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4743
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4744
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4745
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4749
    :goto_0
    return-object p0

    .line 4747
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/x;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4531
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4532
    if-nez p2, :cond_0

    .line 4533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4535
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4536
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4537
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4541
    :goto_0
    return-object p0

    .line 4539
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/y;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4556
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4557
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4558
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4559
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4563
    :goto_0
    return-object p0

    .line 4561
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/b/a/aj;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4146
    if-nez p1, :cond_0

    .line 4147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4149
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4150
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4151
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4155
    :goto_0
    return-object p0

    .line 4153
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/b/a/ak;)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 4173
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4174
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4175
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4176
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4180
    :goto_0
    return-object p0

    .line 4178
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/b/a/bg;)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 4868
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4869
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4871
    iget-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    invoke-static {v0}, Lcom/b/a/bg;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/bh;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 4876
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4880
    :goto_1
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 4881
    return-object p0

    .line 4874
    :cond_0
    iput-object p1, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    goto :goto_0

    .line 4878
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/b/a/r;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4331
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4332
    if-nez p1, :cond_0

    .line 4333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4335
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4336
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4337
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4341
    :goto_0
    return-object p0

    .line 4339
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/b/a/s;)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 4359
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4360
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4361
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4362
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4366
    :goto_0
    return-object p0

    .line 4364
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Ljava/lang/Iterable;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4196
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4197
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4198
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4202
    :goto_0
    return-object p0

    .line 4200
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(ILcom/b/a/aj;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4122
    if-nez p2, :cond_0

    .line 4123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4125
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4126
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4127
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4131
    :goto_0
    return-object p0

    .line 4129
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(ILcom/b/a/ak;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4135
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4136
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4137
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4138
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4142
    :goto_0
    return-object p0

    .line 4140
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(Ljava/lang/Iterable;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4381
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4382
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4383
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4384
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4388
    :goto_0
    return-object p0

    .line 4386
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private d(ILcom/b/a/aj;)Lcom/b/a/s;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 4160
    if-nez p2, :cond_0

    .line 4161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4163
    :cond_0
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4164
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4165
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4169
    :goto_0
    return-object p0

    .line 4167
    :cond_1
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private d(ILcom/b/a/ak;)Lcom/b/a/s;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4184
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4185
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4186
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4187
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4191
    :goto_0
    return-object p0

    .line 4189
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 3606
    instance-of v0, p1, Lcom/b/a/r;

    if-eqz v0, :cond_0

    .line 3607
    check-cast p1, Lcom/b/a/r;

    invoke-virtual {p0, p1}, Lcom/b/a/s;->a(Lcom/b/a/r;)Lcom/b/a/s;

    move-result-object v0

    .line 3610
    :goto_0
    return-object v0

    .line 3609
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 3610
    goto :goto_0
.end method

.method private d(Ljava/lang/Iterable;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4567
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4568
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4569
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4570
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4574
    :goto_0
    return-object p0

    .line 4572
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private e(Ljava/lang/Iterable;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4753
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4754
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4755
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4756
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4760
    :goto_0
    return-object p0

    .line 4758
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 3894
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3895
    iput-object p1, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3896
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3897
    return-void
.end method

.method private k(I)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4029
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4030
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 4031
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4032
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4036
    :goto_0
    return-object p0

    .line 4034
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private l(I)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 4040
    invoke-direct {p0}, Lcom/b/a/s;->ag()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    return-object p0
.end method

.method private m(I)Lcom/b/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 4063
    invoke-direct {p0}, Lcom/b/a/s;->ag()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    return-object p0
.end method

.method private n(I)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4215
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4216
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 4217
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4218
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4222
    :goto_0
    return-object p0

    .line 4220
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private o(I)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 4226
    invoke-direct {p0}, Lcom/b/a/s;->al()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    return-object p0
.end method

.method private p(I)Lcom/b/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 4249
    invoke-direct {p0}, Lcom/b/a/s;->al()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ak;

    return-object p0
.end method

.method private q(I)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4401
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4402
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 4403
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4404
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4408
    :goto_0
    return-object p0

    .line 4406
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private r(I)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4412
    invoke-direct {p0}, Lcom/b/a/s;->aq()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    return-object p0
.end method

.method private s(I)Lcom/b/a/s;
    .locals 2
    .parameter

    .prologue
    .line 4435
    invoke-direct {p0}, Lcom/b/a/s;->aq()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/r;->e()Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    return-object p0
.end method

.method private t(I)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4588
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 4589
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4590
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4594
    :goto_0
    return-object p0

    .line 4592
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private u(I)Lcom/b/a/y;
    .locals 1
    .parameter

    .prologue
    .line 4598
    invoke-direct {p0}, Lcom/b/a/s;->av()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/y;

    return-object p0
.end method

.method private v(I)Lcom/b/a/y;
    .locals 2
    .parameter

    .prologue
    .line 4621
    invoke-direct {p0}, Lcom/b/a/s;->av()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/x;->e()Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/y;

    return-object p0
.end method

.method private w(I)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4774
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 4775
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4776
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 4780
    :goto_0
    return-object p0

    .line 4778
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private x(I)Lcom/b/a/u;
    .locals 1
    .parameter

    .prologue
    .line 4784
    invoke-direct {p0}, Lcom/b/a/s;->aA()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    return-object p0
.end method

.method private y(I)Lcom/b/a/u;
    .locals 2
    .parameter

    .prologue
    .line 4807
    invoke-direct {p0}, Lcom/b/a/s;->aA()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/t;->e()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/u;

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/b/a/bi;
    .locals 1

    .prologue
    .line 4899
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 4900
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/bi;

    move-object v0, p0

    .line 4902
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    goto :goto_0
.end method

.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3439
    invoke-static {}, Lcom/b/a/p;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3514
    invoke-static {}, Lcom/b/a/r;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/b/a/r;
    .locals 2

    .prologue
    .line 3522
    invoke-virtual {p0}, Lcom/b/a/s;->E()Lcom/b/a/r;

    move-result-object v0

    .line 3523
    invoke-virtual {v0}, Lcom/b/a/r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3524
    invoke-static {v0}, Lcom/b/a/s;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 3526
    :cond_0
    return-object v0
.end method

.method public final E()Lcom/b/a/r;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3540
    new-instance v1, Lcom/b/a/r;

    invoke-direct {v1, p0}, Lcom/b/a/r;-><init>(Lcom/b/a/s;)V

    .line 3541
    iget v0, p0, Lcom/b/a/s;->a:I

    .line 3542
    const/4 v2, 0x0

    .line 3543
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 3546
    :cond_0
    iget-object v3, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/r;->a(Lcom/b/a/r;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3547
    iget-object v3, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v3, :cond_7

    .line 3548
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3549
    iget-object v3, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 3550
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/b/a/s;->a:I

    .line 3552
    :cond_1
    iget-object v3, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/b/a/r;->a(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    .line 3556
    :goto_0
    iget-object v3, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v3, :cond_8

    .line 3557
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3558
    iget-object v3, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 3559
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/b/a/s;->a:I

    .line 3561
    :cond_2
    iget-object v3, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/b/a/r;->b(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    .line 3565
    :goto_1
    iget-object v3, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v3, :cond_9

    .line 3566
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3567
    iget-object v3, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 3568
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/b/a/s;->a:I

    .line 3570
    :cond_3
    iget-object v3, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/b/a/r;->c(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    .line 3574
    :goto_2
    iget-object v3, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v3, :cond_a

    .line 3575
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3576
    iget-object v3, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 3577
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/b/a/s;->a:I

    .line 3579
    :cond_4
    iget-object v3, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/b/a/r;->d(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    .line 3583
    :goto_3
    iget-object v3, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v3, :cond_b

    .line 3584
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 3585
    iget-object v3, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 3586
    iget v3, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/b/a/s;->a:I

    .line 3588
    :cond_5
    iget-object v3, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/b/a/r;->e(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    .line 3592
    :goto_4
    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_6

    .line 3593
    or-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 3595
    :cond_6
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_c

    .line 3596
    iget-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    invoke-static {v1, v0}, Lcom/b/a/r;->a(Lcom/b/a/r;Lcom/b/a/bg;)Lcom/b/a/bg;

    .line 3600
    :goto_5
    invoke-static {v1, v2}, Lcom/b/a/r;->a(Lcom/b/a/r;I)I

    .line 3601
    invoke-virtual {p0}, Lcom/b/a/s;->ab_()V

    .line 3602
    return-object v1

    .line 3554
    :cond_7
    iget-object v3, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/b/a/r;->a(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 3563
    :cond_8
    iget-object v3, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/b/a/r;->b(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_1

    .line 3572
    :cond_9
    iget-object v3, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/b/a/r;->c(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 3581
    :cond_a
    iget-object v3, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/b/a/r;->d(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 3590
    :cond_b
    iget-object v3, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/b/a/r;->e(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 3598
    :cond_c
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/b/a/bg;

    invoke-static {v1, v0}, Lcom/b/a/r;->a(Lcom/b/a/r;Lcom/b/a/bg;)Lcom/b/a/bg;

    goto :goto_5
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->X()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->Y()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3429
    invoke-static {}, Lcom/b/a/r;->e()Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3429
    invoke-static {}, Lcom/b/a/r;->e()Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3429
    invoke-virtual {p0}, Lcom/b/a/s;->E()Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3429
    invoke-virtual {p0}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3429
    invoke-virtual {p0}, Lcom/b/a/s;->E()Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3429
    invoke-virtual {p0}, Lcom/b/a/s;->D()Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 3927
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 3928
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/aj;

    move-object v0, p0

    .line 3930
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/aj;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 3429
    invoke-direct {p0, p1}, Lcom/b/a/s;->d(Lcom/b/a/ev;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3429
    invoke-virtual {p0, p1, p2}, Lcom/b/a/s;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/r;)Lcom/b/a/s;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3615
    invoke-static {}, Lcom/b/a/r;->e()Lcom/b/a/r;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3753
    :goto_0
    return-object v0

    .line 3616
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/r;->d_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3617
    invoke-virtual {p1}, Lcom/b/a/r;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/s;->a:I

    iput-object v0, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3619
    :cond_2
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_a

    .line 3620
    invoke-static {p1}, Lcom/b/a/r;->a(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3621
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3622
    invoke-static {p1}, Lcom/b/a/r;->a(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 3623
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3628
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3645
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_e

    .line 3646
    invoke-static {p1}, Lcom/b/a/r;->b(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3647
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3648
    invoke-static {p1}, Lcom/b/a/r;->b(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 3649
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3654
    :goto_3
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3671
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_12

    .line 3672
    invoke-static {p1}, Lcom/b/a/r;->c(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3673
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3674
    invoke-static {p1}, Lcom/b/a/r;->c(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 3675
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3680
    :goto_5
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3697
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_16

    .line 3698
    invoke-static {p1}, Lcom/b/a/r;->d(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3699
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3700
    invoke-static {p1}, Lcom/b/a/r;->d(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 3701
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3706
    :goto_7
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3723
    :cond_6
    :goto_8
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_1a

    .line 3724
    invoke-static {p1}, Lcom/b/a/r;->e(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3725
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3726
    invoke-static {p1}, Lcom/b/a/r;->e(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 3727
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3732
    :goto_9
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    .line 3749
    :cond_7
    :goto_a
    invoke-virtual {p1}, Lcom/b/a/r;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3750
    invoke-virtual {p1}, Lcom/b/a/r;->z()Lcom/b/a/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    invoke-static {v1}, Lcom/b/a/bg;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/bh;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    :goto_b
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    :goto_c
    iget v0, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3752
    :cond_8
    invoke-virtual {p1}, Lcom/b/a/r;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/s;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 3753
    goto/16 :goto_0

    .line 3625
    :cond_9
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    .line 3626
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/r;->a(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 3631
    :cond_a
    invoke-static {p1}, Lcom/b/a/r;->a(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3632
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3633
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 3634
    iput-object v2, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    .line 3635
    invoke-static {p1}, Lcom/b/a/r;->a(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    .line 3636
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3637
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/b/a/s;->ag()Lcom/b/a/fc;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    goto/16 :goto_2

    :cond_b
    move-object v0, v2

    goto :goto_d

    .line 3641
    :cond_c
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/r;->a(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_2

    .line 3651
    :cond_d
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    .line 3652
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/r;->b(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 3657
    :cond_e
    invoke-static {p1}, Lcom/b/a/r;->b(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3658
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3659
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 3660
    iput-object v2, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    .line 3661
    invoke-static {p1}, Lcom/b/a/r;->b(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    .line 3662
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3663
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/b/a/s;->al()Lcom/b/a/fc;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    goto/16 :goto_4

    :cond_f
    move-object v0, v2

    goto :goto_e

    .line 3667
    :cond_10
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/r;->b(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_4

    .line 3677
    :cond_11
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    .line 3678
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/r;->c(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 3683
    :cond_12
    invoke-static {p1}, Lcom/b/a/r;->c(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3684
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3685
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 3686
    iput-object v2, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    .line 3687
    invoke-static {p1}, Lcom/b/a/r;->c(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    .line 3688
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3689
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/b/a/s;->aq()Lcom/b/a/fc;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    goto/16 :goto_6

    :cond_13
    move-object v0, v2

    goto :goto_f

    .line 3693
    :cond_14
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/r;->c(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_6

    .line 3703
    :cond_15
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    .line 3704
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/r;->d(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 3709
    :cond_16
    invoke-static {p1}, Lcom/b/a/r;->d(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3710
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3711
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 3712
    iput-object v2, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    .line 3713
    invoke-static {p1}, Lcom/b/a/r;->d(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    .line 3714
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3715
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/b/a/s;->av()Lcom/b/a/fc;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    goto/16 :goto_8

    :cond_17
    move-object v0, v2

    goto :goto_10

    .line 3719
    :cond_18
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/r;->d(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_8

    .line 3729
    :cond_19
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    .line 3730
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/r;->e(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    .line 3735
    :cond_1a
    invoke-static {p1}, Lcom/b/a/r;->e(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3736
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3737
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 3738
    iput-object v2, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    .line 3739
    invoke-static {p1}, Lcom/b/a/r;->e(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    .line 3740
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/s;->a:I

    .line 3741
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/b/a/s;->aA()Lcom/b/a/fc;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    goto/16 :goto_a

    :cond_1b
    move-object v0, v2

    goto :goto_11

    .line 3745
    :cond_1c
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/r;->e(Lcom/b/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_a

    .line 3750
    :cond_1d
    iput-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    goto/16 :goto_b

    :cond_1e
    iget-object v1, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto/16 :goto_c
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3757
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/s;->l()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3758
    invoke-virtual {p0, v0}, Lcom/b/a/s;->a(I)Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 3787
    :goto_1
    return v0

    .line 3757
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3763
    :goto_2
    invoke-virtual {p0}, Lcom/b/a/s;->o()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3764
    invoke-virtual {p0, v0}, Lcom/b/a/s;->c(I)Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 3766
    goto :goto_1

    .line 3763
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 3769
    :goto_3
    invoke-virtual {p0}, Lcom/b/a/s;->r()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3770
    invoke-virtual {p0, v0}, Lcom/b/a/s;->e(I)Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/r;->a()Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    .line 3772
    goto :goto_1

    .line 3769
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v2

    .line 3775
    :goto_4
    invoke-virtual {p0}, Lcom/b/a/s;->u()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 3776
    invoke-virtual {p0, v0}, Lcom/b/a/s;->g(I)Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/x;->a()Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v2

    .line 3778
    goto :goto_1

    .line 3775
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3781
    :cond_7
    invoke-virtual {p0}, Lcom/b/a/s;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3782
    invoke-virtual {p0}, Lcom/b/a/s;->z()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->a()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 3784
    goto :goto_1

    .line 3787
    :cond_8
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b(I)Lcom/b/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 4044
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ap;

    move-object v0, p0

    .line 4046
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/ap;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->Y()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3429
    invoke-virtual {p0, p1, p2}, Lcom/b/a/s;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4114
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/aj;

    move-object v0, p0

    .line 4116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/aj;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->X()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3429
    invoke-direct {p0, p1}, Lcom/b/a/s;->d(Lcom/b/a/ev;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3429
    invoke-virtual {p0, p1, p2}, Lcom/b/a/s;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->Y()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/b/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 4230
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4231
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ap;

    move-object v0, p0

    .line 4232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/ap;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->Y()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3429
    invoke-virtual {p0, p1, p2}, Lcom/b/a/s;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final d_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3866
    iget v0, p0, Lcom/b/a/s;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->Y()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lcom/b/a/r;
    .locals 1
    .parameter

    .prologue
    .line 4299
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4300
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/r;

    move-object v0, p0

    .line 4302
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/r;

    move-object v0, p0

    goto :goto_0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/s;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3794
    invoke-virtual {p0}, Lcom/b/a/s;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 3798
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 3799
    sparse-switch v1, :sswitch_data_0

    .line 3805
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/s;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3807
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/s;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3808
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    move-object v0, p0

    .line 3809
    :goto_1
    return-object v0

    .line 3801
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/s;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3802
    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    move-object v0, p0

    .line 3803
    goto :goto_1

    .line 3814
    :sswitch_1
    iget v1, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/s;->a:I

    .line 3815
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    goto :goto_0

    .line 3819
    :sswitch_2
    invoke-static {}, Lcom/b/a/aj;->y()Lcom/b/a/ak;

    move-result-object v1

    .line 3820
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3821
    invoke-virtual {v1}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/s;->ac()V

    iget-object v2, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 3825
    :sswitch_3
    invoke-static {}, Lcom/b/a/r;->c_()Lcom/b/a/s;

    move-result-object v1

    .line 3826
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3827
    invoke-virtual {v1}, Lcom/b/a/s;->E()Lcom/b/a/r;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v2, :cond_4

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/b/a/s;->am()V

    iget-object v2, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 3831
    :sswitch_4
    invoke-static {}, Lcom/b/a/x;->p()Lcom/b/a/y;

    move-result-object v1

    .line 3832
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3833
    invoke-virtual {v1}, Lcom/b/a/y;->q()Lcom/b/a/x;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    invoke-direct {p0}, Lcom/b/a/s;->ar()V

    iget-object v2, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 3837
    :sswitch_5
    invoke-static {}, Lcom/b/a/t;->l()Lcom/b/a/u;

    move-result-object v1

    .line 3838
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3839
    invoke-virtual {v1}, Lcom/b/a/u;->m()Lcom/b/a/t;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v2, :cond_8

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0}, Lcom/b/a/s;->aw()V

    iget-object v2, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 3843
    :sswitch_6
    invoke-static {}, Lcom/b/a/aj;->y()Lcom/b/a/ak;

    move-result-object v1

    .line 3844
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3845
    invoke-virtual {v1}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v2, :cond_a

    if-nez v1, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    invoke-direct {p0}, Lcom/b/a/s;->ah()V

    iget-object v2, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 3849
    :sswitch_7
    invoke-static {}, Lcom/b/a/bg;->o()Lcom/b/a/bh;

    move-result-object v1

    .line 3850
    invoke-virtual {p0}, Lcom/b/a/s;->y()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3851
    invoke-virtual {p0}, Lcom/b/a/s;->z()Lcom/b/a/bg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/bh;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    .line 3853
    :cond_b
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3854
    invoke-virtual {v1}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v2, :cond_d

    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_c
    iput-object v1, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    invoke-virtual {p0}, Lcom/b/a/s;->af_()V

    :goto_2
    iget v1, p0, Lcom/b/a/s;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/b/a/s;->a:I

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 3799
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->X()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Lcom/b/a/w;
    .locals 1
    .parameter

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4417
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/w;

    move-object v0, p0

    .line 4418
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/w;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->Y()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Lcom/b/a/x;
    .locals 1
    .parameter

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4486
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/x;

    move-object v0, p0

    .line 4488
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/x;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/b/a/s;->X()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final h(I)Lcom/b/a/z;
    .locals 1
    .parameter

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4603
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/z;

    move-object v0, p0

    .line 4604
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/z;

    move-object v0, p0

    goto :goto_0
.end method

.method public final i(I)Lcom/b/a/t;
    .locals 1
    .parameter

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4672
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/t;

    move-object v0, p0

    .line 4674
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/t;

    move-object v0, p0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3870
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3871
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 3872
    iput-object v0, p0, Lcom/b/a/s;->b:Ljava/lang/Object;

    .line 3875
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j(I)Lcom/b/a/v;
    .locals 1
    .parameter

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4789
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/v;

    move-object v0, p0

    .line 4790
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/v;

    move-object v0, p0

    goto :goto_0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 3914
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3916
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 4052
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 4054
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 3920
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 3921
    iget-object v0, p0, Lcom/b/a/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3923
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 4099
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4100
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 4238
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 4240
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 4106
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4107
    iget-object v0, p0, Lcom/b/a/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->f:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 4285
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4286
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 4423
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 4424
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 4426
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4293
    iget-object v0, p0, Lcom/b/a/s;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4295
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->h:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final s()Ljava/util/List;
    .locals 1

    .prologue
    .line 4471
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4472
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4474
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final t()Ljava/util/List;
    .locals 1

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 4610
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 4612
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4479
    iget-object v0, p0, Lcom/b/a/s;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4481
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->j:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .prologue
    .line 4657
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4658
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4660
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 4796
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 4798
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 4665
    iget-object v0, p0, Lcom/b/a/s;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4667
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->l:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final y()Z
    .locals 2

    .prologue
    .line 4834
    iget v0, p0, Lcom/b/a/s;->a:I

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

.method public final z()Lcom/b/a/bg;
    .locals 1

    .prologue
    .line 4837
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4838
    iget-object v0, p0, Lcom/b/a/s;->m:Lcom/b/a/bg;

    .line 4840
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->n:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/bg;

    move-object v0, p0

    goto :goto_0
.end method
