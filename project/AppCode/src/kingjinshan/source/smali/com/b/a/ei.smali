.class public abstract Lcom/b/a/ei;
.super Lcom/b/a/eh;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/b/a/el;


# instance fields
.field private a:Lcom/b/a/dh;

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/b/a/eh;-><init>()V

    .line 266
    invoke-static {}, Lcom/b/a/dh;->b()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    .line 264
    return-void
.end method

.method static synthetic a(Lcom/b/a/ei;)Lcom/b/a/dh;
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ei;->b:Z

    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    return-object v0
.end method

.method private a(Lcom/b/a/en;ILjava/lang/Object;)Lcom/b/a/ei;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 368
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 369
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/b/a/dh;->a(Lcom/b/a/dj;ILjava/lang/Object;)V

    .line 370
    return-object p0
.end method

.method private a(Lcom/b/a/en;Ljava/lang/Object;)Lcom/b/a/ei;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 358
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 359
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 360
    return-object p0
.end method

.method private a(Lcom/b/a/ej;)V
    .locals 2
    .parameter

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 516
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/ej;->a(Lcom/b/a/ej;)Lcom/b/a/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/dh;)V

    .line 517
    return-void
.end method

.method private b(Lcom/b/a/en;Ljava/lang/Object;)Lcom/b/a/ei;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 378
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 379
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    .line 380
    return-object p0
.end method

