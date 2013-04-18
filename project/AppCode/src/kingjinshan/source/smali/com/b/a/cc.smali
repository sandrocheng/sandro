.class public final Lcom/b/a/cc;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/cg;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/b/a/fc;

.field private d:Ljava/lang/Object;

.field private e:J

.field private f:J

.field private g:D

.field private h:Lcom/b/a/i;

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15011
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 15259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15445
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15544
    sget-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    iput-object v0, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    .line 15568
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15012
    invoke-direct {p0}, Lcom/b/a/cc;->A()V

    .line 15013
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 14997
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/cc;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15016
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 15259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15445
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15544
    sget-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    iput-object v0, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    .line 15568
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15017
    invoke-direct {p0}, Lcom/b/a/cc;->A()V

    .line 15018
    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 15020
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 15021
    invoke-direct {p0}, Lcom/b/a/cc;->aa()Lcom/b/a/fc;

    .line 15023
    :cond_0
    return-void
.end method

.method private static D()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 15025
    new-instance v0, Lcom/b/a/cc;

    invoke-direct {v0}, Lcom/b/a/cc;-><init>()V

    return-object v0
.end method

.method private E()Lcom/b/a/cc;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 15029
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 15030
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15031
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15032
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15036
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15037
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15038
    iput-wide v1, p0, Lcom/b/a/cc;->e:J

    .line 15039
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15040
    iput-wide v1, p0, Lcom/b/a/cc;->f:J

    .line 15041
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15042
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/cc;->g:D

    .line 15043
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15044
    sget-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    iput-object v0, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    .line 15045
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15046
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15047
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15048
    return-object p0

    .line 15034
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private N()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 15052
    new-instance v0, Lcom/b/a/cc;

    invoke-direct {v0}, Lcom/b/a/cc;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/cc;->a(Lcom/b/a/cb;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static U()Lcom/b/a/cb;
    .locals 1

    .prologue
    .line 15061
    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private V()Lcom/b/a/cb;
    .locals 2

    .prologue
    .line 15074
    invoke-virtual {p0}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v0

    .line 15075
    invoke-virtual {v0}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15076
    invoke-static {v0}, Lcom/b/a/cc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 15079
    :cond_0
    return-object v0
.end method

.method private W()V
    .locals 2

    .prologue
    .line 15262
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 15263
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15264
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15266
    :cond_0
    return-void
.end method

.method private X()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 15378
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15379
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15380
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15381
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15385
    :goto_0
    return-object p0

    .line 15383
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private Y()Lcom/b/a/ce;
    .locals 2

    .prologue
    .line 15417
    invoke-direct {p0}, Lcom/b/a/cc;->aa()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cd;->e()Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    return-object p0
.end method

.method private Z()Ljava/util/List;
    .locals 1

    .prologue
    .line 15427
    invoke-direct {p0}, Lcom/b/a/cc;->aa()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/cc;)Lcom/b/a/cb;
    .locals 2
    .parameter

    .prologue
    .line 14997
    invoke-virtual {p0}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/cc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(D)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15531
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15532
    iput-wide p1, p0, Lcom/b/a/cc;->g:D

    .line 15533
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15534
    return-object p0
.end method

.method private a(ILcom/b/a/cd;)Lcom/b/a/cc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15294
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 15295
    if-nez p2, :cond_0

    .line 15296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15298
    :cond_0
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15299
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15300
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15304
    :goto_0
    return-object p0

    .line 15302
    :cond_1
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/ce;)Lcom/b/a/cc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15308
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15309
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15310
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15311
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15315
    :goto_0
    return-object p0

    .line 15313
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(J)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15489
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15490
    iput-wide p1, p0, Lcom/b/a/cc;->e:J

    .line 15491
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15492
    return-object p0
.end method

.method private a(Lcom/b/a/cd;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15318
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 15319
    if-nez p1, :cond_0

    .line 15320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15322
    :cond_0
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15323
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15324
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15328
    :goto_0
    return-object p0

    .line 15326
    :cond_1
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/ce;)Lcom/b/a/cc;
    .locals 2
    .parameter

    .prologue
    .line 15346
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15347
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15348
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15349
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15353
    :goto_0
    return-object p0

    .line 15351
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15368
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15369
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15370
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15371
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15375
    :goto_0
    return-object p0

    .line 15373
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15460
    if-nez p1, :cond_0

    .line 15461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15463
    :cond_0
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15464
    iput-object p1, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15465
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15466
    return-object p0
.end method

.method private aa()Lcom/b/a/fc;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 15432
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15433
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    iget v2, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/cc;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/cc;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    .line 15439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15441
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    return-object v0

    .line 15433
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private ab()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 15469
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15470
    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cb;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15471
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15472
    return-object p0
