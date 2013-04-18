.class public final Lcom/keniu/security/sync/d/d/a/fr;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fs;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36701
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 36861
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36897
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36933
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36702
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->p()Z

    .line 36703
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 36687
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fr;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36706
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 36861
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36897
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36933
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36707
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->p()Z

    .line 36708
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36957
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36958
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->h()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fq;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36959
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36960
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fr;)Lcom/keniu/security/sync/d/d/a/fq;
    .locals 2
    .parameter

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->x()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fr;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1
    .parameter

    .prologue
    .line 36876
    if-nez p1, :cond_0

    .line 36877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36879
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36880
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36881
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36882
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1
    .parameter

    .prologue
    .line 36912
    if-nez p1, :cond_0

    .line 36913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36915
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36916
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36917
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36918
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1
    .parameter

    .prologue
    .line 36948
    if-nez p1, :cond_0

    .line 36949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36951
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36952
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36953
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36954
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1
    .parameter

    .prologue
    .line 36781
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/fq;

    if-eqz v0, :cond_0

    .line 36782
    check-cast p1, Lcom/keniu/security/sync/d/d/a/fq;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fq;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    .line 36785
    :goto_0
    return-object v0

    .line 36784
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 36785
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 36891
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36892
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36893
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36894
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 36927
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36928
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36930
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 36963
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36964
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36965
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36966
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36687
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fr;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 36692
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bj()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static q()V
    .locals 0

    .prologue
    .line 36710
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->p()Z

    .line 36712
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36714
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fr;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36718
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 36719
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36720
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36721
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36722
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36723
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36724
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36725
    return-object p0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 2

    .prologue
    .line 36729
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fr;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fr;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->x()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/keniu/security/sync/d/d/a/fq;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/fq;
    .locals 1

    .prologue
    .line 36738
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->h()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/fq;
    .locals 2

    .prologue
    .line 36742
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->x()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    .line 36743
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36744
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fr;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 36746
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/fq;
    .locals 2

    .prologue
    .line 36751
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->x()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    .line 36752
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36753
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fr;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 36756
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fq;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 36760
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fq;-><init>(Lcom/keniu/security/sync/d/d/a/fr;)V

    .line 36761
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36762
    const/4 v2, 0x0

    .line 36763
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 36766
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/fq;->a(Lcom/keniu/security/sync/d/d/a/fq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36767
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 36768
    or-int/lit8 v2, v2, 0x2

    .line 36770
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/fq;->b(Lcom/keniu/security/sync/d/d/a/fq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36771
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 36772
    or-int/lit8 v1, v2, 0x4

    .line 36774
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/fq;->c(Lcom/keniu/security/sync/d/d/a/fq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36775
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/fq;->a(Lcom/keniu/security/sync/d/d/a/fq;I)I

    .line 36776
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->ab_()V

    .line 36777
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36885
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36886
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->h()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fq;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36887
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36888
    return-object p0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/fr;
    .locals 1

    .prologue
    .line 36921
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36922
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->h()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fq;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36923
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36924
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 36697
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bk()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 36734
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->s()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->t()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36687
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->h()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36687
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->h()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->x()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->v()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->x()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->v()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 36687
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36687
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/fq;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 2
    .parameter

    .prologue
    .line 36790
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fq;->h()Lcom/keniu/security/sync/d/d/a/fq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 36801
    :goto_0
    return-object v0

    .line 36791
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fq;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36792
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fq;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36794
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fq;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36795
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fq;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36797
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fq;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36798
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fq;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    .line 36800
    :cond_6
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fr;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 36801
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36805
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 36813
    :goto_0
    return v0

    .line 36809
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 36811
    goto :goto_0

    .line 36813
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->t()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36687
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->s()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 36687
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fr;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36687
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->t()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->t()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36687
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fr;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->t()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fr;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36820
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 36824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 36825
    sparse-switch v1, :sswitch_data_0

    .line 36831
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/fr;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36833
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fr;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 36834
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    move-object v0, p0

    .line 36835
    :goto_1
    return-object v0

    .line 36827
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fr;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 36828
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fr;->af_()V

    move-object v0, p0

    .line 36829
    goto :goto_1

    .line 36840
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36841
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    goto :goto_0

    .line 36845
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36846
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    goto :goto_0

    .line 36850
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    .line 36851
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    goto :goto_0

    .line 36825
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
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->s()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->t()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 36687
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fr;->s()Lcom/keniu/security/sync/d/d/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36863
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36866
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36867
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 36868
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 36869
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->b:Ljava/lang/Object;

    .line 36872
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 36899
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

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

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36902
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36903
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 36904
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 36905
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->c:Ljava/lang/Object;

    .line 36908
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 36935
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->a:I

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

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36938
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36939
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 36940
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 36941
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fr;->d:Ljava/lang/Object;

    .line 36944
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
