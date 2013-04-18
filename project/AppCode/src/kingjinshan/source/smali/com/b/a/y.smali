.class public final Lcom/b/a/y;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/z;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;

.field private d:Lcom/b/a/fc;

.field private e:Lcom/b/a/aa;

.field private f:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6402
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 6613
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6649
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6835
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6403
    invoke-direct {p0}, Lcom/b/a/y;->t()V

    .line 6404
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 6388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/y;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6407
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 6613
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6649
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6835
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6408
    invoke-direct {p0}, Lcom/b/a/y;->t()V

    .line 6409
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 6652
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6653
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6654
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6656
    :cond_0
    return-void
.end method

.method private D()Lcom/b/a/y;
    .locals 1

    .prologue
    .line 6768
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6770
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6771
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6775
    :goto_0
    return-object p0

    .line 6773
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private E()Lcom/b/a/ae;
    .locals 2

    .prologue
    .line 6807
    invoke-direct {p0}, Lcom/b/a/y;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/ad;->e()Lcom/b/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    return-object p0
.end method

.method private N()Ljava/util/List;
    .locals 1

    .prologue
    .line 6817
    invoke-direct {p0}, Lcom/b/a/y;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private U()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 6822
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6823
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/y;->c:Ljava/util/List;

    iget v2, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/y;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/y;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    .line 6829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6831
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    return-object v0

    .line 6823
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private V()Lcom/b/a/y;
    .locals 1

    .prologue
    .line 6889
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6890
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6891
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6895
    :goto_0
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6896
    return-object p0

    .line 6893
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private W()Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 6899
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6900
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6901
    invoke-direct {p0}, Lcom/b/a/y;->X()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ab;

    return-object p0
.end method

.method private X()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 6913
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6914
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    invoke-virtual {p0}, Lcom/b/a/y;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/y;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    .line 6919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6921
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/y;)Lcom/b/a/x;
    .locals 2
    .parameter

    .prologue
    .line 6388
    invoke-virtual {p0}, Lcom/b/a/y;->q()Lcom/b/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/x;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/y;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/ad;)Lcom/b/a/y;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6684
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 6685
    if-nez p2, :cond_0

    .line 6686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6688
    :cond_0
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6689
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6690
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6694
    :goto_0
    return-object p0

    .line 6692
    :cond_1
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/ae;)Lcom/b/a/y;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6698
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6699
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6700
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6701
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6705
    :goto_0
    return-object p0

    .line 6703
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/aa;)Lcom/b/a/y;
    .locals 1
    .parameter

    .prologue
    .line 6849
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 6850
    if-nez p1, :cond_0

    .line 6851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6853
    :cond_0
    iput-object p1, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6854
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6858
    :goto_0
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6859
    return-object p0

    .line 6856
    :cond_1
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/ab;)Lcom/b/a/y;
    .locals 2
    .parameter

    .prologue
    .line 6863
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6864
    invoke-virtual {p1}, Lcom/b/a/ab;->k()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6865
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6869
    :goto_0
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6870
    return-object p0

    .line 6867
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/b/a/ab;->k()Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/ad;)Lcom/b/a/y;
    .locals 1
    .parameter

    .prologue
    .line 6708
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 6709
    if-nez p1, :cond_0

    .line 6710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6712
    :cond_0
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6713
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6714
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6718
    :goto_0
    return-object p0

    .line 6716
    :cond_1
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/ae;)Lcom/b/a/y;
    .locals 2
    .parameter

    .prologue
    .line 6736
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6737
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6738
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6739
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6743
    :goto_0
    return-object p0

    .line 6741
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/y;
    .locals 1
    .parameter

    .prologue
    .line 6758
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6759
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6760
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6761
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6765
    :goto_0
    return-object p0

    .line 6763
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/y;
    .locals 1
    .parameter

    .prologue
    .line 6628
    if-nez p1, :cond_0

    .line 6629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6631
    :cond_0
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6632
    iput-object p1, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6633
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6634
    return-object p0
.end method

