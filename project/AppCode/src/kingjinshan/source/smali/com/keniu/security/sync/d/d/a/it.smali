.class public final Lcom/keniu/security/sync/d/d/a/it;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/iu;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9403
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 9549
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9585
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9404
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->n()Z

    .line 9405
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 9389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/it;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9408
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 9549
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9585
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9409
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->n()Z

    .line 9410
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/it;)Lcom/keniu/security/sync/d/d/a/is;
    .locals 2
    .parameter

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->v()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/is;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/it;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/it;
    .locals 1
    .parameter

    .prologue
    .line 9564
    if-nez p1, :cond_0

    .line 9565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9567
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9568
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9569
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9570
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/it;
    .locals 1
    .parameter

    .prologue
    .line 9600
    if-nez p1, :cond_0

    .line 9601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9603
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9604
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9605
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9606
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/it;
    .locals 1
    .parameter

    .prologue
    .line 9477
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/is;

    if-eqz v0, :cond_0

    .line 9478
    check-cast p1, Lcom/keniu/security/sync/d/d/a/is;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/is;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    .line 9481
    :goto_0
    return-object v0

    .line 9480
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 9481
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 9579
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9580
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9581
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9582
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 9615
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9616
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9617
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9618
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9389
    new-instance v0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/it;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9394
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->F()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 9412
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->n()Z

    .line 9414
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9416
    new-instance v0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/it;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9420
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 9421
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9422
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9423
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9424
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9425
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/it;
    .locals 2

    .prologue
    .line 9429
    new-instance v0, Lcom/keniu/security/sync/d/d/a/it;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/it;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->v()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/keniu/security/sync/d/d/a/is;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/is;
    .locals 1

    .prologue
    .line 9438
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->h()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/is;
    .locals 2

    .prologue
    .line 9442
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->v()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    .line 9443
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/is;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9444
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/it;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 9446
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/is;
    .locals 2

    .prologue
    .line 9451
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->v()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    .line 9452
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/is;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9453
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/it;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 9456
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/is;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 9460
    new-instance v0, Lcom/keniu/security/sync/d/d/a/is;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/is;-><init>(Lcom/keniu/security/sync/d/d/a/it;)V

    .line 9461
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9462
    const/4 v2, 0x0

    .line 9463
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 9466
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/is;->a(Lcom/keniu/security/sync/d/d/a/is;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9467
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 9468
    or-int/lit8 v1, v2, 0x2

    .line 9470
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/is;->b(Lcom/keniu/security/sync/d/d/a/is;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9471
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/is;->a(Lcom/keniu/security/sync/d/d/a/is;I)I

    .line 9472
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->ab_()V

    .line 9473
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9573
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9574
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->h()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/is;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9575
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9576
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/it;
    .locals 1

    .prologue
    .line 9609
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9610
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->h()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/is;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9611
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9612
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9399
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->G()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9434
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->q()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->r()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9389
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->h()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9389
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->h()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->v()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->t()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->v()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->t()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 9389
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9389
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/it;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/is;)Lcom/keniu/security/sync/d/d/a/it;
    .locals 2
    .parameter

    .prologue
    .line 9486
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/is;->h()Lcom/keniu/security/sync/d/d/a/is;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9494
    :goto_0
    return-object v0

    .line 9487
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/is;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9488
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/is;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9490
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/is;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9491
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/is;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    .line 9493
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/is;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/it;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 9494
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9498
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 9506
    :goto_0
    return v0

    .line 9502
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 9504
    goto :goto_0

    .line 9506
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->r()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9389
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/it;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->q()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9389
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/it;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9389
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/it;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->r()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->r()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9389
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/it;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->r()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/it;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 9517
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 9518
    sparse-switch v1, :sswitch_data_0

    .line 9524
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/it;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9526
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/it;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9527
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    move-object v0, p0

    .line 9528
    :goto_1
    return-object v0

    .line 9520
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/it;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9521
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/it;->af_()V

    move-object v0, p0

    .line 9522
    goto :goto_1

    .line 9533
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9534
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    goto :goto_0

    .line 9538
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

    .line 9539
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    goto :goto_0

    .line 9518
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
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->q()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->r()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9389
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/it;->q()Lcom/keniu/security/sync/d/d/a/it;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9551
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

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
    .line 9554
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9555
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9556
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 9557
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->b:Ljava/lang/Object;

    .line 9560
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 9587
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/it;->a:I

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
    .line 9590
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9591
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9592
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 9593
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/it;->c:Ljava/lang/Object;

    .line 9596
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
