.class public final Lcom/b/a/ae;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/af;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:I

.field private d:Lcom/b/a/ag;

.field private e:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7194
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 7365
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7422
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7195
    invoke-direct {p0}, Lcom/b/a/ae;->s()V

    .line 7196
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 7180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ae;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7199
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 7365
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7422
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7200
    invoke-direct {p0}, Lcom/b/a/ae;->s()V

    .line 7201
    return-void
.end method

.method private A()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7476
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7477
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7478
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7482
    :goto_0
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7483
    return-object p0

    .line 7480
    :cond_0
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private D()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 7486
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7487
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7488
    invoke-direct {p0}, Lcom/b/a/ae;->E()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ah;

    return-object p0
.end method

.method private E()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 7500
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7501
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    invoke-virtual {p0}, Lcom/b/a/ae;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/ae;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    .line 7506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7508
    :cond_0
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/ae;)Lcom/b/a/ad;
    .locals 2
    .parameter

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/b/a/ae;->p()Lcom/b/a/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/ae;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 7409
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7410
    iput p1, p0, Lcom/b/a/ae;->c:I

    .line 7411
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7412
    return-object p0
.end method

.method private a(Lcom/b/a/ag;)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 7436
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 7437
    if-nez p1, :cond_0

    .line 7438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7440
    :cond_0
    iput-object p1, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7441
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7445
    :goto_0
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7446
    return-object p0

    .line 7443
    :cond_1
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/ah;)Lcom/b/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 7450
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7451
    invoke-virtual {p1}, Lcom/b/a/ah;->k()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7452
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7456
    :goto_0
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7457
    return-object p0

    .line 7454
    :cond_0
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/b/a/ah;->k()Lcom/b/a/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 7380
    if-nez p1, :cond_0

    .line 7381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7383
    :cond_0
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7384
    iput-object p1, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7385
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7386
    return-object p0
.end method

.method private b(Lcom/b/a/ag;)Lcom/b/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 7460
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 7461
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7463
    iget-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    invoke-static {v0}, Lcom/b/a/ag;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/ah;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7468
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7472
    :goto_1
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7473
    return-object p0

    .line 7466
    :cond_0
    iput-object p1, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    goto :goto_0

    .line 7470
    :cond_1
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 7283
    instance-of v0, p1, Lcom/b/a/ad;

    if-eqz v0, :cond_0

    .line 7284
    check-cast p1, Lcom/b/a/ad;

    invoke-virtual {p0, p1}, Lcom/b/a/ae;->a(Lcom/b/a/ad;)Lcom/b/a/ae;

    move-result-object v0

    .line 7287
    :goto_0
    return-object v0

    .line 7286
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 7287
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 7395
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7396
    iput-object p1, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7397
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7398
    return-void
.end method

.method static synthetic q()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7180
    new-instance v0, Lcom/b/a/ae;

    invoke-direct {v0}, Lcom/b/a/ae;-><init>()V

    return-object v0
.end method

.method private static r()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7185
    invoke-static {}, Lcom/b/a/p;->n()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 7203
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 7204
    invoke-direct {p0}, Lcom/b/a/ae;->E()Lcom/b/a/fp;

    .line 7206
    :cond_0
    return-void
.end method

.method private static t()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7208
    new-instance v0, Lcom/b/a/ae;

    invoke-direct {v0}, Lcom/b/a/ae;-><init>()V

    return-object v0
.end method

.method private u()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7212
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 7213
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7214
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7215
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ae;->c:I

    .line 7216
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7217
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7218
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7222
    :goto_0
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7223
    return-object p0

    .line 7220
    :cond_0
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private v()Lcom/b/a/ae;
    .locals 2

    .prologue
    .line 7227
    new-instance v0, Lcom/b/a/ae;

    invoke-direct {v0}, Lcom/b/a/ae;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/ae;->p()Lcom/b/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Lcom/b/a/ad;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/b/a/ad;
    .locals 1

    .prologue
    .line 7236
    invoke-static {}, Lcom/b/a/ad;->e()Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/b/a/ad;
    .locals 2

    .prologue
    .line 7249
    invoke-virtual {p0}, Lcom/b/a/ae;->p()Lcom/b/a/ad;

    move-result-object v0

    .line 7250
    invoke-virtual {v0}, Lcom/b/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7251
    invoke-static {v0}, Lcom/b/a/ae;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 7254
    :cond_0
    return-object v0
.end method

.method private y()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7389
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7390
    invoke-static {}, Lcom/b/a/ad;->e()Lcom/b/a/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ad;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7391
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7392
    return-object p0
.end method

