.class public final Lcom/keniu/security/sync/d/d/a/dm;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dn;


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
    .line 20311
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 20510
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20312
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->q()V

    .line 20313
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 20297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/dm;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20316
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 20510
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20317
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->q()V

    .line 20318
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 20588
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 20589
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    .line 20594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20596
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 20603
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 20604
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20605
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20607
    :cond_0
    return-void
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20719
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20721
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20722
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20726
    :goto_0
    return-object p0

    .line 20724
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/gr;
    .locals 2

    .prologue
    .line 20758
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gr;

    return-object p0
.end method

.method private U()Ljava/util/List;
    .locals 1

    .prologue
    .line 20768
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private V()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 20773
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20774
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    .line 20780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20782
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    return-object v0

    .line 20774
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dm;)Lcom/keniu/security/sync/d/d/a/dl;
    .locals 2
    .parameter

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->x()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dl;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dm;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20635
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 20636
    if-nez p2, :cond_0

    .line 20637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20639
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20640
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20641
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20645
    :goto_0
    return-object p0

    .line 20643
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/gr;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20649
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20650
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20651
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20652
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20656
    :goto_0
    return-object p0

    .line 20654
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter

    .prologue
    .line 20524
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 20525
    if-nez p1, :cond_0

    .line 20526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20528
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20529
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20533
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20534
    return-object p0

    .line 20531
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 2
    .parameter

    .prologue
    .line 20538
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 20539
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20540
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20544
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20545
    return-object p0

    .line 20542
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter

    .prologue
    .line 20659
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 20660
    if-nez p1, :cond_0

    .line 20661
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20663
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20664
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20665
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20669
    :goto_0
    return-object p0

    .line 20667
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gr;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 2
    .parameter

    .prologue
    .line 20687
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20688
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20689
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20690
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20694
    :goto_0
    return-object p0

    .line 20692
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter

    .prologue
    .line 20709
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20710
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20711
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20712
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20716
    :goto_0
    return-object p0

    .line 20714
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20673
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 20674
    if-nez p2, :cond_0

    .line 20675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20677
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20678
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20679
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20683
    :goto_0
    return-object p0

    .line 20681
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/gr;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20698
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20699
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20700
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20701
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20705
    :goto_0
    return-object p0

    .line 20703
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 2
    .parameter

    .prologue
    .line 20548
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 20549
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20551
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20556
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20560
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20561
    return-object p0

    .line 20554
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 20558
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter

    .prologue
    .line 20729
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20730
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20731
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20732
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20736
    :goto_0
    return-object p0

    .line 20734
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1
    .parameter

    .prologue
    .line 20404
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/dl;

    if-eqz v0, :cond_0

    .line 20405
    check-cast p1, Lcom/keniu/security/sync/d/d/a/dl;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dl;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    .line 20408
    :goto_0
    return-object v0

    .line 20407
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 20408
    goto :goto_0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/gr;
    .locals 1
    .parameter

    .prologue
    .line 20740
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gr;

    return-object p0
.end method

.method private e(I)Lcom/keniu/security/sync/d/d/a/gr;
    .locals 2
    .parameter

    .prologue
    .line 20763
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gr;

    return-object p0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20297
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dm;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 20302
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ah()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 20320
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dl;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20321
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->A()Lcom/b/a/fp;

    .line 20322
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->V()Lcom/b/a/fc;

    .line 20324
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20326
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dm;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20330
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 20331
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 20332
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20336
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20337
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 20338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20339
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20343
    :goto_1
    return-object p0

    .line 20334
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 20341
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 2

    .prologue
    .line 20347
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dm;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dm;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->x()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/keniu/security/sync/d/d/a/dl;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/dl;
    .locals 1

    .prologue
    .line 20356
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dl;->h()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/dl;
    .locals 2

    .prologue
    .line 20360
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->x()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    .line 20361
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dl;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20362
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dm;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 20364
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/dl;
    .locals 2

    .prologue
    .line 20369
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->x()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    .line 20370
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dl;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20371
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dm;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 20374
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/dl;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 20378
    new-instance v1, Lcom/keniu/security/sync/d/d/a/dl;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/dl;-><init>(Lcom/keniu/security/sync/d/d/a/dm;)V

    .line 20379
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20380
    const/4 v2, 0x0

    .line 20381
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 20384
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 20385
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 20389
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 20390
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 20391
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20392
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20394
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;Ljava/util/List;)Ljava/util/List;

    .line 20398
    :goto_1
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;I)I

    .line 20399
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->ab_()V

    .line 20400
    return-object v1

    .line 20387
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 20396
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/dm;
    .locals 1

    .prologue
    .line 20564
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 20565
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20566
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20570
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20571
    return-object p0

    .line 20568
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 20574
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20575
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20576
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->A()Lcom/b/a/fp;

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
    .line 20307
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ai()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 20352
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dl;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->s()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->t()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 20297
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dl;->h()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 20297
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dl;->h()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->x()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->v()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->x()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->v()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 20297
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20297
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dm;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/dl;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 20413
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dl;->h()Lcom/keniu/security/sync/d/d/a/dl;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 20444
    :goto_0
    return-object v0

    .line 20414
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dl;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20415
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dl;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20417
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_6

    .line 20418
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20419
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20420
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20421
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20426
    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    .line 20443
    :cond_2
    :goto_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dl;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dm;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 20444
    goto :goto_0

    .line 20415
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 20423
    :cond_5
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    .line 20424
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 20429
    :cond_6
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20430
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20431
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 20432
    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    .line 20433
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    .line 20434
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    .line 20435
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dl;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->V()Lcom/b/a/fc;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    goto :goto_4

    :cond_7
    move-object v0, v3

    goto :goto_5

    .line 20439
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dl;->a(Lcom/keniu/security/sync/d/d/a/dl;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_4
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/gq;
    .locals 1
    .parameter

    .prologue
    .line 20627
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20628
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gq;

    move-object v0, p0

    .line 20630
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gq;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20448
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 20462
    :goto_0
    return v0

    .line 20452
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 20454
    goto :goto_0

    :cond_1
    move v0, v2

    .line 20456
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->o()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 20457
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dm;->a(I)Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gq;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 20459
    goto :goto_0

    .line 20456
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20462
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->t()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20297
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dm;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/gs;
    .locals 1
    .parameter

    .prologue
    .line 20744
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20745
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gs;

    move-object v0, p0

    .line 20746
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gs;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->s()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 20297
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dm;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20297
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dm;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->t()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->t()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20297
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dm;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->t()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dm;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 20469
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 20473
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 20474
    sparse-switch v1, :sswitch_data_0

    .line 20480
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/dm;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20482
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dm;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 20483
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    move-object v0, p0

    .line 20484
    :goto_1
    return-object v0

    .line 20476
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dm;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 20477
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    move-object v0, p0

    .line 20478
    goto :goto_1

    .line 20489
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 20490
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20491
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 20493
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 20494
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 20498
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->N()Lcom/keniu/security/sync/d/d/a/gr;

    move-result-object v1

    .line 20499
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 20500
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gr;->D()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->D()V

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dm;->af_()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 20474
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
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->s()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->t()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 20297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dm;->s()Lcom/keniu/security/sync/d/d/a/dm;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20514
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->a:I

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
    .line 20517
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 20518
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 20520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 20579
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 20580
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 20582
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 20613
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20614
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 20616
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 20751
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 20752
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 20754
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 20620
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20621
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 20623
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dm;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method
