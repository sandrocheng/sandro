.class public final Lcom/keniu/security/sync/d/d/a/gf;
.super Lcom/b/a/dn;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/gg;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 243
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->o()Z

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/gf;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->o()Z

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 2
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1
    .parameter

    .prologue
    .line 392
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 393
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/gf;->b:I

    .line 394
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    .line 395
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1
    .parameter

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 423
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 424
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 425
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    .line 426
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1
    .parameter

    .prologue
    .line 316
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ge;

    if-eqz v0, :cond_0

    .line 317
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 319
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 320
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 435
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 436
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 437
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    .line 438
    return-void
.end method

.method static synthetic o()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gf;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->b()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static q()V
    .locals 0

    .prologue
    .line 251
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->o()Z

    .line 253
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gf;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->b:I

    .line 261
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 263
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 264
    return-object p0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gf;-><init>()V

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 295
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->b:I

    .line 400
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    .line 401
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 430
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 431
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    .line 432
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->c()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->s()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;
    .locals 2
    .parameter

    .prologue
    .line 325
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 333
    :goto_0
    return-object v0

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ge;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->b:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ge;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ge;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    .line 332
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ge;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gf;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 333
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->s()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 352
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 353
    sparse-switch v1, :sswitch_data_0

    .line 359
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gf;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 362
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    move-object v0, p0

    .line 363
    :goto_1
    return-object v0

    .line 355
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gf;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 356
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->af_()V

    move-object v0, p0

    .line 357
    goto :goto_1

    .line 368
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 369
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->b:I

    goto :goto_0

    .line 373
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 374
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    goto :goto_0

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->s()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->t()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gf;->s()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 285
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 386
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->b:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

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
    .line 410
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 411
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 412
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 413
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    .line 416
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 299
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ge;-><init>(Lcom/keniu/security/sync/d/d/a/gf;)V

    .line 300
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gf;->a:I

    .line 301
    const/4 v2, 0x0

    .line 302
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 305
    :cond_0
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/gf;->b:I

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;I)I

    .line 306
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 307
    or-int/lit8 v1, v2, 0x2

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/gf;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/ge;->b(Lcom/keniu/security/sync/d/d/a/ge;I)I

    .line 311
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gf;->ab_()V

    .line 312
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
