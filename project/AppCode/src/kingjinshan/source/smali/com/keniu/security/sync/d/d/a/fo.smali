.class public final Lcom/keniu/security/sync/d/d/a/fo;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fp;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gy;

.field private e:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36038
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 36210
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36300
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36039
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->q()V

    .line 36040
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 36024
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fo;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36043
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 36210
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36300
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36044
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->q()V

    .line 36045
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 36288
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36289
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    .line 36294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36296
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36354
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36355
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36356
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36360
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36361
    return-object p0

    .line 36358
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/gz;
    .locals 1

    .prologue
    .line 36364
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36365
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36366
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gz;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 36378
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36379
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    .line 36384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36386
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fo;)Lcom/keniu/security/sync/d/d/a/fn;
    .locals 2
    .parameter

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->x()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fn;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fo;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1
    .parameter

    .prologue
    .line 36224
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 36225
    if-nez p1, :cond_0

    .line 36226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36228
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36229
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36233
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36234
    return-object p0

    .line 36231
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 2
    .parameter

    .prologue
    .line 36238
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36239
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36240
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36244
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36245
    return-object p0

    .line 36242
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1
    .parameter

    .prologue
    .line 36314
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 36315
    if-nez p1, :cond_0

    .line 36316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36318
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36319
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36323
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36324
    return-object p0

    .line 36321
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gz;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 2
    .parameter

    .prologue
    .line 36328
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36329
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36330
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36334
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36335
    return-object p0

    .line 36332
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 2
    .parameter

    .prologue
    .line 36248
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 36249
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 36251
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36256
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36260
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36261
    return-object p0

    .line 36254
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 36258
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 2
    .parameter

    .prologue
    .line 36338
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 36339
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 36341
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36346
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36350
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36351
    return-object p0

    .line 36344
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0

    .line 36348
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1
    .parameter

    .prologue
    .line 36130
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/fn;

    if-eqz v0, :cond_0

    .line 36131
    check-cast p1, Lcom/keniu/security/sync/d/d/a/fn;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fn;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    .line 36134
    :goto_0
    return-object v0

    .line 36133
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 36134
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36024
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fo;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 36029
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bh()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 36047
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fn;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36048
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->A()Lcom/b/a/fp;

    .line 36049
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->N()Lcom/b/a/fp;

    .line 36051
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36053
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fo;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36057
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 36058
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36059
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36063
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36064
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 36065
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36069
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36070
    return-object p0

    .line 36061
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 36067
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 2

    .prologue
    .line 36074
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fo;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fo;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->x()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/keniu/security/sync/d/d/a/fn;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/fn;
    .locals 1

    .prologue
    .line 36083
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fn;->h()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/fn;
    .locals 2

    .prologue
    .line 36087
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->x()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    .line 36088
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fn;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36089
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fo;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 36091
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/fn;
    .locals 2

    .prologue
    .line 36096
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->x()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    .line 36097
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fn;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36098
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fo;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 36101
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fn;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 36105
    new-instance v1, Lcom/keniu/security/sync/d/d/a/fn;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/fn;-><init>(Lcom/keniu/security/sync/d/d/a/fo;)V

    .line 36106
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36107
    const/4 v0, 0x0

    .line 36108
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 36111
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36112
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fn;->a(Lcom/keniu/security/sync/d/d/a/fn;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 36116
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 36117
    or-int/lit8 v0, v3, 0x2

    move v2, v0

    .line 36119
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 36120
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fn;->a(Lcom/keniu/security/sync/d/d/a/fn;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    .line 36124
    :goto_3
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/fn;->a(Lcom/keniu/security/sync/d/d/a/fn;I)I

    .line 36125
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->ab_()V

    .line 36126
    return-object v1

    .line 36114
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fn;->a(Lcom/keniu/security/sync/d/d/a/fn;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 36122
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/fn;->a(Lcom/keniu/security/sync/d/d/a/fn;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/fo;
    .locals 1

    .prologue
    .line 36264
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36265
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36266
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36270
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36271
    return-object p0

    .line 36268
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 36274
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36275
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    .line 36276
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->A()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 36034
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bi()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 36079
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fn;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->s()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->t()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36024
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fn;->h()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36024
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fn;->h()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->x()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->v()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->x()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->v()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 36024
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36024
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fo;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/fn;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 3
    .parameter

    .prologue
    .line 36139
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fn;->h()Lcom/keniu/security/sync/d/d/a/fn;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 36147
    :goto_0
    return-object v0

    .line 36140
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fn;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36141
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fn;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36143
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fn;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36144
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fn;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    .line 36146
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fn;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fo;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 36147
    goto :goto_0

    .line 36141
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 36144
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36151
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 36159
    :goto_0
    return v0

    .line 36155
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 36157
    goto :goto_0

    .line 36159
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->t()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36024
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fo;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->s()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 36024
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fo;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36024
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fo;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->t()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->t()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36024
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fo;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->t()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36166
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 36170
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 36171
    sparse-switch v1, :sswitch_data_0

    .line 36177
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/fo;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36179
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fo;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 36180
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    move-object v0, p0

    .line 36181
    :goto_1
    return-object v0

    .line 36173
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fo;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 36174
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    move-object v0, p0

    .line 36175
    goto :goto_1

    .line 36186
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 36187
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36188
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 36190
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 36191
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 36195
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->N()Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    .line 36196
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36197
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    .line 36199
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 36200
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fo;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 36171
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
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->s()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->t()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36024
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fo;->s()Lcom/keniu/security/sync/d/d/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36214
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

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
    .line 36217
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36218
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 36220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 36279
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 36280
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 36282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 36304
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 36307
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 36308
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 36310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gy;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 36369
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 36370
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ha;

    move-object v0, p0

    .line 36372
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fo;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0
.end method
