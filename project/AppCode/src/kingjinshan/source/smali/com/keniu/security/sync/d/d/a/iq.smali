.class public final Lcom/keniu/security/sync/d/d/a/iq;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ir;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5719
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 5907
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5964
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 6000
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 6036
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 5720
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->u()Z

    .line 5721
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 5705
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/iq;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5724
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 5907
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5964
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 6000
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 6036
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 5725
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->u()Z

    .line 5726
    return-void
.end method

.method private static A()Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1

    .prologue
    .line 5760
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/ip;
    .locals 2

    .prologue
    .line 5773
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    .line 5774
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ip;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5775
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 5778
    :cond_0
    return-object v0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5931
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5932
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ip;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5933
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5934
    return-object p0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5957
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5958
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->c:I

    .line 5959
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5960
    return-object p0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5988
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5989
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ip;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 5990
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5991
    return-object p0
.end method

.method private V()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 6024
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 6025
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ip;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 6026
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 6027
    return-object p0
.end method

.method private W()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 6060
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 6061
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ip;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 6062
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 6063
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 2
    .parameter

    .prologue
    .line 5705
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ip;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 5951
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5952
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->c:I

    .line 5953
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5954
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 5922
    if-nez p1, :cond_0

    .line 5923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5925
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5926
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5927
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5928
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 5979
    if-nez p1, :cond_0

    .line 5980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5982
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5983
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 5984
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5985
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 6015
    if-nez p1, :cond_0

    .line 6016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6018
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 6019
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 6020
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 6021
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 5811
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ip;

    if-eqz v0, :cond_0

    .line 5812
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ip;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    .line 5815
    :goto_0
    return-object v0

    .line 5814
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 5815
    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 6051
    if-nez p1, :cond_0

    .line 6052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6054
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 6055
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 6056
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 6057
    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5937
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5938
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5939
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5940
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5994
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5995
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 5996
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5997
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 6030
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 6031
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 6032
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 6033
    return-void
.end method

.method private h(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 6066
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 6067
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 6068
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 6069
    return-void
.end method

.method static synthetic u()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5705
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iq;-><init>()V

    return-object v0
.end method

.method private static v()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5710
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->t()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static w()V
    .locals 0

    .prologue
    .line 5728
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->u()Z

    .line 5730
    return-void
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5732
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iq;-><init>()V

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1

    .prologue
    .line 5736
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 5737
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5738
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5739
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->c:I

    .line 5740
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5741
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 5742
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5743
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 5744
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5745
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 5746
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5747
    return-object p0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 2

    .prologue
    .line 5751
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iq;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iq;-><init>()V

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 5715
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->u()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5756
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->y()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->z()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5705
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5705
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5705
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5705
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5705
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5705
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 5705
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5705
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 2
    .parameter

    .prologue
    .line 5820
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 5837
    :goto_0
    return-object v0

    .line 5821
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5822
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5824
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5825
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->m()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->c:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5827
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5828
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5830
    :cond_5
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5831
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5833
    :cond_7
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5834
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    .line 5836
    :cond_9
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ip;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/iq;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 5837
    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5841
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 5849
    :goto_0
    return v0

    .line 5845
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 5847
    goto :goto_0

    .line 5849
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->z()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5705
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->y()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 5705
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/iq;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5705
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->z()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->z()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5705
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iq;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->z()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5856
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 5860
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 5861
    sparse-switch v1, :sswitch_data_0

    .line 5867
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/iq;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5869
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/iq;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5870
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    move-object v0, p0

    .line 5871
    :goto_1
    return-object v0

    .line 5863
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/iq;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5864
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->af_()V

    move-object v0, p0

    .line 5865
    goto :goto_1

    .line 5876
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5877
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    goto :goto_0

    .line 5881
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5882
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->c:I

    goto :goto_0

    .line 5886
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5887
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    goto :goto_0

    .line 5891
    :sswitch_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5892
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    goto :goto_0

    .line 5896
    :sswitch_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5897
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    goto :goto_0

    .line 5861
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->y()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->z()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iq;->y()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/ip;
    .locals 2

    .prologue
    .line 5764
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v0

    .line 5765
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ip;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5766
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iq;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 5768
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5909
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

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
    .line 5912
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5913
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5914
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5915
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    .line 5918
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 5945
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

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

.method public final m()I
    .locals 1

    .prologue
    .line 5948
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->c:I

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 5966
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

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
    .line 5969
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 5970
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5971
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5972
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    .line 5975
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 6002
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

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

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6005
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 6006
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6007
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 6008
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    .line 6011
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 6038
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6041
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 6042
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6043
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 6044
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    .line 6047
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final t()Lcom/keniu/security/sync/d/d/a/ip;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5782
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ip;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ip;-><init>(Lcom/keniu/security/sync/d/d/a/iq;)V

    .line 5783
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iq;->a:I

    .line 5784
    const/4 v2, 0x0

    .line 5785
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 5788
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/iq;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ip;->a(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5789
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5790
    or-int/lit8 v2, v2, 0x2

    .line 5792
    :cond_1
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/iq;->c:I

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ip;->a(Lcom/keniu/security/sync/d/d/a/ip;I)I

    .line 5793
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5794
    or-int/lit8 v2, v2, 0x4

    .line 5796
    :cond_2
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/iq;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ip;->b(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5797
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5798
    or-int/lit8 v2, v2, 0x8

    .line 5800
    :cond_3
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/iq;->e:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ip;->c(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5801
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    .line 5802
    or-int/lit8 v1, v2, 0x10

    .line 5804
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/iq;->f:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/ip;->d(Lcom/keniu/security/sync/d/d/a/ip;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5805
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/ip;->b(Lcom/keniu/security/sync/d/d/a/ip;I)I

    .line 5806
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iq;->ab_()V

    .line 5807
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method
