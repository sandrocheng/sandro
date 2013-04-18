.class public final Lcom/keniu/security/sync/d/d/a/cg;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ch;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gj;

.field private e:Lcom/b/a/fp;

.field private f:Ljava/util/List;

.field private g:Lcom/b/a/fc;

.field private h:Lcom/keniu/security/sync/d/d/a/gy;

.field private i:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11295
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 11542
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11632
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11722
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11908
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11296
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->w()V

    .line 11297
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 11281
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cg;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11300
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 11542
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11632
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11722
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11908
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11301
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->w()V

    .line 11302
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/cf;
    .locals 1

    .prologue
    .line 11354
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cf;->h()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/cf;
    .locals 2

    .prologue
    .line 11358
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->N()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    .line 11359
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11360
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 11362
    :cond_0
    return-object v0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/cf;
    .locals 2

    .prologue
    .line 11367
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->N()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    .line 11368
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11369
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 11372
    :cond_0
    return-object v0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/cf;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 11376
    new-instance v1, Lcom/keniu/security/sync/d/d/a/cf;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/cf;-><init>(Lcom/keniu/security/sync/d/d/a/cg;)V

    .line 11377
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11378
    const/4 v0, 0x0

    .line 11379
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_7

    move v3, v4

    .line 11382
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 11383
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 11387
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 11388
    or-int/lit8 v0, v3, 0x2

    move v3, v0

    .line 11390
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_3

    .line 11391
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;

    .line 11395
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_4

    .line 11396
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 11397
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11398
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11400
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Ljava/util/List;)Ljava/util/List;

    .line 11404
    :goto_3
    and-int/lit8 v0, v2, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    .line 11405
    or-int/lit8 v0, v3, 0x4

    move v2, v0

    .line 11407
    :goto_4
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_5

    .line 11408
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    .line 11412
    :goto_5
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;I)I

    .line 11413
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ab_()V

    .line 11414
    return-object v1

    .line 11385
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 11393
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_2

    .line 11402
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 11410
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    move v3, v0

    goto/16 :goto_0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11596
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11597
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11598
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11602
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11603
    return-object p0

    .line 11600
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private V()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 11606
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11607
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->W()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private W()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 11620
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11621
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    .line 11626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11628
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private X()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11686
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11687
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11688
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11692
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11693
    return-object p0

    .line 11690
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private Y()Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1

    .prologue
    .line 11696
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11697
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11698
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->Z()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    return-object p0
.end method

.method private Z()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 11710
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11711
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    .line 11716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11718
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cg;)Lcom/keniu/security/sync/d/d/a/cf;
    .locals 2
    .parameter

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->N()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/cf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11757
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 11758
    if-nez p2, :cond_0

    .line 11759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11761
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11762
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11763
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11767
    :goto_0
    return-object p0

    .line 11765
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11771
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11772
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11773
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11774
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11778
    :goto_0
    return-object p0

    .line 11776
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11556
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 11557
    if-nez p1, :cond_0

    .line 11558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11560
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11561
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11565
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11566
    return-object p0

    .line 11563
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter

    .prologue
    .line 11570
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11571
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11572
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11576
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11577
    return-object p0

    .line 11574
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11646
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 11647
    if-nez p1, :cond_0

    .line 11648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11650
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11651
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11655
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11656
    return-object p0

    .line 11653
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter

    .prologue
    .line 11660
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11661
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11662
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11666
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11667
    return-object p0

    .line 11664
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11922
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 11923
    if-nez p1, :cond_0

    .line 11924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11926
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11927
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11931
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11932
    return-object p0

    .line 11929
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gz;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter

    .prologue
    .line 11936
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11937
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11938
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11942
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11943
    return-object p0

    .line 11940
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11831
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11832
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11833
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11834
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11838
    :goto_0
    return-object p0

    .line 11836
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private aa()V
    .locals 2

    .prologue
    .line 11725
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 11726
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11727
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11729
    :cond_0
    return-void
.end method

.method private ab()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11841
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11842
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11843
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11844
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11848
    :goto_0
    return-object p0

    .line 11846
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private ac()Lcom/keniu/security/sync/d/d/a/gk;
    .locals 2

    .prologue
    .line 11880
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    return-object p0
.end method

.method private ad()Ljava/util/List;
    .locals 1

    .prologue
    .line 11890
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private ae()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 11895
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11896
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    .line 11902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11904
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    return-object v0

    .line 11896
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private af()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11962
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11963
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11964
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11968
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11969
    return-object p0

    .line 11966
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private ag()Lcom/keniu/security/sync/d/d/a/gz;
    .locals 1

    .prologue
    .line 11972
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11973
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11974
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ah()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gz;

    return-object p0
.end method

