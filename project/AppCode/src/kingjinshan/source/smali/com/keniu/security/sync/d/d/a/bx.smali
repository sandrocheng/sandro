.class public final Lcom/keniu/security/sync/d/d/a/bx;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/by;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22375
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 22503
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22376
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->l()Z

    .line 22377
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 22361
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bx;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22380
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 22503
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22381
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->l()Z

    .line 22382
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bx;)Lcom/keniu/security/sync/d/d/a/bw;
    .locals 2
    .parameter

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->t()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 22518
    if-nez p1, :cond_0

    .line 22519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22521
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    .line 22522
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22523
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->af_()V

    .line 22524
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1
    .parameter

    .prologue
    .line 22443
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/bw;

    if-eqz v0, :cond_0

    .line 22444
    check-cast p1, Lcom/keniu/security/sync/d/d/a/bw;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bw;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    .line 22447
    :goto_0
    return-object v0

    .line 22446
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 22447
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 22533
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    .line 22534
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22535
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->af_()V

    .line 22536
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1

    .prologue
    .line 22361
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bx;-><init>()V

    return-object v0
.end method

.method private static l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 22366
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->an()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static m()V
    .locals 0

    .prologue
    .line 22384
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->l()Z

    .line 22386
    return-void
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1

    .prologue
    .line 22388
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bx;-><init>()V

    return-object v0
.end method

.method private o()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1

    .prologue
    .line 22392
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 22393
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22394
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    .line 22395
    return-object p0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 2

    .prologue
    .line 22399
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bx;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->t()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/keniu/security/sync/d/d/a/bw;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/bw;
    .locals 1

    .prologue
    .line 22408
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->h()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/bw;
    .locals 2

    .prologue
    .line 22412
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->t()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    .line 22413
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22414
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 22416
    :cond_0
    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/bw;
    .locals 2

    .prologue
    .line 22421
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->t()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    .line 22422
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22423
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 22426
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/bw;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 22430
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bw;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bw;-><init>(Lcom/keniu/security/sync/d/d/a/bx;)V

    .line 22431
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    .line 22432
    const/4 v2, 0x0

    .line 22433
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    .line 22436
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/bw;->a(Lcom/keniu/security/sync/d/d/a/bw;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22437
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/bw;->a(Lcom/keniu/security/sync/d/d/a/bw;I)I

    .line 22438
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->ab_()V

    .line 22439
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/bx;
    .locals 1

    .prologue
    .line 22527
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    .line 22528
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->h()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bw;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22529
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->af_()V

    .line 22530
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 22371
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ao()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 22404
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->o()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->p()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22361
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->h()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22361
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->h()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->t()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->r()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->t()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->r()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 22361
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22361
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/bw;)Lcom/keniu/security/sync/d/d/a/bx;
    .locals 2
    .parameter

    .prologue
    .line 22452
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bw;->h()Lcom/keniu/security/sync/d/d/a/bw;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 22457
    :goto_0
    return-object v0

    .line 22453
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bw;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22454
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bw;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->af_()V

    .line 22456
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bx;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 22457
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 22461
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22463
    const/4 v0, 0x0

    .line 22465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->p()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22361
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->o()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 22361
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bx;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22361
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->p()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->p()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22361
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->p()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bx;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22472
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 22476
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 22477
    sparse-switch v1, :sswitch_data_0

    .line 22483
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/bx;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22485
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bx;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 22486
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->af_()V

    move-object v0, p0

    .line 22487
    :goto_1
    return-object v0

    .line 22479
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bx;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 22480
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bx;->af_()V

    move-object v0, p0

    .line 22481
    goto :goto_1

    .line 22492
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

    .line 22493
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    goto :goto_0

    .line 22477
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->o()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->p()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22361
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bx;->o()Lcom/keniu/security/sync/d/d/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22505
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->a:I

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
    .line 22508
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22509
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22510
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 22511
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bx;->b:Ljava/lang/Object;

    .line 22514
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