.method private b(ILcom/b/a/ad;)Lcom/b/a/y;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6722
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 6723
    if-nez p2, :cond_0

    .line 6724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6726
    :cond_0
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6727
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6728
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6732
    :goto_0
    return-object p0

    .line 6730
    :cond_1
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/ae;)Lcom/b/a/y;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6747
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6748
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6749
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6750
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6754
    :goto_0
    return-object p0

    .line 6752
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/ae;->o()Lcom/b/a/ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/b/a/aa;)Lcom/b/a/y;
    .locals 2
    .parameter

    .prologue
    .line 6873
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 6874
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6876
    iget-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    invoke-static {v0}, Lcom/b/a/aa;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/ab;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6881
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6885
    :goto_1
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6886
    return-object p0

    .line 6879
    :cond_0
    iput-object p1, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    goto :goto_0

    .line 6883
    :cond_1
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/b/a/y;
    .locals 1
    .parameter

    .prologue
    .line 6778
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6779
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6780
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6781
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6785
    :goto_0
    return-object p0

    .line 6783
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(I)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 6789
    invoke-direct {p0}, Lcom/b/a/y;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/y;
    .locals 1
    .parameter

    .prologue
    .line 6501
    instance-of v0, p1, Lcom/b/a/x;

    if-eqz v0, :cond_0

    .line 6502
    check-cast p1, Lcom/b/a/x;

    invoke-virtual {p0, p1}, Lcom/b/a/y;->a(Lcom/b/a/x;)Lcom/b/a/y;

    move-result-object v0

    .line 6505
    :goto_0
    return-object v0

    .line 6504
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 6505
    goto :goto_0
.end method

.method private e(I)Lcom/b/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 6812
    invoke-direct {p0}, Lcom/b/a/y;->U()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/ad;->e()Lcom/b/a/ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ae;

    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 6643
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6644
    iput-object p1, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6645
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6646
    return-void
.end method

.method static synthetic r()Lcom/b/a/y;
    .locals 1

    .prologue
    .line 6388
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    return-object v0
.end method

.method private static s()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6393
    invoke-static {}, Lcom/b/a/p;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 6411
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 6412
    invoke-direct {p0}, Lcom/b/a/y;->U()Lcom/b/a/fc;

    .line 6413
    invoke-direct {p0}, Lcom/b/a/y;->X()Lcom/b/a/fp;

    .line 6415
    :cond_0
    return-void
.end method

.method private static u()Lcom/b/a/y;
    .locals 1

    .prologue
    .line 6417
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    return-object v0
.end method

.method private v()Lcom/b/a/y;
    .locals 1

    .prologue
    .line 6421
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 6422
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6423
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6424
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6425
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6426
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6430
    :goto_0
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 6431
    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6435
    :goto_1
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6436
    return-object p0

    .line 6428
    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0

    .line 6433
    :cond_1
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private w()Lcom/b/a/y;
    .locals 2

    .prologue
    .line 6440
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/y;->q()Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/y;->a(Lcom/b/a/x;)Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/b/a/x;
    .locals 1

    .prologue
    .line 6449
    invoke-static {}, Lcom/b/a/x;->e()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/b/a/x;
    .locals 2

    .prologue
    .line 6462
    invoke-virtual {p0}, Lcom/b/a/y;->q()Lcom/b/a/x;

    move-result-object v0

    .line 6463
    invoke-virtual {v0}, Lcom/b/a/x;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6464
    invoke-static {v0}, Lcom/b/a/y;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 6467
    :cond_0
    return-object v0
.end method

