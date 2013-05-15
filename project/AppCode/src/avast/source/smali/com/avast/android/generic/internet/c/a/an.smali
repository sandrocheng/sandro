.class public final Lcom/avast/android/generic/internet/c/a/an;
.super Lcom/google/a/n;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/ao;


# instance fields
.field private a:I

.field private b:Lcom/avast/android/generic/internet/c/a/ax;

.field private c:I

.field private d:J

.field private e:I

.field private f:Z

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5397
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 5669
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->a:Lcom/avast/android/generic/internet/c/a/ax;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->b:Lcom/avast/android/generic/internet/c/a/ax;

    .line 5840
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    .line 5929
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    .line 5398
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/an;->p()V

    .line 5399
    return-void
.end method

.method static synthetic o()Lcom/avast/android/generic/internet/c/a/an;
    .locals 1

    .prologue
    .line 5392
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/an;->q()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 0

    .prologue
    .line 5402
    return-void
.end method

.method private static q()Lcom/avast/android/generic/internet/c/a/an;
    .locals 1

    .prologue
    .line 5404
    new-instance v0, Lcom/avast/android/generic/internet/c/a/an;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/an;-><init>()V

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 5843
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 5844
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    .line 5845
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5847
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 5932
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 5933
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    .line 5934
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5936
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/an;
    .locals 2

    .prologue
    .line 5437
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/an;->q()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/an;->d()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5701
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5702
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/an;->c:I

    .line 5704
    return-object p0
.end method

