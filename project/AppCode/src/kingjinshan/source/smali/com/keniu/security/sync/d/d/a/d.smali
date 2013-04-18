.class public final Lcom/keniu/security/sync/d/d/a/d;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/e;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24873
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 25019
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 25055
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 24874
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->n()Z

    .line 24875
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 24859
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/d;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24878
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 25019
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 25055
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 24879
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->n()Z

    .line 24880
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/d;)Lcom/keniu/security/sync/d/d/a/c;
    .locals 2
    .parameter

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->v()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/d;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/d;
    .locals 1
    .parameter

    .prologue
    .line 25034
    if-nez p1, :cond_0

    .line 25035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25037
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25038
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 25039
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 25040
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/d;
    .locals 1
    .parameter

    .prologue
    .line 25070
    if-nez p1, :cond_0

    .line 25071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25073
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25074
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 25075
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 25076
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/d;
    .locals 1
    .parameter

    .prologue
    .line 24947
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/c;

    if-eqz v0, :cond_0

    .line 24948
    check-cast p1, Lcom/keniu/security/sync/d/d/a/c;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/c;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    .line 24951
    :goto_0
    return-object v0

    .line 24950
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 24951
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 25049
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25050
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 25051
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 25052
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 25085
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25086
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 25087
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 25088
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 24859
    new-instance v0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/d;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 24864
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->av()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 24882
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->n()Z

    .line 24884
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 24886
    new-instance v0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/d;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 24890
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 24891
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 24892
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 24893
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 24894
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 24895
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/d;
    .locals 2

    .prologue
    .line 24899
    new-instance v0, Lcom/keniu/security/sync/d/d/a/d;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/d;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->v()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/keniu/security/sync/d/d/a/c;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/c;
    .locals 1

    .prologue
    .line 24908
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->h()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/c;
    .locals 2

    .prologue
    .line 24912
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->v()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    .line 24913
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24914
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/d;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 24916
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/c;
    .locals 2

    .prologue
    .line 24921
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->v()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    .line 24922
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24923
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/d;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 24926
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 24930
    new-instance v0, Lcom/keniu/security/sync/d/d/a/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/c;-><init>(Lcom/keniu/security/sync/d/d/a/d;)V

    .line 24931
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 24932
    const/4 v2, 0x0

    .line 24933
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 24936
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/c;->a(Lcom/keniu/security/sync/d/d/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24937
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 24938
    or-int/lit8 v1, v2, 0x2

    .line 24940
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/c;->b(Lcom/keniu/security/sync/d/d/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24941
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/c;->a(Lcom/keniu/security/sync/d/d/a/c;I)I

    .line 24942
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->ab_()V

    .line 24943
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 25043
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25044
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->h()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/c;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 25045
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 25046
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/d;
    .locals 1

    .prologue
    .line 25079
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25080
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->h()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 25081
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 25082
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 24869
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aw()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 24904
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->q()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->r()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 24859
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->h()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 24859
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->h()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->v()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->t()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->v()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->t()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24859
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24859
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/d;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/c;)Lcom/keniu/security/sync/d/d/a/d;
    .locals 2
    .parameter

    .prologue
    .line 24956
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/c;->h()Lcom/keniu/security/sync/d/d/a/c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 24964
    :goto_0
    return-object v0

    .line 24957
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24958
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/c;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 24960
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/c;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24961
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/c;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    .line 24963
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/c;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/d;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 24964
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24968
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 24976
    :goto_0
    return v0

    .line 24972
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 24974
    goto :goto_0

    .line 24976
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->r()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24859
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/d;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->q()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 24859
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/d;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24859
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/d;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->r()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->r()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24859
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/d;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->r()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/d;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24983
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 24987
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 24988
    sparse-switch v1, :sswitch_data_0

    .line 24994
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/d;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24996
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/d;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 24997
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    move-object v0, p0

    .line 24998
    :goto_1
    return-object v0

    .line 24990
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/d;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 24991
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/d;->af_()V

    move-object v0, p0

    .line 24992
    goto :goto_1

    .line 25003
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25004
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    goto :goto_0

    .line 25008
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

    .line 25009
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    goto :goto_0

    .line 24988
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
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->q()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->r()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 24859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/d;->q()Lcom/keniu/security/sync/d/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25021
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

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
    .line 25024
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 25025
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 25026
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 25027
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->b:Ljava/lang/Object;

    .line 25030
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 25057
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/d;->a:I

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
    .line 25060
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 25061
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 25062
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 25063
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/d;->c:Ljava/lang/Object;

    .line 25066
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
