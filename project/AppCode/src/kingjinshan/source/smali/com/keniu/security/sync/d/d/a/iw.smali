.class public final Lcom/keniu/security/sync/d/d/a/iw;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ix;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9826
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 9971
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->n()V

    .line 9828
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 9812
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/iw;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9831
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 9971
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9832
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->n()V

    .line 9833
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/iw;)Lcom/keniu/security/sync/d/d/a/iv;
    .locals 2
    .parameter

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->u()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/iv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1
    .parameter

    .prologue
    .line 9985
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 9986
    if-nez p1, :cond_0

    .line 9987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9989
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9990
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    .line 9994
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 9995
    return-object p0

    .line 9992
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 2
    .parameter

    .prologue
    .line 9999
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10000
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10001
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    .line 10005
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 10006
    return-object p0

    .line 10003
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 2
    .parameter

    .prologue
    .line 10009
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 10010
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10012
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10017
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    .line 10021
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 10022
    return-object p0

    .line 10015
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 10019
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1
    .parameter

    .prologue
    .line 9903
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/iv;

    if-eqz v0, :cond_0

    .line 9904
    check-cast p1, Lcom/keniu/security/sync/d/d/a/iv;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iv;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    .line 9907
    :goto_0
    return-object v0

    .line 9906
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 9907
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1

    .prologue
    .line 9812
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iw;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9817
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->H()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 9835
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iv;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9836
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->x()Lcom/b/a/fp;

    .line 9838
    :cond_0
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1

    .prologue
    .line 9840
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iw;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1

    .prologue
    .line 9844
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 9845
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9846
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9850
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 9851
    return-object p0

    .line 9848
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 2

    .prologue
    .line 9855
    new-instance v0, Lcom/keniu/security/sync/d/d/a/iw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/iw;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->u()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/keniu/security/sync/d/d/a/iv;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/iv;
    .locals 1

    .prologue
    .line 9864
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iv;->h()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/iv;
    .locals 2

    .prologue
    .line 9868
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->u()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    .line 9869
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/iv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9870
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 9872
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/iv;
    .locals 2

    .prologue
    .line 9877
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->u()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    .line 9878
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/iv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9879
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/iw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 9882
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/iv;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9886
    new-instance v1, Lcom/keniu/security/sync/d/d/a/iv;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/iv;-><init>(Lcom/keniu/security/sync/d/d/a/iw;)V

    .line 9887
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 9888
    const/4 v2, 0x0

    .line 9889
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 9892
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 9893
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/iv;->a(Lcom/keniu/security/sync/d/d/a/iv;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 9897
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/iv;->a(Lcom/keniu/security/sync/d/d/a/iv;I)I

    .line 9898
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->ab_()V

    .line 9899
    return-object v1

    .line 9895
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/iv;->a(Lcom/keniu/security/sync/d/d/a/iv;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/iw;
    .locals 1

    .prologue
    .line 10025
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10026
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10027
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    .line 10031
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 10032
    return-object p0

    .line 10029
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 10035
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 10036
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    .line 10037
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 10049
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 10050
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    .line 10055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 10057
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9822
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->I()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9860
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iv;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->p()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->q()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9812
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iv;->h()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9812
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iv;->h()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->u()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->s()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->u()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->s()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 9812
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9812
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/iv;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 3
    .parameter

    .prologue
    .line 9912
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/iv;->h()Lcom/keniu/security/sync/d/d/a/iv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9917
    :goto_0
    return-object v0

    .line 9913
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/iv;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9914
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/iv;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    .line 9916
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/iv;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/iw;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 9917
    goto :goto_0

    .line 9914
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9921
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 9929
    :goto_0
    return v0

    .line 9925
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 9927
    goto :goto_0

    .line 9929
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->q()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9812
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->p()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9812
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/iw;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9812
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->q()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->q()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9812
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/iw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->q()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/iw;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 9936
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 9940
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 9941
    sparse-switch v1, :sswitch_data_0

    .line 9947
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/iw;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9949
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/iw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9950
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    move-object v0, p0

    .line 9951
    :goto_1
    return-object v0

    .line 9943
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/iw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9944
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    move-object v0, p0

    .line 9945
    goto :goto_1

    .line 9956
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 9957
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9958
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 9960
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 9961
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/iw;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 9941
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->p()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->q()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9812
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/iw;->p()Lcom/keniu/security/sync/d/d/a/iw;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9975
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->a:I

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
    .line 9978
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9979
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9981
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 10040
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 10041
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 10043
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/iw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method
