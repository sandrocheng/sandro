.class public final Lcom/keniu/security/sync/d/d/a/ca;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/cb;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gy;

.field private e:Lcom/b/a/fp;

.field private f:Ljava/util/List;

.field private g:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22809
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 23029
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23119
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 22810
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->t()V

    .line 22811
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 22795
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ca;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22814
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 23029
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23119
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 22815
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->t()V

    .line 22816
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/bz;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 22883
    new-instance v1, Lcom/keniu/security/sync/d/d/a/bz;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/bz;-><init>(Lcom/keniu/security/sync/d/d/a/ca;)V

    .line 22884
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22885
    const/4 v0, 0x0

    .line 22886
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_5

    move v3, v4

    .line 22889
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 22890
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 22894
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 22895
    or-int/lit8 v0, v3, 0x2

    move v2, v0

    .line 22897
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 22898
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    .line 22902
    :goto_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 22903
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 22904
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 22905
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22907
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;Ljava/util/List;)Ljava/util/List;

    .line 22911
    :goto_4
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;I)I

    .line 22912
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ab_()V

    .line 22913
    return-object v1

    .line 22892
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 22900
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    .line 22909
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v3, v0

    goto :goto_0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 23083
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23084
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23085
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23089
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23090
    return-object p0

    .line 23087
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 23093
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23094
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23095
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 23107
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23108
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    .line 23113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23115
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 23173
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23174
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23175
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23179
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23180
    return-object p0

    .line 23177
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private V()Lcom/keniu/security/sync/d/d/a/gz;
    .locals 1

    .prologue
    .line 23183
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23184
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23185
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->W()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gz;

    return-object p0
.end method

.method private W()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 23197
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23198
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    .line 23203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23205
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method private X()V
    .locals 2

    .prologue
    .line 23212
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 23213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 23214
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23216
    :cond_0
    return-void
.end method

.method private Y()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 23328
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 23330
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23331
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23335
    :goto_0
    return-object p0

    .line 23333
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private Z()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 2

    .prologue
    .line 23367
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ab()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ca;)Lcom/keniu/security/sync/d/d/a/bz;
    .locals 2
    .parameter

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->A()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ca;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23244
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 23245
    if-nez p2, :cond_0

    .line 23246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23248
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23249
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23250
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23254
    :goto_0
    return-object p0

    .line 23252
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23258
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23259
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23260
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23261
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23265
    :goto_0
    return-object p0

    .line 23263
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 23043
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 23044
    if-nez p1, :cond_0

    .line 23045
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23047
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23048
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23052
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23053
    return-object p0

    .line 23050
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2
    .parameter

    .prologue
    .line 23057
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23058
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23059
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23063
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23064
    return-object p0

    .line 23061
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 23133
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 23134
    if-nez p1, :cond_0

    .line 23135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23137
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23138
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23142
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23143
    return-object p0

    .line 23140
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gz;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2
    .parameter

    .prologue
    .line 23147
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23148
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23149
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23153
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23154
    return-object p0

    .line 23151
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 23268
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 23269
    if-nez p1, :cond_0

    .line 23270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23272
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23273
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23274
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23278
    :goto_0
    return-object p0

    .line 23276
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2
    .parameter

    .prologue
    .line 23296
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23297
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23298
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23299
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23303
    :goto_0
    return-object p0

    .line 23301
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 23318
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23319
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23320
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23321
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23325
    :goto_0
    return-object p0

    .line 23323
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private aa()Ljava/util/List;
    .locals 1

    .prologue
    .line 23377
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ab()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private ab()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 23382
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23383
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    .line 23389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 23391
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    return-object v0

    .line 23383
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23282
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 23283
    if-nez p2, :cond_0

    .line 23284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23286
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23287
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23288
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23292
    :goto_0
    return-object p0

    .line 23290
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23307
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23309
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23310
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23314
    :goto_0
    return-object p0

    .line 23312
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2
    .parameter

    .prologue
    .line 23067
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 23068
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 23070
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23075
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23079
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23080
    return-object p0

    .line 23073
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 23077
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2
    .parameter

    .prologue
    .line 23157
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 23158
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 23160
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23165
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23169
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 23170
    return-object p0

    .line 23163
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0

    .line 23167
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 23338
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23339
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 23340
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23341
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 23345
    :goto_0
    return-object p0

    .line 23343
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1
    .parameter

    .prologue
    .line 22917
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/bz;

    if-eqz v0, :cond_0

    .line 22918
    check-cast p1, Lcom/keniu/security/sync/d/d/a/bz;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/bz;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    .line 22921
    :goto_0
    return-object v0

    .line 22920
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 22921
    goto :goto_0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 23349
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ab()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    return-object p0
.end method

