.class public final Lcom/b/a/ah;
.super Lcom/b/a/dq;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ai;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12662
    invoke-direct {p0}, Lcom/b/a/dq;-><init>()V

    .line 12829
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12663
    invoke-direct {p0}, Lcom/b/a/ah;->q()V

    .line 12664
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 12648
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ah;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12667
    invoke-direct {p0, p1}, Lcom/b/a/dq;-><init>(Lcom/b/a/dp;)V

    .line 12829
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12668
    invoke-direct {p0}, Lcom/b/a/ah;->q()V

    .line 12669
    return-void
.end method

.method private A()Lcom/b/a/fc;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 13002
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13003
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    iget v2, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ah;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/ah;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    .line 13009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 13011
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    return-object v0

    .line 13003
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/ah;)Lcom/b/a/ag;
    .locals 2
    .parameter

    .prologue
    .line 12648
    invoke-virtual {p0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/ah;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/cb;)Lcom/b/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12864
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 12865
    if-nez p2, :cond_0

    .line 12866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12868
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12869
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12870
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12874
    :goto_0
    return-object p0

    .line 12872
    :cond_1
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/cc;)Lcom/b/a/ah;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12878
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12879
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12880
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12881
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12885
    :goto_0
    return-object p0

    .line 12883
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cb;)Lcom/b/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 12888
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 12889
    if-nez p1, :cond_0

    .line 12890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12892
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12893
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12894
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12898
    :goto_0
    return-object p0

    .line 12896
    :cond_1
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cc;)Lcom/b/a/ah;
    .locals 2
    .parameter

    .prologue
    .line 12916
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12917
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12918
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12919
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12923
    :goto_0
    return-object p0

    .line 12921
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 12938
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12939
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12940
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dq;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12941
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12945
    :goto_0
    return-object p0

    .line 12943
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cb;)Lcom/b/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12902
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 12903
    if-nez p2, :cond_0

    .line 12904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12906
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12907
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12908
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12912
    :goto_0
    return-object p0

    .line 12910
    :cond_1
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cc;)Lcom/b/a/ah;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12927
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12928
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12929
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12930
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12934
    :goto_0
    return-object p0

    .line 12932
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(I)Lcom/b/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 12958
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12959
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12960
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12961
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12965
    :goto_0
    return-object p0

    .line 12963
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 12738
    instance-of v0, p1, Lcom/b/a/ag;

    if-eqz v0, :cond_0

    .line 12739
    check-cast p1, Lcom/b/a/ag;

    invoke-virtual {p0, p1}, Lcom/b/a/ah;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v0

    .line 12742
    :goto_0
    return-object v0

    .line 12741
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dq;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 12742
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 12969
    invoke-direct {p0}, Lcom/b/a/ah;->A()Lcom/b/a/fc;

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
    .line 12992
    invoke-direct {p0}, Lcom/b/a/ah;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method static synthetic o()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 12648
    new-instance v0, Lcom/b/a/ah;

    invoke-direct {v0}, Lcom/b/a/ah;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12653
    invoke-static {}, Lcom/b/a/p;->B()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 12671
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 12672
    invoke-direct {p0}, Lcom/b/a/ah;->A()Lcom/b/a/fc;

    .line 12674
    :cond_0
    return-void
.end method

.method private static r()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 12676
    new-instance v0, Lcom/b/a/ah;

    invoke-direct {v0}, Lcom/b/a/ah;-><init>()V

    return-object v0
.end method

