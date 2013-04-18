.class public final Lcom/keniu/security/sync/d/d/a/dg;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dh;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Ljava/util/List;

.field private e:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38276
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 38475
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38277
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->q()V

    .line 38278
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 38262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/dg;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38281
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 38475
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38282
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->q()V

    .line 38283
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 38553
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 38554
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    .line 38559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38561
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 38568
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 38569
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38570
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38572
    :cond_0
    return-void
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38684
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38685
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38686
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38687
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38691
    :goto_0
    return-object p0

    .line 38689
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/go;
    .locals 2

    .prologue
    .line 38723
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private U()Ljava/util/List;
    .locals 1

    .prologue
    .line 38733
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private V()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 38738
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38739
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    .line 38745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38747
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    return-object v0

    .line 38739
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dg;)Lcom/keniu/security/sync/d/d/a/df;
    .locals 2
    .parameter

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->x()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/df;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38600
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 38601
    if-nez p2, :cond_0

    .line 38602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38604
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38605
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38606
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38610
    :goto_0
    return-object p0

    .line 38608
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38614
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38615
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38616
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38617
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38621
    :goto_0
    return-object p0

    .line 38619
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter

    .prologue
    .line 38489
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 38490
    if-nez p1, :cond_0

    .line 38491
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38493
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38494
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38498
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38499
    return-object p0

    .line 38496
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 2
    .parameter

    .prologue
    .line 38503
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 38504
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38505
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38509
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38510
    return-object p0

    .line 38507
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter

    .prologue
    .line 38624
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 38625
    if-nez p1, :cond_0

    .line 38626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38628
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38629
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38630
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38634
    :goto_0
    return-object p0

    .line 38632
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 2
    .parameter

    .prologue
    .line 38652
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38653
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38654
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38655
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38659
    :goto_0
    return-object p0

    .line 38657
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter

    .prologue
    .line 38674
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38675
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38676
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 38677
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38681
    :goto_0
    return-object p0

    .line 38679
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38638
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 38639
    if-nez p2, :cond_0

    .line 38640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38642
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38643
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38644
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38648
    :goto_0
    return-object p0

    .line 38646
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38663
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38664
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38665
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38666
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38670
    :goto_0
    return-object p0

    .line 38668
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 2
    .parameter

    .prologue
    .line 38513
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 38514
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 38516
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38521
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38525
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38526
    return-object p0

    .line 38519
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 38523
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter

    .prologue
    .line 38694
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38695
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38696
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38697
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38701
    :goto_0
    return-object p0

    .line 38699
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1
    .parameter

    .prologue
    .line 38369
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/df;

    if-eqz v0, :cond_0

    .line 38370
    check-cast p1, Lcom/keniu/security/sync/d/d/a/df;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    .line 38373
    :goto_0
    return-object v0

    .line 38372
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 38373
    goto :goto_0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/go;
    .locals 1
    .parameter

    .prologue
    .line 38705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private e(I)Lcom/keniu/security/sync/d/d/a/go;
    .locals 2
    .parameter

    .prologue
    .line 38728
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38262
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dg;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 38267
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bp()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 38285
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/df;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38286
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->A()Lcom/b/a/fp;

    .line 38287
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->V()Lcom/b/a/fc;

    .line 38289
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38291
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dg;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38295
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 38296
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 38297
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38301
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38302
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 38303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38304
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38308
    :goto_1
    return-object p0

    .line 38299
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 38306
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 2

    .prologue
    .line 38312
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dg;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->x()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/keniu/security/sync/d/d/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/df;
    .locals 1

    .prologue
    .line 38321
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/df;->h()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/df;
    .locals 2

    .prologue
    .line 38325
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->x()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    .line 38326
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/df;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38327
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 38329
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/df;
    .locals 2

    .prologue
    .line 38334
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->x()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    .line 38335
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/df;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38336
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 38339
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/df;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38343
    new-instance v1, Lcom/keniu/security/sync/d/d/a/df;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/df;-><init>(Lcom/keniu/security/sync/d/d/a/dg;)V

    .line 38344
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38345
    const/4 v2, 0x0

    .line 38346
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 38349
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 38350
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 38354
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 38355
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 38356
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38357
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38359
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;Ljava/util/List;)Ljava/util/List;

    .line 38363
    :goto_1
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;I)I

    .line 38364
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->ab_()V

    .line 38365
    return-object v1

    .line 38352
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 38361
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/dg;
    .locals 1

    .prologue
    .line 38529
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 38530
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38531
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38535
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38536
    return-object p0

    .line 38533
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 38539
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38540
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38541
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->A()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 38272
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bq()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 38317
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/df;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->s()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->t()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 38262
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/df;->h()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 38262
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/df;->h()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->x()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->v()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->x()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->v()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 38262
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38262
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/df;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 38378
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/df;->h()Lcom/keniu/security/sync/d/d/a/df;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 38409
    :goto_0
    return-object v0

    .line 38379
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/df;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38380
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/df;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38382
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_6

    .line 38383
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38384
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38385
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38386
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38391
    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    .line 38408
    :cond_2
    :goto_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/df;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dg;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 38409
    goto :goto_0

    .line 38380
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 38388
    :cond_5
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    .line 38389
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 38394
    :cond_6
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38395
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38396
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 38397
    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    .line 38398
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    .line 38399
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    .line 38400
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/df;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->V()Lcom/b/a/fc;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    goto :goto_4

    :cond_7
    move-object v0, v3

    goto :goto_5

    .line 38404
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/df;->a(Lcom/keniu/security/sync/d/d/a/df;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_4
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1
    .parameter

    .prologue
    .line 38592
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38593
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    .line 38595
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38413
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 38427
    :goto_0
    return v0

    .line 38417
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 38419
    goto :goto_0

    :cond_1
    move v0, v2

    .line 38421
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->o()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 38422
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dg;->a(I)Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 38424
    goto :goto_0

    .line 38421
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38427
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->t()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38262
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1
    .parameter

    .prologue
    .line 38709
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38710
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    .line 38711
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->s()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 38262
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dg;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38262
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->t()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->t()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38262
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->t()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dg;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38434
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 38438
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 38439
    sparse-switch v1, :sswitch_data_0

    .line 38445
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/dg;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38447
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dg;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 38448
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    move-object v0, p0

    .line 38449
    :goto_1
    return-object v0

    .line 38441
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dg;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 38442
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    move-object v0, p0

    .line 38443
    goto :goto_1

    .line 38454
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 38455
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38456
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 38458
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 38459
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 38463
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->Z()Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    .line 38464
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 38465
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->D()V

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dg;->af_()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 38439
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->s()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->t()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 38262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dg;->s()Lcom/keniu/security/sync/d/d/a/dg;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38479
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 38482
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 38483
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 38485
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 38544
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 38545
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 38547
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 38578
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38579
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 38581
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 38716
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 38717
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 38719
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 38585
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 38586
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 38588
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dg;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method
