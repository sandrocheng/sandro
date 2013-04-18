.class public final Lcom/b/a/bn;
.super Lcom/b/a/dq;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bo;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13818
    invoke-direct {p0}, Lcom/b/a/dq;-><init>()V

    .line 13985
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 13819
    invoke-direct {p0}, Lcom/b/a/bn;->q()V

    .line 13820
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 13804
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bn;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13823
    invoke-direct {p0, p1}, Lcom/b/a/dq;-><init>(Lcom/b/a/dp;)V

    .line 13985
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 13824
    invoke-direct {p0}, Lcom/b/a/bn;->q()V

    .line 13825
    return-void
.end method

.method private A()Lcom/b/a/fc;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 14158
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14159
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    iget v2, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bn;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/b/a/bn;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    .line 14165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 14167
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    return-object v0

    .line 14159
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/bn;)Lcom/b/a/bm;
    .locals 2
    .parameter

    .prologue
    .line 13804
    invoke-virtual {p0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bm;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/bn;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/b/a/cb;)Lcom/b/a/bn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14020
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 14021
    if-nez p2, :cond_0

    .line 14022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14024
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14025
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14026
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14030
    :goto_0
    return-object p0

    .line 14028
    :cond_1
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/b/a/cc;)Lcom/b/a/bn;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14034
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14035
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14036
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14037
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14041
    :goto_0
    return-object p0

    .line 14039
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cb;)Lcom/b/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 14044
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 14045
    if-nez p1, :cond_0

    .line 14046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14048
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14049
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14050
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14054
    :goto_0
    return-object p0

    .line 14052
    :cond_1
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/b/a/cc;)Lcom/b/a/bn;
    .locals 2
    .parameter

    .prologue
    .line 14072
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14073
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14074
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14075
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14079
    :goto_0
    return-object p0

    .line 14077
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/b/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 14094
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14095
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14096
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dq;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14097
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14101
    :goto_0
    return-object p0

    .line 14099
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cb;)Lcom/b/a/bn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14058
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 14059
    if-nez p2, :cond_0

    .line 14060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14062
    :cond_0
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14063
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14064
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14068
    :goto_0
    return-object p0

    .line 14066
    :cond_1
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/b/a/cc;)Lcom/b/a/bn;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14083
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14084
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14085
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14086
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14090
    :goto_0
    return-object p0

    .line 14088
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/b/a/cc;->w()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private c(I)Lcom/b/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 14114
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14115
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 14116
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14117
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14121
    :goto_0
    return-object p0

    .line 14119
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/bn;
    .locals 1
    .parameter

    .prologue
    .line 13894
    instance-of v0, p1, Lcom/b/a/bm;

    if-eqz v0, :cond_0

    .line 13895
    check-cast p1, Lcom/b/a/bm;

    invoke-virtual {p0, p1}, Lcom/b/a/bn;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v0

    .line 13898
    :goto_0
    return-object v0

    .line 13897
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dq;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 13898
    goto :goto_0
.end method

.method private d(I)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 14125
    invoke-direct {p0}, Lcom/b/a/bn;->A()Lcom/b/a/fc;

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
    .line 14148
    invoke-direct {p0}, Lcom/b/a/bn;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/b/a/cb;->e()Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    return-object p0
.end method

.method static synthetic o()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 13804
    new-instance v0, Lcom/b/a/bn;

    invoke-direct {v0}, Lcom/b/a/bn;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 13809
    invoke-static {}, Lcom/b/a/p;->F()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 13827
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 13828
    invoke-direct {p0}, Lcom/b/a/bn;->A()Lcom/b/a/fc;

    .line 13830
    :cond_0
    return-void
.end method

.method private static r()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 13832
    new-instance v0, Lcom/b/a/bn;

    invoke-direct {v0}, Lcom/b/a/bn;-><init>()V

    return-object v0
.end method

