.class public final Lcom/avast/android/generic/internet/c/a/r;
.super Lcom/google/a/n;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/s;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->b:Ljava/lang/Object;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->c:Ljava/lang/Object;

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->d:Ljava/lang/Object;

    .line 738
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->h:Ljava/lang/Object;

    .line 388
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/r;->f()V

    .line 389
    return-void
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/r;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/r;->k()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/r;
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/avast/android/generic/internet/c/a/r;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/r;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/r;
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/r;->k()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/r;->d()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 479
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->a()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-object p0

    .line 480
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/r;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    .line 483
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/r;->b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    .line 486
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/r;->c(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    .line 489
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 490
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/r;->a(Z)Lcom/avast/android/generic/internet/c/a/r;

    .line 492
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 493
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/r;->b(Z)Lcom/avast/android/generic/internet/c/a/r;

    .line 495
    :cond_6
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 496
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->m()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/r;->c(Z)Lcom/avast/android/generic/internet/c/a/r;

    .line 498
    :cond_7
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/q;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/r;->d(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 514
    sparse-switch v0, :sswitch_data_0

    .line 519
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    :sswitch_0
    return-object p0

    .line 526
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 527
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->b:Ljava/lang/Object;

    goto :goto_0

    .line 531
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 532
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->c:Ljava/lang/Object;

    goto :goto_0

    .line 536
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 537
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->d:Ljava/lang/Object;

    goto :goto_0

    .line 541
    :sswitch_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 542
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/r;->e:Z

    goto :goto_0

    .line 546
    :sswitch_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 547
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/r;->f:Z

    goto :goto_0

    .line 551
    :sswitch_6
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 552
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/r;->g:Z

    goto :goto_0

    .line 556
    :sswitch_7
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 557
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/r;->h:Ljava/lang/Object;

    goto :goto_0

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 585
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 586
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/r;->b:Ljava/lang/Object;

    .line 588
    return-object p0
.end method

.method public a(Z)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 683
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 684
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/r;->e:Z

    .line 686
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 382
    check-cast p1, Lcom/avast/android/generic/internet/c/a/q;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/q;
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->a()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 621
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 622
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/r;->c:Ljava/lang/Object;

    .line 624
    return-object p0
.end method

.method public b(Z)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 704
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 705
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/r;->f:Z

    .line 707
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/q;
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/r;->d()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/q;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 429
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 657
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 658
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/r;->d:Ljava/lang/Object;

    .line 660
    return-object p0
.end method

.method public c(Z)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 725
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 726
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/r;->g:Z

    .line 728
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/r;->a()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/q;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 443
    new-instance v2, Lcom/avast/android/generic/internet/c/a/q;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/q;-><init>(Lcom/avast/android/generic/internet/c/a/r;Lcom/avast/android/generic/internet/c/a/b;)V

    .line 444
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 445
    const/4 v1, 0x0

    .line 446
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/r;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/q;->a(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 451
    or-int/lit8 v0, v0, 0x2

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/r;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/q;->b(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 455
    or-int/lit8 v0, v0, 0x4

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/r;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/q;->c(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 459
    or-int/lit8 v0, v0, 0x8

    .line 461
    :cond_2
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/r;->e:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/q;->a(Lcom/avast/android/generic/internet/c/a/q;Z)Z

    .line 462
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 463
    or-int/lit8 v0, v0, 0x10

    .line 465
    :cond_3
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/r;->f:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/q;->b(Lcom/avast/android/generic/internet/c/a/q;Z)Z

    .line 466
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 467
    or-int/lit8 v0, v0, 0x20

    .line 469
    :cond_4
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/r;->g:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/q;->c(Lcom/avast/android/generic/internet/c/a/q;Z)Z

    .line 470
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    .line 471
    or-int/lit8 v0, v0, 0x40

    .line 473
    :cond_5
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/r;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/q;->d(Lcom/avast/android/generic/internet/c/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/q;->a(Lcom/avast/android/generic/internet/c/a/q;I)I

    .line 475
    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    .locals 1
    .parameter

    .prologue
    .line 753
    if-nez p1, :cond_0

    .line 754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 756
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/r;->a:I

    .line 757
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/r;->h:Ljava/lang/Object;

    .line 759
    return-object p0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/r;->b()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/r;->a()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/r;->a()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/r;->c()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method
