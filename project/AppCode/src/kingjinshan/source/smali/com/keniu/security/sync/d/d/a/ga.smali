.class public final Lcom/keniu/security/sync/d/d/a/ga;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/gb;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34264
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 34409
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34265
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->n()V

    .line 34266
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 34250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ga;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34269
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 34409
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34270
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->n()V

    .line 34271
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ga;)Lcom/keniu/security/sync/d/d/a/fz;
    .locals 2
    .parameter

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->u()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ga;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1
    .parameter

    .prologue
    .line 34423
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 34424
    if-nez p1, :cond_0

    .line 34425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34427
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34428
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    .line 34432
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34433
    return-object p0

    .line 34430
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 2
    .parameter

    .prologue
    .line 34437
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 34438
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34439
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    .line 34443
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34444
    return-object p0

    .line 34441
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 2
    .parameter

    .prologue
    .line 34447
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 34448
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 34450
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34455
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    .line 34459
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34460
    return-object p0

    .line 34453
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 34457
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1
    .parameter

    .prologue
    .line 34341
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/fz;

    if-eqz v0, :cond_0

    .line 34342
    check-cast p1, Lcom/keniu/security/sync/d/d/a/fz;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/fz;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    .line 34345
    :goto_0
    return-object v0

    .line 34344
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 34345
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1

    .prologue
    .line 34250
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ga;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 34255
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aZ()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 34273
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fz;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34274
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->x()Lcom/b/a/fp;

    .line 34276
    :cond_0
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1

    .prologue
    .line 34278
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ga;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1

    .prologue
    .line 34282
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 34283
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 34284
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34288
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34289
    return-object p0

    .line 34286
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 2

    .prologue
    .line 34293
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ga;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ga;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->u()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/keniu/security/sync/d/d/a/fz;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/fz;
    .locals 1

    .prologue
    .line 34302
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fz;->h()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/fz;
    .locals 2

    .prologue
    .line 34306
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->u()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    .line 34307
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34308
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ga;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 34310
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/fz;
    .locals 2

    .prologue
    .line 34315
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->u()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    .line 34316
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34317
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ga;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 34320
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/fz;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34324
    new-instance v1, Lcom/keniu/security/sync/d/d/a/fz;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/fz;-><init>(Lcom/keniu/security/sync/d/d/a/ga;)V

    .line 34325
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34326
    const/4 v2, 0x0

    .line 34327
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 34330
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 34331
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fz;->a(Lcom/keniu/security/sync/d/d/a/fz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 34335
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/fz;->a(Lcom/keniu/security/sync/d/d/a/fz;I)I

    .line 34336
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->ab_()V

    .line 34337
    return-object v1

    .line 34333
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fz;->a(Lcom/keniu/security/sync/d/d/a/fz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ga;
    .locals 1

    .prologue
    .line 34463
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 34464
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34465
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    .line 34469
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34470
    return-object p0

    .line 34467
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 34473
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34474
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    .line 34475
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 34487
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 34488
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    .line 34493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34495
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 34260
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ba()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 34298
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fz;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->p()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->q()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34250
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fz;->h()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34250
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fz;->h()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->u()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->s()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->u()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->s()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 34250
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34250
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ga;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/fz;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 3
    .parameter

    .prologue
    .line 34350
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fz;->h()Lcom/keniu/security/sync/d/d/a/fz;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 34355
    :goto_0
    return-object v0

    .line 34351
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fz;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34352
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fz;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    .line 34354
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ga;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 34355
    goto :goto_0

    .line 34352
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34359
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 34367
    :goto_0
    return v0

    .line 34363
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 34365
    goto :goto_0

    .line 34367
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->q()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34250
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ga;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->p()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 34250
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ga;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34250
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ga;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->q()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->q()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34250
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ga;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->q()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ga;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 34374
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 34378
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 34379
    sparse-switch v1, :sswitch_data_0

    .line 34385
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ga;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34387
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ga;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 34388
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    move-object v0, p0

    .line 34389
    :goto_1
    return-object v0

    .line 34381
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ga;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 34382
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    move-object v0, p0

    .line 34383
    goto :goto_1

    .line 34394
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 34395
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34396
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 34398
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 34399
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ga;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 34379
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->p()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->q()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ga;->p()Lcom/keniu/security/sync/d/d/a/ga;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34413
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->a:I

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
    .line 34416
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 34417
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 34419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 34478
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 34479
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 34481
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ga;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method
