.class public final Lcom/b/a/bw;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ca;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16327
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 16483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16328
    invoke-direct {p0}, Lcom/b/a/bw;->o()V

    .line 16329
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 16313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bw;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16332
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 16483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16333
    invoke-direct {p0}, Lcom/b/a/bw;->o()V

    .line 16334
    return-void
.end method

.method static synthetic a(Lcom/b/a/bw;)Lcom/b/a/bv;
    .locals 2
    .parameter

    .prologue
    .line 16313
    invoke-virtual {p0}, Lcom/b/a/bw;->l()Lcom/b/a/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/bw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/bx;)Lcom/b/a/bw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16518
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 16519
    if-nez p2, :cond_0

    .line 16520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16522
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16523
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16524
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16528
    :goto_0
    return-object p0

    .line 16526
    :cond_1
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/by;)Lcom/b/a/bw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16532
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16533
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16534
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16535
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16539
    :goto_0
    return-object p0

    .line 16537
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bx;)Lcom/b/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 16542
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 16543
    if-nez p1, :cond_0

    .line 16544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16546
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16547
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16548
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16552
    :goto_0
    return-object p0

    .line 16550
    :cond_1
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/by;)Lcom/b/a/bw;
    .locals 2
    .parameter

    .prologue
    .line 16570
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16571
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16572
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16573
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16577
    :goto_0
    return-object p0

    .line 16575
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 16592
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16593
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16594
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16595
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16599
    :goto_0
    return-object p0

    .line 16597
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/bx;)Lcom/b/a/bw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16556
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 16557
    if-nez p2, :cond_0

    .line 16558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16560
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16561
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16562
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16566
    :goto_0
    return-object p0

    .line 16564
    :cond_1
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/by;)Lcom/b/a/bw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16581
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16582
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16583
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16584
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16588
    :goto_0
    return-object p0

    .line 16586
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/by;->l()Lcom/b/a/bx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(I)Lcom/b/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 16612
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16613
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16614
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16615
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16619
    :goto_0
    return-object p0

    .line 16617
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 16403
    instance-of v0, p1, Lcom/b/a/bv;

    if-eqz v0, :cond_0

    .line 16404
    check-cast p1, Lcom/b/a/bv;

    invoke-virtual {p0, p1}, Lcom/b/a/bw;->a(Lcom/b/a/bv;)Lcom/b/a/bw;

    move-result-object v0

    .line 16407
    :goto_0
    return-object v0

    .line 16406
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 16407
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/by;
    .locals 1
    .parameter

    .prologue
    .line 16623
    invoke-direct {p0}, Lcom/b/a/bw;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    return-object p0
.end method

.method private e(I)Lcom/b/a/by;
    .locals 2
    .parameter

    .prologue
    .line 16646
    invoke-direct {p0}, Lcom/b/a/bw;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/bx;->e()Lcom/b/a/bx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    return-object p0
.end method

.method static synthetic m()Lcom/b/a/bw;
    .locals 1

    .prologue
    .line 16313
    new-instance v0, Lcom/b/a/bw;

    invoke-direct {v0}, Lcom/b/a/bw;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 16318
    invoke-static {}, Lcom/b/a/p;->L()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 16336
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 16337
    invoke-direct {p0}, Lcom/b/a/bw;->y()Lcom/b/a/fc;

    .line 16339
    :cond_0
    return-void
.end method

.method private static p()Lcom/b/a/bw;
    .locals 1

    .prologue
    .line 16341
    new-instance v0, Lcom/b/a/bw;

    invoke-direct {v0}, Lcom/b/a/bw;-><init>()V

    return-object v0
.end method

