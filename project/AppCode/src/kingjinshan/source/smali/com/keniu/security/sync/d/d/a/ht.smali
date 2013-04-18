.class public final Lcom/keniu/security/sync/d/d/a/ht;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hu;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gn;

.field private e:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3143
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 3321
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3411
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3144
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->q()V

    .line 3145
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 3129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ht;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3148
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 3321
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3411
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3149
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->q()V

    .line 3150
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3400
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    .line 3405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3407
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3466
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3467
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3471
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3472
    return-object p0

    .line 3469
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/go;
    .locals 1

    .prologue
    .line 3475
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3476
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3477
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3490
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    .line 3495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3497
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ht;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 2
    .parameter

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->x()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ht;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1
    .parameter

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3336
    if-nez p1, :cond_0

    .line 3337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3339
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3340
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3344
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3345
    return-object p0

    .line 3342
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 2
    .parameter

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3350
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3351
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3355
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3356
    return-object p0

    .line 3353
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1
    .parameter

    .prologue
    .line 3425
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3426
    if-nez p1, :cond_0

    .line 3427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3429
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3430
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3434
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3435
    return-object p0

    .line 3432
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 2
    .parameter

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3440
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3441
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3445
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3446
    return-object p0

    .line 3443
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 2
    .parameter

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3360
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3362
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3367
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3371
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3372
    return-object p0

    .line 3365
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 3369
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 2
    .parameter

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3450
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3452
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3457
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3461
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3462
    return-object p0

    .line 3455
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0

    .line 3459
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1
    .parameter

    .prologue
    .line 3235
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/hs;

    if-eqz v0, :cond_0

    .line 3236
    check-cast p1, Lcom/keniu/security/sync/d/d/a/hs;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/hs;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    .line 3239
    :goto_0
    return-object v0

    .line 3238
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 3239
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3129
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ht;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3134
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 3152
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hs;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3153
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->A()Lcom/b/a/fp;

    .line 3154
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->N()Lcom/b/a/fp;

    .line 3156
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3158
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ht;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3162
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 3163
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3168
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3169
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3170
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3174
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3175
    return-object p0

    .line 3166
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 3172
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 2

    .prologue
    .line 3179
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ht;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ht;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->x()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/keniu/security/sync/d/d/a/hs;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/hs;
    .locals 1

    .prologue
    .line 3188
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hs;->h()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/hs;
    .locals 2

    .prologue
    .line 3192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->x()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    .line 3193
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3194
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ht;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 3196
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/hs;
    .locals 2

    .prologue
    .line 3201
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->x()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    .line 3202
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3203
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ht;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 3206
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/hs;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3210
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hs;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/hs;-><init>(Lcom/keniu/security/sync/d/d/a/ht;)V

    .line 3211
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3212
    const/4 v0, 0x0

    .line 3213
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 3216
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3217
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hs;->a(Lcom/keniu/security/sync/d/d/a/hs;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 3221
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 3222
    or-int/lit8 v0, v3, 0x2

    move v2, v0

    .line 3224
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3225
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hs;->a(Lcom/keniu/security/sync/d/d/a/hs;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    .line 3229
    :goto_3
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/hs;->a(Lcom/keniu/security/sync/d/d/a/hs;I)I

    .line 3230
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->ab_()V

    .line 3231
    return-object v1

    .line 3219
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hs;->a(Lcom/keniu/security/sync/d/d/a/hs;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hs;->a(Lcom/keniu/security/sync/d/d/a/hs;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ht;
    .locals 1

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3376
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3377
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3381
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3382
    return-object p0

    .line 3379
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 3385
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3386
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    .line 3387
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->A()Lcom/b/a/fp;

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
    .line 3139
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3184
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hs;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->s()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->t()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3129
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hs;->h()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3129
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hs;->h()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->x()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->v()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->x()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->v()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 3129
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3129
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ht;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/hs;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 3
    .parameter

    .prologue
    .line 3244
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hs;->h()Lcom/keniu/security/sync/d/d/a/hs;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3252
    :goto_0
    return-object v0

    .line 3245
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hs;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3246
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hs;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3248
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hs;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3249
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hs;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    .line 3251
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hs;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ht;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 3252
    goto :goto_0

    .line 3246
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 3249
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3256
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3270
    :goto_0
    return v0

    .line 3260
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 3262
    goto :goto_0

    .line 3264
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3265
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3267
    goto :goto_0

    .line 3270
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->t()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3129
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ht;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->s()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3129
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ht;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3129
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ht;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->t()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->t()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3129
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ht;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->t()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ht;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3277
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 3281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 3282
    sparse-switch v1, :sswitch_data_0

    .line 3288
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ht;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3290
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ht;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3291
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    move-object v0, p0

    .line 3292
    :goto_1
    return-object v0

    .line 3284
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ht;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3285
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    move-object v0, p0

    .line 3286
    goto :goto_1

    .line 3297
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 3298
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3299
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 3301
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3302
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 3306
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->Z()Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    .line 3307
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3308
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    .line 3310
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3311
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ht;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 3282
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
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->s()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->t()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ht;->s()Lcom/keniu/security/sync/d/d/a/ht;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3325
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

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
    .line 3328
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3329
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 3391
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 3393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 3415
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 3421
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 3481
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    .line 3483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ht;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0
.end method