.method private s()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 13836
    invoke-super {p0}, Lcom/b/a/dq;->n()Lcom/b/a/dq;

    .line 13837
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 13839
    iget v0, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bn;->a:I

    .line 13843
    :goto_0
    return-object p0

    .line 13841
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private t()Lcom/b/a/bn;
    .locals 2

    .prologue
    .line 13847
    new-instance v0, Lcom/b/a/bn;

    invoke-direct {v0}, Lcom/b/a/bn;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/bn;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/b/a/bm;
    .locals 1

    .prologue
    .line 13856
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/b/a/bm;
    .locals 2

    .prologue
    .line 13869
    invoke-virtual {p0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v0

    .line 13870
    invoke-virtual {v0}, Lcom/b/a/bm;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13871
    invoke-static {v0}, Lcom/b/a/bn;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 13874
    :cond_0
    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 13988
    iget v0, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 13989
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 13990
    iget v0, p0, Lcom/b/a/bn;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bn;->a:I

    .line 13992
    :cond_0
    return-void
.end method

.method private x()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 14104
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 14106
    iget v0, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bn;->a:I

    .line 14107
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 14111
    :goto_0
    return-object p0

    .line 14109
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private y()Lcom/b/a/cc;
    .locals 2

    .prologue
    .line 14143
    invoke-direct {p0}, Lcom/b/a/bn;->A()Lcom/b/a/fc;

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
    .line 14153
    invoke-direct {p0}, Lcom/b/a/bn;->A()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A_()Ljava/util/List;
    .locals 1

    .prologue
    .line 13998
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 13999
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 14001
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 13814
    invoke-static {}, Lcom/b/a/p;->G()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 13852
    invoke-static {}, Lcom/b/a/bm;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->s()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->t()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13804
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13804
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13804
    invoke-virtual {p0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13804
    invoke-virtual {p0}, Lcom/b/a/bn;->k()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13804
    invoke-virtual {p0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13804
    invoke-virtual {p0}, Lcom/b/a/bn;->k()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/bm;)Lcom/b/a/bn;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 13903
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 13932
    :goto_0
    return-object v0

    .line 13904
    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 13905
    invoke-static {p1}, Lcom/b/a/bm;->b(Lcom/b/a/bm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13906
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13907
    invoke-static {p1}, Lcom/b/a/bm;->b(Lcom/b/a/bm;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 13908
    iget v0, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bn;->a:I

    .line 13913
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    .line 13930
    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/b/a/bn;->a(Lcom/b/a/dr;)V

    .line 13931
    invoke-virtual {p1}, Lcom/b/a/bm;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bn;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 13932
    goto :goto_0

    .line 13910
    :cond_2
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    .line 13911
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/b/a/bm;->b(Lcom/b/a/bm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 13916
    :cond_3
    invoke-static {p1}, Lcom/b/a/bm;->b(Lcom/b/a/bm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13917
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13918
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 13919
    iput-object v1, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    .line 13920
    invoke-static {p1}, Lcom/b/a/bm;->b(Lcom/b/a/bm;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 13921
    iget v0, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bn;->a:I

    .line 13922
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/b/a/bn;->A()Lcom/b/a/fc;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 13926
    :cond_5
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/b/a/bm;->b(Lcom/b/a/bm;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 13804
    invoke-direct {p0, p1}, Lcom/b/a/bn;->d(Lcom/b/a/ev;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13804
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 14012
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14013
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    move-object v0, p0

    .line 14015
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

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

    .line 13936
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bn;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13937
    invoke-virtual {p0, v0}, Lcom/b/a/bn;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 13946
    :goto_1
    return v0

    .line 13936
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13942
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bn;->N()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 13944
    goto :goto_1

    .line 13946
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->t()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 14129
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14130
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    move-object v0, p0

    .line 14131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

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
    .line 13804
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->s()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 13804
    invoke-direct {p0, p1}, Lcom/b/a/bn;->d(Lcom/b/a/ev;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13804
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->t()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->t()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13804
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bn;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 13953
    invoke-virtual {p0}, Lcom/b/a/bn;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 13957
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 13958
    sparse-switch v1, :sswitch_data_0

    .line 13964
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/bn;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13966
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bn;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 13967
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    move-object v0, p0

    .line 13968
    :goto_1
    return-object v0

    .line 13960
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bn;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 13961
    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    move-object v0, p0

    .line 13962
    goto :goto_1

    .line 13973
    :sswitch_1
    invoke-static {}, Lcom/b/a/cb;->w()Lcom/b/a/cc;

    move-result-object v1

    .line 13974
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 13975
    invoke-virtual {v1}, Lcom/b/a/cc;->x()Lcom/b/a/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/b/a/bn;->w()V

    iget-object v2, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/b/a/bn;->af_()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0

    .line 13958
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->t()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->s()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->t()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->s()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 14136
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 14137
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 14139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 14005
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 14006
    iget-object v0, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 14008
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final k()Lcom/b/a/bm;
    .locals 2

    .prologue
    .line 13860
    invoke-virtual {p0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v0

    .line 13861
    invoke-virtual {v0}, Lcom/b/a/bm;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13862
    invoke-static {v0}, Lcom/b/a/bn;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 13864
    :cond_0
    return-object v0
.end method

.method public final l()Lcom/b/a/bm;
    .locals 3

    .prologue
    .line 13878
    new-instance v0, Lcom/b/a/bm;

    invoke-direct {v0, p0}, Lcom/b/a/bm;-><init>(Lcom/b/a/bn;)V

    .line 13879
    iget v1, p0, Lcom/b/a/bn;->a:I

    .line 13880
    iget-object v1, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    if-nez v1, :cond_1

    .line 13881
    iget v1, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 13882
    iget-object v1, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    .line 13883
    iget v1, p0, Lcom/b/a/bn;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/b/a/bn;->a:I

    .line 13885
    :cond_0
    iget-object v1, p0, Lcom/b/a/bn;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/bm;->a(Lcom/b/a/bm;Ljava/util/List;)Ljava/util/List;

    .line 13889
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bn;->ab_()V

    .line 13890
    return-object v0

    .line 13887
    :cond_1
    iget-object v1, p0, Lcom/b/a/bn;->c:Lcom/b/a/fc;

    invoke-virtual {v1}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/bm;->a(Lcom/b/a/bm;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public final synthetic m()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->t()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic n()Lcom/b/a/dq;
    .locals 1

    .prologue
    .line 13804
    invoke-direct {p0}, Lcom/b/a/bn;->s()Lcom/b/a/bn;

    move-result-object v0

    return-object v0
.end method
