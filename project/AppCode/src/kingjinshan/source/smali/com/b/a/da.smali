.class public final Lcom/b/a/da;
.super Lcom/b/a/c;
.source "DynamicMessage.java"


# instance fields
.field private final a:Lcom/b/a/cj;

.field private b:Lcom/b/a/dh;

.field private c:Lcom/b/a/gg;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/cj;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/da;-><init>(Lcom/b/a/cj;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/cj;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/b/a/c;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    .line 260
    invoke-static {}, Lcom/b/a/dh;->a()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    .line 261
    invoke-static {}, Lcom/b/a/gg;->f()Lcom/b/a/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    .line 262
    return-void
.end method

.method static synthetic a(Lcom/b/a/da;)Lcom/b/a/cy;
    .locals 4
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/b/a/da;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/cy;

    iget-object v1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    iget-object v2, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    iget-object v3, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cy;-><init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;)V

    invoke-static {v0}, Lcom/b/a/da;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/b/a/da;->l()Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/da;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 403
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/dh;->a(Lcom/b/a/dj;ILjava/lang/Object;)V

    .line 404
    return-object p0
.end method

.method private c(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/da;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 380
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 381
    return-object p0
.end method

.method private d(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/da;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 409
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 410
    return-object p0
.end method

.method private d(Lcom/b/a/gg;)Lcom/b/a/da;
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    .line 419
    return-object p0
.end method

.method private e(Lcom/b/a/gg;)Lcom/b/a/da;
    .locals 1
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gi;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    .line 427
    return-object p0
.end method

.method private f(Lcom/b/a/cq;)Lcom/b/a/da;
    .locals 3
    .parameter

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 352
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v0, v1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    new-instance v0, Lcom/b/a/da;

    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/da;-><init>(Lcom/b/a/cj;B)V

    return-object v0
.end method

.method private g(Lcom/b/a/cq;)Lcom/b/a/da;
    .locals 1
    .parameter

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 386
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->c(Lcom/b/a/dj;)V

    .line 387
    return-object p0
.end method

.method private h(Lcom/b/a/cq;)V
    .locals 2
    .parameter

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    return-void
.end method

.method private i()Lcom/b/a/da;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->f()V

    .line 272
    return-object p0
.end method

.method private j()Lcom/b/a/cy;
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/da;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/b/a/cy;

    iget-object v1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    iget-object v2, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    iget-object v3, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cy;-><init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;)V

    invoke-static {v0}, Lcom/b/a/da;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/b/a/da;->l()Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/b/a/cy;
    .locals 4

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/b/a/da;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/b/a/cy;

    iget-object v1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    iget-object v2, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    iget-object v3, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cy;-><init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;)V

    invoke-static {v0}, Lcom/b/a/da;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/b/a/da;->l()Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/b/a/cy;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->c()V

    .line 320
    new-instance v0, Lcom/b/a/cy;

    iget-object v1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    iget-object v2, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    iget-object v3, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/cy;-><init>(Lcom/b/a/cj;Lcom/b/a/dh;Lcom/b/a/gg;)V

    .line 322
    iput-object v4, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    .line 323
    iput-object v4, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    .line 324
    return-object v0
.end method

.method private m()Lcom/b/a/da;
    .locals 3

    .prologue
    .line 328
    new-instance v0, Lcom/b/a/da;

    iget-object v1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/da;-><init>(Lcom/b/a/cj;B)V

    .line 329
    iget-object v1, v0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    iget-object v2, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v1, v2}, Lcom/b/a/dh;->a(Lcom/b/a/dh;)V

    .line 330
    return-object v0
.end method

.method private n()Lcom/b/a/cy;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->l()Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->j()Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->l()Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->j()Lcom/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/b/a/da;->d(Lcom/b/a/ev;)Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/gg;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/b/a/da;->e(Lcom/b/a/gg;)Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/cq;ILjava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/dh;->a(Lcom/b/a/dj;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/b/a/cq;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 397
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    iget-object v1, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-static {v0, v1}, Lcom/b/a/cy;->a(Lcom/b/a/cj;Lcom/b/a/dh;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/b/a/cq;)Z
    .locals 1
    .parameter

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 362
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    return v0
.end method

.method public final a_()Ljava/util/Map;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->m()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic b(Lcom/b/a/gg;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/b/a/da;->e(Lcom/b/a/gg;)Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/b/a/cq;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 367
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_1

    .line 370
    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cy;->a(Lcom/b/a/cj;)Lcom/b/a/cy;

    move-result-object v0

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 372
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/cq;->p()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final b_()Lcom/b/a/gg;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    return-object v0
.end method

.method public final c(Lcom/b/a/cq;)I
    .locals 1
    .parameter

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    .line 392
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    return v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->i()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/b/a/da;->d(Lcom/b/a/ev;)Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/b/a/gg;)Lcom/b/a/ew;
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/b/a/da;->c:Lcom/b/a/gg;

    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->m()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/b/a/ev;)Lcom/b/a/da;
    .locals 2
    .parameter

    .prologue
    .line 276
    instance-of v0, p1, Lcom/b/a/cy;

    if-eqz v0, :cond_1

    .line 278
    check-cast p1, Lcom/b/a/cy;

    .line 279
    invoke-static {p1}, Lcom/b/a/cy;->a(Lcom/b/a/cy;)Lcom/b/a/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/da;->a:Lcom/b/a/cj;

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/cy;->b(Lcom/b/a/cy;)Lcom/b/a/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/dh;)V

    .line 284
    invoke-static {p1}, Lcom/b/a/cy;->c(Lcom/b/a/cy;)Lcom/b/a/gg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/da;->e(Lcom/b/a/gg;)Lcom/b/a/da;

    move-object v0, p0

    .line 287
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/b/a/c;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/da;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->m()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/cq;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    iget-object v0, p0, Lcom/b/a/da;->b:Lcom/b/a/dh;

    invoke-virtual {v0, p1}, Lcom/b/a/dh;->c(Lcom/b/a/dj;)V

    return-object p0
.end method

.method public final synthetic e(Lcom/b/a/cq;)Lcom/b/a/ew;
    .locals 3
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/b/a/da;->h(Lcom/b/a/cq;)V

    invoke-virtual {p1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/b/a/da;

    invoke-virtual {p1}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/da;-><init>(Lcom/b/a/cj;B)V

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->m()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->i()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->m()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/b/a/da;->i()Lcom/b/a/da;

    move-result-object v0

    return-object v0
.end method
