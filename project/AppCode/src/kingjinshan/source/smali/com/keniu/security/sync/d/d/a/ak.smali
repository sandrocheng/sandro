.class public final Lcom/keniu/security/sync/d/d/a/ak;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/al;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35189
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 35334
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35190
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->n()V

    .line 35191
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 35175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ak;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35194
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 35334
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35195
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->n()V

    .line 35196
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ak;)Lcom/keniu/security/sync/d/d/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->u()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ak;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 35348
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 35349
    if-nez p1, :cond_0

    .line 35350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35352
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35353
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    .line 35357
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35358
    return-object p0

    .line 35355
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 35362
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 35363
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35364
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    .line 35368
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35369
    return-object p0

    .line 35366
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 35372
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 35373
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 35375
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35380
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    .line 35384
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35385
    return-object p0

    .line 35378
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 35382
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 35266
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/aj;

    if-eqz v0, :cond_0

    .line 35267
    check-cast p1, Lcom/keniu/security/sync/d/d/a/aj;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/aj;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    .line 35270
    :goto_0
    return-object v0

    .line 35269
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 35270
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1

    .prologue
    .line 35175
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ak;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 35180
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bd()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 35198
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aj;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35199
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->x()Lcom/b/a/fp;

    .line 35201
    :cond_0
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1

    .prologue
    .line 35203
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ak;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1

    .prologue
    .line 35207
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 35208
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 35209
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35213
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35214
    return-object p0

    .line 35211
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 2

    .prologue
    .line 35218
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ak;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ak;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->u()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/keniu/security/sync/d/d/a/aj;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/aj;
    .locals 1

    .prologue
    .line 35227
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aj;->h()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/aj;
    .locals 2

    .prologue
    .line 35231
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->u()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    .line 35232
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35233
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ak;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 35235
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/aj;
    .locals 2

    .prologue
    .line 35240
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->u()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    .line 35241
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35242
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ak;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 35245
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/aj;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35249
    new-instance v1, Lcom/keniu/security/sync/d/d/a/aj;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/aj;-><init>(Lcom/keniu/security/sync/d/d/a/ak;)V

    .line 35250
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35251
    const/4 v2, 0x0

    .line 35252
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 35255
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 35256
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/aj;->a(Lcom/keniu/security/sync/d/d/a/aj;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 35260
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/aj;->a(Lcom/keniu/security/sync/d/d/a/aj;I)I

    .line 35261
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->ab_()V

    .line 35262
    return-object v1

    .line 35258
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/aj;->a(Lcom/keniu/security/sync/d/d/a/aj;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ak;
    .locals 1

    .prologue
    .line 35388
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 35389
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35390
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    .line 35394
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35395
    return-object p0

    .line 35392
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 35398
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35399
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    .line 35400
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 35412
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 35413
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    .line 35418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35420
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 35185
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->be()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 35223
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aj;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->p()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->q()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35175
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aj;->h()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35175
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aj;->h()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->u()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->s()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->u()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->s()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 35175
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35175
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/aj;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 3
    .parameter

    .prologue
    .line 35275
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aj;->h()Lcom/keniu/security/sync/d/d/a/aj;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 35280
    :goto_0
    return-object v0

    .line 35276
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35277
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/aj;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    .line 35279
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/aj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ak;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 35280
    goto :goto_0

    .line 35277
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35284
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 35292
    :goto_0
    return v0

    .line 35288
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 35290
    goto :goto_0

    .line 35292
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->q()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35175
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->p()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 35175
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ak;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35175
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->q()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->q()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35175
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->q()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ak;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 35299
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 35303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 35304
    sparse-switch v1, :sswitch_data_0

    .line 35310
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ak;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35312
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ak;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 35313
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    move-object v0, p0

    .line 35314
    :goto_1
    return-object v0

    .line 35306
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ak;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 35307
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    move-object v0, p0

    .line 35308
    goto :goto_1

    .line 35319
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 35320
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35321
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 35323
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 35324
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ak;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 35304
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
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->p()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->q()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ak;->p()Lcom/keniu/security/sync/d/d/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35338
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->a:I

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
    .line 35341
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 35342
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 35344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 35403
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 35404
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 35406
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ak;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method
