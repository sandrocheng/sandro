.class public final Lcom/keniu/security/sync/d/d/a/j;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/k;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26321
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 26467
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26503
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26322
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->n()Z

    .line 26323
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 26307
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/j;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26326
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 26467
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26503
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26327
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->n()Z

    .line 26328
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/j;)Lcom/keniu/security/sync/d/d/a/i;
    .locals 2
    .parameter

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->v()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/i;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/j;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/j;
    .locals 1
    .parameter

    .prologue
    .line 26482
    if-nez p1, :cond_0

    .line 26483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26485
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26486
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26487
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26488
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/j;
    .locals 1
    .parameter

    .prologue
    .line 26518
    if-nez p1, :cond_0

    .line 26519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26521
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26522
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26523
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26524
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/j;
    .locals 1
    .parameter

    .prologue
    .line 26395
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/i;

    if-eqz v0, :cond_0

    .line 26396
    check-cast p1, Lcom/keniu/security/sync/d/d/a/i;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/i;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    .line 26399
    :goto_0
    return-object v0

    .line 26398
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 26399
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 26497
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26498
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26499
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26500
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 26533
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26534
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26535
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26536
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26307
    new-instance v0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/j;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 26312
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->az()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 26330
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->n()Z

    .line 26332
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26334
    new-instance v0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/j;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26338
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 26339
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26340
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26341
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26342
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26343
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/j;
    .locals 2

    .prologue
    .line 26347
    new-instance v0, Lcom/keniu/security/sync/d/d/a/j;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/j;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->v()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/keniu/security/sync/d/d/a/i;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/i;
    .locals 1

    .prologue
    .line 26356
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->h()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/i;
    .locals 2

    .prologue
    .line 26360
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->v()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    .line 26361
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/i;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26362
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/j;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 26364
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/i;
    .locals 2

    .prologue
    .line 26369
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->v()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    .line 26370
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/i;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26371
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/j;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 26374
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/i;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 26378
    new-instance v0, Lcom/keniu/security/sync/d/d/a/i;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/i;-><init>(Lcom/keniu/security/sync/d/d/a/j;)V

    .line 26379
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26380
    const/4 v2, 0x0

    .line 26381
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 26384
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/i;->a(Lcom/keniu/security/sync/d/d/a/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26385
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 26386
    or-int/lit8 v1, v2, 0x2

    .line 26388
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/i;->b(Lcom/keniu/security/sync/d/d/a/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26389
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/i;->a(Lcom/keniu/security/sync/d/d/a/i;I)I

    .line 26390
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->ab_()V

    .line 26391
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26491
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26492
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->h()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/i;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26493
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26494
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/j;
    .locals 1

    .prologue
    .line 26527
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26528
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->h()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/i;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26529
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26530
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 26317
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aA()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 26352
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->q()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->r()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 26307
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->h()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 26307
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->h()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->v()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->t()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->v()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->t()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 26307
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26307
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/j;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/i;)Lcom/keniu/security/sync/d/d/a/j;
    .locals 2
    .parameter

    .prologue
    .line 26404
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/i;->h()Lcom/keniu/security/sync/d/d/a/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 26412
    :goto_0
    return-object v0

    .line 26405
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/i;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26406
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/i;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26408
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/i;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26409
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/i;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    .line 26411
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/i;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/j;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 26412
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26416
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 26424
    :goto_0
    return v0

    .line 26420
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 26422
    goto :goto_0

    .line 26424
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->r()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26307
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/j;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->q()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 26307
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/j;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26307
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/j;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->r()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->r()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26307
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/j;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->r()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/j;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26431
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 26435
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 26436
    sparse-switch v1, :sswitch_data_0

    .line 26442
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/j;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26444
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/j;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 26445
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    move-object v0, p0

    .line 26446
    :goto_1
    return-object v0

    .line 26438
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/j;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 26439
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/j;->af_()V

    move-object v0, p0

    .line 26440
    goto :goto_1

    .line 26451
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26452
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    goto :goto_0

    .line 26456
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

    .line 26457
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    goto :goto_0

    .line 26436
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
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->q()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->r()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 26307
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/j;->q()Lcom/keniu/security/sync/d/d/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26469
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

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
    .line 26472
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26473
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26474
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 26475
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->b:Ljava/lang/Object;

    .line 26478
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 26505
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/j;->a:I

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
    .line 26508
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26509
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26510
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 26511
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/j;->c:Ljava/lang/Object;

    .line 26514
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
