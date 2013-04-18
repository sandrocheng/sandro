.class public final Lcom/b/a/bh;
.super Lcom/b/a/dq;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bi;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;

.field private e:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10507
    invoke-direct {p0}, Lcom/b/a/dq;-><init>()V

    .line 10746
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10508
    invoke-direct {p0}, Lcom/b/a/bh;->s()V

    .line 10509
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 10493
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bh;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10512
    invoke-direct {p0, p1}, Lcom/b/a/dq;-><init>(Lcom/b/a/dp;)V

    .line 10746
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10513
    invoke-direct {p0}, Lcom/b/a/bh;->s()V

    .line 10514
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 10749
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 10750
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10751
    iget v0, p0, Lcom/b/a/bh;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10753
    :cond_0
    return-void
.end method

.method private D()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10865
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10866
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10867
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10868
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10872
    :goto_0
    return-object p0

    .line 10870
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private E()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 10904
    invoke-direct {p0}, Lcom/b/a/bh;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private U()Ljava/util/List;
    .locals 1

    .prologue
    .line 10914
    invoke-direct {p0}, Lcom/b/a/bh;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private V()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 10919
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10920
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    iget v2, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bh;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/bh;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    .line 10926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10928
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    return-object v0

    .line 10920
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/bh;)Lcom/b/a/bg;
    .locals 2
    .parameter

    .prologue
    .line 10493
    invoke-virtual {p0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/bh;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/cb;)Lcom/b/a/bh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10781
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 10782
    if-nez p2, :cond_0

    .line 10783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10785
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10786
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10787
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10791
    :goto_0
    return-object p0

    .line 10789
    :cond_1
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/cc;)Lcom/b/a/bh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10795
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10796
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10797
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10798
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10802
    :goto_0
    return-object p0

    .line 10800
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cb;)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10805
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 10806
    if-nez p1, :cond_0

    .line 10807
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10809
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10810
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10811
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10815
    :goto_0
    return-object p0

    .line 10813
    :cond_1
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cc;)Lcom/b/a/bh;
    .locals 2
    .parameter

    .prologue
    .line 10833
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10834
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10835
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10836
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10840
    :goto_0
    return-object p0

    .line 10838
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10855
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10856
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10857
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dq;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10858
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10862
    :goto_0
    return-object p0

    .line 10860
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Z)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10712
    iget v0, p0, Lcom/b/a/bh;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10713
    iput-boolean p1, p0, Lcom/b/a/bh;->b:Z

    .line 10714
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10715
    return-object p0
.end method

.method private b(ILcom/b/a/cb;)Lcom/b/a/bh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10819
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 10820
    if-nez p2, :cond_0

    .line 10821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10823
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10824
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10825
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10829
    :goto_0
    return-object p0

    .line 10827
    :cond_1
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cc;)Lcom/b/a/bh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10844
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10845
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10846
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10847
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10851
    :goto_0
    return-object p0

    .line 10849
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Z)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10733
    iget v0, p0, Lcom/b/a/bh;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10734
    iput-boolean p1, p0, Lcom/b/a/bh;->c:Z

    .line 10735
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10736
    return-object p0
.end method

.method private c(I)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10875
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10876
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10877
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10878
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10882
    :goto_0
    return-object p0

    .line 10880
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 10597
    instance-of v0, p1, Lcom/b/a/bg;

    if-eqz v0, :cond_0

    .line 10598
    check-cast p1, Lcom/b/a/bg;

    invoke-virtual {p0, p1}, Lcom/b/a/bh;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v0

    .line 10601
    :goto_0
    return-object v0

    .line 10600
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dq;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 10601
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 10886
    invoke-direct {p0}, Lcom/b/a/bh;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private e(I)Lcom/b/a/cc;
    .locals 2
    .parameter

    .prologue
    .line 10909
    invoke-direct {p0}, Lcom/b/a/bh;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method static synthetic q()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10493
    new-instance v0, Lcom/b/a/bh;

    invoke-direct {v0}, Lcom/b/a/bh;-><init>()V

    return-object v0
.end method

.method private static r()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 10498
    invoke-static {}, Lcom/b/a/p;->v()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 10516
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 10517
    invoke-direct {p0}, Lcom/b/a/bh;->V()Lcom/b/a/fc;

    .line 10519
    :cond_0
    return-void
