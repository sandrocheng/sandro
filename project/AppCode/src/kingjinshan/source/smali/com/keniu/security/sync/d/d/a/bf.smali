.class public final Lcom/keniu/security/sync/d/d/a/bf;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bg;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31492
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 31634
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31670
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31493
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->n()Z

    .line 31494
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 31478
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bf;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31497
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 31634
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31670
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31498
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->n()Z

    .line 31499
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bf;)Lcom/keniu/security/sync/d/d/a/be;
    .locals 2
    .parameter

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->v()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/be;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1
    .parameter

    .prologue
    .line 31649
    if-nez p1, :cond_0

    .line 31650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31652
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31653
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31654
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31655
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1
    .parameter

    .prologue
    .line 31685
    if-nez p1, :cond_0

    .line 31686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31688
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31689
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31690
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31691
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1
    .parameter

    .prologue
    .line 31566
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/be;

    if-eqz v0, :cond_0

    .line 31567
    check-cast p1, Lcom/keniu/security/sync/d/d/a/be;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/be;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    .line 31570
    :goto_0
    return-object v0

    .line 31569
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 31570
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 31664
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31665
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31666
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31667
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 31700
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31701
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31702
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31703
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31478
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bf;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 31483
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aP()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 31501
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->n()Z

    .line 31503
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31505
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bf;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31509
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 31510
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31511
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31512
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31513
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31514
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 2

    .prologue
    .line 31518
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bf;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->v()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/keniu/security/sync/d/d/a/be;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/be;
    .locals 1

    .prologue
    .line 31527
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->h()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/be;
    .locals 2

    .prologue
    .line 31531
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->v()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    .line 31532
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/be;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31533
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 31535
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/be;
    .locals 2

    .prologue
    .line 31540
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->v()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    .line 31541
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/be;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31542
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 31545
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/be;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 31549
    new-instance v0, Lcom/keniu/security/sync/d/d/a/be;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/be;-><init>(Lcom/keniu/security/sync/d/d/a/bf;)V

    .line 31550
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31551
    const/4 v2, 0x0

    .line 31552
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 31555
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/be;->a(Lcom/keniu/security/sync/d/d/a/be;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31556
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 31557
    or-int/lit8 v1, v2, 0x2

    .line 31559
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/be;->b(Lcom/keniu/security/sync/d/d/a/be;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31560
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/be;->a(Lcom/keniu/security/sync/d/d/a/be;I)I

    .line 31561
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->ab_()V

    .line 31562
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31658
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31659
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->h()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/be;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31660
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31661
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/bf;
    .locals 1

    .prologue
    .line 31694
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31695
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->h()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/be;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31696
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31697
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 31488
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aQ()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 31523
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->q()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->r()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31478
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->h()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31478
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->h()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->v()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->t()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->v()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->t()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 31478
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31478
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/be;)Lcom/keniu/security/sync/d/d/a/bf;
    .locals 2
    .parameter

    .prologue
    .line 31575
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/be;->h()Lcom/keniu/security/sync/d/d/a/be;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 31583
    :goto_0
    return-object v0

    .line 31576
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/be;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31577
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/be;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31579
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/be;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31580
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/be;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    .line 31582
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/be;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bf;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 31583
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 31587
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31589
    const/4 v0, 0x0

    .line 31591
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->r()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31478
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->q()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 31478
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bf;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31478
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->r()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->r()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31478
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->r()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31598
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 31602
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 31603
    sparse-switch v1, :sswitch_data_0

    .line 31609
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/bf;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31611
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bf;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 31612
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    move-object v0, p0

    .line 31613
    :goto_1
    return-object v0

    .line 31605
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bf;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 31606
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bf;->af_()V

    move-object v0, p0

    .line 31607
    goto :goto_1

    .line 31618
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31619
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    goto :goto_0

    .line 31623
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

    .line 31624
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    goto :goto_0

    .line 31603
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
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->q()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->r()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31478
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bf;->q()Lcom/keniu/security/sync/d/d/a/bf;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31636
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

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
    .line 31639
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31640
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 31641
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 31642
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->b:Ljava/lang/Object;

    .line 31645
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 31672
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->a:I

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
    .line 31675
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31676
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 31677
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 31678
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bf;->c:Ljava/lang/Object;

    .line 31681
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method