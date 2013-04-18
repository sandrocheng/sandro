.class public final Lcom/keniu/security/sync/d/d/a/hk;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hl;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/gn;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 351
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 207
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->o()V

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hk;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 351
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 212
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->o()V

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hk;)Lcom/keniu/security/sync/d/d/a/hj;
    .locals 2
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->u()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hk;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 2
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 381
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    .line 385
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 386
    return-object p0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 2
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 390
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 397
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    .line 401
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 402
    return-object p0

    .line 395
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1
    .parameter

    .prologue
    .line 283
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/hj;

    if-eqz v0, :cond_0

    .line 284
    check-cast p1, Lcom/keniu/security/sync/d/d/a/hj;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hj;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 286
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 287
    goto :goto_0
.end method

.method static synthetic m()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hk;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->b()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->x()Lcom/b/a/fp;

    .line 218
    :cond_0
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hk;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 225
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 230
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 231
    return-object p0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hk;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hk;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->u()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/hj;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/hj;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->h()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/hj;
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->u()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hk;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 262
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/hj;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 266
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hj;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/hj;-><init>(Lcom/keniu/security/sync/d/d/a/hk;)V

    .line 267
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 268
    const/4 v2, 0x0

    .line 269
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hj;->a(Lcom/keniu/security/sync/d/d/a/hj;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    .line 277
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/hj;->a(Lcom/keniu/security/sync/d/d/a/hj;I)I

    .line 278
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->ab_()V

    .line 279
    return-object v1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hj;->a(Lcom/keniu/security/sync/d/d/a/hj;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 406
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 407
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    .line 411
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 412
    return-object p0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/go;
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 416
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    .line 417
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->c()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->q()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->h()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->h()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->u()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->i()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->u()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->i()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 369
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 370
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    .line 374
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 375
    return-object p0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/hj;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 3
    .parameter

    .prologue
    .line 292
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->h()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 297
    :goto_0
    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hj;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hj;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hk;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 297
    goto :goto_0

    .line 294
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 309
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->q()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hk;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hk;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 320
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 321
    sparse-switch v1, :sswitch_data_0

    .line 327
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hk;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 330
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    move-object v0, p0

    .line 331
    :goto_1
    return-object v0

    .line 323
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hk;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 324
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->af_()V

    move-object v0, p0

    .line 325
    goto :goto_1

    .line 336
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->Z()Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    .line 337
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hk;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    .line 340
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 341
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hk;

    goto :goto_0

    .line 321
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
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->q()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->r()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->q()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/hj;
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hk;->u()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hk;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 252
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 355
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hk;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0
.end method
