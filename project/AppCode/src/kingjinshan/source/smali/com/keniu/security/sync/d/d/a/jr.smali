.class public final Lcom/keniu/security/sync/d/d/a/jr;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/js;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 3354
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3227
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->m()Z

    .line 3228
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 3212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jr;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3231
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 3354
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3232
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->m()Z

    .line 3233
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jr;)Lcom/keniu/security/sync/d/d/a/jq;
    .locals 2
    .parameter

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->t()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jr;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1
    .parameter

    .prologue
    .line 3294
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/jq;

    if-eqz v0, :cond_0

    .line 3295
    check-cast p1, Lcom/keniu/security/sync/d/d/a/jq;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jq;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    .line 3298
    :goto_0
    return-object v0

    .line 3297
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 3298
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 3384
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    .line 3385
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3386
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->af_()V

    .line 3387
    return-void
.end method

.method static synthetic l()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1

    .prologue
    .line 3212
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jr;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3217
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static n()V
    .locals 0

    .prologue
    .line 3235
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->m()Z

    .line 3237
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1

    .prologue
    .line 3239
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jr;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1

    .prologue
    .line 3243
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 3244
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3245
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    .line 3246
    return-object p0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 2

    .prologue
    .line 3250
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jr;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->t()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/keniu/security/sync/d/d/a/jq;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/jq;
    .locals 1

    .prologue
    .line 3259
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->h()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/jq;
    .locals 2

    .prologue
    .line 3272
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->t()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    .line 3273
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3274
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jr;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 3277
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/jq;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3281
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/jq;-><init>(Lcom/keniu/security/sync/d/d/a/jr;)V

    .line 3282
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    .line 3283
    const/4 v2, 0x0

    .line 3284
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    .line 3287
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/jq;->a(Lcom/keniu/security/sync/d/d/a/jq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3288
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/jq;->a(Lcom/keniu/security/sync/d/d/a/jq;I)I

    .line 3289
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->ab_()V

    .line 3290
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1

    .prologue
    .line 3378
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    .line 3379
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->h()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jq;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3380
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->af_()V

    .line 3381
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3222
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3255
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->p()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->q()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3212
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->h()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3212
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->h()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->t()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3212
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->i()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->t()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3212
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->i()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3212
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/jq;)Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1
    .parameter

    .prologue
    .line 3303
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jq;->h()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3308
    :goto_0
    return-object v0

    .line 3304
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jq;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3305
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jq;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jr;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jr;

    .line 3307
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jr;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 3308
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jr;
    .locals 1
    .parameter

    .prologue
    .line 3369
    if-nez p1, :cond_0

    .line 3370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3372
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    .line 3373
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3374
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->af_()V

    .line 3375
    return-object p0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 3312
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3314
    const/4 v0, 0x0

    .line 3316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->q()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3212
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->p()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/jr;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3212
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->q()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->q()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3212
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->q()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jr;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3323
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 3327
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 3328
    sparse-switch v1, :sswitch_data_0

    .line 3334
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/jr;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3336
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jr;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3337
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->af_()V

    move-object v0, p0

    .line 3338
    :goto_1
    return-object v0

    .line 3330
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jr;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3331
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jr;->af_()V

    move-object v0, p0

    .line 3332
    goto :goto_1

    .line 3343
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

    .line 3344
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    goto :goto_0

    .line 3328
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->p()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->q()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->p()Lcom/keniu/security/sync/d/d/a/jr;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/jq;
    .locals 2

    .prologue
    .line 3263
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jr;->t()Lcom/keniu/security/sync/d/d/a/jq;

    move-result-object v0

    .line 3264
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3265
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jr;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 3267
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3356
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->a:I

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
    .line 3359
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3360
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3361
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 3362
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jr;->b:Ljava/lang/Object;

    .line 3365
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
