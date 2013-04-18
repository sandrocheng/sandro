.class public final Lcom/keniu/security/sync/d/d/a/dp;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dq;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Lcom/b/a/eu;

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18367
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 18550
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18586
    sget-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    .line 18368
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->s()Z

    .line 18369
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 18353
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/dp;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18372
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 18550
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18586
    sget-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    .line 18373
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->s()Z

    .line 18374
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18574
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18575
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->h()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/do;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18576
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18577
    return-object p0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 18588
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 18589
    new-instance v0, Lcom/b/a/et;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-direct {v0, v1}, Lcom/b/a/et;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    .line 18590
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18592
    :cond_0
    return-void
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18630
    sget-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    .line 18631
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18632
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18633
    return-object p0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18656
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18657
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->d:I

    .line 18658
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18659
    return-object p0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18677
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18678
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->e:I

    .line 18679
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18680
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dp;)Lcom/keniu/security/sync/d/d/a/do;
    .locals 2
    .parameter

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->z()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/do;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dp;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18624
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->D()V

    .line 18625
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18626
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18627
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18614
    if-nez p1, :cond_0

    .line 18615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18617
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->D()V

    .line 18618
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->add(Ljava/lang/Object;)Z

    .line 18619
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18620
    return-object p0
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18671
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18672
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/dp;->e:I

    .line 18673
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18674
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18455
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/do;

    if-eqz v0, :cond_0

    .line 18456
    check-cast p1, Lcom/keniu/security/sync/d/d/a/do;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    .line 18459
    :goto_0
    return-object v0

    .line 18458
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 18459
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 18580
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18581
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18582
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18583
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 18636
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->D()V

    .line 18637
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->a(Lcom/b/a/i;)V

    .line 18638
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18639
    return-void
.end method

.method static synthetic r()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18353
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dp;-><init>()V

    return-object v0
.end method

.method private static s()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 18358
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ab()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static t()V
    .locals 0

    .prologue
    .line 18376
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->s()Z

    .line 18378
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1

    .prologue
    .line 18380
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dp;-><init>()V

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18384
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 18385
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18386
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18387
    sget-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    .line 18388
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18389
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->d:I

    .line 18390
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18391
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->e:I

    .line 18392
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18393
    return-object p0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/dp;
    .locals 2

    .prologue
    .line 18397
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dp;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dp;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->z()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/do;
    .locals 1

    .prologue
    .line 18406
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->h()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/do;
    .locals 2

    .prologue
    .line 18419
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->z()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    .line 18420
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/do;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18421
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dp;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 18424
    :cond_0
    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/do;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 18428
    new-instance v0, Lcom/keniu/security/sync/d/d/a/do;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/do;-><init>(Lcom/keniu/security/sync/d/d/a/dp;)V

    .line 18429
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18430
    const/4 v2, 0x0

    .line 18431
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 18434
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/do;->a(Lcom/keniu/security/sync/d/d/a/do;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18435
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 18436
    new-instance v3, Lcom/b/a/gl;

    iget-object v4, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-direct {v3, v4}, Lcom/b/a/gl;-><init>(Lcom/b/a/eu;)V

    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    .line 18438
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18440
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/do;->a(Lcom/keniu/security/sync/d/d/a/do;Lcom/b/a/eu;)Lcom/b/a/eu;

    .line 18441
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 18442
    or-int/lit8 v2, v2, 0x2

    .line 18444
    :cond_2
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/dp;->d:I

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/do;->a(Lcom/keniu/security/sync/d/d/a/do;I)I

    .line 18445
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 18446
    or-int/lit8 v1, v2, 0x4

    .line 18448
    :goto_0
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/dp;->e:I

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/do;->b(Lcom/keniu/security/sync/d/d/a/do;I)I

    .line 18449
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/do;->c(Lcom/keniu/security/sync/d/d/a/do;I)I

    .line 18450
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->ab_()V

    .line 18451
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 18363
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ac()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 18402
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->v()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->w()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18353
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->h()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18353
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->h()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->z()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18353
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->i()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->z()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18353
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->i()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 18353
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18353
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dp;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18605
    if-nez p2, :cond_0

    .line 18606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18608
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->D()V

    .line 18609
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-interface {v0, p1, p2}, Lcom/b/a/eu;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18610
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18611
    return-object p0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 2
    .parameter

    .prologue
    .line 18464
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/do;->h()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 18485
    :goto_0
    return-object v0

    .line 18465
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/do;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18466
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/do;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dp;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dp;

    .line 18468
    :cond_1
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/do;->a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/b/a/eu;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/eu;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18469
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-interface {v0}, Lcom/b/a/eu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18470
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/do;->a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/b/a/eu;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    .line 18471
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18476
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18478
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/do;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18479
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/do;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dp;->b(I)Lcom/keniu/security/sync/d/d/a/dp;

    .line 18481
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/do;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18482
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/do;->q()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->e:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18484
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/do;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dp;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 18485
    goto :goto_0

    .line 18473
    :cond_5
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->D()V

    .line 18474
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/do;->a(Lcom/keniu/security/sync/d/d/a/do;)Lcom/b/a/eu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/eu;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18565
    if-nez p1, :cond_0

    .line 18566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18568
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18569
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18570
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18571
    return-object p0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18601
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-interface {v0, p1}, Lcom/b/a/eu;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18489
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 18497
    :goto_0
    return v0

    .line 18493
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->n()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 18495
    goto :goto_0

    .line 18497
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->w()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18353
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dp;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 1
    .parameter

    .prologue
    .line 18650
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18651
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/dp;->d:I

    .line 18652
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    .line 18653
    return-object p0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->v()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 18353
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dp;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18353
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dp;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->w()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->w()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18353
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dp;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->w()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dp;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 18504
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 18508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 18509
    sparse-switch v1, :sswitch_data_0

    .line 18515
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/dp;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18517
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dp;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 18518
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    move-object v0, p0

    .line 18519
    :goto_1
    return-object v0

    .line 18511
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dp;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 18512
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dp;->af_()V

    move-object v0, p0

    .line 18513
    goto :goto_1

    .line 18524
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18525
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    goto :goto_0

    .line 18529
    :sswitch_2
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->D()V

    .line 18530
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/b/a/eu;->a(Lcom/b/a/i;)V

    goto :goto_0

    .line 18534
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18535
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->d:I

    goto :goto_0

    .line 18539
    :sswitch_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    .line 18540
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dp;->e:I

    goto :goto_0

    .line 18509
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->v()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->w()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18353
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->v()Lcom/keniu/security/sync/d/d/a/dp;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/do;
    .locals 2

    .prologue
    .line 18410
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dp;->z()Lcom/keniu/security/sync/d/d/a/do;

    move-result-object v0

    .line 18411
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/do;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18412
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dp;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 18414
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18552
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18555
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18556
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 18557
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 18558
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->b:Ljava/lang/Object;

    .line 18561
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    .prologue
    .line 18595
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 18598
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->c:Lcom/b/a/eu;

    invoke-interface {v0}, Lcom/b/a/eu;->size()I

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 18644
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

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

.method public final o()I
    .locals 1

    .prologue
    .line 18647
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->d:I

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 18665
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->a:I

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

.method public final q()I
    .locals 1

    .prologue
    .line 18668
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dp;->e:I

    return v0
.end method