.method private z()Lcom/b/a/y;
    .locals 1

    .prologue
    .line 6637
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6638
    invoke-static {}, Lcom/b/a/x;->e()Lcom/b/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/x;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6639
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6640
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 6398
    invoke-static {}, Lcom/b/a/p;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6445
    invoke-static {}, Lcom/b/a/x;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->v()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->w()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6388
    invoke-static {}, Lcom/b/a/x;->e()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6388
    invoke-static {}, Lcom/b/a/x;->e()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6388
    invoke-virtual {p0}, Lcom/b/a/y;->q()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6388
    invoke-virtual {p0}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6388
    invoke-virtual {p0}, Lcom/b/a/y;->q()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6388
    invoke-virtual {p0}, Lcom/b/a/y;->p()Lcom/b/a/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 6676
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6677
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ad;

    move-object v0, p0

    .line 6679
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/ad;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 6388
    invoke-direct {p0, p1}, Lcom/b/a/y;->d(Lcom/b/a/ev;)Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6388
    invoke-virtual {p0, p1, p2}, Lcom/b/a/y;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/x;)Lcom/b/a/y;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 6510
    invoke-static {}, Lcom/b/a/x;->e()Lcom/b/a/x;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 6544
    :goto_0
    return-object v0

    .line 6511
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/x;->f_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6512
    invoke-virtual {p1}, Lcom/b/a/x;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/y;->a:I

    iput-object v0, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6514
    :cond_2
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_6

    .line 6515
    invoke-static {p1}, Lcom/b/a/x;->a(Lcom/b/a/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6516
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6517
    invoke-static {p1}, Lcom/b/a/x;->a(Lcom/b/a/x;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6518
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6523
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    .line 6540
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/b/a/x;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6541
    invoke-virtual {p1}, Lcom/b/a/x;->n()Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v1, :cond_a

    iget v1, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    invoke-static {}, Lcom/b/a/aa;->e()Lcom/b/a/aa;

    move-result-object v2

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    invoke-static {v1}, Lcom/b/a/aa;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/ab;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    :goto_3
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    :goto_4
    iget v0, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6543
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/x;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/y;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 6544
    goto/16 :goto_0

    .line 6520
    :cond_5
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    .line 6521
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/x;->a(Lcom/b/a/x;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 6526
    :cond_6
    invoke-static {p1}, Lcom/b/a/x;->a(Lcom/b/a/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6527
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6528
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 6529
    iput-object v2, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    .line 6530
    invoke-static {p1}, Lcom/b/a/x;->a(Lcom/b/a/x;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6531
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/y;->a:I

    .line 6532
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/b/a/y;->U()Lcom/b/a/fc;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_5

    .line 6536
    :cond_8
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/x;->a(Lcom/b/a/x;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto/16 :goto_2

    .line 6541
    :cond_9
    iput-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6548
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/y;->l()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6549
    invoke-virtual {p0, v0}, Lcom/b/a/y;->a(I)Lcom/b/a/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 6560
    :goto_1
    return v0

    .line 6548
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6554
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6555
    invoke-virtual {p0}, Lcom/b/a/y;->n()Lcom/b/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 6557
    goto :goto_1

    .line 6560
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b(I)Lcom/b/a/af;
    .locals 1
    .parameter

    .prologue
    .line 6793
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6794
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/af;

    move-object v0, p0

    .line 6795
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/af;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->w()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6388
    invoke-virtual {p0, p1, p2}, Lcom/b/a/y;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->v()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 6388
    invoke-direct {p0, p1}, Lcom/b/a/y;->d(Lcom/b/a/ev;)Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6388
    invoke-virtual {p0, p1, p2}, Lcom/b/a/y;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->w()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->w()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6388
    invoke-virtual {p0, p1, p2}, Lcom/b/a/y;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->w()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/y;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 6567
    invoke-virtual {p0}, Lcom/b/a/y;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 6571
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 6572
    sparse-switch v1, :sswitch_data_0

    .line 6578
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/y;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6580
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/y;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 6581
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    move-object v0, p0

    .line 6582
    :goto_1
    return-object v0

    .line 6574
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/y;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 6575
    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    move-object v0, p0

    .line 6576
    goto :goto_1

    .line 6587
    :sswitch_1
    iget v1, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/y;->a:I

    .line 6588
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    goto :goto_0

    .line 6592
    :sswitch_2
    invoke-static {}, Lcom/b/a/ad;->o()Lcom/b/a/ae;

    move-result-object v1

    .line 6593
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 6594
    invoke-virtual {v1}, Lcom/b/a/ae;->p()Lcom/b/a/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/y;->A()V

    iget-object v2, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 6598
    :sswitch_3
    invoke-static {}, Lcom/b/a/aa;->k()Lcom/b/a/ab;

    move-result-object v1

    .line 6599
    invoke-virtual {p0}, Lcom/b/a/y;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6600
    invoke-virtual {p0}, Lcom/b/a/y;->n()Lcom/b/a/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/ab;->a(Lcom/b/a/aa;)Lcom/b/a/ab;

    .line 6602
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 6603
    invoke-virtual {v1}, Lcom/b/a/ab;->l()Lcom/b/a/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iput-object v1, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    invoke-virtual {p0}, Lcom/b/a/y;->af_()V

    :goto_2
    iget v1, p0, Lcom/b/a/y;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/y;->a:I

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 6572
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->v()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final f_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6615
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->w()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6388
    invoke-direct {p0}, Lcom/b/a/y;->v()Lcom/b/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6618
    iget-object v0, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6619
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6620
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 6621
    iput-object v0, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    .line 6624
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 6662
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6663
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6665
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .prologue
    .line 6800
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 6801
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 6803
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 6669
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6670
    iget-object v0, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6672
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 6839
    iget v0, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Lcom/b/a/aa;
    .locals 1

    .prologue
    .line 6842
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6843
    iget-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    .line 6845
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/aa;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/b/a/ac;
    .locals 1

    .prologue
    .line 6904
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 6905
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/ac;

    move-object v0, p0

    .line 6907
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    goto :goto_0
.end method

.method public final p()Lcom/b/a/x;
    .locals 2

    .prologue
    .line 6453
    invoke-virtual {p0}, Lcom/b/a/y;->q()Lcom/b/a/x;

    move-result-object v0

    .line 6454
    invoke-virtual {v0}, Lcom/b/a/x;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6455
    invoke-static {v0}, Lcom/b/a/y;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 6457
    :cond_0
    return-object v0
.end method

.method public final q()Lcom/b/a/x;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 6471
    new-instance v1, Lcom/b/a/x;

    invoke-direct {v1, p0}, Lcom/b/a/x;-><init>(Lcom/b/a/y;)V

    .line 6472
    iget v0, p0, Lcom/b/a/y;->a:I

    .line 6473
    const/4 v2, 0x0

    .line 6474
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 6477
    :cond_0
    iget-object v3, p0, Lcom/b/a/y;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/x;->a(Lcom/b/a/x;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6478
    iget-object v3, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    if-nez v3, :cond_3

    .line 6479
    iget v3, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6480
    iget-object v3, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/b/a/y;->c:Ljava/util/List;

    .line 6481
    iget v3, p0, Lcom/b/a/y;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/b/a/y;->a:I

    .line 6483
    :cond_1
    iget-object v3, p0, Lcom/b/a/y;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/b/a/x;->a(Lcom/b/a/x;Ljava/util/List;)Ljava/util/List;

    .line 6487
    :goto_0
    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 6488
    or-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 6490
    :cond_2
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    if-nez v0, :cond_4

    .line 6491
    iget-object v0, p0, Lcom/b/a/y;->e:Lcom/b/a/aa;

    invoke-static {v1, v0}, Lcom/b/a/x;->a(Lcom/b/a/x;Lcom/b/a/aa;)Lcom/b/a/aa;

    .line 6495
    :goto_1
    invoke-static {v1, v2}, Lcom/b/a/x;->a(Lcom/b/a/x;I)I

    .line 6496
    invoke-virtual {p0}, Lcom/b/a/y;->ab_()V

    .line 6497
    return-object v1

    .line 6485
    :cond_3
    iget-object v3, p0, Lcom/b/a/y;->d:Lcom/b/a/fc;

    invoke-virtual {v3}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/b/a/x;->a(Lcom/b/a/x;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 6493
    :cond_4
    iget-object v0, p0, Lcom/b/a/y;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/b/a/aa;

    invoke-static {v1, v0}, Lcom/b/a/x;->a(Lcom/b/a/x;Lcom/b/a/aa;)Lcom/b/a/aa;

    goto :goto_1
.end method
