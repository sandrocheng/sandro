.class public final Lcom/keniu/security/sync/d/d/a/fu;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fv;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37218
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 37377
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37467
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37219
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->p()V

    .line 37220
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 37204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fu;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37223
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 37377
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37467
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37224
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->p()V

    .line 37225
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37491
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37492
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ft;->h()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ft;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37493
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37494
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fu;)Lcom/keniu/security/sync/d/d/a/ft;
    .locals 2
    .parameter

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->w()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ft;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fu;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1
    .parameter

    .prologue
    .line 37391
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 37392
    if-nez p1, :cond_0

    .line 37393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37395
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37396
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37400
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37401
    return-object p0

    .line 37398
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 2
    .parameter

    .prologue
    .line 37405
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 37406
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37407
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37411
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37412
    return-object p0

    .line 37409
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1
    .parameter

    .prologue
    .line 37482
    if-nez p1, :cond_0

    .line 37483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37485
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37486
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37487
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37488
    return-object p0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 2
    .parameter

    .prologue
    .line 37415
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 37416
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37418
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37423
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37427
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37428
    return-object p0

    .line 37421
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 37425
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1
    .parameter

    .prologue
    .line 37301
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ft;

    if-eqz v0, :cond_0

    .line 37302
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ft;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/ft;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    .line 37305
    :goto_0
    return-object v0

    .line 37304
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 37305
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 37497
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37498
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37499
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37500
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37204
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fu;-><init>()V

    return-object v0
.end method

.method private static o()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 37209
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bl()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 37227
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ft;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->z()Lcom/b/a/fp;

    .line 37230
    :cond_0
    return-void
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37232
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fu;-><init>()V

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37236
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 37237
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 37238
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37242
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37243
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37244
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37245
    return-object p0

    .line 37240
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 2

    .prologue
    .line 37249
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fu;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fu;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->w()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/keniu/security/sync/d/d/a/ft;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ft;
    .locals 1

    .prologue
    .line 37258
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ft;->h()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ft;
    .locals 2

    .prologue
    .line 37262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->w()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    .line 37263
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ft;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37264
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fu;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 37266
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ft;
    .locals 2

    .prologue
    .line 37271
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->w()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    .line 37272
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ft;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37273
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fu;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 37276
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/ft;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37280
    new-instance v1, Lcom/keniu/security/sync/d/d/a/ft;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/ft;-><init>(Lcom/keniu/security/sync/d/d/a/fu;)V

    .line 37281
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37282
    const/4 v0, 0x0

    .line 37283
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_2

    move v3, v4

    .line 37286
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 37287
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ft;->a(Lcom/keniu/security/sync/d/d/a/ft;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 37291
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 37292
    or-int/lit8 v0, v3, 0x2

    .line 37294
    :goto_2
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/ft;->a(Lcom/keniu/security/sync/d/d/a/ft;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37295
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ft;->a(Lcom/keniu/security/sync/d/d/a/ft;I)I

    .line 37296
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->ab_()V

    .line 37297
    return-object v1

    .line 37289
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ft;->a(Lcom/keniu/security/sync/d/d/a/ft;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fu;
    .locals 1

    .prologue
    .line 37431
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 37432
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37433
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37437
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37438
    return-object p0

    .line 37435
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 37441
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37442
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37443
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->z()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private z()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 37455
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 37456
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    .line 37461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37463
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 37214
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bm()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 37254
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ft;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->r()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->s()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 37204
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ft;->h()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 37204
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ft;->h()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->w()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->u()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->w()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->u()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 37204
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37204
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fu;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ft;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 3
    .parameter

    .prologue
    .line 37310
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ft;->h()Lcom/keniu/security/sync/d/d/a/ft;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 37318
    :goto_0
    return-object v0

    .line 37311
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ft;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37312
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ft;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37314
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ft;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37315
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ft;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37312
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 37315
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    .line 37317
    :cond_5
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ft;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fu;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 37318
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37322
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 37330
    :goto_0
    return v0

    .line 37326
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 37328
    goto :goto_0

    .line 37330
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->s()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37204
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fu;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->r()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 37204
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fu;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37204
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fu;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->s()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->s()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37204
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fu;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->s()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fu;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37337
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 37341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 37342
    sparse-switch v1, :sswitch_data_0

    .line 37348
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/fu;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37350
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fu;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 37351
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    move-object v0, p0

    .line 37352
    :goto_1
    return-object v0

    .line 37344
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fu;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 37345
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    move-object v0, p0

    .line 37346
    goto :goto_1

    .line 37357
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 37358
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37359
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 37361
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 37362
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fu;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 37366
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

    .line 37367
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    goto :goto_0

    .line 37342
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
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->r()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->s()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 37204
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fu;->r()Lcom/keniu/security/sync/d/d/a/fu;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37381
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

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
    .line 37384
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 37385
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 37387
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 37446
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 37447
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 37449
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 37469
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->a:I

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

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37472
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37473
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 37474
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 37475
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fu;->d:Ljava/lang/Object;

    .line 37478
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