.end method

.method private static t()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10521
    new-instance v0, Lcom/b/a/bh;

    invoke-direct {v0}, Lcom/b/a/bh;-><init>()V

    return-object v0
.end method

.method private u()Lcom/b/a/bh;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10525
    invoke-super {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    .line 10526
    iput-boolean v1, p0, Lcom/b/a/bh;->b:Z

    .line 10527
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10528
    iput-boolean v1, p0, Lcom/b/a/bh;->c:Z

    .line 10529
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10530
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10531
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10532
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10536
    :goto_0
    return-object p0

    .line 10534
    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private v()Lcom/b/a/bh;
    .locals 2

    .prologue
    .line 10540
    new-instance v0, Lcom/b/a/bh;

    invoke-direct {v0}, Lcom/b/a/bh;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/bh;->a(Lcom/b/a/bg;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/b/a/bg;
    .locals 1

    .prologue
    .line 10549
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/b/a/bg;
    .locals 2

    .prologue
    .line 10562
    invoke-virtual {p0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v0

    .line 10563
    invoke-virtual {v0}, Lcom/b/a/bg;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10564
    invoke-static {v0}, Lcom/b/a/bh;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 10567
    :cond_0
    return-object v0
.end method

.method private y()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10718
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/bh;->b:Z

    .line 10720
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10721
    return-object p0
.end method

.method private z()Lcom/b/a/bh;
    .locals 1

    .prologue
    .line 10739
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/bh;->c:Z

    .line 10741
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10742
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 10503
    invoke-static {}, Lcom/b/a/p;->w()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 10545
    invoke-static {}, Lcom/b/a/bg;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->u()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->v()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 10493
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 10493
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 10493
    invoke-virtual {p0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 10493
    invoke-virtual {p0}, Lcom/b/a/bh;->o()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 10493
    invoke-virtual {p0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 10493
    invoke-virtual {p0}, Lcom/b/a/bh;->o()Lcom/b/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/bg;)Lcom/b/a/bh;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 10606
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 10641
    :goto_0
    return-object v0

    .line 10607
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/bg;->w_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10608
    invoke-virtual {p1}, Lcom/b/a/bg;->i()Z

    move-result v0

    iget v1, p0, Lcom/b/a/bh;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bh;->a:I

    iput-boolean v0, p0, Lcom/b/a/bh;->b:Z

    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10610
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/bg;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10611
    invoke-virtual {p1}, Lcom/b/a/bg;->k()Z

    move-result v0

    iget v1, p0, Lcom/b/a/bh;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/bh;->a:I

    iput-boolean v0, p0, Lcom/b/a/bh;->c:Z

    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10613
    :cond_2
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_5

    .line 10614
    invoke-static {p1}, Lcom/b/a/bg;->b(Lcom/b/a/bg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10615
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10616
    invoke-static {p1}, Lcom/b/a/bg;->b(Lcom/b/a/bg;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10617
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10622
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    .line 10639
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/b/a/bh;->a(Lcom/b/a/dr;)V

    .line 10640
    invoke-virtual {p1}, Lcom/b/a/bg;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bh;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 10641
    goto :goto_0

    .line 10619
    :cond_4
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    .line 10620
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bg;->b(Lcom/b/a/bg;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 10625
    :cond_5
    invoke-static {p1}, Lcom/b/a/bg;->b(Lcom/b/a/bg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10626
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10627
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 10628
    iput-object v2, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    .line 10629
    invoke-static {p1}, Lcom/b/a/bg;->b(Lcom/b/a/bg;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10630
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bh;->a:I

    .line 10631
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/b/a/bh;->V()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3

    .line 10635
    :cond_7
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/bg;->b(Lcom/b/a/bg;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 10493
    invoke-direct {p0, p1}, Lcom/b/a/bh;->d(Lcom/b/a/ev;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10493
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bh;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 10773
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10774
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    .line 10776
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10645
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bh;->x_()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10646
    invoke-virtual {p0, v0}, Lcom/b/a/bh;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 10655
    :goto_1
    return v0

    .line 10645
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10651
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bh;->N()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 10653
    goto :goto_1

    .line 10655
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->v()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 10890
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10891
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    .line 10892
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10493
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bh;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->u()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 10493
    invoke-direct {p0, p1}, Lcom/b/a/bh;->d(Lcom/b/a/ev;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10493
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bh;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->v()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->v()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10493
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bh;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bh;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 10662
    invoke-virtual {p0}, Lcom/b/a/bh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 10666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 10667
    sparse-switch v1, :sswitch_data_0

    .line 10673
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/bh;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10675
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bh;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 10676
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    move-object v0, p0

    .line 10677
    :goto_1
    return-object v0

    .line 10669
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bh;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 10670
    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    move-object v0, p0

    .line 10671
    goto :goto_1

    .line 10682
    :sswitch_1
    iget v1, p0, Lcom/b/a/bh;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bh;->a:I

    .line 10683
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/bh;->b:Z

    goto :goto_0

    .line 10687
    :sswitch_2
    iget v1, p0, Lcom/b/a/bh;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/bh;->a:I

    .line 10688
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/bh;->c:Z

    goto :goto_0

    .line 10692
    :sswitch_3
    invoke-static {}, Lcom/b/a/cb;->w()Lcom/b/a/cc;

    move-result-object v1

    .line 10693
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 10694
    invoke-virtual {v1}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/bh;->A()V

    iget-object v2, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/bh;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 10667
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1f3a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->v()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->u()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->v()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->u()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 10709
    iget-boolean v0, p0, Lcom/b/a/bh;->b:Z

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 10727
    iget v0, p0, Lcom/b/a/bh;->a:I

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

.method public final k()Z
    .locals 1

    .prologue
    .line 10730
    iget-boolean v0, p0, Lcom/b/a/bh;->c:Z

    return v0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    .prologue
    .line 10759
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10760
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 10762
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic m()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->v()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 10493
    invoke-direct {p0}, Lcom/b/a/bh;->u()Lcom/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/b/a/bg;
    .locals 2

    .prologue
    .line 10553
    invoke-virtual {p0}, Lcom/b/a/bh;->p()Lcom/b/a/bg;

    move-result-object v0

    .line 10554
    invoke-virtual {v0}, Lcom/b/a/bg;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10555
    invoke-static {v0}, Lcom/b/a/bh;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 10557
    :cond_0
    return-object v0
.end method

.method public final p()Lcom/b/a/bg;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 10571
    new-instance v0, Lcom/b/a/bg;

    invoke-direct {v0, p0}, Lcom/b/a/bg;-><init>(Lcom/b/a/bh;)V

    .line 10572
    iget v1, p0, Lcom/b/a/bh;->a:I

    .line 10573
    const/4 v2, 0x0

    .line 10574
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 10577
    :cond_0
    iget-boolean v3, p0, Lcom/b/a/bh;->b:Z

    invoke-static {v0, v3}, Lcom/b/a/bg;->a(Lcom/b/a/bg;Z)Z

    .line 10578
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 10579
    or-int/lit8 v1, v2, 0x2

    .line 10581
    :goto_0
    iget-boolean v2, p0, Lcom/b/a/bh;->c:Z

    invoke-static {v0, v2}, Lcom/b/a/bg;->b(Lcom/b/a/bg;Z)Z

    .line 10582
    iget-object v2, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v2, :cond_2

    .line 10583
    iget v2, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 10584
    iget-object v2, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    .line 10585
    iget v2, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/b/a/bh;->a:I

    .line 10587
    :cond_1
    iget-object v2, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/b/a/bg;->a(Lcom/b/a/bg;Ljava/util/List;)Ljava/util/List;

    .line 10591
    :goto_1
    invoke-static {v0, v1}, Lcom/b/a/bg;->a(Lcom/b/a/bg;I)I

    .line 10592
    invoke-virtual {p0}, Lcom/b/a/bh;->ab_()V

    .line 10593
    return-object v0

    .line 10589
    :cond_2
    iget-object v2, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v2}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/b/a/bg;->a(Lcom/b/a/bg;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final w_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10706
    iget v0, p0, Lcom/b/a/bh;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x_()I
    .locals 1

    .prologue
    .line 10766
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 10767
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 10769
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final y_()Ljava/util/List;
    .locals 1

    .prologue
    .line 10897
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 10898
    iget-object v0, p0, Lcom/b/a/bh;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 10900
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bh;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
