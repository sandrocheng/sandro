.class public final Lcom/keniu/security/sync/d/d/a/ff;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fg;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9329
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 9493
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9529
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9565
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9330
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->p()Z

    .line 9331
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 9315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ff;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9334
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 9493
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9529
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9565
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9335
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->p()Z

    .line 9336
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9589
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9590
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->h()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fe;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9591
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9592
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ff;)Lcom/keniu/security/sync/d/d/a/fe;
    .locals 2
    .parameter

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->x()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fe;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ff;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1
    .parameter

    .prologue
    .line 9508
    if-nez p1, :cond_0

    .line 9509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9511
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9512
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9513
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9514
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1
    .parameter

    .prologue
    .line 9544
    if-nez p1, :cond_0

    .line 9545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9547
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9548
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9549
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9550
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1
    .parameter

    .prologue
    .line 9580
    if-nez p1, :cond_0

    .line 9581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9583
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9584
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9585
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9586
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1
    .parameter

    .prologue
    .line 9409
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/fe;

    if-eqz v0, :cond_0

    .line 9410
    check-cast p1, Lcom/keniu/security/sync/d/d/a/fe;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/fe;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    .line 9413
    :goto_0
    return-object v0

    .line 9412
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 9413
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 9523
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9524
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9525
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9526
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 9559
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9560
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9561
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9562
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 9595
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9596
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9597
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9598
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9315
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ff;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9320
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->D()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static q()V
    .locals 0

    .prologue
    .line 9338
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->p()Z

    .line 9340
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9342
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ff;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9346
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 9347
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9348
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9349
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9350
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9351
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9352
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9353
    return-object p0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 2

    .prologue
    .line 9357
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ff;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ff;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->x()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/keniu/security/sync/d/d/a/fe;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/fe;
    .locals 1

    .prologue
    .line 9366
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->h()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/fe;
    .locals 2

    .prologue
    .line 9370
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->x()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    .line 9371
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fe;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9372
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ff;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 9374
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/fe;
    .locals 2

    .prologue
    .line 9379
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->x()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    .line 9380
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fe;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9381
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ff;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 9384
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fe;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 9388
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fe;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fe;-><init>(Lcom/keniu/security/sync/d/d/a/ff;)V

    .line 9389
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9390
    const/4 v2, 0x0

    .line 9391
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 9394
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/fe;->a(Lcom/keniu/security/sync/d/d/a/fe;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9395
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9396
    or-int/lit8 v2, v2, 0x2

    .line 9398
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/fe;->b(Lcom/keniu/security/sync/d/d/a/fe;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9399
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 9400
    or-int/lit8 v1, v2, 0x4

    .line 9402
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/fe;->c(Lcom/keniu/security/sync/d/d/a/fe;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9403
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/fe;->a(Lcom/keniu/security/sync/d/d/a/fe;I)I

    .line 9404
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->ab_()V

    .line 9405
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9517
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9518
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->h()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fe;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9519
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9520
    return-object p0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/ff;
    .locals 1

    .prologue
    .line 9553
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9554
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->h()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fe;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9555
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9556
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9325
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->E()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9362
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->s()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->t()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9315
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->h()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9315
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->h()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->x()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->v()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->x()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->v()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 9315
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9315
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ff;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/fe;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 2
    .parameter

    .prologue
    .line 9418
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fe;->h()Lcom/keniu/security/sync/d/d/a/fe;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9429
    :goto_0
    return-object v0

    .line 9419
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fe;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9420
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fe;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9422
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fe;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9423
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fe;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9425
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fe;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9426
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fe;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    .line 9428
    :cond_6
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fe;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ff;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 9429
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9433
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 9445
    :goto_0
    return v0

    .line 9437
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 9439
    goto :goto_0

    .line 9441
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->n()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 9443
    goto :goto_0

    .line 9445
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->t()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9315
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ff;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->s()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9315
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ff;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9315
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ff;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->t()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->t()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9315
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ff;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->t()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ff;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9452
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 9456
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 9457
    sparse-switch v1, :sswitch_data_0

    .line 9463
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ff;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9465
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ff;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9466
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    move-object v0, p0

    .line 9467
    :goto_1
    return-object v0

    .line 9459
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ff;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9460
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ff;->af_()V

    move-object v0, p0

    .line 9461
    goto :goto_1

    .line 9472
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9473
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    goto :goto_0

    .line 9477
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9478
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    goto :goto_0

    .line 9482
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

    .line 9483
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    goto :goto_0

    .line 9457
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->s()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->t()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ff;->s()Lcom/keniu/security/sync/d/d/a/ff;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9495
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

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
    .line 9498
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9499
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9500
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 9501
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->b:Ljava/lang/Object;

    .line 9504
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 9531
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

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
    .line 9534
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9535
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9536
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 9537
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->c:Ljava/lang/Object;

    .line 9540
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 9567
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->a:I

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

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9570
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9571
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9572
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 9573
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ff;->d:Ljava/lang/Object;

    .line 9576
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
