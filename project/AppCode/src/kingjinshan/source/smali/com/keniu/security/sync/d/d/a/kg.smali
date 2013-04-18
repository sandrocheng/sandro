.class public final Lcom/keniu/security/sync/d/d/a/kg;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/kh;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8901
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 9046
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 8902
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->n()V

    .line 8903
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 8887
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/kg;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8906
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 9046
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 8907
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->n()V

    .line 8908
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/kg;)Lcom/keniu/security/sync/d/d/a/kf;
    .locals 2
    .parameter

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->u()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1
    .parameter

    .prologue
    .line 9060
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 9061
    if-nez p1, :cond_0

    .line 9062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9064
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9065
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    .line 9069
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 9070
    return-object p0

    .line 9067
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 2
    .parameter

    .prologue
    .line 9074
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9075
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9076
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    .line 9080
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 9081
    return-object p0

    .line 9078
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 2
    .parameter

    .prologue
    .line 9084
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 9085
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9087
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9092
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    .line 9096
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 9097
    return-object p0

    .line 9090
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 9094
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1
    .parameter

    .prologue
    .line 8978
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/kf;

    if-eqz v0, :cond_0

    .line 8979
    check-cast p1, Lcom/keniu/security/sync/d/d/a/kf;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kf;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    .line 8982
    :goto_0
    return-object v0

    .line 8981
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 8982
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1

    .prologue
    .line 8887
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kg;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8892
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->D()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 8910
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kf;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8911
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->x()Lcom/b/a/fp;

    .line 8913
    :cond_0
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1

    .prologue
    .line 8915
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kg;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1

    .prologue
    .line 8919
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 8920
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8921
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 8925
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 8926
    return-object p0

    .line 8923
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 2

    .prologue
    .line 8930
    new-instance v0, Lcom/keniu/security/sync/d/d/a/kg;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/kg;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->u()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/keniu/security/sync/d/d/a/kf;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/kf;
    .locals 1

    .prologue
    .line 8939
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kf;->h()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/kf;
    .locals 2

    .prologue
    .line 8943
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->u()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    .line 8944
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8945
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 8947
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/kf;
    .locals 2

    .prologue
    .line 8952
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->u()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    .line 8953
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/kf;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8954
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/kg;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 8957
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/kf;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8961
    new-instance v1, Lcom/keniu/security/sync/d/d/a/kf;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/kf;-><init>(Lcom/keniu/security/sync/d/d/a/kg;)V

    .line 8962
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 8963
    const/4 v2, 0x0

    .line 8964
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 8967
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 8968
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/kf;->a(Lcom/keniu/security/sync/d/d/a/kf;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 8972
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/kf;->a(Lcom/keniu/security/sync/d/d/a/kf;I)I

    .line 8973
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->ab_()V

    .line 8974
    return-object v1

    .line 8970
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/kf;->a(Lcom/keniu/security/sync/d/d/a/kf;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/kg;
    .locals 1

    .prologue
    .line 9100
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9101
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9102
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    .line 9106
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 9107
    return-object p0

    .line 9104
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 9110
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 9111
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    .line 9112
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 9124
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9125
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    .line 9130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9132
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 8897
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->E()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8935
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kf;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->p()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->q()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8887
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kf;->h()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8887
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kf;->h()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->u()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->s()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->u()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->s()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 8887
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8887
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/kf;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 3
    .parameter

    .prologue
    .line 8987
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/kf;->h()Lcom/keniu/security/sync/d/d/a/kf;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 8992
    :goto_0
    return-object v0

    .line 8988
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kf;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8989
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kf;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    .line 8991
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/kf;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/kg;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 8992
    goto :goto_0

    .line 8989
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8996
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 9004
    :goto_0
    return v0

    .line 9000
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 9002
    goto :goto_0

    .line 9004
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->q()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8887
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->p()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 8887
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/kg;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8887
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->q()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->q()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8887
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/kg;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->q()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/kg;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 9011
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 9015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 9016
    sparse-switch v1, :sswitch_data_0

    .line 9022
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/kg;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9024
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/kg;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9025
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    move-object v0, p0

    .line 9026
    :goto_1
    return-object v0

    .line 9018
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/kg;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 9019
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    move-object v0, p0

    .line 9020
    goto :goto_1

    .line 9031
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 9032
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9033
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 9035
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 9036
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/kg;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 9016
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
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->p()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->q()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/kg;->p()Lcom/keniu/security/sync/d/d/a/kg;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9050
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->a:I

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
    .line 9053
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9054
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 9056
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 9115
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 9116
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 9118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/kg;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method
