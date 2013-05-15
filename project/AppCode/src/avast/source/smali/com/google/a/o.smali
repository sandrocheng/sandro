.class public abstract Lcom/google/a/o;
.super Lcom/google/a/n;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/a/r;


# instance fields
.field private a:Lcom/google/a/i;

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 268
    invoke-static {}, Lcom/google/a/i;->b()Lcom/google/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    .line 266
    return-void
.end method

.method static synthetic a(Lcom/google/a/o;)Lcom/google/a/i;
    .locals 1
    .parameter

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/a/o;->b()Lcom/google/a/i;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/a/o;->b:Z

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-virtual {v0}, Lcom/google/a/i;->d()Lcom/google/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/o;->b:Z

    .line 283
    :cond_0
    return-void
.end method

.method private b()Lcom/google/a/i;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-virtual {v0}, Lcom/google/a/i;->c()V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/a/o;->b:Z

    .line 292
    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    return-object v0
.end method


# virtual methods
.method public C()Lcom/google/a/o;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected E()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-virtual {v0}, Lcom/google/a/i;->f()Z

    move-result v0

    return v0
.end method

.method protected final a(Lcom/google/a/p;)V
    .locals 2
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/a/o;->a()V

    .line 515
    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-static {p1}, Lcom/google/a/p;->a(Lcom/google/a/p;)Lcom/google/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/i;->a(Lcom/google/a/i;)V

    .line 516
    return-void
.end method

.method protected a(Lcom/google/a/d;Lcom/google/a/g;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 404
    invoke-static {p3}, Lcom/google/a/ap;->a(I)I

    move-result v2

    .line 405
    invoke-static {p3}, Lcom/google/a/ap;->b(I)I

    move-result v3

    .line 407
    invoke-virtual {p0}, Lcom/google/a/o;->g()Lcom/google/a/l;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Lcom/google/a/g;->a(Lcom/google/a/aa;I)Lcom/google/a/t;

    move-result-object v3

    .line 413
    if-nez v3, :cond_0

    move v2, v1

    .line 429
    :goto_0
    if-eqz v2, :cond_3

    .line 430
    invoke-virtual {p1, p3}, Lcom/google/a/d;->b(I)Z

    move-result v0

    .line 509
    :goto_1
    return v0

    .line 415
    :cond_0
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/s;->b()Lcom/google/a/ar;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/a/i;->a(Lcom/google/a/ar;Z)I

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v0

    .line 418
    goto :goto_0

    .line 419
    :cond_1
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v4

    invoke-static {v4}, Lcom/google/a/s;->b(Lcom/google/a/s;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v4

    invoke-static {v4}, Lcom/google/a/s;->c(Lcom/google/a/s;)Lcom/google/a/ar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/ar;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/s;->b()Lcom/google/a/ar;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/a/i;->a(Lcom/google/a/ar;Z)I

    move-result v4

    if-ne v2, v4, :cond_2

    move v2, v0

    move v0, v1

    .line 424
    goto :goto_0

    :cond_2
    move v2, v1

    .line 426
    goto :goto_0

    .line 433
    :cond_3
    if-eqz v0, :cond_7

    .line 434
    invoke-virtual {p1}, Lcom/google/a/d;->s()I

    move-result v0

    .line 435
    invoke-virtual {p1, v0}, Lcom/google/a/d;->d(I)I

    move-result v0

    .line 436
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/s;->b()Lcom/google/a/ar;

    move-result-object v2

    sget-object v4, Lcom/google/a/ar;->n:Lcom/google/a/ar;

    if-ne v2, v4, :cond_5

    .line 437
    :goto_2
    invoke-virtual {p1}, Lcom/google/a/d;->w()I

    move-result v2

    if-lez v2, :cond_6

    .line 438
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v2

    .line 439
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/s;->f()Lcom/google/a/w;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/a/w;->b(I)Lcom/google/a/v;

    move-result-object v2

    .line 441
    if-nez v2, :cond_4

    move v0, v1

    .line 444
    goto :goto_1

    .line 446
    :cond_4
    invoke-direct {p0}, Lcom/google/a/o;->a()V

    .line 447
    iget-object v4, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/a/i;->b(Lcom/google/a/k;Ljava/lang/Object;)V

    goto :goto_2

    .line 450
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/a/d;->w()I

    move-result v2

    if-lez v2, :cond_6

    .line 451
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/s;->b()Lcom/google/a/ar;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/a/i;->a(Lcom/google/a/d;Lcom/google/a/ar;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    invoke-direct {p0}, Lcom/google/a/o;->a()V

    .line 455
    iget-object v4, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/a/i;->b(Lcom/google/a/k;Ljava/lang/Object;)V

    goto :goto_3

    .line 458
    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/a/d;->e(I)V

    :goto_4
    move v0, v1

    .line 509
    goto/16 :goto_1

    .line 461
    :cond_7
    sget-object v0, Lcom/google/a/m;->a:[I

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/s;->c()Lcom/google/a/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/aw;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 495
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/s;->b()Lcom/google/a/ar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/a/i;->a(Lcom/google/a/d;Lcom/google/a/ar;)Ljava/lang/Object;

    move-result-object v0

    .line 500
    :cond_8
    :goto_5
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/s;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 501
    invoke-direct {p0}, Lcom/google/a/o;->a()V

    .line 502
    iget-object v2, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/a/i;->b(Lcom/google/a/k;Ljava/lang/Object;)V

    goto :goto_4

    .line 463
    :pswitch_0
    const/4 v2, 0x0

    .line 464
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/s;->d()Z

    move-result v0

    if-nez v0, :cond_c

    .line 465
    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/a/i;->a(Lcom/google/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    .line 467
    if-eqz v0, :cond_c

    .line 468
    invoke-interface {v0}, Lcom/google/a/aa;->A()Lcom/google/a/ab;

    move-result-object v0

    .line 471
    :goto_6
    if-nez v0, :cond_9

    .line 472
    invoke-static {v3}, Lcom/google/a/t;->b(Lcom/google/a/t;)Lcom/google/a/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/aa;->B()Lcom/google/a/ab;

    move-result-object v0

    .line 474
    :cond_9
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/s;->b()Lcom/google/a/ar;

    move-result-object v2

    sget-object v4, Lcom/google/a/ar;->j:Lcom/google/a/ar;

    if-ne v2, v4, :cond_a

    .line 476
    invoke-virtual {v3}, Lcom/google/a/t;->a()I

    move-result v2

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/a/d;->a(ILcom/google/a/ab;Lcom/google/a/g;)V

    .line 481
    :goto_7
    invoke-interface {v0}, Lcom/google/a/ab;->j()Lcom/google/a/aa;

    move-result-object v0

    goto :goto_5

    .line 479
    :cond_a
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    goto :goto_7

    .line 485
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 486
    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/s;->f()Lcom/google/a/w;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/a/w;->b(I)Lcom/google/a/v;

    move-result-object v0

    .line 490
    if-nez v0, :cond_8

    move v0, v1

    .line 491
    goto/16 :goto_1

    .line 504
    :cond_b
    invoke-direct {p0}, Lcom/google/a/o;->a()V

    .line 505
    iget-object v2, p0, Lcom/google/a/o;->a:Lcom/google/a/i;

    invoke-static {v3}, Lcom/google/a/t;->a(Lcom/google/a/t;)Lcom/google/a/s;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/a/i;->a(Lcom/google/a/k;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    move-object v0, v2

    goto :goto_6

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/a/o;->C()Lcom/google/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/a/o;->C()Lcom/google/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/a/o;->C()Lcom/google/a/o;

    move-result-object v0

    return-object v0
.end method