.end method

.method private ac()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 15495
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/cc;->e:J

    .line 15497
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15498
    return-object p0
.end method

.method private ad()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 15516
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/cc;->f:J

    .line 15518
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15519
    return-object p0
.end method

.method private ae()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 15537
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15538
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/cc;->g:D

    .line 15539
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15540
    return-object p0
.end method

.method private af()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 15561
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15562
    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cb;->t()Lcom/b/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    .line 15563
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15564
    return-object p0
.end method

.method private ag()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 15592
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15593
    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/cb;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15594
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15595
    return-object p0
.end method

.method private b(ILcom/b/a/cd;)Lcom/b/a/cc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15332
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 15333
    if-nez p2, :cond_0

    .line 15334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15336
    :cond_0
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15337
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15338
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15342
    :goto_0
    return-object p0

    .line 15340
    :cond_1
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/ce;)Lcom/b/a/cc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15357
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15358
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15359
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15360
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15364
    :goto_0
    return-object p0

    .line 15362
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ce;->l()Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(J)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15510
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15511
    iput-wide p1, p0, Lcom/b/a/cc;->f:J

    .line 15512
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15513
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15583
    if-nez p1, :cond_0

    .line 15584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15586
    :cond_0
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15587
    iput-object p1, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15588
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15589
    return-object p0
.end method

