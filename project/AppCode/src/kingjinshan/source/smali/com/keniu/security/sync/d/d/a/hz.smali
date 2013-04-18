.class public final Lcom/keniu/security/sync/d/d/a/hz;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ia;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4211
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 4356
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->n()V

    .line 4213
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 4197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hz;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4216
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 4356
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4217
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->n()V

    .line 4218
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hz;)Lcom/keniu/security/sync/d/d/a/hy;
    .locals 2
    .parameter

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->u()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hy;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hz;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1
    .parameter

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4371
    if-nez p1, :cond_0

    .line 4372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4374
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4375
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    .line 4379
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4380
    return-object p0

    .line 4377
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 2
    .parameter

    .prologue
    .line 4384
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4385
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4386
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    .line 4390
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4391
    return-object p0

    .line 4388
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 2
    .parameter

    .prologue
    .line 4394
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4395
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4397
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4402
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    .line 4406
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4407
    return-object p0

    .line 4400
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 4404
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1
    .parameter

    .prologue
    .line 4288
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/hy;

    if-eqz v0, :cond_0

    .line 4289
    check-cast p1, Lcom/keniu/security/sync/d/d/a/hy;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hy;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    .line 4292
    :goto_0
    return-object v0

    .line 4291
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 4292
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1

    .prologue
    .line 4197
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hz;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4202
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->p()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 4220
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hy;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4221
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->x()Lcom/b/a/fp;

    .line 4223
    :cond_0
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1

    .prologue
    .line 4225
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hz;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1

    .prologue
    .line 4229
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 4230
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4231
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4235
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4236
    return-object p0

    .line 4233
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 2

    .prologue
    .line 4240
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hz;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hz;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->u()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/keniu/security/sync/d/d/a/hy;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/hy;
    .locals 1

    .prologue
    .line 4249
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hy;->h()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/hy;
    .locals 2

    .prologue
    .line 4253
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->u()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    .line 4254
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hy;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4255
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hz;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 4257
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/hy;
    .locals 2

    .prologue
    .line 4262
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->u()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    .line 4263
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hy;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4264
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hz;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 4267
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/hy;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4271
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hy;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/hy;-><init>(Lcom/keniu/security/sync/d/d/a/hz;)V

    .line 4272
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4273
    const/4 v2, 0x0

    .line 4274
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 4277
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4278
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hy;->a(Lcom/keniu/security/sync/d/d/a/hy;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 4282
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/hy;->a(Lcom/keniu/security/sync/d/d/a/hy;I)I

    .line 4283
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->ab_()V

    .line 4284
    return-object v1

    .line 4280
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hy;->a(Lcom/keniu/security/sync/d/d/a/hy;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/hz;
    .locals 1

    .prologue
    .line 4410
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4411
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4412
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    .line 4416
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4417
    return-object p0

    .line 4414
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 4420
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4421
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    .line 4422
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 4434
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4435
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    .line 4440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4442
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4207
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4245
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hy;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->p()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->q()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4197
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hy;->h()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4197
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hy;->h()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->u()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->s()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->u()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->s()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 4197
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4197
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hz;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/hy;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 3
    .parameter

    .prologue
    .line 4297
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hy;->h()Lcom/keniu/security/sync/d/d/a/hy;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 4302
    :goto_0
    return-object v0

    .line 4298
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hy;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4299
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hy;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    .line 4301
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hy;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hz;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 4302
    goto :goto_0

    .line 4299
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4306
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 4314
    :goto_0
    return v0

    .line 4310
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 4312
    goto :goto_0

    .line 4314
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->q()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4197
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hz;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->p()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4197
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hz;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4197
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hz;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->q()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->q()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4197
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hz;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->q()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hz;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4321
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 4325
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 4326
    sparse-switch v1, :sswitch_data_0

    .line 4332
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/hz;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4334
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hz;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4335
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    move-object v0, p0

    .line 4336
    :goto_1
    return-object v0

    .line 4328
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hz;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4329
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    move-object v0, p0

    .line 4330
    goto :goto_1

    .line 4341
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 4342
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4343
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 4345
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 4346
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hz;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 4326
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
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->p()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->q()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4197
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hz;->p()Lcom/keniu/security/sync/d/d/a/hz;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4360
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->a:I

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
    .line 4363
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4364
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4366
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 4425
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 4426
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 4428
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hz;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method
