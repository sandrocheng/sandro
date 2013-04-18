.class public final Lcom/b/a/bt;
.super Lcom/b/a/dq;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bu;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13240
    invoke-direct {p0}, Lcom/b/a/dq;-><init>()V

    .line 13407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13241
    invoke-direct {p0}, Lcom/b/a/bt;->q()V

    .line 13242
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 13226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bt;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13245
    invoke-direct {p0, p1}, Lcom/b/a/dq;-><init>(Lcom/b/a/dp;)V

    .line 13407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13246
    invoke-direct {p0}, Lcom/b/a/bt;->q()V

    .line 13247
    return-void
.end method

.method private A()Lcom/b/a/fc;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 13580
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13581
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    iget v2, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bt;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/bt;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    .line 13587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13589
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    return-object v0

    .line 13581
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/bt;)Lcom/b/a/bs;
    .locals 2
    .parameter

    .prologue
    .line 13226
    invoke-virtual {p0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/bt;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/cb;)Lcom/b/a/bt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13442
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 13443
    if-nez p2, :cond_0

    .line 13444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13446
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13447
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13448
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13452
    :goto_0
    return-object p0

    .line 13450
    :cond_1
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/cc;)Lcom/b/a/bt;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13456
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13457
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13458
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13459
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13463
    :goto_0
    return-object p0

    .line 13461
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cb;)Lcom/b/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 13466
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 13467
    if-nez p1, :cond_0

    .line 13468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13470
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13471
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13472
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13476
    :goto_0
    return-object p0

    .line 13474
    :cond_1
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cc;)Lcom/b/a/bt;
    .locals 2
    .parameter

    .prologue
    .line 13494
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13495
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13496
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13497
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13501
    :goto_0
    return-object p0

    .line 13499
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 13516
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13517
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13518
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dq;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13519
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13523
    :goto_0
    return-object p0

    .line 13521
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cb;)Lcom/b/a/bt;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13480
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 13481
    if-nez p2, :cond_0

    .line 13482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13484
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13485
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13486
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13490
    :goto_0
    return-object p0

    .line 13488
    :cond_1
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cc;)Lcom/b/a/bt;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13505
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13506
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13507
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13508
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13512
    :goto_0
    return-object p0

    .line 13510
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(I)Lcom/b/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 13536
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13537
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13538
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13539
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13543
    :goto_0
    return-object p0

    .line 13541
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 13316
    instance-of v0, p1, Lcom/b/a/bs;

    if-eqz v0, :cond_0

    .line 13317
    check-cast p1, Lcom/b/a/bs;

    invoke-virtual {p0, p1}, Lcom/b/a/bt;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v0

    .line 13320
    :goto_0
    return-object v0

    .line 13319
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dq;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 13320
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 13547
    invoke-direct {p0}, Lcom/b/a/bt;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private e(I)Lcom/b/a/cc;
    .locals 2
    .parameter

    .prologue
    .line 13570
    invoke-direct {p0}, Lcom/b/a/bt;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method static synthetic o()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 13226
    new-instance v0, Lcom/b/a/bt;

    invoke-direct {v0}, Lcom/b/a/bt;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 13231
    invoke-static {}, Lcom/b/a/p;->D()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 13249
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 13250
    invoke-direct {p0}, Lcom/b/a/bt;->A()Lcom/b/a/fc;

    .line 13252
    :cond_0
    return-void
.end method

.method private static r()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 13254
    new-instance v0, Lcom/b/a/bt;

    invoke-direct {v0}, Lcom/b/a/bt;-><init>()V

    return-object v0
.end method