.method private e(I)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 2
    .parameter

    .prologue
    .line 23372
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ab()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    return-object p0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 22795
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ca;-><init>()V

    return-object v0
.end method

.method private static s()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 22800
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ap()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 22818
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bz;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22819
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->N()Lcom/b/a/fp;

    .line 22820
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->W()Lcom/b/a/fp;

    .line 22821
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ab()Lcom/b/a/fc;

    .line 22823
    :cond_0
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 22825
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ca;-><init>()V

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 1

    .prologue
    .line 22829
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 22830
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 22831
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 22835
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22836
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 22837
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 22841
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22842
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_2

    .line 22843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 22844
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22848
    :goto_2
    return-object p0

    .line 22833
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 22839
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1

    .line 22846
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_2
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/ca;
    .locals 2

    .prologue
    .line 22852
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ca;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ca;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->A()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/keniu/security/sync/d/d/a/bz;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/bz;
    .locals 1

    .prologue
    .line 22861
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bz;->h()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/bz;
    .locals 2

    .prologue
    .line 22865
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->A()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    .line 22866
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22867
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ca;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 22869
    :cond_0
    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/bz;
    .locals 2

    .prologue
    .line 22874
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->A()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    .line 22875
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22876
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ca;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 22879
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 22805
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aq()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 22857
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bz;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->v()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->w()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22795
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bz;->h()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22795
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bz;->h()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->A()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->y()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->A()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->y()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 22795
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22795
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ca;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/bz;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 22926
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bz;->h()Lcom/keniu/security/sync/d/d/a/bz;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 22960
    :goto_0
    return-object v0

    .line 22927
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bz;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22928
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bz;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22930
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bz;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22931
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bz;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22933
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_9

    .line 22934
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22935
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22936
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 22937
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22942
    :goto_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    .line 22959
    :cond_3
    :goto_6
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ca;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 22960
    goto/16 :goto_0

    .line 22928
    :cond_4
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 22931
    :cond_6
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4

    .line 22939
    :cond_8
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    .line 22940
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 22945
    :cond_9
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22946
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22947
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 22948
    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    .line 22949
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    .line 22950
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    .line 22951
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bz;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->ab()Lcom/b/a/fc;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    goto :goto_6

    :cond_a
    move-object v0, v3

    goto :goto_7

    .line 22955
    :cond_b
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/bz;->a(Lcom/keniu/security/sync/d/d/a/bz;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_6
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1
    .parameter

    .prologue
    .line 23236
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23237
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hc;

    move-object v0, p0

    .line 23239
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hc;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22964
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 22972
    :goto_0
    return v0

    .line 22968
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 22970
    goto :goto_0

    .line 22972
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->w()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22795
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ca;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1
    .parameter

    .prologue
    .line 23353
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23354
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hg;

    move-object v0, p0

    .line 23355
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hg;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->v()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 22795
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ca;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22795
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ca;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->w()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->w()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22795
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ca;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->w()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ca;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22979
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 22983
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 22984
    sparse-switch v1, :sswitch_data_0

    .line 22990
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ca;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22992
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ca;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 22993
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    move-object v0, p0

    .line 22994
    :goto_1
    return-object v0

    .line 22986
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ca;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 22987
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    move-object v0, p0

    .line 22988
    goto :goto_1

    .line 22999
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 23000
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23001
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 23003
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 23004
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 23008
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->N()Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    .line 23009
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23010
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    .line 23012
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 23013
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 23017
    :sswitch_3
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->O()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v1

    .line 23018
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 23019
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v2, :cond_8

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->X()V

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ca;->af_()V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 22984
    nop

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
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->v()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->w()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 22795
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ca;->v()Lcom/keniu/security/sync/d/d/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23033
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

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
    .line 23036
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23037
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 23039
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 23098
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 23099
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 23101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 23123
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 23126
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 23127
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 23129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gy;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 23188
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 23189
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ha;

    move-object v0, p0

    .line 23191
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 23222
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23223
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 23225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 23360
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 23361
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 23363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 23229
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 23230
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 23232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ca;->g:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method