.method private z()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 7415
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7416
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ae;->c:I

    .line 7417
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7418
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 7190
    invoke-static {}, Lcom/b/a/p;->o()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7232
    invoke-static {}, Lcom/b/a/ad;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->u()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->v()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7180
    invoke-static {}, Lcom/b/a/ad;->e()Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7180
    invoke-static {}, Lcom/b/a/ad;->e()Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/b/a/ae;->p()Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/b/a/ae;->p()Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7180
    invoke-virtual {p0}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/ad;)Lcom/b/a/ae;
    .locals 3
    .parameter

    .prologue
    .line 7292
    invoke-static {}, Lcom/b/a/ad;->e()Lcom/b/a/ad;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 7303
    :goto_0
    return-object v0

    .line 7293
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/ad;->h_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7294
    invoke-virtual {p1}, Lcom/b/a/ad;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ae;->a:I

    iput-object v0, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7296
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7297
    invoke-virtual {p1}, Lcom/b/a/ad;->k()I

    move-result v0

    iget v1, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ae;->a:I

    iput v0, p0, Lcom/b/a/ae;->c:I

    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    .line 7299
    :cond_3
    invoke-virtual {p1}, Lcom/b/a/ad;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7300
    invoke-virtual {p1}, Lcom/b/a/ad;->m()Lcom/b/a/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    invoke-static {v1}, Lcom/b/a/ag;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/ah;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    :goto_1
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    :goto_2
    iget v0, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/ae;->a:I

    .line 7302
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/ad;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ae;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 7303
    goto :goto_0

    .line 7300
    :cond_5
    iput-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 7180
    invoke-direct {p0, p1}, Lcom/b/a/ae;->d(Lcom/b/a/ev;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7180
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 7307
    invoke-virtual {p0}, Lcom/b/a/ae;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7308
    invoke-virtual {p0}, Lcom/b/a/ae;->m()Lcom/b/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ag;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7310
    const/4 v0, 0x0

    .line 7313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->v()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7180
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->u()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 7180
    invoke-direct {p0, p1}, Lcom/b/a/ae;->d(Lcom/b/a/ev;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7180
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->v()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->v()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7180
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ae;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 7320
    invoke-virtual {p0}, Lcom/b/a/ae;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 7324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 7325
    sparse-switch v1, :sswitch_data_0

    .line 7331
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/ae;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7333
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ae;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 7334
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    move-object v0, p0

    .line 7335
    :goto_1
    return-object v0

    .line 7327
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ae;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 7328
    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    move-object v0, p0

    .line 7329
    goto :goto_1

    .line 7340
    :sswitch_1
    iget v1, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ae;->a:I

    .line 7341
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    goto :goto_0

    .line 7345
    :sswitch_2
    iget v1, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ae;->a:I

    .line 7346
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/b/a/ae;->c:I

    goto :goto_0

    .line 7350
    :sswitch_3
    invoke-static {}, Lcom/b/a/ag;->k()Lcom/b/a/ah;

    move-result-object v1

    .line 7351
    invoke-virtual {p0}, Lcom/b/a/ae;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7352
    invoke-virtual {p0}, Lcom/b/a/ae;->m()Lcom/b/a/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/ah;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    .line 7354
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 7355
    invoke-virtual {v1}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    invoke-virtual {p0}, Lcom/b/a/ae;->af_()V

    :goto_2
    iget v1, p0, Lcom/b/a/ae;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/ae;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 7325
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->v()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->u()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->v()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7180
    invoke-direct {p0}, Lcom/b/a/ae;->u()Lcom/b/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final h_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7367
    iget v0, p0, Lcom/b/a/ae;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7370
    iget-object v0, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7371
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7372
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 7373
    iput-object v0, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    .line 7376
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 7403
    iget v0, p0, Lcom/b/a/ae;->a:I

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

.method public final k()I
    .locals 1

    .prologue
    .line 7406
    iget v0, p0, Lcom/b/a/ae;->c:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 7426
    iget v0, p0, Lcom/b/a/ae;->a:I

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

.method public final m()Lcom/b/a/ag;
    .locals 1

    .prologue
    .line 7429
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7430
    iget-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    .line 7432
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/ag;

    move-object v0, p0

    goto :goto_0
.end method

.method public final n()Lcom/b/a/ai;
    .locals 1

    .prologue
    .line 7491
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 7492
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/ai;

    move-object v0, p0

    .line 7494
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    goto :goto_0
.end method

.method public final o()Lcom/b/a/ad;
    .locals 2

    .prologue
    .line 7240
    invoke-virtual {p0}, Lcom/b/a/ae;->p()Lcom/b/a/ad;

    move-result-object v0

    .line 7241
    invoke-virtual {v0}, Lcom/b/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7242
    invoke-static {v0}, Lcom/b/a/ae;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 7244
    :cond_0
    return-object v0
.end method

.method public final p()Lcom/b/a/ad;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7258
    new-instance v1, Lcom/b/a/ad;

    invoke-direct {v1, p0}, Lcom/b/a/ad;-><init>(Lcom/b/a/ae;)V

    .line 7259
    iget v0, p0, Lcom/b/a/ae;->a:I

    .line 7260
    const/4 v2, 0x0

    .line 7261
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 7264
    :cond_0
    iget-object v3, p0, Lcom/b/a/ae;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/ad;->a(Lcom/b/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7265
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7266
    or-int/lit8 v2, v2, 0x2

    .line 7268
    :cond_1
    iget v3, p0, Lcom/b/a/ae;->c:I

    invoke-static {v1, v3}, Lcom/b/a/ad;->a(Lcom/b/a/ad;I)I

    .line 7269
    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 7270
    or-int/lit8 v0, v2, 0x4

    move v2, v0

    .line 7272
    :cond_2
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_3

    .line 7273
    iget-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/ag;

    invoke-static {v1, v0}, Lcom/b/a/ad;->a(Lcom/b/a/ad;Lcom/b/a/ag;)Lcom/b/a/ag;

    .line 7277
    :goto_0
    invoke-static {v1, v2}, Lcom/b/a/ad;->b(Lcom/b/a/ad;I)I

    .line 7278
    invoke-virtual {p0}, Lcom/b/a/ae;->ab_()V

    .line 7279
    return-object v1

    .line 7275
    :cond_3
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/b/a/ag;

    invoke-static {v1, v0}, Lcom/b/a/ad;->a(Lcom/b/a/ad;Lcom/b/a/ag;)Lcom/b/a/ag;

    goto :goto_0
.end method