.method private s()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 13258
    invoke-super {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    .line 13259
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13261
    iget v0, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bt;->a:I

    .line 13265
    :goto_0
    return-object p0

    .line 13263
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private t()Lcom/b/a/bt;
    .locals 2

    .prologue
    .line 13269
    new-instance v0, Lcom/b/a/bt;

    invoke-direct {v0}, Lcom/b/a/bt;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/bt;->a(Lcom/b/a/bs;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/b/a/bs;
    .locals 1

    .prologue
    .line 13278
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/b/a/bs;
    .locals 2

    .prologue
    .line 13291
    invoke-virtual {p0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v0

    .line 13292
    invoke-virtual {v0}, Lcom/b/a/bs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13293
    invoke-static {v0}, Lcom/b/a/bt;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 13296
    :cond_0
    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 13410
    iget v0, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 13411
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13412
    iget v0, p0, Lcom/b/a/bt;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bt;->a:I

    .line 13414
    :cond_0
    return-void
.end method

.method private x()Lcom/b/a/bt;
    .locals 1

    .prologue
    .line 13526
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13528
    iget v0, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bt;->a:I

    .line 13529
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13533
    :goto_0
    return-object p0

    .line 13531
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private y()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 13565
    invoke-direct {p0}, Lcom/b/a/bt;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private z()Ljava/util/List;
    .locals 1

    .prologue
    .line 13575
    invoke-direct {p0}, Lcom/b/a/bt;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 13236
    invoke-static {}, Lcom/b/a/p;->E()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 13274
    invoke-static {}, Lcom/b/a/bs;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final C_()Ljava/util/List;
    .locals 1

    .prologue
    .line 13420
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13421
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->s()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->t()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13226
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13226
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13226
    invoke-virtual {p0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13226
    invoke-virtual {p0}, Lcom/b/a/bt;->k()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13226
    invoke-virtual {p0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13226
    invoke-virtual {p0}, Lcom/b/a/bt;->k()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/bs;)Lcom/b/a/bt;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 13325
    invoke-static {}, Lcom/b/a/bs;->e()Lcom/b/a/bs;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 13354
    :goto_0
    return-object v0

    .line 13326
    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 13327
    invoke-static {p1}, Lcom/b/a/bs;->b(Lcom/b/a/bs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13328
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13329
    invoke-static {p1}, Lcom/b/a/bs;->b(Lcom/b/a/bs;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13330
    iget v0, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bt;->a:I

    .line 13335
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    .line 13352
    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/b/a/bt;->a(Lcom/b/a/dr;)V

    .line 13353
    invoke-virtual {p1}, Lcom/b/a/bs;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bt;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 13354
    goto :goto_0

    .line 13332
    :cond_2
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    .line 13333
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bs;->b(Lcom/b/a/bs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 13338
    :cond_3
    invoke-static {p1}, Lcom/b/a/bs;->b(Lcom/b/a/bs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13339
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13340
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 13341
    iput-object v1, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    .line 13342
    invoke-static {p1}, Lcom/b/a/bs;->b(Lcom/b/a/bs;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13343
    iget v0, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bt;->a:I

    .line 13344
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/bt;->A()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 13348
    :cond_5
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/bs;->b(Lcom/b/a/bs;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 13226
    invoke-direct {p0, p1}, Lcom/b/a/bt;->d(Lcom/b/a/ev;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13226
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bt;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 13434
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13435
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    .line 13437
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

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

    .line 13358
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bt;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13359
    invoke-virtual {p0, v0}, Lcom/b/a/bt;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 13368
    :goto_1
    return v0

    .line 13358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13364
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bt;->N()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 13366
    goto :goto_1

    .line 13368
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->t()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 13551
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13552
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    .line 13553
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

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
    .line 13226
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bt;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->s()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 13226
    invoke-direct {p0, p1}, Lcom/b/a/bt;->d(Lcom/b/a/ev;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13226
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bt;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->t()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->t()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13226
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bt;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bt;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 13375
    invoke-virtual {p0}, Lcom/b/a/bt;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 13379
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 13380
    sparse-switch v1, :sswitch_data_0

    .line 13386
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/bt;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13388
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bt;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 13389
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    move-object v0, p0

    .line 13390
    :goto_1
    return-object v0

    .line 13382
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bt;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 13383
    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    move-object v0, p0

    .line 13384
    goto :goto_1

    .line 13395
    :sswitch_1
    invoke-static {}, Lcom/b/a/cb;->w()Lcom/b/a/cc;

    move-result-object v1

    .line 13396
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 13397
    invoke-virtual {v1}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/bt;->w()V

    iget-object v2, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/bt;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 13380
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->t()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->s()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->t()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->s()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 13558
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 13559
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 13561
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 13427
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13428
    iget-object v0, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 13430
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final k()Lcom/b/a/bs;
    .locals 2

    .prologue
    .line 13282
    invoke-virtual {p0}, Lcom/b/a/bt;->l()Lcom/b/a/bs;

    move-result-object v0

    .line 13283
    invoke-virtual {v0}, Lcom/b/a/bs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13284
    invoke-static {v0}, Lcom/b/a/bt;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 13286
    :cond_0
    return-object v0
.end method

.method public final l()Lcom/b/a/bs;
    .locals 3

    .prologue
    .line 13300
    new-instance v0, Lcom/b/a/bs;

    invoke-direct {v0, p0}, Lcom/b/a/bs;-><init>(Lcom/b/a/bt;)V

    .line 13301
    iget v1, p0, Lcom/b/a/bt;->a:I

    .line 13302
    iget-object v1, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    if-nez v1, :cond_1

    .line 13303
    iget v1, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 13304
    iget-object v1, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    .line 13305
    iget v1, p0, Lcom/b/a/bt;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/b/a/bt;->a:I

    .line 13307
    :cond_0
    iget-object v1, p0, Lcom/b/a/bt;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/bs;->a(Lcom/b/a/bs;Ljava/util/List;)Ljava/util/List;

    .line 13311
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bt;->ab_()V

    .line 13312
    return-object v0

    .line 13309
    :cond_1
    iget-object v1, p0, Lcom/b/a/bt;->c:Lcom/b/a/fc;

    invoke-virtual {v1}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/bs;->a(Lcom/b/a/bs;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public final synthetic m()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->t()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 13226
    invoke-direct {p0}, Lcom/b/a/bt;->s()Lcom/b/a/bt;

    move-result-object v0

    return-object v0
.end method
