.class public final Lcom/keniu/security/sync/d/d/a/fx;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fy;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33841
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 33987
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 34023
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 33842
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->n()Z

    .line 33843
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 33827
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fx;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33846
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 33987
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 34023
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 33847
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->n()Z

    .line 33848
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fx;)Lcom/keniu/security/sync/d/d/a/fw;
    .locals 2
    .parameter

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->v()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 34002
    if-nez p1, :cond_0

    .line 34003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34005
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 34006
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 34007
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 34008
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 34038
    if-nez p1, :cond_0

    .line 34039
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34041
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 34042
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 34043
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 34044
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1
    .parameter

    .prologue
    .line 33915
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/fw;

    if-eqz v0, :cond_0

    .line 33916
    check-cast p1, Lcom/keniu/security/sync/d/d/a/fw;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fw;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    .line 33919
    :goto_0
    return-object v0

    .line 33918
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 33919
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 34017
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 34018
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 34019
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 34020
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 34053
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 34054
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 34055
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 34056
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 33827
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fx;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 33832
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aX()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 33850
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->n()Z

    .line 33852
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 33854
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fx;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 33858
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 33859
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 33860
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 33861
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 33862
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 33863
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 2

    .prologue
    .line 33867
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fx;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->v()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/keniu/security/sync/d/d/a/fw;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/fw;
    .locals 1

    .prologue
    .line 33876
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->h()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/fw;
    .locals 2

    .prologue
    .line 33880
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->v()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    .line 33881
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33882
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 33884
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/fw;
    .locals 2

    .prologue
    .line 33889
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->v()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    .line 33890
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33891
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 33894
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/fw;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33898
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fw;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fw;-><init>(Lcom/keniu/security/sync/d/d/a/fx;)V

    .line 33899
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 33900
    const/4 v2, 0x0

    .line 33901
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 33904
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/fw;->a(Lcom/keniu/security/sync/d/d/a/fw;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33905
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 33906
    or-int/lit8 v1, v2, 0x2

    .line 33908
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/fw;->b(Lcom/keniu/security/sync/d/d/a/fw;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33909
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/fw;->a(Lcom/keniu/security/sync/d/d/a/fw;I)I

    .line 33910
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->ab_()V

    .line 33911
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 34011
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 34012
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->h()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fw;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 34013
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 34014
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/fx;
    .locals 1

    .prologue
    .line 34047
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 34048
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->h()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fw;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 34049
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 34050
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 33837
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aY()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 33872
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->q()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->r()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 33827
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->h()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 33827
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->h()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->v()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->t()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->v()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->t()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 33827
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33827
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/fw;)Lcom/keniu/security/sync/d/d/a/fx;
    .locals 2
    .parameter

    .prologue
    .line 33924
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fw;->h()Lcom/keniu/security/sync/d/d/a/fw;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 33932
    :goto_0
    return-object v0

    .line 33925
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fw;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33926
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fw;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 33928
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fw;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33929
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fw;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    .line 33931
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fx;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 33932
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33936
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 33944
    :goto_0
    return v0

    .line 33940
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 33942
    goto :goto_0

    .line 33944
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->r()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33827
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->q()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 33827
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fx;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33827
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->r()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->r()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33827
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->r()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fx;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33951
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 33955
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 33956
    sparse-switch v1, :sswitch_data_0

    .line 33962
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/fx;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33964
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fx;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 33965
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    move-object v0, p0

    .line 33966
    :goto_1
    return-object v0

    .line 33958
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fx;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 33959
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fx;->af_()V

    move-object v0, p0

    .line 33960
    goto :goto_1

    .line 33971
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 33972
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    goto :goto_0

    .line 33976
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

    .line 33977
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    goto :goto_0

    .line 33956
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
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->q()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->r()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 33827
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fx;->q()Lcom/keniu/security/sync/d/d/a/fx;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33989
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

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
    .line 33992
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 33993
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 33994
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 33995
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->b:Ljava/lang/Object;

    .line 33998
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 34025
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->a:I

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
    .line 34028
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 34029
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 34030
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 34031
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fx;->c:Ljava/lang/Object;

    .line 34034
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
