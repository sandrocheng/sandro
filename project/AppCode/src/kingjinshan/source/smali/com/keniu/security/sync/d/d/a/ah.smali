.class public final Lcom/keniu/security/sync/d/d/a/ah;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ai;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34766
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 34912
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34948
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34767
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->n()Z

    .line 34768
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 34752
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ah;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34771
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 34912
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34948
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34772
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->n()Z

    .line 34773
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ah;)Lcom/keniu/security/sync/d/d/a/ag;
    .locals 2
    .parameter

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->v()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ah;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 34927
    if-nez p1, :cond_0

    .line 34928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34930
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34931
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34932
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34933
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 34963
    if-nez p1, :cond_0

    .line 34964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34966
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34967
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34968
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34969
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 34840
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ag;

    if-eqz v0, :cond_0

    .line 34841
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ag;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ag;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    .line 34844
    :goto_0
    return-object v0

    .line 34843
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 34844
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 34942
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34943
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34944
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34945
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 34978
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34979
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34980
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34981
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34752
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ah;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 34757
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bb()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 34775
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->n()Z

    .line 34777
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34779
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ah;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34783
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 34784
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34785
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34786
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34787
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34788
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 2

    .prologue
    .line 34792
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ah;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ah;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->v()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/keniu/security/sync/d/d/a/ag;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ag;
    .locals 1

    .prologue
    .line 34801
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->h()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/ag;
    .locals 2

    .prologue
    .line 34805
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->v()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    .line 34806
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34807
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ah;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 34809
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ag;
    .locals 2

    .prologue
    .line 34814
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->v()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    .line 34815
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34816
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ah;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 34819
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ag;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 34823
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ag;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ag;-><init>(Lcom/keniu/security/sync/d/d/a/ah;)V

    .line 34824
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34825
    const/4 v2, 0x0

    .line 34826
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 34829
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ag;->a(Lcom/keniu/security/sync/d/d/a/ag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34830
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 34831
    or-int/lit8 v1, v2, 0x2

    .line 34833
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/ag;->b(Lcom/keniu/security/sync/d/d/a/ag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34834
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/ag;->a(Lcom/keniu/security/sync/d/d/a/ag;I)I

    .line 34835
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->ab_()V

    .line 34836
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34936
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34937
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->h()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ag;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34938
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34939
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ah;
    .locals 1

    .prologue
    .line 34972
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34973
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->h()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ag;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34974
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34975
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 34762
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bc()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 34797
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->q()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->r()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34752
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->h()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34752
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->h()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->v()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->t()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->v()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->t()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 34752
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34752
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ag;)Lcom/keniu/security/sync/d/d/a/ah;
    .locals 2
    .parameter

    .prologue
    .line 34849
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ag;->h()Lcom/keniu/security/sync/d/d/a/ag;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 34857
    :goto_0
    return-object v0

    .line 34850
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ag;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34851
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ag;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34853
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ag;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34854
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ag;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    .line 34856
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ag;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ah;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 34857
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34861
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 34869
    :goto_0
    return v0

    .line 34865
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 34867
    goto :goto_0

    .line 34869
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->r()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34752
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->q()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 34752
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ah;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34752
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->r()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->r()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34752
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ah;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->r()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ah;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34876
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 34880
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 34881
    sparse-switch v1, :sswitch_data_0

    .line 34887
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ah;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34889
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ah;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 34890
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    move-object v0, p0

    .line 34891
    :goto_1
    return-object v0

    .line 34883
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ah;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 34884
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ah;->af_()V

    move-object v0, p0

    .line 34885
    goto :goto_1

    .line 34896
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34897
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    goto :goto_0

    .line 34901
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

    .line 34902
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    goto :goto_0

    .line 34881
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
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->q()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->r()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 34752
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ah;->q()Lcom/keniu/security/sync/d/d/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34914
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

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
    .line 34917
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34918
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 34919
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 34920
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->b:Ljava/lang/Object;

    .line 34923
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 34950
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->a:I

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
    .line 34953
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34954
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 34955
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 34956
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ah;->c:Ljava/lang/Object;

    .line 34959
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
