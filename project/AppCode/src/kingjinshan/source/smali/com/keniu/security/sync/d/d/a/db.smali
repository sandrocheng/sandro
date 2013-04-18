.class public final Lcom/keniu/security/sync/d/d/a/db;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/de;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37823
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 37969
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 37824
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->n()Z

    .line 37825
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 37809
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/db;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37828
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 37969
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 37829
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->n()Z

    .line 37830
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/db;)Lcom/keniu/security/sync/d/d/a/da;
    .locals 2
    .parameter

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->v()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/da;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/db;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/db;
    .locals 1
    .parameter

    .prologue
    .line 38013
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 38014
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/db;->c:I

    .line 38015
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    .line 38016
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/db;
    .locals 1
    .parameter

    .prologue
    .line 37984
    if-nez p1, :cond_0

    .line 37985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37987
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 37988
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 37989
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    .line 37990
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/db;
    .locals 1
    .parameter

    .prologue
    .line 37897
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/da;

    if-eqz v0, :cond_0

    .line 37898
    check-cast p1, Lcom/keniu/security/sync/d/d/a/da;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/da;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    .line 37901
    :goto_0
    return-object v0

    .line 37900
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 37901
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 37999
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 38000
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 38001
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    .line 38002
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 37809
    new-instance v0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/db;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 37814
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bn()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 37832
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->n()Z

    .line 37834
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 37836
    new-instance v0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/db;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 37840
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 37841
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 37842
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 37843
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->c:I

    .line 37844
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 37845
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/db;
    .locals 2

    .prologue
    .line 37849
    new-instance v0, Lcom/keniu/security/sync/d/d/a/db;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/db;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->v()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/keniu/security/sync/d/d/a/da;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/da;
    .locals 1

    .prologue
    .line 37858
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->h()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/da;
    .locals 2

    .prologue
    .line 37862
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->v()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    .line 37863
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/da;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37864
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/db;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 37866
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/da;
    .locals 2

    .prologue
    .line 37871
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->v()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    .line 37872
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/da;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37873
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/db;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 37876
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/da;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37880
    new-instance v0, Lcom/keniu/security/sync/d/d/a/da;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/da;-><init>(Lcom/keniu/security/sync/d/d/a/db;)V

    .line 37881
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 37882
    const/4 v2, 0x0

    .line 37883
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 37886
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/da;->a(Lcom/keniu/security/sync/d/d/a/da;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37887
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 37888
    or-int/lit8 v1, v2, 0x2

    .line 37890
    :goto_0
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/db;->c:I

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/da;->a(Lcom/keniu/security/sync/d/d/a/da;I)I

    .line 37891
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/da;->b(Lcom/keniu/security/sync/d/d/a/da;I)I

    .line 37892
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->ab_()V

    .line 37893
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 37993
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 37994
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->h()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/da;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 37995
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    .line 37996
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/db;
    .locals 1

    .prologue
    .line 38019
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 38020
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->c:I

    .line 38021
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    .line 38022
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 37819
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bo()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 37854
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->q()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->r()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 37809
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->h()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 37809
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->h()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->v()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->t()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->v()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->t()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 37809
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37809
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/db;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/da;)Lcom/keniu/security/sync/d/d/a/db;
    .locals 2
    .parameter

    .prologue
    .line 37906
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/da;->h()Lcom/keniu/security/sync/d/d/a/da;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 37914
    :goto_0
    return-object v0

    .line 37907
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/da;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37908
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/da;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    .line 37910
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/da;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37911
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/da;->m()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/db;->c:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    .line 37913
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/da;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/db;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 37914
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37918
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 37926
    :goto_0
    return v0

    .line 37922
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 37924
    goto :goto_0

    .line 37926
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->r()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37809
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/db;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->q()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 37809
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/db;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37809
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/db;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->r()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->r()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37809
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/db;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->r()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/db;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37933
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 37937
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 37938
    sparse-switch v1, :sswitch_data_0

    .line 37944
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/db;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37946
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/db;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 37947
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    move-object v0, p0

    .line 37948
    :goto_1
    return-object v0

    .line 37940
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/db;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 37941
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/db;->af_()V

    move-object v0, p0

    .line 37942
    goto :goto_1

    .line 37953
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 37954
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    goto :goto_0

    .line 37958
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

    .line 37959
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/db;->c:I

    goto :goto_0

    .line 37938
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->q()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->r()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 37809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/db;->q()Lcom/keniu/security/sync/d/d/a/db;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37971
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

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
    .line 37974
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 37975
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 37976
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 37977
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/db;->b:Ljava/lang/Object;

    .line 37980
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 38007
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->a:I

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
    .line 38010
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/db;->c:I

    return v0
.end method
