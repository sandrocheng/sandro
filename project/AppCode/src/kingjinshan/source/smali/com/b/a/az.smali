.class public final Lcom/b/a/az;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ba;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 217
    invoke-direct {p0}, Lcom/b/a/az;->m()V

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/az;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 222
    invoke-direct {p0}, Lcom/b/a/az;->m()V

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/b/a/az;)Lcom/b/a/ay;
    .locals 2
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->t()Lcom/b/a/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ay;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/az;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/av;)Lcom/b/a/az;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 414
    if-nez p2, :cond_0

    .line 415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 418
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 423
    :goto_0
    return-object p0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/aw;)Lcom/b/a/az;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 429
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/aw;->D()Lcom/b/a/av;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 434
    :goto_0
    return-object p0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/aw;->D()Lcom/b/a/av;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/av;)Lcom/b/a/az;
    .locals 1
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 438
    if-nez p1, :cond_0

    .line 439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 442
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 447
    :goto_0
    return-object p0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/aw;)Lcom/b/a/az;
    .locals 2
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 467
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/aw;->D()Lcom/b/a/av;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 472
    :goto_0
    return-object p0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/aw;->D()Lcom/b/a/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/az;
    .locals 1
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 489
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 490
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 494
    :goto_0
    return-object p0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/av;)Lcom/b/a/az;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 452
    if-nez p2, :cond_0

    .line 453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 456
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 457
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 461
    :goto_0
    return-object p0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/aw;)Lcom/b/a/az;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 478
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/aw;->D()Lcom/b/a/av;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 479
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 483
    :goto_0
    return-object p0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/aw;->D()Lcom/b/a/av;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(I)Lcom/b/a/az;
    .locals 1
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 509
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 510
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 514
    :goto_0
    return-object p0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(I)Lcom/b/a/aw;
    .locals 1
    .parameter

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/b/a/az;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/aw;

    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/az;
    .locals 1
    .parameter

    .prologue
    .line 292
    instance-of v0, p1, Lcom/b/a/ay;

    if-eqz v0, :cond_0

    .line 293
    check-cast p1, Lcom/b/a/ay;

    invoke-virtual {p0, p1}, Lcom/b/a/az;->a(Lcom/b/a/ay;)Lcom/b/a/az;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    .line 295
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 296
    goto :goto_0
.end method

.method private e(I)Lcom/b/a/aw;
    .locals 2
    .parameter

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/b/a/az;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/av;->e()Lcom/b/a/av;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/aw;

    return-object p0
.end method

.method static synthetic k()Lcom/b/a/az;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/b/a/az;

    invoke-direct {v0}, Lcom/b/a/az;-><init>()V

    return-object v0
.end method

.method private static l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/b/a/p;->b()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 225
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/b/a/az;->y()Lcom/b/a/fc;

    .line 228
    :cond_0
    return-void
.end method

.method private static n()Lcom/b/a/az;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/b/a/az;

    invoke-direct {v0}, Lcom/b/a/az;-><init>()V

    return-object v0
.end method

.method private o()Lcom/b/a/az;
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 235
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 237
    iget v0, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/az;->a:I

    .line 241
    :goto_0
    return-object p0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private p()Lcom/b/a/az;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/b/a/az;

    invoke-direct {v0}, Lcom/b/a/az;-><init>()V

    invoke-direct {p0}, Lcom/b/a/az;->t()Lcom/b/a/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/az;->a(Lcom/b/a/ay;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/b/a/ay;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/b/a/ay;->e()Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/b/a/ay;
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/b/a/az;->t()Lcom/b/a/ay;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/b/a/ay;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-static {v0}, Lcom/b/a/az;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 262
    :cond_0
    return-object v0
.end method

.method private s()Lcom/b/a/ay;
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/b/a/az;->t()Lcom/b/a/ay;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/b/a/ay;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-static {v0}, Lcom/b/a/az;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 272
    :cond_0
    return-object v0
.end method

.method private t()Lcom/b/a/ay;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Lcom/b/a/ay;

    invoke-direct {v0, p0}, Lcom/b/a/ay;-><init>(Lcom/b/a/az;)V

    .line 277
    iget v1, p0, Lcom/b/a/az;->a:I

    .line 278
    iget-object v1, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v1, :cond_1

    .line 279
    iget v1, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 281
    iget v1, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/b/a/az;->a:I

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;Ljava/util/List;)Ljava/util/List;

    .line 287
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/az;->ab_()V

    .line 288
    return-object v0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v1}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 383
    iget v0, p0, Lcom/b/a/az;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/az;->a:I

    .line 385
    :cond_0
    return-void
.end method

.method private v()Lcom/b/a/az;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 499
    iget v0, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/az;->a:I

    .line 500
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 504
    :goto_0
    return-object p0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private w()Lcom/b/a/aw;
    .locals 2

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/b/a/az;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/av;->e()Lcom/b/a/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/aw;

    return-object p0
.end method

.method private x()Ljava/util/List;
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/b/a/az;->y()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/b/a/fc;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 551
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/az;->b:Ljava/util/List;

    iget v2, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/az;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/az;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    return-object v0

    .line 552
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/b/a/p;->c()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/b/a/ay;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->o()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->p()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/b/a/ay;->e()Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/b/a/ay;->e()Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->t()Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->r()Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->t()Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->r()Lcom/b/a/ay;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/av;
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/av;

    move-object v0, p0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/av;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a(Lcom/b/a/ay;)Lcom/b/a/az;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-static {}, Lcom/b/a/ay;->e()Lcom/b/a/ay;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 329
    :goto_0
    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 303
    invoke-static {p1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-static {p1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 306
    iget v0, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/az;->a:I

    .line 311
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    .line 328
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/ay;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/az;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 329
    goto :goto_0

    .line 308
    :cond_2
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    .line 309
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 314
    :cond_3
    invoke-static {p1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 317
    iput-object v1, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    .line 318
    invoke-static {p1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    .line 319
    iget v0, p0, Lcom/b/a/az;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/az;->a:I

    .line 320
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/az;->y()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/ay;->a(Lcom/b/a/ay;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/b/a/az;->d(Lcom/b/a/ev;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/b/a/az;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/az;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 334
    invoke-virtual {p0, v0}, Lcom/b/a/az;->a(I)Lcom/b/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/av;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 339
    :goto_1
    return v0

    .line 333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b(I)Lcom/b/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ax;

    move-object v0, p0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/ax;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->p()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/b/a/az;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->o()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/b/a/az;->d(Lcom/b/a/ev;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/b/a/az;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->p()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->p()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/b/a/az;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/az;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/b/a/az;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 350
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 351
    sparse-switch v1, :sswitch_data_0

    .line 357
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/az;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/az;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 360
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    move-object v0, p0

    .line 361
    :goto_1
    return-object v0

    .line 353
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/az;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 354
    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    move-object v0, p0

    .line 355
    goto :goto_1

    .line 366
    :sswitch_1
    invoke-static {}, Lcom/b/a/av;->N()Lcom/b/a/aw;

    move-result-object v1

    .line 367
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 368
    invoke-virtual {v1}, Lcom/b/a/aw;->E()Lcom/b/a/av;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/az;->u()V

    iget-object v2, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/az;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->p()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->o()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->p()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/b/a/az;->o()Lcom/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 401
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final s_()Ljava/util/List;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/b/a/az;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/az;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