.method private s()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 12680
    invoke-super {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    .line 12681
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12682
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12683
    iget v0, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ah;->a:I

    .line 12687
    :goto_0
    return-object p0

    .line 12685
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private t()Lcom/b/a/ah;
    .locals 2

    .prologue
    .line 12691
    new-instance v0, Lcom/b/a/ah;

    invoke-direct {v0}, Lcom/b/a/ah;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ah;->a(Lcom/b/a/ag;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/b/a/ag;
    .locals 1

    .prologue
    .line 12700
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/b/a/ag;
    .locals 2

    .prologue
    .line 12713
    invoke-virtual {p0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v0

    .line 12714
    invoke-virtual {v0}, Lcom/b/a/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12715
    invoke-static {v0}, Lcom/b/a/ah;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 12718
    :cond_0
    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 12832
    iget v0, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 12833
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12834
    iget v0, p0, Lcom/b/a/ah;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ah;->a:I

    .line 12836
    :cond_0
    return-void
.end method

.method private x()Lcom/b/a/ah;
    .locals 1

    .prologue
    .line 12948
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12949
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12950
    iget v0, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ah;->a:I

    .line 12951
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12955
    :goto_0
    return-object p0

    .line 12953
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private y()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 12987
    invoke-direct {p0}, Lcom/b/a/ah;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method private z()Ljava/util/List;
    .locals 1

    .prologue
    .line 12997
    invoke-direct {p0}, Lcom/b/a/ah;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 12658
    invoke-static {}, Lcom/b/a/p;->C()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 12696
    invoke-static {}, Lcom/b/a/ag;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->s()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->t()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12648
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12648
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12648
    invoke-virtual {p0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 12648
    invoke-virtual {p0}, Lcom/b/a/ah;->k()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12648
    invoke-virtual {p0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 12648
    invoke-virtual {p0}, Lcom/b/a/ah;->k()Lcom/b/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/ag;)Lcom/b/a/ah;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 12747
    invoke-static {}, Lcom/b/a/ag;->e()Lcom/b/a/ag;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 12776
    :goto_0
    return-object v0

    .line 12748
    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 12749
    invoke-static {p1}, Lcom/b/a/ag;->b(Lcom/b/a/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12750
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12751
    invoke-static {p1}, Lcom/b/a/ag;->b(Lcom/b/a/ag;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12752
    iget v0, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ah;->a:I

    .line 12757
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    .line 12774
    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/b/a/ah;->a(Lcom/b/a/dr;)V

    .line 12775
    invoke-virtual {p1}, Lcom/b/a/ag;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ah;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 12776
    goto :goto_0

    .line 12754
    :cond_2
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    .line 12755
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/ag;->b(Lcom/b/a/ag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 12760
    :cond_3
    invoke-static {p1}, Lcom/b/a/ag;->b(Lcom/b/a/ag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12761
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12762
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 12763
    iput-object v1, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    .line 12764
    invoke-static {p1}, Lcom/b/a/ag;->b(Lcom/b/a/ag;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12765
    iget v0, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ah;->a:I

    .line 12766
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/ah;->A()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 12770
    :cond_5
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/ag;->b(Lcom/b/a/ag;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 12648
    invoke-direct {p0, p1}, Lcom/b/a/ah;->d(Lcom/b/a/ev;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 12856
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12857
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    .line 12859
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

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

    .line 12780
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ah;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12781
    invoke-virtual {p0, v0}, Lcom/b/a/ah;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 12790
    :goto_1
    return v0

    .line 12780
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12786
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/ah;->N()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 12788
    goto :goto_1

    .line 12790
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->t()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 12973
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12974
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    .line 12975
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

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
    .line 12648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->s()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 12648
    invoke-direct {p0, p1}, Lcom/b/a/ah;->d(Lcom/b/a/ev;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->t()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->t()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ah;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 12797
    invoke-virtual {p0}, Lcom/b/a/ah;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 12801
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 12802
    sparse-switch v1, :sswitch_data_0

    .line 12808
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/ah;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12810
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ah;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 12811
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    move-object v0, p0

    .line 12812
    :goto_1
    return-object v0

    .line 12804
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ah;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 12805
    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    move-object v0, p0

    .line 12806
    goto :goto_1

    .line 12817
    :sswitch_1
    invoke-static {}, Lcom/b/a/cb;->w()Lcom/b/a/cc;

    move-result-object v1

    .line 12818
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 12819
    invoke-virtual {v1}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/ah;->w()V

    iget-object v2, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/ah;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 12802
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->t()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->s()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->t()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->s()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 12980
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 12981
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 12983
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final i_()Ljava/util/List;
    .locals 1

    .prologue
    .line 12842
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12843
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12845
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 12849
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 12850
    iget-object v0, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12852
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final k()Lcom/b/a/ag;
    .locals 2

    .prologue
    .line 12704
    invoke-virtual {p0}, Lcom/b/a/ah;->l()Lcom/b/a/ag;

    move-result-object v0

    .line 12705
    invoke-virtual {v0}, Lcom/b/a/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12706
    invoke-static {v0}, Lcom/b/a/ah;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 12708
    :cond_0
    return-object v0
.end method

.method public final l()Lcom/b/a/ag;
    .locals 3

    .prologue
    .line 12722
    new-instance v0, Lcom/b/a/ag;

    invoke-direct {v0, p0}, Lcom/b/a/ag;-><init>(Lcom/b/a/ah;)V

    .line 12723
    iget v1, p0, Lcom/b/a/ah;->a:I

    .line 12724
    iget-object v1, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    if-nez v1, :cond_1

    .line 12725
    iget v1, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 12726
    iget-object v1, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    .line 12727
    iget v1, p0, Lcom/b/a/ah;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/b/a/ah;->a:I

    .line 12729
    :cond_0
    iget-object v1, p0, Lcom/b/a/ah;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ag;->a(Lcom/b/a/ag;Ljava/util/List;)Ljava/util/List;

    .line 12733
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ah;->ab_()V

    .line 12734
    return-object v0

    .line 12731
    :cond_1
    iget-object v1, p0, Lcom/b/a/ah;->c:Lcom/b/a/fc;

    invoke-virtual {v1}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/ag;->a(Lcom/b/a/ag;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public final synthetic m()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->t()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 12648
    invoke-direct {p0}, Lcom/b/a/ah;->s()Lcom/b/a/ah;

    move-result-object v0

    return-object v0
.end method