.method private d(Lcom/b/a/en;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/b/a/en;->a()Lcom/b/a/ex;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/ei;->h()Lcom/b/a/ef;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    return-void
.end method

.method private e(Lcom/b/a/en;)Lcom/b/a/ei;
    .locals 2
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 387
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 388
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->c(Lcom/b/a/dj;)V

    .line 389
    return-object p0
.end method

.method private i()Lcom/b/a/ei;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->f()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ei;->b:Z

    .line 273
    invoke-super {p0}, Lcom/b/a/eh;->b()Lcom/b/a/eh;

    move-result-object p0

    check-cast p0, Lcom/b/a/ei;

    return-object p0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/b/a/ei;->b:Z

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->e()Lcom/b/a/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/ei;->b:Z

    .line 281
    :cond_0
    return-void
.end method

.method private k()Lcom/b/a/dh;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->c()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ei;->b:Z

    .line 290
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    return-object v0
.end method

.method private static l()Lcom/b/a/ei;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-virtual {v0}, Lcom/b/a/dh;->i()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/b/a/en;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 341
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/b/a/dh;->a(Lcom/b/a/dj;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/en;)Z
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 309
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->a(Lcom/b/a/dj;)Z

    move-result v0

    return v0
.end method

.method protected final a(Lcom/b/a/m;Lcom/b/a/df;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 406
    invoke-static {p3}, Lcom/b/a/go;->a(I)I

    move-result v0

    .line 407
    invoke-static {p3}, Lcom/b/a/go;->b(I)I

    move-result v1

    .line 409
    invoke-virtual {p0}, Lcom/b/a/ei;->h()Lcom/b/a/ef;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/b/a/df;->a(Lcom/b/a/ex;I)Lcom/b/a/en;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_1

    .line 416
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->j()Lcom/b/a/gq;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Z)I

    move-result v2

    if-ne v0, v2, :cond_0

    move v0, v3

    move v2, v3

    .line 431
    :goto_0
    if-eqz v2, :cond_2

    .line 432
    invoke-virtual {p1, p3}, Lcom/b/a/m;->b(I)Z

    move-result v0

    .line 511
    :goto_1
    return v0

    .line 421
    :cond_0
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/em;->a(Lcom/b/a/em;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/em;->b(Lcom/b/a/em;)Lcom/b/a/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/gq;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->j()Lcom/b/a/gq;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/b/a/dh;->a(Lcom/b/a/gq;Z)I

    move-result v2

    if-ne v0, v2, :cond_1

    move v0, v5

    move v2, v3

    .line 426
    goto :goto_0

    :cond_1
    move v0, v3

    move v2, v5

    .line 428
    goto :goto_0

    .line 435
    :cond_2
    if-eqz v0, :cond_6

    .line 436
    invoke-virtual {p1}, Lcom/b/a/m;->r()I

    move-result v0

    .line 437
    invoke-virtual {p1, v0}, Lcom/b/a/m;->c(I)I

    move-result v0

    .line 438
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->j()Lcom/b/a/gq;

    move-result-object v2

    sget-object v3, Lcom/b/a/gq;->n:Lcom/b/a/gq;

    if-ne v2, v3, :cond_4

    .line 439
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/m;->v()I

    move-result v2

    if-lez v2, :cond_5

    .line 440
    invoke-virtual {p1}, Lcom/b/a/m;->m()I

    move-result v2

    .line 441
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/em;->v()Lcom/b/a/er;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/b/a/er;->a(I)Lcom/b/a/eq;

    move-result-object v2

    .line 443
    if-nez v2, :cond_3

    move v0, v5

    .line 446
    goto :goto_1

    .line 448
    :cond_3
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 449
    iget-object v3, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    goto :goto_2

    .line 452
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/b/a/m;->v()I

    move-result v2

    if-lez v2, :cond_5

    .line 453
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->j()Lcom/b/a/gq;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/b/a/dh;->a(Lcom/b/a/m;Lcom/b/a/gq;)Ljava/lang/Object;

    move-result-object v2

    .line 456
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 457
    iget-object v3, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    goto :goto_3

    .line 460
    :cond_5
    invoke-virtual {p1, v0}, Lcom/b/a/m;->d(I)V

    :goto_4
    move v0, v5

    .line 511
    goto/16 :goto_1

    .line 463
    :cond_6
    sget-object v0, Lcom/b/a/eg;->a:[I

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->g()Lcom/b/a/gv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/gv;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 497
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/em;->j()Lcom/b/a/gq;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/b/a/dh;->a(Lcom/b/a/m;Lcom/b/a/gq;)Ljava/lang/Object;

    move-result-object v0

    .line 502
    :cond_7
    :goto_5
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->m()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 503
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 504
    iget-object v2, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/b/a/dh;->b(Lcom/b/a/dj;Ljava/lang/Object;)V

    goto :goto_4

    .line 465
    :pswitch_0
    const/4 v2, 0x0

    .line 466
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/em;->m()Z

    move-result v0

    if-nez v0, :cond_b

    .line 467
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    .line 469
    if-eqz v0, :cond_b

    .line 470
    invoke-interface {v0}, Lcom/b/a/ex;->F()Lcom/b/a/ey;

    move-result-object v0

    .line 473
    :goto_6
    if-nez v0, :cond_8

    .line 474
    invoke-static {v1}, Lcom/b/a/en;->c(Lcom/b/a/en;)Lcom/b/a/ex;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/ex;->G()Lcom/b/a/ey;

    move-result-object v0

    .line 476
    :cond_8
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->j()Lcom/b/a/gq;

    move-result-object v2

    sget-object v3, Lcom/b/a/gq;->j:Lcom/b/a/gq;

    if-ne v2, v3, :cond_9

    .line 478
    invoke-virtual {v1}, Lcom/b/a/en;->b()I

    move-result v2

    invoke-virtual {p1, v2, v0, p2}, Lcom/b/a/m;->a(ILcom/b/a/ey;Lcom/b/a/df;)V

    .line 483
    :goto_7
    invoke-interface {v0}, Lcom/b/a/ey;->M()Lcom/b/a/ex;

    move-result-object v0

    goto :goto_5

    .line 481
    :cond_9
    invoke-virtual {p1, v0, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    goto :goto_7

    .line 487
    :pswitch_1
    invoke-virtual {p1}, Lcom/b/a/m;->m()I

    move-result v0

    .line 488
    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/em;->v()Lcom/b/a/er;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/b/a/er;->a(I)Lcom/b/a/eq;

    move-result-object v0

    .line 492
    if-nez v0, :cond_7

    move v0, v5

    .line 493
    goto/16 :goto_1

    .line 506
    :cond_a
    invoke-direct {p0}, Lcom/b/a/ei;->j()V

    .line 507
    iget-object v2, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {v1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/b/a/dh;->a(Lcom/b/a/dj;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_b
    move-object v0, v2

    goto :goto_6

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lcom/b/a/en;)I
    .locals 2
    .parameter

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 317
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->d(Lcom/b/a/dj;)I

    move-result v0

    return v0
.end method

.method public final synthetic b()Lcom/b/a/eh;
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/b/a/ei;->i()Lcom/b/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/eh;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/b/a/ei;->l()Lcom/b/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/b/a/en;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/b/a/ei;->d(Lcom/b/a/en;)V

    .line 326
    iget-object v0, p0, Lcom/b/a/ei;->a:Lcom/b/a/dh;

    invoke-static {p1}, Lcom/b/a/en;->a(Lcom/b/a/en;)Lcom/b/a/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/dh;->b(Lcom/b/a/dj;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    if-nez v0, :cond_0

    .line 328
    invoke-static {p1}, Lcom/b/a/en;->b(Lcom/b/a/en;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    :cond_0
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/b/a/ei;->l()Lcom/b/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/b/a/ei;->l()Lcom/b/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/b/a/ei;->l()Lcom/b/a/ei;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/b/a/ei;->i()Lcom/b/a/ei;

    move-result-object v0

    return-object v0
.end method
