.class public final Lcom/b/a/ar;
.super Lcom/b/a/dq;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/au;


# instance fields
.field private a:I

.field private b:Lcom/b/a/as;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Ljava/util/List;

.field private g:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11340
    invoke-direct {p0}, Lcom/b/a/dq;-><init>()V

    .line 11571
    sget-object v0, Lcom/b/a/as;->a:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    .line 11637
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11341
    invoke-direct {p0}, Lcom/b/a/ar;->w()V

    .line 11342
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 11326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ar;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11345
    invoke-direct {p0, p1}, Lcom/b/a/dq;-><init>(Lcom/b/a/dp;)V

    .line 11571
    sget-object v0, Lcom/b/a/as;->a:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    .line 11637
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11346
    invoke-direct {p0}, Lcom/b/a/ar;->w()V

    .line 11347
    return-void
.end method

.method private static A()Lcom/b/a/aq;
    .locals 1

    .prologue
    .line 11386
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private D()Lcom/b/a/aq;
    .locals 2

    .prologue
    .line 11399
    invoke-virtual {p0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v0

    .line 11400
    invoke-virtual {v0}, Lcom/b/a/aq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11401
    invoke-static {v0}, Lcom/b/a/ar;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 11404
    :cond_0
    return-object v0
.end method

.method private E()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11588
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11589
    sget-object v0, Lcom/b/a/as;->a:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    .line 11590
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11591
    return-object p0
.end method

.method private U()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11609
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ar;->c:Z

    .line 11611
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11612
    return-object p0
.end method

.method private V()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11630
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ar;->d:Z

    .line 11632
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11633
    return-object p0
.end method

.method private W()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11661
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11662
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aq;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11663
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11664
    return-object p0
.end method

.method private X()V
    .locals 2

    .prologue
    .line 11676
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 11677
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11678
    iget v0, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11680
    :cond_0
    return-void
.end method

.method private Y()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11792
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11793
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11794
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11795
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11799
    :goto_0
    return-object p0

    .line 11797
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private Z()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 11831
    invoke-direct {p0}, Lcom/b/a/ar;->ab()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method static synthetic a(Lcom/b/a/ar;)Lcom/b/a/aq;
    .locals 2
    .parameter

    .prologue
    .line 11326
    invoke-virtual {p0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/ar;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/cb;)Lcom/b/a/ar;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11708
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 11709
    if-nez p2, :cond_0

    .line 11710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11712
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11713
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11714
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11718
    :goto_0
    return-object p0

    .line 11716
    :cond_1
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/cc;)Lcom/b/a/ar;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11722
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11723
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11724
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11725
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11729
    :goto_0
    return-object p0

    .line 11727
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/as;)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11579
    if-nez p1, :cond_0

    .line 11580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11582
    :cond_0
    iget v0, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11583
    iput-object p1, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    .line 11584
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11585
    return-object p0
.end method

.method private a(Lcom/b/a/cb;)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11732
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 11733
    if-nez p1, :cond_0

    .line 11734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11736
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11737
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11738
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11742
    :goto_0
    return-object p0

    .line 11740
    :cond_1
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cc;)Lcom/b/a/ar;
    .locals 2
    .parameter

    .prologue
    .line 11760
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11761
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11762
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11763
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11767
    :goto_0
    return-object p0

    .line 11765
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11782
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11783
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11784
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dq;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11785
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11789
    :goto_0
    return-object p0

    .line 11787
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11652
    if-nez p1, :cond_0

    .line 11653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11655
    :cond_0
    iget v0, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11656
    iput-object p1, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11657
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11658
    return-object p0
.end method

.method private a(Z)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11603
    iget v0, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11604
    iput-boolean p1, p0, Lcom/b/a/ar;->c:Z

    .line 11605
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11606
    return-object p0
.end method

