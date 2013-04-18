.class public final Lcom/keniu/security/sync/d/d/a/ds;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dt;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Ljava/util/List;

.field private e:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19586
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 19785
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19875
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19587
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->q()V

    .line 19588
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 19572
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ds;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19591
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 19785
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19875
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19592
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->q()V

    .line 19593
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 19863
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19864
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    .line 19869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19871
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 19878
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 19879
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19880
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19882
    :cond_0
    return-void
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19994
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19995
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19996
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19997
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 20001
    :goto_0
    return-object p0

    .line 19999
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 2

    .prologue
    .line 20033
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->h()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    return-object p0
.end method

.method private U()Ljava/util/List;
    .locals 1

    .prologue
    .line 20043
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private V()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 20048
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20049
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    .line 20055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 20057
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    return-object v0

    .line 20049
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ds;)Lcom/keniu/security/sync/d/d/a/dr;
    .locals 2
    .parameter

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->x()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ds;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19910
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 19911
    if-nez p2, :cond_0

    .line 19912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19914
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19915
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19916
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19920
    :goto_0
    return-object p0

    .line 19918
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19924
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19925
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19926
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19927
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19931
    :goto_0
    return-object p0

    .line 19929
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter

    .prologue
    .line 19934
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 19935
    if-nez p1, :cond_0

    .line 19936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19938
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19939
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19940
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19944
    :goto_0
    return-object p0

    .line 19942
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 2
    .parameter

    .prologue
    .line 19962
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19963
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19964
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19965
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19969
    :goto_0
    return-object p0

    .line 19967
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter

    .prologue
    .line 19799
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 19800
    if-nez p1, :cond_0

    .line 19801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19803
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19804
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19808
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19809
    return-object p0

    .line 19806
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 2
    .parameter

    .prologue
    .line 19813
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19814
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19815
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19819
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19820
    return-object p0

    .line 19817
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter

    .prologue
    .line 19984
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19985
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19986
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19987
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19991
    :goto_0
    return-object p0

    .line 19989
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19948
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 19949
    if-nez p2, :cond_0

    .line 19950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19952
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19953
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19954
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19958
    :goto_0
    return-object p0

    .line 19956
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19973
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19974
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19975
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19976
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19980
    :goto_0
    return-object p0

    .line 19978
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 2
    .parameter

    .prologue
    .line 19823
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 19824
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19826
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19831
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19835
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19836
    return-object p0

    .line 19829
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 19833
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter

    .prologue
    .line 20004
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20005
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 20006
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20007
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 20011
    :goto_0
    return-object p0

    .line 20009
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1
    .parameter

    .prologue
    .line 20015
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1
    .parameter

    .prologue
    .line 19679
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/dr;

    if-eqz v0, :cond_0

    .line 19680
    check-cast p1, Lcom/keniu/security/sync/d/d/a/dr;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/dr;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    .line 19683
    :goto_0
    return-object v0

    .line 19682
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 19683
    goto :goto_0
.end method

.method private e(I)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 2
    .parameter

    .prologue
    .line 20038
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->h()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dj;

    return-object p0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19572
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ds;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 19577
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->af()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 19595
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dr;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19596
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->A()Lcom/b/a/fp;

    .line 19597
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->V()Lcom/b/a/fc;

    .line 19599
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19601
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ds;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19605
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 19606
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19607
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19611
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19612
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 19613
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19614
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19618
    :goto_1
    return-object p0

    .line 19609
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 19616
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 2

    .prologue
    .line 19622
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ds;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ds;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->x()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/keniu/security/sync/d/d/a/dr;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/dr;
    .locals 1

    .prologue
    .line 19631
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dr;->h()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/dr;
    .locals 2

    .prologue
    .line 19635
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->x()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    .line 19636
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19637
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ds;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 19639
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/dr;
    .locals 2

    .prologue
    .line 19644
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->x()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    .line 19645
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/dr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19646
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ds;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 19649
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/dr;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 19653
    new-instance v1, Lcom/keniu/security/sync/d/d/a/dr;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/dr;-><init>(Lcom/keniu/security/sync/d/d/a/ds;)V

    .line 19654
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19655
    const/4 v2, 0x0

    .line 19656
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 19659
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 19660
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 19664
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 19665
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 19666
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19667
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19669
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;Ljava/util/List;)Ljava/util/List;

    .line 19673
    :goto_1
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;I)I

    .line 19674
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->ab_()V

    .line 19675
    return-object v1

    .line 19662
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 19671
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ds;
    .locals 1

    .prologue
    .line 19839
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19840
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19841
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19845
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19846
    return-object p0

    .line 19843
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 19849
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19850
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19851
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->A()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 19582
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ag()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 19627
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dr;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->s()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->t()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 19572
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dr;->h()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 19572
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dr;->h()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->x()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->v()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->x()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->v()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 19572
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19572
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ds;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/di;
    .locals 1
    .parameter

    .prologue
    .line 19902
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19903
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/di;

    move-object v0, p0

    .line 19905
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/di;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/dr;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 19688
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dr;->h()Lcom/keniu/security/sync/d/d/a/dr;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 19719
    :goto_0
    return-object v0

    .line 19689
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dr;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19690
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dr;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19692
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_6

    .line 19693
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19694
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19695
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19696
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19701
    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    .line 19718
    :cond_2
    :goto_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/dr;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ds;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 19719
    goto :goto_0

    .line 19690
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 19698
    :cond_5
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    .line 19699
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 19704
    :cond_6
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19705
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19706
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 19707
    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    .line 19708
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    .line 19709
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    .line 19710
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dr;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->V()Lcom/b/a/fc;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    goto :goto_4

    :cond_7
    move-object v0, v3

    goto :goto_5

    .line 19714
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/dr;->a(Lcom/keniu/security/sync/d/d/a/dr;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_4
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19723
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 19737
    :goto_0
    return v0

    .line 19727
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 19729
    goto :goto_0

    :cond_1
    move v0, v2

    .line 19731
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->o()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 19732
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ds;->a(I)Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/di;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 19734
    goto :goto_0

    .line 19731
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19737
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->t()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19572
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ds;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/dk;
    .locals 1
    .parameter

    .prologue
    .line 20019
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 20020
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dk;

    move-object v0, p0

    .line 20021
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dk;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->s()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 19572
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ds;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19572
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ds;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->t()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->t()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19572
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ds;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->t()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ds;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 19744
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 19748
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 19749
    sparse-switch v1, :sswitch_data_0

    .line 19755
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ds;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19757
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ds;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 19758
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    move-object v0, p0

    .line 19759
    :goto_1
    return-object v0

    .line 19751
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ds;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 19752
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    move-object v0, p0

    .line 19753
    goto :goto_1

    .line 19764
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 19765
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19766
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 19768
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 19769
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 19773
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->r()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v1

    .line 19774
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 19775
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/dj;->r()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->D()V

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ds;->af_()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 19749
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->s()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->t()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 19572
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ds;->s()Lcom/keniu/security/sync/d/d/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19789
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 19792
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19793
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19795
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 19854
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 19855
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 19857
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 19888
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19889
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 19891
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 20026
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 20027
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 20029
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 19895
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 19896
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19898
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ds;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method