.method public a(J)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5722
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5723
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/an;->d:J

    .line 5725
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5876
    if-nez p1, :cond_0

    .line 5877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5879
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/an;->r()V

    .line 5880
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5882
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;
    .locals 2
    .parameter

    .prologue
    .line 5521
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->a()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5572
    :cond_0
    :goto_0
    return-object p0

    .line 5522
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5523
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->c()Lcom/avast/android/generic/internet/c/a/ax;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/ax;)Lcom/avast/android/generic/internet/c/a/an;

    .line 5525
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5526
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->a(I)Lcom/avast/android/generic/internet/c/a/an;

    .line 5528
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5529
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->a(J)Lcom/avast/android/generic/internet/c/a/an;

    .line 5531
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5532
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->b(I)Lcom/avast/android/generic/internet/c/a/an;

    .line 5534
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5535
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->a(Z)Lcom/avast/android/generic/internet/c/a/an;

    .line 5537
    :cond_6
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5538
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->b(J)Lcom/avast/android/generic/internet/c/a/an;

    .line 5540
    :cond_7
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5541
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->b(Z)Lcom/avast/android/generic/internet/c/a/an;

    .line 5543
    :cond_8
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5544
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->c(Z)Lcom/avast/android/generic/internet/c/a/an;

    .line 5546
    :cond_9
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/am;->b(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5547
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5548
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/am;->b(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    .line 5549
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5556
    :cond_a
    :goto_1
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/am;->c(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5557
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5558
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/am;->c(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    .line 5559
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5566
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5567
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->c(I)Lcom/avast/android/generic/internet/c/a/an;

    .line 5569
    :cond_c
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5570
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/am;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->d(I)Lcom/avast/android/generic/internet/c/a/an;

    goto/16 :goto_0

    .line 5551
    :cond_d
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/an;->r()V

    .line 5552
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/am;->b(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5561
    :cond_e
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/an;->s()V

    .line 5562
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/am;->c(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5965
    if-nez p1, :cond_0

    .line 5966
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5968
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/an;->s()V

    .line 5969
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5971
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/ax;)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5677
    if-nez p1, :cond_0

    .line 5678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5680
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5681
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/an;->b:Lcom/avast/android/generic/internet/c/a/ax;

    .line 5683
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/an;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5584
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 5585
    sparse-switch v0, :sswitch_data_0

    .line 5590
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5592
    :sswitch_0
    return-object p0

    .line 5597
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 5598
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/ax;->a(I)Lcom/avast/android/generic/internet/c/a/ax;

    move-result-object v0

    .line 5599
    if-eqz v0, :cond_0

    .line 5600
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5601
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->b:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0

    .line 5606
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5607
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->c:I

    goto :goto_0

    .line 5611
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5612
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->e:I

    goto :goto_0

    .line 5616
    :sswitch_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5617
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/an;->f:Z

    goto :goto_0

    .line 5621
    :sswitch_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5622
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/an;->g:J

    goto :goto_0

    .line 5626
    :sswitch_6
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5627
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/an;->h:Z

    goto :goto_0

    .line 5631
    :sswitch_7
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5632
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/an;->i:Z

    goto :goto_0

    .line 5636
    :sswitch_8
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/aj;->d()Lcom/avast/android/generic/internet/c/a/ak;

    move-result-object v0

    .line 5637
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 5638
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ak;->d()Lcom/avast/android/generic/internet/c/a/aj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/aj;)Lcom/avast/android/generic/internet/c/a/an;

    goto :goto_0

    .line 5642
    :sswitch_9
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/as;->j()Lcom/avast/android/generic/internet/c/a/at;

    move-result-object v0

    .line 5643
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 5644
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/at;->d()Lcom/avast/android/generic/internet/c/a/as;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/as;)Lcom/avast/android/generic/internet/c/a/an;

    goto/16 :goto_0

    .line 5648
    :sswitch_a
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5649
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->l:I

    goto/16 :goto_0

    .line 5653
    :sswitch_b
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5654
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->m:I

    goto/16 :goto_0

    .line 5658
    :sswitch_c
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5659
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/an;->d:J

    goto/16 :goto_0

    .line 5585
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method

.method public a(Z)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5764
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5765
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/an;->f:Z

    .line 5767
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 5392
    check-cast p1, Lcom/avast/android/generic/internet/c/a/am;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/am;
    .locals 1

    .prologue
    .line 5441
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->a()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5743
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5744
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/an;->e:I

    .line 5746
    return-object p0
.end method

.method public b(J)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5785
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5786
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/an;->g:J

    .line 5788
    return-object p0
.end method

.method public b(Z)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5806
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5807
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/an;->h:Z

    .line 5809
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5392
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/am;
    .locals 2

    .prologue
    .line 5445
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/an;->d()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    .line 5446
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/am;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5447
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 5449
    :cond_0
    return-object v0
.end method

.method public c(I)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 6026
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 6027
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/an;->l:I

    .line 6029
    return-object p0
.end method

.method public c(Z)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5827
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5828
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/an;->i:Z

    .line 5830
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5392
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5392
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/an;->a()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/am;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 5463
    new-instance v2, Lcom/avast/android/generic/internet/c/a/am;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/am;-><init>(Lcom/avast/android/generic/internet/c/a/an;Lcom/avast/android/generic/internet/c/a/ac;)V

    .line 5464
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5465
    const/4 v1, 0x0

    .line 5466
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_b

    .line 5469
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->b:Lcom/avast/android/generic/internet/c/a/ax;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->a(Lcom/avast/android/generic/internet/c/a/am;Lcom/avast/android/generic/internet/c/a/ax;)Lcom/avast/android/generic/internet/c/a/ax;

    .line 5470
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 5471
    or-int/lit8 v0, v0, 0x2

    .line 5473
    :cond_0
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->c:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->a(Lcom/avast/android/generic/internet/c/a/am;I)I

    .line 5474
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 5475
    or-int/lit8 v0, v0, 0x4

    .line 5477
    :cond_1
    iget-wide v4, p0, Lcom/avast/android/generic/internet/c/a/an;->d:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/generic/internet/c/a/am;->a(Lcom/avast/android/generic/internet/c/a/am;J)J

    .line 5478
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 5479
    or-int/lit8 v0, v0, 0x8

    .line 5481
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->e:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->b(Lcom/avast/android/generic/internet/c/a/am;I)I

    .line 5482
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 5483
    or-int/lit8 v0, v0, 0x10

    .line 5485
    :cond_3
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/an;->f:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->a(Lcom/avast/android/generic/internet/c/a/am;Z)Z

    .line 5486
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 5487
    or-int/lit8 v0, v0, 0x20

    .line 5489
    :cond_4
    iget-wide v4, p0, Lcom/avast/android/generic/internet/c/a/an;->g:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/generic/internet/c/a/am;->b(Lcom/avast/android/generic/internet/c/a/am;J)J

    .line 5490
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 5491
    or-int/lit8 v0, v0, 0x40

    .line 5493
    :cond_5
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/an;->h:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->b(Lcom/avast/android/generic/internet/c/a/am;Z)Z

    .line 5494
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 5495
    or-int/lit16 v0, v0, 0x80

    .line 5497
    :cond_6
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/an;->i:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->c(Lcom/avast/android/generic/internet/c/a/am;Z)Z

    .line 5498
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v1, v1, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 5499
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    .line 5500
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5502
    :cond_7
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->j:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->a(Lcom/avast/android/generic/internet/c/a/am;Ljava/util/List;)Ljava/util/List;

    .line 5503
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v1, v1, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 5504
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    .line 5505
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 5507
    :cond_8
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/an;->k:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->b(Lcom/avast/android/generic/internet/c/a/am;Ljava/util/List;)Ljava/util/List;

    .line 5508
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 5509
    or-int/lit16 v0, v0, 0x100

    .line 5511
    :cond_9
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->l:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->c(Lcom/avast/android/generic/internet/c/a/am;I)I

    .line 5512
    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_a

    .line 5513
    or-int/lit16 v0, v0, 0x200

    .line 5515
    :cond_a
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/an;->m:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/am;->d(Lcom/avast/android/generic/internet/c/a/am;I)I

    .line 5516
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/am;->e(Lcom/avast/android/generic/internet/c/a/am;I)I

    .line 5517
    return-object v2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public d(I)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 6047
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/an;->a:I

    .line 6048
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/an;->m:I

    .line 6050
    return-object p0
.end method

.method public e()Lcom/avast/android/generic/internet/c/a/ax;
    .locals 1

    .prologue
    .line 5674
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/an;->b:Lcom/avast/android/generic/internet/c/a/ax;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 5698
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->c:I

    return v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 5392
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/an;->b()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 5392
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/an;->a()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 5392
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/an;->a()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 5392
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/an;->c()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 5719
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/an;->d:J

    return-wide v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 5740
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/an;->e:I

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 5761
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/an;->f:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 5824
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/an;->i:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 5576
    const/4 v0, 0x1

    return v0
.end method