.method private ah()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 11986
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11987
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    .line 11992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11994
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    return-object v0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11795
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 11796
    if-nez p2, :cond_0

    .line 11797
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11799
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11800
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11801
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11805
    :goto_0
    return-object p0

    .line 11803
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11820
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11821
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11822
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11823
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11827
    :goto_0
    return-object p0

    .line 11825
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter

    .prologue
    .line 11580
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 11581
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11583
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11588
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11592
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11593
    return-object p0

    .line 11586
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 11590
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter

    .prologue
    .line 11670
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 11671
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11673
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gj;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11678
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11682
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11683
    return-object p0

    .line 11676
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_0

    .line 11680
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter

    .prologue
    .line 11809
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11810
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11811
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11812
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11816
    :goto_0
    return-object p0

    .line 11814
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2
    .parameter

    .prologue
    .line 11946
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 11947
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11949
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11954
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11958
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11959
    return-object p0

    .line 11952
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0

    .line 11956
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11851
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11852
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11853
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11854
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11858
    :goto_0
    return-object p0

    .line 11856
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private c(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11781
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 11782
    if-nez p1, :cond_0

    .line 11783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11785
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11786
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11787
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11791
    :goto_0
    return-object p0

    .line 11789
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11418
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/cf;

    if-eqz v0, :cond_0

    .line 11419
    check-cast p1, Lcom/keniu/security/sync/d/d/a/cf;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cf;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    .line 11422
    :goto_0
    return-object v0

    .line 11421
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 11422
    goto :goto_0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1
    .parameter

    .prologue
    .line 11862
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    return-object p0
.end method

.method private e(I)Lcom/keniu/security/sync/d/d/a/gk;
    .locals 2
    .parameter

    .prologue
    .line 11885
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    return-object p0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11281
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cg;-><init>()V

    return-object v0
.end method

.method private static v()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 11286
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->J()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 11304
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cf;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11305
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->W()Lcom/b/a/fp;

    .line 11306
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->Z()Lcom/b/a/fp;

    .line 11307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae()Lcom/b/a/fc;

    .line 11308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ah()Lcom/b/a/fp;

    .line 11310
    :cond_0
    return-void
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11312
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cg;-><init>()V

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 1

    .prologue
    .line 11316
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 11317
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11318
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11322
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11323
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 11324
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11328
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11329
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_2

    .line 11330
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11331
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11335
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_3

    .line 11336
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11340
    :goto_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11341
    return-object p0

    .line 11320
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 11326
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1

    .line 11333
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_2

    .line 11338
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_3
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/cg;
    .locals 2

    .prologue
    .line 11345
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cg;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->N()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/keniu/security/sync/d/d/a/cf;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 11291
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->K()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 11350
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cf;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->y()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->z()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11281
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cf;->h()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11281
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cf;->h()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->N()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->D()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->N()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->D()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 11281
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11281
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/cf;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 11427
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cf;->h()Lcom/keniu/security/sync/d/d/a/cf;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 11464
    :goto_0
    return-object v0

    .line 11428
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/cf;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11429
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/cf;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11431
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/cf;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11432
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/cf;->n()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v1, :cond_8

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v2

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gj;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11434
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_a

    .line 11435
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11436
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11437
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11438
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11443
    :goto_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    .line 11460
    :cond_3
    :goto_6
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/cf;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11461
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/cf;->t()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v1, :cond_e

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    :goto_7
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    :goto_8
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11463
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/cf;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cg;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 11464
    goto/16 :goto_0

    .line 11429
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto/16 :goto_2

    .line 11432
    :cond_7
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4

    .line 11440
    :cond_9
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    .line 11441
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 11446
    :cond_a
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11447
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11448
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 11449
    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    .line 11450
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    .line 11451
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    .line 11452
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/cf;->w()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->ae()Lcom/b/a/fc;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    goto/16 :goto_6

    :cond_b
    move-object v0, v3

    goto :goto_9

    .line 11456
    :cond_c
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/cf;->a(Lcom/keniu/security/sync/d/d/a/cf;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_6

    .line 11461
    :cond_d
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_8
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter

    .prologue
    .line 11749
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11750
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gj;

    move-object v0, p0

    .line 11752
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gj;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11468
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 11476
    :goto_0
    return v0

    .line 11472
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 11474
    goto :goto_0

    .line 11476
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->z()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11281
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1
    .parameter

    .prologue
    .line 11866
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11867
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gl;

    move-object v0, p0

    .line 11868
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gl;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->y()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 11281
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/cg;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11281
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->z()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->z()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11281
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->z()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cg;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 11483
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 11487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 11488
    sparse-switch v1, :sswitch_data_0

    .line 11494
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/cg;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11496
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cg;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 11497
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    move-object v0, p0

    .line 11498
    :goto_1
    return-object v0

    .line 11490
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cg;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 11491
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    move-object v0, p0

    .line 11492
    goto :goto_1

    .line 11503
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 11504
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11505
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 11507
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 11508
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 11512
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->P()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v1

    .line 11513
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11514
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->n()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    .line 11516
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 11517
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 11521
    :sswitch_3
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->P()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v1

    .line 11522
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 11523
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v2, :cond_8

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->aa()V

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 11527
    :sswitch_4
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->N()Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    .line 11528
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->s()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 11529
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->t()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    .line 11531
    :cond_9
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 11532
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v2, :cond_b

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_a
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cg;->af_()V

    :goto_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4

    .line 11488
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->y()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->z()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11281
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cg;->y()Lcom/keniu/security/sync/d/d/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11546
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

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
    .line 11549
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11550
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 11552
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 11611
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 11612
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 11614
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 11636
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 11639
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11640
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    .line 11642
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gj;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 11701
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 11702
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gl;

    move-object v0, p0

    .line 11704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->d:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 11735
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11736
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 11738
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 11873
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 11874
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 11876
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 11742
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11743
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 11745
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 11912
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->a:I

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

.method public final t()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 11915
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 11916
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    .line 11918
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gy;

    move-object v0, p0

    goto :goto_0
.end method

.method public final u()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 11977
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 11978
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->i:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ha;

    move-object v0, p0

    .line 11980
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cg;->h:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0
.end method
