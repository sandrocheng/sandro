.class public final Lcom/keniu/security/sync/d/d/a/jc;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jd;


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
    .line 7634
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 7833
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7923
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 7635
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->q()V

    .line 7636
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 7620
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jc;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7639
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 7833
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7923
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 7640
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->q()V

    .line 7641
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 7911
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7912
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    .line 7917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7919
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 7926
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 7927
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 7928
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7930
    :cond_0
    return-void
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 8042
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 8044
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 8045
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 8049
    :goto_0
    return-object p0

    .line 8047
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 2

    .prologue
    .line 8081
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    return-object p0
.end method

.method private U()Ljava/util/List;
    .locals 1

    .prologue
    .line 8091
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private V()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 8096
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8097
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    .line 8103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 8105
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    return-object v0

    .line 8097
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jc;)Lcom/keniu/security/sync/d/d/a/jb;
    .locals 2
    .parameter

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->x()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7958
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 7959
    if-nez p2, :cond_0

    .line 7960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7962
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 7963
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7964
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7968
    :goto_0
    return-object p0

    .line 7966
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7972
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 7973
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 7974
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7975
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7979
    :goto_0
    return-object p0

    .line 7977
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter

    .prologue
    .line 7847
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 7848
    if-nez p1, :cond_0

    .line 7849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7851
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7852
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7856
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7857
    return-object p0

    .line 7854
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 2
    .parameter

    .prologue
    .line 7861
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7862
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7863
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7867
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7868
    return-object p0

    .line 7865
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter

    .prologue
    .line 7982
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 7983
    if-nez p1, :cond_0

    .line 7984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7986
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 7987
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7988
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7992
    :goto_0
    return-object p0

    .line 7990
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 2
    .parameter

    .prologue
    .line 8010
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8011
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 8012
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8013
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 8017
    :goto_0
    return-object p0

    .line 8015
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter

    .prologue
    .line 8032
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8033
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 8034
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8035
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 8039
    :goto_0
    return-object p0

    .line 8037
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7996
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 7997
    if-nez p2, :cond_0

    .line 7998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8000
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 8001
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8002
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 8006
    :goto_0
    return-object p0

    .line 8004
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8021
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8022
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 8023
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8024
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 8028
    :goto_0
    return-object p0

    .line 8026
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 2
    .parameter

    .prologue
    .line 7871
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 7872
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7874
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7879
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7883
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7884
    return-object p0

    .line 7877
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 7881
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter

    .prologue
    .line 8052
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8053
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 8054
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8055
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 8059
    :goto_0
    return-object p0

    .line 8057
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 8063
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1
    .parameter

    .prologue
    .line 7727
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/jb;

    if-eqz v0, :cond_0

    .line 7728
    check-cast p1, Lcom/keniu/security/sync/d/d/a/jb;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jb;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    .line 7731
    :goto_0
    return-object v0

    .line 7730
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 7731
    goto :goto_0
.end method

.method private e(I)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 2
    .parameter

    .prologue
    .line 8086
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    return-object p0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 7620
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jc;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7625
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->z()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 7643
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jb;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7644
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->A()Lcom/b/a/fp;

    .line 7645
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->V()Lcom/b/a/fc;

    .line 7647
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 7649
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jc;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 7653
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 7654
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7655
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7659
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7660
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 7661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 7662
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7666
    :goto_1
    return-object p0

    .line 7657
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 7664
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 2

    .prologue
    .line 7670
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jc;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->x()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/keniu/security/sync/d/d/a/jb;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/jb;
    .locals 1

    .prologue
    .line 7679
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jb;->h()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/jb;
    .locals 2

    .prologue
    .line 7683
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->x()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    .line 7684
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7685
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 7687
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/jb;
    .locals 2

    .prologue
    .line 7692
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->x()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    .line 7693
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7694
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 7697
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/jb;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7701
    new-instance v1, Lcom/keniu/security/sync/d/d/a/jb;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/jb;-><init>(Lcom/keniu/security/sync/d/d/a/jc;)V

    .line 7702
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7703
    const/4 v2, 0x0

    .line 7704
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 7707
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 7708
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 7712
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 7713
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 7714
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 7715
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7717
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;Ljava/util/List;)Ljava/util/List;

    .line 7721
    :goto_1
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;I)I

    .line 7722
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->ab_()V

    .line 7723
    return-object v1

    .line 7710
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 7719
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/jc;
    .locals 1

    .prologue
    .line 7887
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7888
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7889
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7893
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7894
    return-object p0

    .line 7891
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 7897
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7898
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7899
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->A()Lcom/b/a/fp;

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
    .line 7630
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->A()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 7675
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jb;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->s()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->t()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7620
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jb;->h()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7620
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jb;->h()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->x()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->v()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->x()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->v()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 7620
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7620
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 7950
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 7951
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ip;

    move-object v0, p0

    .line 7953
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ip;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/jb;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 7736
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jb;->h()Lcom/keniu/security/sync/d/d/a/jb;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 7767
    :goto_0
    return-object v0

    .line 7737
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jb;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7738
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jb;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7740
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_6

    .line 7741
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7742
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7743
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 7744
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7749
    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    .line 7766
    :cond_2
    :goto_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jc;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 7767
    goto :goto_0

    .line 7738
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 7746
    :cond_5
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    .line 7747
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 7752
    :cond_6
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7753
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7754
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 7755
    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    .line 7756
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    .line 7757
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    .line 7758
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jb;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->V()Lcom/b/a/fc;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    goto :goto_4

    :cond_7
    move-object v0, v3

    goto :goto_5

    .line 7762
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jb;->a(Lcom/keniu/security/sync/d/d/a/jb;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_4
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7771
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 7785
    :goto_0
    return v0

    .line 7775
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 7777
    goto :goto_0

    :cond_1
    move v0, v2

    .line 7779
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->o()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7780
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jc;->a(I)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/ip;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 7782
    goto :goto_0

    .line 7779
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7785
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->t()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7620
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/ir;
    .locals 1
    .parameter

    .prologue
    .line 8067
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 8068
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ir;

    move-object v0, p0

    .line 8069
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ir;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->s()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 7620
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/jc;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7620
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->t()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->t()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7620
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->t()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jc;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 7792
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 7796
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 7797
    sparse-switch v1, :sswitch_data_0

    .line 7803
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/jc;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7805
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 7806
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    move-object v0, p0

    .line 7807
    :goto_1
    return-object v0

    .line 7799
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 7800
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    move-object v0, p0

    .line 7801
    goto :goto_1

    .line 7812
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 7813
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7814
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 7816
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 7817
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 7821
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->t()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v1

    .line 7822
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 7823
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->D()V

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jc;->af_()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 7797
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
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->s()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->t()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 7620
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jc;->s()Lcom/keniu/security/sync/d/d/a/jc;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7837
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->a:I

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
    .line 7840
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 7841
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 7843
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 7902
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 7903
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 7905
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 7936
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 7937
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7939
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 8074
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 8075
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 8077
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 7943
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 7944
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7946
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jc;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method