.method private aa()Ljava/util/List;
    .locals 1

    .prologue
    .line 11841
    invoke-direct {p0}, Lcom/b/a/ar;->ab()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private ab()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 11846
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11847
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    iget v2, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ar;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/ar;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    .line 11853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11855
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    return-object v0

    .line 11847
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private b(ILcom/b/a/cb;)Lcom/b/a/ar;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11746
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 11747
    if-nez p2, :cond_0

    .line 11748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11750
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11751
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11752
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11756
    :goto_0
    return-object p0

    .line 11754
    :cond_1
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cc;)Lcom/b/a/ar;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11771
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11772
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11773
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11774
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11778
    :goto_0
    return-object p0

    .line 11776
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Z)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11624
    iget v0, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11625
    iput-boolean p1, p0, Lcom/b/a/ar;->d:Z

    .line 11626
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11627
    return-object p0
.end method

.method private c(I)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11802
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11803
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11804
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11805
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11809
    :goto_0
    return-object p0

    .line 11807
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11442
    instance-of v0, p1, Lcom/b/a/aq;

    if-eqz v0, :cond_0

    .line 11443
    check-cast p1, Lcom/b/a/aq;

    invoke-virtual {p0, p1}, Lcom/b/a/ar;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v0

    .line 11446
    :goto_0
    return-object v0

    .line 11445
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dq;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 11446
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 11813
    invoke-direct {p0}, Lcom/b/a/ar;->ab()Lcom/b/a/fc;

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
    .line 11836
    invoke-direct {p0}, Lcom/b/a/ar;->ab()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 11667
    iget v0, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11668
    iput-object p1, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11669
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11670
    return-void
.end method

.method static synthetic u()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11326
    new-instance v0, Lcom/b/a/ar;

    invoke-direct {v0}, Lcom/b/a/ar;-><init>()V

    return-object v0
.end method

.method private static v()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 11331
    invoke-static {}, Lcom/b/a/p;->x()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 11349
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 11350
    invoke-direct {p0}, Lcom/b/a/ar;->ab()Lcom/b/a/fc;

    .line 11352
    :cond_0
    return-void
.end method

.method private static x()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11354
    new-instance v0, Lcom/b/a/ar;

    invoke-direct {v0}, Lcom/b/a/ar;-><init>()V

    return-object v0
.end method