.method private c(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15388
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15389
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15390
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15391
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15395
    :goto_0
    return-object p0

    .line 15393
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15125
    instance-of v0, p1, Lcom/b/a/cb;

    if-eqz v0, :cond_0

    .line 15126
    check-cast p1, Lcom/b/a/cb;

    invoke-virtual {p0, p1}, Lcom/b/a/cc;->a(Lcom/b/a/cb;)Lcom/b/a/cc;

    move-result-object v0

    .line 15129
    :goto_0
    return-object v0

    .line 15128
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 15129
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/ce;
    .locals 1
    .parameter

    .prologue
    .line 15399
    invoke-direct {p0}, Lcom/b/a/cc;->aa()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    return-object p0
.end method

.method private e(I)Lcom/b/a/ce;
    .locals 2
    .parameter

    .prologue
    .line 15422
    invoke-direct {p0}, Lcom/b/a/cc;->aa()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cd;->e()Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ce;

    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 15475
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15476
    iput-object p1, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15477
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15478
    return-void
.end method

.method private f(Lcom/b/a/i;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 15552
    if-nez p1, :cond_0

    .line 15553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15555
    :cond_0
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15556
    iput-object p1, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    .line 15557
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15558
    return-object p0
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 15598
    iget v0, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15599
    iput-object p1, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15600
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15601
    return-void
.end method

.method static synthetic y()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 14997
    new-instance v0, Lcom/b/a/cc;

    invoke-direct {v0}, Lcom/b/a/cc;-><init>()V

    return-object v0
.end method

.method private static z()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15002
    invoke-static {}, Lcom/b/a/p;->H()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 15007
    invoke-static {}, Lcom/b/a/p;->I()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 15057
    invoke-static {}, Lcom/b/a/cb;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->E()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final F_()Ljava/util/List;
    .locals 1

    .prologue
    .line 15272
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15273
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 15275
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->N()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14997
    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14997
    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14997
    invoke-virtual {p0}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14997
    invoke-virtual {p0}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14997
    invoke-virtual {p0}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14997
    invoke-virtual {p0}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 14997
    invoke-direct {p0, p1}, Lcom/b/a/cc;->d(Lcom/b/a/ev;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14997
    invoke-virtual {p0, p1, p2}, Lcom/b/a/cc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/cb;)Lcom/b/a/cc;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 15134
    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 15180
    :goto_0
    return-object v0

    .line 15135
    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 15136
    invoke-static {p1}, Lcom/b/a/cb;->a(Lcom/b/a/cb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15137
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15138
    invoke-static {p1}, Lcom/b/a/cb;->a(Lcom/b/a/cb;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15139
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15144
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15161
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/cb;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15162
    invoke-virtual {p1}, Lcom/b/a/cb;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15141
    :cond_2
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    .line 15142
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/cb;->a(Lcom/b/a/cb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 15147
    :cond_3
    invoke-static {p1}, Lcom/b/a/cb;->a(Lcom/b/a/cb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15148
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15149
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 15150
    iput-object v1, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    .line 15151
    invoke-static {p1}, Lcom/b/a/cb;->a(Lcom/b/a/cb;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15152
    iget v0, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/cc;->a:I

    .line 15153
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/cc;->aa()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 15157
    :cond_5
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/cb;->a(Lcom/b/a/cb;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2

    .line 15162
    :cond_6
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/cc;->a:I

    iput-object v0, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15164
    :cond_7
    invoke-virtual {p1}, Lcom/b/a/cb;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15165
    invoke-virtual {p1}, Lcom/b/a/cb;->n()J

    move-result-wide v0

    iget v2, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/b/a/cc;->a:I

    iput-wide v0, p0, Lcom/b/a/cc;->e:J

    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15167
    :cond_8
    invoke-virtual {p1}, Lcom/b/a/cb;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15168
    invoke-virtual {p1}, Lcom/b/a/cb;->p()J

    move-result-wide v0

    iget v2, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/b/a/cc;->a:I

    iput-wide v0, p0, Lcom/b/a/cc;->f:J

    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15170
    :cond_9
    invoke-virtual {p1}, Lcom/b/a/cb;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15171
    invoke-virtual {p1}, Lcom/b/a/cb;->r()D

    move-result-wide v0

    iget v2, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/b/a/cc;->a:I

    iput-wide v0, p0, Lcom/b/a/cc;->g:D

    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15173
    :cond_a
    invoke-virtual {p1}, Lcom/b/a/cb;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15174
    invoke-virtual {p1}, Lcom/b/a/cb;->t()Lcom/b/a/i;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_b
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/b/a/cc;->a:I

    iput-object v0, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15176
    :cond_c
    invoke-virtual {p1}, Lcom/b/a/cb;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 15177
    invoke-virtual {p1}, Lcom/b/a/cb;->v()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_d
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/b/a/cc;->a:I

    iput-object v0, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    .line 15179
    :cond_e
    invoke-virtual {p1}, Lcom/b/a/cb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/cc;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 15180
    goto/16 :goto_0
.end method

.method public final a(I)Lcom/b/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 15286
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15287
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cd;

    move-object v0, p0

    .line 15289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/cd;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15184
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/cc;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 15185
    invoke-virtual {p0, v0}, Lcom/b/a/cc;->a(I)Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 15190
    :goto_1
    return v0

    .line 15184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15190
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->N()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cf;
    .locals 1
    .parameter

    .prologue
    .line 15403
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15404
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cf;

    move-object v0, p0

    .line 15405
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/cf;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14997
    invoke-virtual {p0, p1, p2}, Lcom/b/a/cc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->E()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 14997
    invoke-direct {p0, p1}, Lcom/b/a/cc;->d(Lcom/b/a/ev;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14997
    invoke-virtual {p0, p1, p2}, Lcom/b/a/cc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->N()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->N()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14997
    invoke-virtual {p0, p1, p2}, Lcom/b/a/cc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cc;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15197
    invoke-virtual {p0}, Lcom/b/a/cc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 15201
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 15202
    sparse-switch v1, :sswitch_data_0

    .line 15208
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/cc;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15210
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/cc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 15211
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    move-object v0, p0

    .line 15212
    :goto_1
    return-object v0

    .line 15204
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/cc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 15205
    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    move-object v0, p0

    .line 15206
    goto :goto_1

    .line 15217
    :sswitch_1
    invoke-static {}, Lcom/b/a/cd;->l()Lcom/b/a/ce;

    move-result-object v1

    .line 15218
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 15219
    invoke-virtual {v1}, Lcom/b/a/ce;->m()Lcom/b/a/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/cc;->W()V

    iget-object v2, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/cc;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 15223
    :sswitch_2
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/cc;->a:I

    .line 15224
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    goto :goto_0

    .line 15228
    :sswitch_3
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/cc;->a:I

    .line 15229
    invoke-virtual {p1}, Lcom/b/a/m;->d()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/b/a/cc;->e:J

    goto :goto_0

    .line 15233
    :sswitch_4
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/cc;->a:I

    .line 15234
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/b/a/cc;->f:J

    goto :goto_0

    .line 15238
    :sswitch_5
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/b/a/cc;->a:I

    .line 15239
    invoke-virtual {p1}, Lcom/b/a/m;->b()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/b/a/cc;->g:D

    goto/16 :goto_0

    .line 15243
    :sswitch_6
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/b/a/cc;->a:I

    .line 15244
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    goto/16 :goto_0

    .line 15248
    :sswitch_7
    iget v1, p0, Lcom/b/a/cc;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/b/a/cc;->a:I

    .line 15249
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    goto/16 :goto_0

    .line 15202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x31 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->N()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->E()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->N()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14997
    invoke-direct {p0}, Lcom/b/a/cc;->E()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 15410
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 15411
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 15413
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 15279
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 15280
    iget-object v0, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 15282
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 15447
    iget v0, p0, Lcom/b/a/cc;->a:I

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

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15450
    iget-object v0, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15451
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15452
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 15453
    iput-object v0, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    .line 15456
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 15483
    iget v0, p0, Lcom/b/a/cc;->a:I

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

.method public final n()J
    .locals 2

    .prologue
    .line 15486
    iget-wide v0, p0, Lcom/b/a/cc;->e:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 15504
    iget v0, p0, Lcom/b/a/cc;->a:I

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

.method public final p()J
    .locals 2

    .prologue
    .line 15507
    iget-wide v0, p0, Lcom/b/a/cc;->f:J

    return-wide v0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 15525
    iget v0, p0, Lcom/b/a/cc;->a:I

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

.method public final r()D
    .locals 2

    .prologue
    .line 15528
    iget-wide v0, p0, Lcom/b/a/cc;->g:D

    return-wide v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 15546
    iget v0, p0, Lcom/b/a/cc;->a:I

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

.method public final t()Lcom/b/a/i;
    .locals 1

    .prologue
    .line 15549
    iget-object v0, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    return-object v0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 15570
    iget v0, p0, Lcom/b/a/cc;->a:I

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

.method public final v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15573
    iget-object v0, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15574
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15575
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 15576
    iput-object v0, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    .line 15579
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final w()Lcom/b/a/cb;
    .locals 2

    .prologue
    .line 15065
    invoke-virtual {p0}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v0

    .line 15066
    invoke-virtual {v0}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15067
    invoke-static {v0}, Lcom/b/a/cc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 15069
    :cond_0
    return-object v0
.end method

.method public final x()Lcom/b/a/cb;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 15083
    new-instance v0, Lcom/b/a/cb;

    invoke-direct {v0, p0}, Lcom/b/a/cb;-><init>(Lcom/b/a/cc;)V

    .line 15084
    iget v1, p0, Lcom/b/a/cc;->a:I

    .line 15085
    const/4 v2, 0x0

    .line 15086
    iget-object v3, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    if-nez v3, :cond_6

    .line 15087
    iget v3, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_0

    .line 15088
    iget-object v3, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    .line 15089
    iget v3, p0, Lcom/b/a/cc;->a:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/b/a/cc;->a:I

    .line 15091
    :cond_0
    iget-object v3, p0, Lcom/b/a/cc;->b:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/b/a/cb;->a(Lcom/b/a/cb;Ljava/util/List;)Ljava/util/List;

    .line 15095
    :goto_0
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v2, v5

    .line 15098
    :cond_1
    iget-object v3, p0, Lcom/b/a/cc;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/b/a/cb;->a(Lcom/b/a/cb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15099
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 15100
    or-int/lit8 v2, v2, 0x2

    .line 15102
    :cond_2
    iget-wide v3, p0, Lcom/b/a/cc;->e:J

    invoke-static {v0, v3, v4}, Lcom/b/a/cb;->a(Lcom/b/a/cb;J)J

    .line 15103
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 15104
    or-int/lit8 v2, v2, 0x4

    .line 15106
    :cond_3
    iget-wide v3, p0, Lcom/b/a/cc;->f:J

    invoke-static {v0, v3, v4}, Lcom/b/a/cb;->b(Lcom/b/a/cb;J)J

    .line 15107
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 15108
    or-int/lit8 v2, v2, 0x8

    .line 15110
    :cond_4
    iget-wide v3, p0, Lcom/b/a/cc;->g:D

    invoke-static {v0, v3, v4}, Lcom/b/a/cb;->a(Lcom/b/a/cb;D)D

    .line 15111
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 15112
    or-int/lit8 v2, v2, 0x10

    .line 15114
    :cond_5
    iget-object v3, p0, Lcom/b/a/cc;->h:Lcom/b/a/i;

    invoke-static {v0, v3}, Lcom/b/a/cb;->a(Lcom/b/a/cb;Lcom/b/a/i;)Lcom/b/a/i;

    .line 15115
    and-int/lit8 v1, v1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_7

    .line 15116
    or-int/lit8 v1, v2, 0x20

    .line 15118
    :goto_1
    iget-object v2, p0, Lcom/b/a/cc;->i:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/b/a/cb;->b(Lcom/b/a/cb;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15119
    invoke-static {v0, v1}, Lcom/b/a/cb;->a(Lcom/b/a/cb;I)I

    .line 15120
    invoke-virtual {p0}, Lcom/b/a/cc;->ab_()V

    .line 15121
    return-object v0

    .line 15093
    :cond_6
    iget-object v3, p0, Lcom/b/a/cc;->c:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/b/a/cb;->a(Lcom/b/a/cb;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method
