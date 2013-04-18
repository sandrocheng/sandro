.class public final Lcom/keniu/security/sync/d/d/a/br;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bs;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23662
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 23808
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23844
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23663
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->n()Z

    .line 23664
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 23648
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/br;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23667
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 23808
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23844
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23668
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->n()Z

    .line 23669
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/br;)Lcom/keniu/security/sync/d/d/a/bq;
    .locals 2
    .parameter

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->v()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/br;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/br;
    .locals 1
    .parameter

    .prologue
    .line 23823
    if-nez p1, :cond_0

    .line 23824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23826
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23827
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23828
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23829
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/br;
    .locals 1
    .parameter

    .prologue
    .line 23859
    if-nez p1, :cond_0

    .line 23860
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23862
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23863
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23864
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23865
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/br;
    .locals 1
    .parameter

    .prologue
    .line 23736
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/bq;

    if-eqz v0, :cond_0

    .line 23737
    check-cast p1, Lcom/keniu/security/sync/d/d/a/bq;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/bq;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    .line 23740
    :goto_0
    return-object v0

    .line 23739
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 23740
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 23838
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23839
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23840
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23841
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 23874
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23875
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23876
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23877
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23648
    new-instance v0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/br;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 23653
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ar()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 23671
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->n()Z

    .line 23673
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23675
    new-instance v0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/br;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23679
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 23680
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23681
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23682
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23683
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23684
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/br;
    .locals 2

    .prologue
    .line 23688
    new-instance v0, Lcom/keniu/security/sync/d/d/a/br;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/br;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->v()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/keniu/security/sync/d/d/a/bq;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/bq;
    .locals 1

    .prologue
    .line 23697
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->h()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/bq;
    .locals 2

    .prologue
    .line 23701
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->v()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    .line 23702
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23703
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/br;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 23705
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/bq;
    .locals 2

    .prologue
    .line 23710
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->v()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    .line 23711
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23712
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/br;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 23715
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/bq;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 23719
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bq;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/bq;-><init>(Lcom/keniu/security/sync/d/d/a/br;)V

    .line 23720
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23721
    const/4 v2, 0x0

    .line 23722
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 23725
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/bq;->a(Lcom/keniu/security/sync/d/d/a/bq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23726
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 23727
    or-int/lit8 v1, v2, 0x2

    .line 23729
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/bq;->b(Lcom/keniu/security/sync/d/d/a/bq;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23730
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/bq;->a(Lcom/keniu/security/sync/d/d/a/bq;I)I

    .line 23731
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->ab_()V

    .line 23732
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23832
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23833
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->h()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bq;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23834
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23835
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/br;
    .locals 1

    .prologue
    .line 23868
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23869
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->h()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bq;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23870
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23871
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 23658
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->as()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 23693
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->q()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->r()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 23648
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->h()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 23648
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->h()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->v()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->t()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->v()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->t()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 23648
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23648
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/br;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/bq;)Lcom/keniu/security/sync/d/d/a/br;
    .locals 2
    .parameter

    .prologue
    .line 23745
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bq;->h()Lcom/keniu/security/sync/d/d/a/bq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 23753
    :goto_0
    return-object v0

    .line 23746
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bq;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23747
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bq;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23749
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bq;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23750
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bq;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    .line 23752
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/br;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 23753
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23757
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 23765
    :goto_0
    return v0

    .line 23761
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 23763
    goto :goto_0

    .line 23765
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->r()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23648
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/br;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->q()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 23648
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/br;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23648
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/br;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->r()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->r()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23648
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/br;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->r()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/br;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23772
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 23776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 23777
    sparse-switch v1, :sswitch_data_0

    .line 23783
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/br;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23785
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/br;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 23786
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    move-object v0, p0

    .line 23787
    :goto_1
    return-object v0

    .line 23779
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/br;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 23780
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/br;->af_()V

    move-object v0, p0

    .line 23781
    goto :goto_1

    .line 23792
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23793
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    goto :goto_0

    .line 23797
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

    .line 23798
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    goto :goto_0

    .line 23777
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
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->q()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->r()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 23648
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/br;->q()Lcom/keniu/security/sync/d/d/a/br;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23810
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

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
    .line 23813
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23814
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23815
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 23816
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->b:Ljava/lang/Object;

    .line 23819
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 23846
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/br;->a:I

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
    .line 23849
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23850
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23851
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 23852
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/br;->c:Ljava/lang/Object;

    .line 23855
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
