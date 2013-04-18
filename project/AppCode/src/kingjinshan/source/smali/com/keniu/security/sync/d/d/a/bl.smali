.class public final Lcom/keniu/security/sync/d/d/a/bl;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bm;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12313
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 12491
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12527
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12314
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->s()Z

    .line 12315
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 12299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bl;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12318
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 12491
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12527
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12319
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->s()Z

    .line 12320
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12515
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12516
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->h()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bk;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12517
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12518
    return-object p0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12551
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12552
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->h()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bk;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12553
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12554
    return-object p0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12577
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12578
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->d:I

    .line 12579
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12580
    return-object p0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 2

    .prologue
    .line 12598
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12599
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->e:J

    .line 12600
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12601
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bl;)Lcom/keniu/security/sync/d/d/a/bk;
    .locals 2
    .parameter

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->z()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bk;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bl;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 12399
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/bk;

    if-eqz v0, :cond_0

    .line 12400
    check-cast p1, Lcom/keniu/security/sync/d/d/a/bk;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bk;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    .line 12403
    :goto_0
    return-object v0

    .line 12402
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 12403
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 12521
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12522
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12523
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12524
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 12557
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12558
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12559
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12560
    return-void
.end method

.method static synthetic r()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12299
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bl;-><init>()V

    return-object v0
.end method

.method private static s()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12304
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->L()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static t()V
    .locals 0

    .prologue
    .line 12322
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->s()Z

    .line 12324
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1

    .prologue
    .line 12326
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bl;-><init>()V

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 2

    .prologue
    .line 12330
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 12331
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12332
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12333
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12334
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12335
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->d:I

    .line 12336
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12337
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->e:J

    .line 12338
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12339
    return-object p0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/bl;
    .locals 2

    .prologue
    .line 12343
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bl;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->z()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/keniu/security/sync/d/d/a/bk;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/bk;
    .locals 1

    .prologue
    .line 12352
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->h()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/bk;
    .locals 2

    .prologue
    .line 12365
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->z()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    .line 12366
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bk;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12367
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bl;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 12370
    :cond_0
    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/bk;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 12374
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bk;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bk;-><init>(Lcom/keniu/security/sync/d/d/a/bl;)V

    .line 12375
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12376
    const/4 v2, 0x0

    .line 12377
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 12380
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/bk;->a(Lcom/keniu/security/sync/d/d/a/bk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12381
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12382
    or-int/lit8 v2, v2, 0x2

    .line 12384
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/bk;->b(Lcom/keniu/security/sync/d/d/a/bk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12385
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12386
    or-int/lit8 v2, v2, 0x4

    .line 12388
    :cond_2
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/bl;->d:I

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/bk;->a(Lcom/keniu/security/sync/d/d/a/bk;I)I

    .line 12389
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 12390
    or-int/lit8 v1, v2, 0x8

    .line 12392
    :goto_0
    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/bl;->e:J

    invoke-static {v0, v2, v3}, Lcom/keniu/security/sync/d/d/a/bk;->a(Lcom/keniu/security/sync/d/d/a/bk;J)J

    .line 12393
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/bk;->b(Lcom/keniu/security/sync/d/d/a/bk;I)I

    .line 12394
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->ab_()V

    .line 12395
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 12309
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->M()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12348
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->v()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->w()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12299
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->h()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12299
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->h()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->z()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->i()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->z()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12299
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->i()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 12299
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12299
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 12571
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12572
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/bl;->d:I

    .line 12573
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12574
    return-object p0
.end method

.method public final a(J)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 12592
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12593
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/bl;->e:J

    .line 12594
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12595
    return-object p0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/bk;)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 2
    .parameter

    .prologue
    .line 12408
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bk;->h()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 12422
    :goto_0
    return-object v0

    .line 12409
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12410
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bl;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bl;

    .line 12412
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12413
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bl;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bl;

    .line 12415
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12416
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bl;->a(I)Lcom/keniu/security/sync/d/d/a/bl;

    .line 12418
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12419
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->q()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/sync/d/d/a/bl;->a(J)Lcom/keniu/security/sync/d/d/a/bl;

    .line 12421
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bk;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bl;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 12422
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 12506
    if-nez p1, :cond_0

    .line 12507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12509
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12510
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12511
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12512
    return-object p0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12426
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 12438
    :goto_0
    return v0

    .line 12430
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 12432
    goto :goto_0

    .line 12434
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->n()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 12436
    goto :goto_0

    .line 12438
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->w()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12299
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 1
    .parameter

    .prologue
    .line 12542
    if-nez p1, :cond_0

    .line 12543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12545
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12546
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12547
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    .line 12548
    return-object p0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->v()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 12299
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bl;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12299
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->w()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->w()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12299
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->w()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bl;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 12445
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 12449
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 12450
    sparse-switch v1, :sswitch_data_0

    .line 12456
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/bl;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12458
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bl;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 12459
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    move-object v0, p0

    .line 12460
    :goto_1
    return-object v0

    .line 12452
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bl;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 12453
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bl;->af_()V

    move-object v0, p0

    .line 12454
    goto :goto_1

    .line 12465
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12466
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    goto :goto_0

    .line 12470
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12471
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    goto :goto_0

    .line 12475
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12476
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->d:I

    goto :goto_0

    .line 12480
    :sswitch_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

    .line 12481
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/bl;->e:J

    goto :goto_0

    .line 12450
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
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->v()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->w()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->v()Lcom/keniu/security/sync/d/d/a/bl;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/bk;
    .locals 2

    .prologue
    .line 12356
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bl;->z()Lcom/keniu/security/sync/d/d/a/bk;

    move-result-object v0

    .line 12357
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bk;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12358
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bl;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 12360
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12493
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

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
    .line 12496
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12497
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12498
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 12499
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->b:Ljava/lang/Object;

    .line 12502
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 12529
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

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

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12532
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12533
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 12534
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 12535
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->c:Ljava/lang/Object;

    .line 12538
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 12565
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

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
    .line 12568
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->d:I

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 12586
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->a:I

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

.method public final q()J
    .locals 2

    .prologue
    .line 12589
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/bl;->e:J

    return-wide v0
.end method
