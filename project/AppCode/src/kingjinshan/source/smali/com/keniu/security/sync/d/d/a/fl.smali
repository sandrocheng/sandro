.class public final Lcom/keniu/security/sync/d/d/a/fl;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/fm;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35643
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 35771
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35644
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->l()Z

    .line 35645
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 35629
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/fl;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35648
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 35771
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35649
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->l()Z

    .line 35650
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/fl;)Lcom/keniu/security/sync/d/d/a/fk;
    .locals 2
    .parameter

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->t()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fk;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fl;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1
    .parameter

    .prologue
    .line 35786
    if-nez p1, :cond_0

    .line 35787
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35789
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    .line 35790
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35791
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->af_()V

    .line 35792
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1
    .parameter

    .prologue
    .line 35711
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/fk;

    if-eqz v0, :cond_0

    .line 35712
    check-cast p1, Lcom/keniu/security/sync/d/d/a/fk;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fk;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    .line 35715
    :goto_0
    return-object v0

    .line 35714
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 35715
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 35801
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    .line 35802
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35803
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->af_()V

    .line 35804
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1

    .prologue
    .line 35629
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fl;-><init>()V

    return-object v0
.end method

.method private static l()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 35634
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bf()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static m()V
    .locals 0

    .prologue
    .line 35652
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->l()Z

    .line 35654
    return-void
.end method

.method private static n()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1

    .prologue
    .line 35656
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fl;-><init>()V

    return-object v0
.end method

.method private o()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1

    .prologue
    .line 35660
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 35661
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35662
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    .line 35663
    return-object p0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 2

    .prologue
    .line 35667
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fl;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/fl;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->t()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/keniu/security/sync/d/d/a/fk;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/fk;
    .locals 1

    .prologue
    .line 35676
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->h()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/fk;
    .locals 2

    .prologue
    .line 35680
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->t()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    .line 35681
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fk;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35682
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fl;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 35684
    :cond_0
    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/fk;
    .locals 2

    .prologue
    .line 35689
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->t()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    .line 35690
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fk;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35691
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/fl;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 35694
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/fk;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35698
    new-instance v0, Lcom/keniu/security/sync/d/d/a/fk;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/fk;-><init>(Lcom/keniu/security/sync/d/d/a/fl;)V

    .line 35699
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    .line 35700
    const/4 v2, 0x0

    .line 35701
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    .line 35704
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/fk;->a(Lcom/keniu/security/sync/d/d/a/fk;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35705
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/fk;->a(Lcom/keniu/security/sync/d/d/a/fk;I)I

    .line 35706
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->ab_()V

    .line 35707
    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/fl;
    .locals 1

    .prologue
    .line 35795
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    .line 35796
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->h()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/fk;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35797
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->af_()V

    .line 35798
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 35639
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->bg()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 35672
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->o()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->p()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35629
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->h()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35629
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->h()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->t()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->r()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->t()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->r()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 35629
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35629
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/fk;)Lcom/keniu/security/sync/d/d/a/fl;
    .locals 2
    .parameter

    .prologue
    .line 35720
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/fk;->h()Lcom/keniu/security/sync/d/d/a/fk;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 35725
    :goto_0
    return-object v0

    .line 35721
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fk;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35722
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fk;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->af_()V

    .line 35724
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/fk;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fl;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 35725
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 35729
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35731
    const/4 v0, 0x0

    .line 35733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->p()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35629
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->o()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 35629
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/fl;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35629
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->p()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->p()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35629
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/fl;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->p()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/fl;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35740
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 35744
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 35745
    sparse-switch v1, :sswitch_data_0

    .line 35751
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/fl;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35753
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fl;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 35754
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->af_()V

    move-object v0, p0

    .line 35755
    :goto_1
    return-object v0

    .line 35747
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/fl;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 35748
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/fl;->af_()V

    move-object v0, p0

    .line 35749
    goto :goto_1

    .line 35760
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

    .line 35761
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    goto :goto_0

    .line 35745
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->o()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->p()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 35629
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/fl;->o()Lcom/keniu/security/sync/d/d/a/fl;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35773
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->a:I

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
    .line 35776
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35777
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 35778
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 35779
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/fl;->b:Ljava/lang/Object;

    .line 35782
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
