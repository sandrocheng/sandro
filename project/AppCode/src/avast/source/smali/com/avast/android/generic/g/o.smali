.class public final Lcom/avast/android/generic/g/o;
.super Lcom/google/a/n;
.source "FeedbackProto.java"

# interfaces
.implements Lcom/avast/android/generic/g/p;


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;

.field private c:Lcom/avast/android/generic/g/q;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Lcom/avast/android/generic/g/c;

.field private h:Lcom/google/a/c;

.field private i:Lcom/google/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 636
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->b:Lcom/google/a/c;

    .line 660
    sget-object v0, Lcom/avast/android/generic/g/q;->a:Lcom/avast/android/generic/g/q;

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->c:Lcom/avast/android/generic/g/q;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->d:Ljava/lang/Object;

    .line 720
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->e:Ljava/lang/Object;

    .line 756
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->f:Ljava/lang/Object;

    .line 792
    invoke-static {}, Lcom/avast/android/generic/g/c;->a()Lcom/avast/android/generic/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    .line 835
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->h:Lcom/google/a/c;

    .line 859
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->i:Lcom/google/a/c;

    .line 435
    invoke-direct {p0}, Lcom/avast/android/generic/g/o;->l()V

    .line 436
    return-void
.end method

.method static synthetic k()Lcom/avast/android/generic/g/o;
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lcom/avast/android/generic/g/o;->m()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method private static m()Lcom/avast/android/generic/g/o;
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcom/avast/android/generic/g/o;

    invoke-direct {v0}, Lcom/avast/android/generic/g/o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/g/o;
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Lcom/avast/android/generic/g/o;->m()Lcom/avast/android/generic/g/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->d()Lcom/avast/android/generic/g/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/g/o;->a(Lcom/avast/android/generic/g/n;)Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 800
    if-nez p1, :cond_0

    .line 801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 803
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    .line 805
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 806
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/g/n;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 532
    invoke-static {}, Lcom/avast/android/generic/g/n;->a()Lcom/avast/android/generic/g/n;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-object p0

    .line 533
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->c()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->a(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;

    .line 536
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->e()Lcom/avast/android/generic/g/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->a(Lcom/avast/android/generic/g/q;)Lcom/avast/android/generic/g/o;

    .line 539
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->a(Ljava/lang/String;)Lcom/avast/android/generic/g/o;

    .line 542
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 543
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->b(Ljava/lang/String;)Lcom/avast/android/generic/g/o;

    .line 545
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->c(Ljava/lang/String;)Lcom/avast/android/generic/g/o;

    .line 548
    :cond_6
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 549
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->m()Lcom/avast/android/generic/g/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->b(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/o;

    .line 551
    :cond_7
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 552
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->o()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->b(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;

    .line 554
    :cond_8
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/avast/android/generic/g/n;->q()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->c(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/g/q;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 671
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 672
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->c:Lcom/avast/android/generic/g/q;

    .line 674
    return-object p0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 647
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 648
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->b:Lcom/google/a/c;

    .line 650
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/g/o;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 569
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 570
    sparse-switch v0, :sswitch_data_0

    .line 575
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/g/o;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    :sswitch_0
    return-object p0

    .line 582
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 583
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->b:Lcom/google/a/c;

    goto :goto_0

    .line 587
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 588
    invoke-static {v0}, Lcom/avast/android/generic/g/q;->a(I)Lcom/avast/android/generic/g/q;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_0

    .line 590
    iget v1, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 591
    iput-object v0, p0, Lcom/avast/android/generic/g/o;->c:Lcom/avast/android/generic/g/q;

    goto :goto_0

    .line 596
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 597
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->d:Ljava/lang/Object;

    goto :goto_0

    .line 601
    :sswitch_4
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 602
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->e:Ljava/lang/Object;

    goto :goto_0

    .line 606
    :sswitch_5
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 607
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->f:Ljava/lang/Object;

    goto :goto_0

    .line 611
    :sswitch_6
    invoke-static {}, Lcom/avast/android/generic/g/c;->H()Lcom/avast/android/generic/g/d;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->f()Lcom/avast/android/generic/g/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/g/d;->a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/d;

    .line 615
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 616
    invoke-virtual {v0}, Lcom/avast/android/generic/g/d;->d()Lcom/avast/android/generic/g/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/g/o;->a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/o;

    goto :goto_0

    .line 620
    :sswitch_7
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 621
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->h:Lcom/google/a/c;

    goto :goto_0

    .line 625
    :sswitch_8
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 626
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->i:Lcom/google/a/c;

    goto/16 :goto_0

    .line 570
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 702
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 703
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->d:Ljava/lang/Object;

    .line 705
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 429
    check-cast p1, Lcom/avast/android/generic/g/n;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/g/o;->a(Lcom/avast/android/generic/g/n;)Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/g/n;
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/avast/android/generic/g/n;->a()Lcom/avast/android/generic/g/n;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/o;
    .locals 2
    .parameter

    .prologue
    .line 816
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    invoke-static {}, Lcom/avast/android/generic/g/c;->a()Lcom/avast/android/generic/g/c;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    invoke-static {v0}, Lcom/avast/android/generic/g/c;->a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/g/d;->a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/g/d;->d()Lcom/avast/android/generic/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    .line 824
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 825
    return-object p0

    .line 821
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    goto :goto_0
.end method

.method public b(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 843
    if-nez p1, :cond_0

    .line 844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 846
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 847
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->h:Lcom/google/a/c;

    .line 849
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 735
    if-nez p1, :cond_0

    .line 736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 738
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 739
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->e:Ljava/lang/Object;

    .line 741
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/g/o;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/g/n;
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->d()Lcom/avast/android/generic/g/n;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/avast/android/generic/g/n;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    invoke-static {v0}, Lcom/avast/android/generic/g/o;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 478
    :cond_0
    return-object v0
.end method

.method public c(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 870
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 871
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->i:Lcom/google/a/c;

    .line 873
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/android/generic/g/o;
    .locals 1
    .parameter

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 774
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 775
    iput-object p1, p0, Lcom/avast/android/generic/g/o;->f:Ljava/lang/Object;

    .line 777
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/g/o;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->a()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/g/n;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 492
    new-instance v2, Lcom/avast/android/generic/g/n;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/g/n;-><init>(Lcom/avast/android/generic/g/o;Lcom/avast/android/generic/g/m;)V

    .line 493
    iget v3, p0, Lcom/avast/android/generic/g/o;->a:I

    .line 494
    const/4 v1, 0x0

    .line 495
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->a(Lcom/avast/android/generic/g/n;Lcom/google/a/c;)Lcom/google/a/c;

    .line 499
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 500
    or-int/lit8 v0, v0, 0x2

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->c:Lcom/avast/android/generic/g/q;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->a(Lcom/avast/android/generic/g/n;Lcom/avast/android/generic/g/q;)Lcom/avast/android/generic/g/q;

    .line 503
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 504
    or-int/lit8 v0, v0, 0x4

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->a(Lcom/avast/android/generic/g/n;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 508
    or-int/lit8 v0, v0, 0x8

    .line 510
    :cond_2
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->b(Lcom/avast/android/generic/g/n;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 512
    or-int/lit8 v0, v0, 0x10

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->c(Lcom/avast/android/generic/g/n;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 516
    or-int/lit8 v0, v0, 0x20

    .line 518
    :cond_4
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->a(Lcom/avast/android/generic/g/n;Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/c;

    .line 519
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 520
    or-int/lit8 v0, v0, 0x40

    .line 522
    :cond_5
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->h:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->b(Lcom/avast/android/generic/g/n;Lcom/google/a/c;)Lcom/google/a/c;

    .line 523
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    .line 524
    or-int/lit16 v0, v0, 0x80

    .line 526
    :cond_6
    iget-object v1, p0, Lcom/avast/android/generic/g/o;->i:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/g/n;->c(Lcom/avast/android/generic/g/n;Lcom/google/a/c;)Lcom/google/a/c;

    .line 527
    invoke-static {v2, v0}, Lcom/avast/android/generic/g/n;->a(Lcom/avast/android/generic/g/n;I)I

    .line 528
    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 794
    iget v0, p0, Lcom/avast/android/generic/g/o;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/avast/android/generic/g/c;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/avast/android/generic/g/o;->g:Lcom/avast/android/generic/g/c;

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->b()Lcom/avast/android/generic/g/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->a()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->a()Lcom/avast/android/generic/g/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/avast/android/generic/g/o;->c()Lcom/avast/android/generic/g/n;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x1

    return v0
.end method