.method private q()Lcom/b/a/bw;
    .locals 1

    .prologue
    .line 16345
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 16346
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16348
    iget v0, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bw;->a:I

    .line 16352
    :goto_0
    return-object p0

    .line 16350
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private r()Lcom/b/a/bw;
    .locals 2

    .prologue
    .line 16356
    new-instance v0, Lcom/b/a/bw;

    invoke-direct {v0}, Lcom/b/a/bw;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/bw;->l()Lcom/b/a/bv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/bw;->a(Lcom/b/a/bv;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/b/a/bv;
    .locals 1

    .prologue
    .line 16365
    invoke-static {}, Lcom/b/a/bv;->e()Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/b/a/bv;
    .locals 2

    .prologue
    .line 16378
    invoke-virtual {p0}, Lcom/b/a/bw;->l()Lcom/b/a/bv;

    move-result-object v0

    .line 16379
    invoke-virtual {v0}, Lcom/b/a/bv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16380
    invoke-static {v0}, Lcom/b/a/bw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 16383
    :cond_0
    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 16486
    iget v0, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 16487
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16488
    iget v0, p0, Lcom/b/a/bw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bw;->a:I

    .line 16490
    :cond_0
    return-void
.end method

.method private v()Lcom/b/a/bw;
    .locals 1

    .prologue
    .line 16602
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16604
    iget v0, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bw;->a:I

    .line 16605
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16609
    :goto_0
    return-object p0

    .line 16607
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private w()Lcom/b/a/by;
    .locals 2

    .prologue
    .line 16641
    invoke-direct {p0}, Lcom/b/a/bw;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/bx;->e()Lcom/b/a/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/by;

    return-object p0
.end method

.method private x()Ljava/util/List;
    .locals 1

    .prologue
    .line 16651
    invoke-direct {p0}, Lcom/b/a/bw;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/b/a/fc;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 16656
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16657
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    iget v2, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bw;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/bw;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    .line 16663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16665
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    return-object v0

    .line 16657
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 16323
    invoke-static {}, Lcom/b/a/p;->M()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 16361
    invoke-static {}, Lcom/b/a/bv;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final D_()Ljava/util/List;
    .locals 1

    .prologue
    .line 16496
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16497
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 16499
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->q()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->r()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 16313
    invoke-static {}, Lcom/b/a/bv;->e()Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 16313
    invoke-static {}, Lcom/b/a/bv;->e()Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 16313
    invoke-virtual {p0}, Lcom/b/a/bw;->l()Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 16313
    invoke-virtual {p0}, Lcom/b/a/bw;->k()Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 16313
    invoke-virtual {p0}, Lcom/b/a/bw;->l()Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 16313
    invoke-virtual {p0}, Lcom/b/a/bw;->k()Lcom/b/a/bv;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/bv;)Lcom/b/a/bw;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 16412
    invoke-static {}, Lcom/b/a/bv;->e()Lcom/b/a/bv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 16440
    :goto_0
    return-object v0

    .line 16413
    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 16414
    invoke-static {p1}, Lcom/b/a/bv;->b(Lcom/b/a/bv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16415
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16416
    invoke-static {p1}, Lcom/b/a/bv;->b(Lcom/b/a/bv;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16417
    iget v0, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bw;->a:I

    .line 16422
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    .line 16439
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/bv;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bw;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 16440
    goto :goto_0

    .line 16419
    :cond_2
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    .line 16420
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bv;->b(Lcom/b/a/bv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 16425
    :cond_3
    invoke-static {p1}, Lcom/b/a/bv;->b(Lcom/b/a/bv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16426
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16427
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 16428
    iput-object v1, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    .line 16429
    invoke-static {p1}, Lcom/b/a/bv;->b(Lcom/b/a/bv;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16430
    iget v0, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bw;->a:I

    .line 16431
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/bw;->y()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 16435
    :cond_5
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/bv;->b(Lcom/b/a/bv;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final a(I)Lcom/b/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 16510
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16511
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bx;

    move-object v0, p0

    .line 16513
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/bx;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 16313
    invoke-direct {p0, p1}, Lcom/b/a/bw;->d(Lcom/b/a/ev;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16313
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 16444
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)Lcom/b/a/bz;
    .locals 1
    .parameter

    .prologue
    .line 16627
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16628
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/bz;

    move-object v0, p0

    .line 16629
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/bz;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->r()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16313
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->q()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 16313
    invoke-direct {p0, p1}, Lcom/b/a/bw;->d(Lcom/b/a/ev;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16313
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->r()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->r()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16313
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bw;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 16451
    invoke-virtual {p0}, Lcom/b/a/bw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 16455
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 16456
    sparse-switch v1, :sswitch_data_0

    .line 16462
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/bw;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16464
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 16465
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    move-object v0, p0

    .line 16466
    :goto_1
    return-object v0

    .line 16458
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 16459
    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    move-object v0, p0

    .line 16460
    goto :goto_1

    .line 16471
    :sswitch_1
    invoke-static {}, Lcom/b/a/bx;->l()Lcom/b/a/by;

    move-result-object v1

    .line 16472
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 16473
    invoke-virtual {v1}, Lcom/b/a/by;->m()Lcom/b/a/bx;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/bw;->u()V

    iget-object v2, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/bw;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 16456
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->r()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->q()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->r()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 16313
    invoke-direct {p0}, Lcom/b/a/bw;->q()Lcom/b/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 16634
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 16635
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 16637
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 16503
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 16504
    iget-object v0, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 16506
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final k()Lcom/b/a/bv;
    .locals 2

    .prologue
    .line 16369
    invoke-virtual {p0}, Lcom/b/a/bw;->l()Lcom/b/a/bv;

    move-result-object v0

    .line 16370
    invoke-virtual {v0}, Lcom/b/a/bv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16371
    invoke-static {v0}, Lcom/b/a/bw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 16373
    :cond_0
    return-object v0
.end method

.method public final l()Lcom/b/a/bv;
    .locals 3

    .prologue
    .line 16387
    new-instance v0, Lcom/b/a/bv;

    invoke-direct {v0, p0}, Lcom/b/a/bv;-><init>(Lcom/b/a/bw;)V

    .line 16388
    iget v1, p0, Lcom/b/a/bw;->a:I

    .line 16389
    iget-object v1, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    if-nez v1, :cond_1

    .line 16390
    iget v1, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 16391
    iget-object v1, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    .line 16392
    iget v1, p0, Lcom/b/a/bw;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/b/a/bw;->a:I

    .line 16394
    :cond_0
    iget-object v1, p0, Lcom/b/a/bw;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/bv;->a(Lcom/b/a/bv;Ljava/util/List;)Ljava/util/List;

    .line 16398
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bw;->ab_()V

    .line 16399
    return-object v0

    .line 16396
    :cond_1
    iget-object v1, p0, Lcom/b/a/bw;->c:Lcom/b/a/fc;

    invoke-virtual {v1}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/bv;->a(Lcom/b/a/bv;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