.method private y()Lcom/b/a/ar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11358
    invoke-super {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    .line 11359
    sget-object v0, Lcom/b/a/as;->a:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    .line 11360
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11361
    iput-boolean v1, p0, Lcom/b/a/ar;->c:Z

    .line 11362
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11363
    iput-boolean v1, p0, Lcom/b/a/ar;->d:Z

    .line 11364
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11365
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11366
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11367
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11368
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11369
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11373
    :goto_0
    return-object p0

    .line 11371
    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private z()Lcom/b/a/ar;
    .locals 2

    .prologue
    .line 11377
    new-instance v0, Lcom/b/a/ar;

    invoke-direct {v0}, Lcom/b/a/ar;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ar;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 11336
    invoke-static {}, Lcom/b/a/p;->y()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 11382
    invoke-static {}, Lcom/b/a/aq;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->y()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->z()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11326
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11326
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11326
    invoke-virtual {p0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 11326
    invoke-virtual {p0}, Lcom/b/a/ar;->s()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11326
    invoke-virtual {p0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 11326
    invoke-virtual {p0}, Lcom/b/a/ar;->s()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/aq;)Lcom/b/a/ar;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 11451
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 11492
    :goto_0
    return-object v0

    .line 11452
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/aq;->k_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11453
    invoke-virtual {p1}, Lcom/b/a/aq;->i()Lcom/b/a/as;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ar;->a:I

    iput-object v0, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11455
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/aq;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11456
    invoke-virtual {p1}, Lcom/b/a/aq;->k()Z

    move-result v0

    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ar;->a:I

    iput-boolean v0, p0, Lcom/b/a/ar;->c:Z

    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11458
    :cond_3
    invoke-virtual {p1}, Lcom/b/a/aq;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11459
    invoke-virtual {p1}, Lcom/b/a/aq;->l_()Z

    move-result v0

    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/ar;->a:I

    iput-boolean v0, p0, Lcom/b/a/ar;->d:Z

    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11461
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/aq;->m_()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11462
    invoke-virtual {p1}, Lcom/b/a/aq;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/ar;->a:I

    iput-object v0, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11464
    :cond_6
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_9

    .line 11465
    invoke-static {p1}, Lcom/b/a/aq;->b(Lcom/b/a/aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11466
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11467
    invoke-static {p1}, Lcom/b/a/aq;->b(Lcom/b/a/aq;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11468
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11473
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    .line 11490
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/b/a/ar;->a(Lcom/b/a/dr;)V

    .line 11491
    invoke-virtual {p1}, Lcom/b/a/aq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ar;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 11492
    goto/16 :goto_0

    .line 11470
    :cond_8
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    .line 11471
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/aq;->b(Lcom/b/a/aq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 11476
    :cond_9
    invoke-static {p1}, Lcom/b/a/aq;->b(Lcom/b/a/aq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11477
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11478
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 11479
    iput-object v2, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    .line 11480
    invoke-static {p1}, Lcom/b/a/aq;->b(Lcom/b/a/aq;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11481
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/ar;->a:I

    .line 11482
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/b/a/ar;->ab()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    goto :goto_2

    :cond_a
    move-object v0, v2

    goto :goto_3

    .line 11486
    :cond_b
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/aq;->b(Lcom/b/a/aq;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 11326
    invoke-direct {p0, p1}, Lcom/b/a/ar;->d(Lcom/b/a/ev;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11326
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ar;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 11700
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11701
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    .line 11703
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

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

    .line 11496
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ar;->r()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11497
    invoke-virtual {p0, v0}, Lcom/b/a/ar;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 11506
    :goto_1
    return v0

    .line 11496
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11502
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/ar;->N()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 11504
    goto :goto_1

    .line 11506
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->z()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11817
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11818
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    .line 11819
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

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
    .line 11326
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ar;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->y()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 11326
    invoke-direct {p0, p1}, Lcom/b/a/ar;->d(Lcom/b/a/ev;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11326
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ar;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->z()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->z()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11326
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ar;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ar;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 11513
    invoke-virtual {p0}, Lcom/b/a/ar;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 11517
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 11518
    sparse-switch v1, :sswitch_data_0

    .line 11524
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/ar;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11526
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ar;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 11527
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    move-object v0, p0

    .line 11528
    :goto_1
    return-object v0

    .line 11520
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ar;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 11521
    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    move-object v0, p0

    .line 11522
    goto :goto_1

    .line 11533
    :sswitch_1
    invoke-virtual {p1}, Lcom/b/a/m;->m()I

    move-result v1

    .line 11534
    invoke-static {v1}, Lcom/b/a/as;->a(I)Lcom/b/a/as;

    move-result-object v2

    .line 11535
    if-nez v2, :cond_1

    .line 11536
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/b/a/gi;->a(II)Lcom/b/a/gi;

    goto :goto_0

    .line 11538
    :cond_1
    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ar;->a:I

    .line 11539
    iput-object v2, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    goto :goto_0

    .line 11544
    :sswitch_2
    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ar;->a:I

    .line 11545
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/ar;->c:Z

    goto :goto_0

    .line 11549
    :sswitch_3
    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/ar;->a:I

    .line 11550
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/b/a/ar;->d:Z

    goto :goto_0

    .line 11554
    :sswitch_4
    iget v1, p0, Lcom/b/a/ar;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/ar;->a:I

    .line 11555
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    goto :goto_0

    .line 11559
    :sswitch_5
    invoke-static {}, Lcom/b/a/cb;->w()Lcom/b/a/cc;

    move-result-object v1

    .line 11560
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 11561
    invoke-virtual {v1}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/b/a/ar;->X()V

    iget-object v2, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/ar;->af_()V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 11518
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x4a -> :sswitch_4
        0x1f3a -> :sswitch_5
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->z()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->y()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->z()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->y()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/b/a/as;
    .locals 1

    .prologue
    .line 11576
    iget-object v0, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 11597
    iget v0, p0, Lcom/b/a/ar;->a:I

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
    .line 11600
    iget-boolean v0, p0, Lcom/b/a/ar;->c:Z

    return v0
.end method

.method public final k_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11573
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 11618
    iget v0, p0, Lcom/b/a/ar;->a:I

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

.method public final l_()Z
    .locals 1

    .prologue
    .line 11621
    iget-boolean v0, p0, Lcom/b/a/ar;->d:Z

    return v0
.end method

.method public final synthetic m()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->z()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final m_()Z
    .locals 2

    .prologue
    .line 11639
    iget v0, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 11326
    invoke-direct {p0}, Lcom/b/a/ar;->y()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11642
    iget-object v0, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11643
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 11644
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 11645
    iput-object v0, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    .line 11648
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 11686
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11687
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 11689
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 11824
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 11825
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 11827
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 11693
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 11694
    iget-object v0, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 11696
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final s()Lcom/b/a/aq;
    .locals 2

    .prologue
    .line 11390
    invoke-virtual {p0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v0

    .line 11391
    invoke-virtual {v0}, Lcom/b/a/aq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11392
    invoke-static {v0}, Lcom/b/a/ar;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 11394
    :cond_0
    return-object v0
.end method

.method public final t()Lcom/b/a/aq;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 11408
    new-instance v0, Lcom/b/a/aq;

    invoke-direct {v0, p0}, Lcom/b/a/aq;-><init>(Lcom/b/a/ar;)V

    .line 11409
    iget v1, p0, Lcom/b/a/ar;->a:I

    .line 11410
    const/4 v2, 0x0

    .line 11411
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 11414
    :cond_0
    iget-object v3, p0, Lcom/b/a/ar;->b:Lcom/b/a/as;

    invoke-static {v0, v3}, Lcom/b/a/aq;->a(Lcom/b/a/aq;Lcom/b/a/as;)Lcom/b/a/as;

    .line 11415
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11416
    or-int/lit8 v2, v2, 0x2

    .line 11418
    :cond_1
    iget-boolean v3, p0, Lcom/b/a/ar;->c:Z

    invoke-static {v0, v3}, Lcom/b/a/aq;->a(Lcom/b/a/aq;Z)Z

    .line 11419
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 11420
    or-int/lit8 v2, v2, 0x4

    .line 11422
    :cond_2
    iget-boolean v3, p0, Lcom/b/a/ar;->d:Z

    invoke-static {v0, v3}, Lcom/b/a/aq;->b(Lcom/b/a/aq;Z)Z

    .line 11423
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_5

    .line 11424
    or-int/lit8 v1, v2, 0x8

    .line 11426
    :goto_0
    iget-object v2, p0, Lcom/b/a/ar;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/b/a/aq;->a(Lcom/b/a/aq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11427
    iget-object v2, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    if-nez v2, :cond_4

    .line 11428
    iget v2, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 11429
    iget-object v2, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    .line 11430
    iget v2, p0, Lcom/b/a/ar;->a:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/b/a/ar;->a:I

    .line 11432
    :cond_3
    iget-object v2, p0, Lcom/b/a/ar;->f:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/b/a/aq;->a(Lcom/b/a/aq;Ljava/util/List;)Ljava/util/List;

    .line 11436
    :goto_1
    invoke-static {v0, v1}, Lcom/b/a/aq;->a(Lcom/b/a/aq;I)I

    .line 11437
    invoke-virtual {p0}, Lcom/b/a/ar;->ab_()V

    .line 11438
    return-object v0

    .line 11434
    :cond_4
    iget-object v2, p0, Lcom/b/a/ar;->g:Lcom/b/a/fc;

    invoke-virtual {v2}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/b/a/aq;->a(Lcom/b/a/aq;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method
