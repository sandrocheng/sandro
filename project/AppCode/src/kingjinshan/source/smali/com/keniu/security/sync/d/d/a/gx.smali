.class public final Lcom/keniu/security/sync/d/d/a/gx;
.super Lcom/b/a/dn;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hb;


# instance fields
.field private a:I

.field private b:J

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3693
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 3694
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->n()Z

    .line 3695
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 3679
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/gx;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3698
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 3699
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->n()Z

    .line 3700
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gx;)Lcom/keniu/security/sync/d/d/a/gw;
    .locals 2
    .parameter

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->v()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(J)Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1
    .parameter

    .prologue
    .line 3839
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3840
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gx;->b:J

    .line 3841
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    .line 3842
    return-object p0
.end method

.method private b(J)Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1
    .parameter

    .prologue
    .line 3860
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3861
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gx;->c:J

    .line 3862
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    .line 3863
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1
    .parameter

    .prologue
    .line 3767
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/gw;

    if-eqz v0, :cond_0

    .line 3768
    check-cast p1, Lcom/keniu/security/sync/d/d/a/gw;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gw;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    .line 3771
    :goto_0
    return-object v0

    .line 3770
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 3771
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1

    .prologue
    .line 3679
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gx;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3684
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 3702
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->n()Z

    .line 3704
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 1

    .prologue
    .line 3706
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gx;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 3710
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 3711
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->b:J

    .line 3712
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3713
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->c:J

    .line 3714
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3715
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 2

    .prologue
    .line 3719
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gx;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gx;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->v()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/keniu/security/sync/d/d/a/gw;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/gw;
    .locals 1

    .prologue
    .line 3728
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->h()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/gw;
    .locals 2

    .prologue
    .line 3732
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->v()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    .line 3733
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3734
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 3736
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/gw;
    .locals 2

    .prologue
    .line 3741
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->v()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    .line 3742
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3743
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gx;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 3746
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/gw;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3750
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gw;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/gw;-><init>(Lcom/keniu/security/sync/d/d/a/gx;)V

    .line 3751
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3752
    const/4 v2, 0x0

    .line 3753
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 3756
    :cond_0
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/gx;->b:J

    invoke-static {v0, v3, v4}, Lcom/keniu/security/sync/d/d/a/gw;->a(Lcom/keniu/security/sync/d/d/a/gw;J)J

    .line 3757
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 3758
    or-int/lit8 v1, v2, 0x2

    .line 3760
    :goto_0
    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gx;->c:J

    invoke-static {v0, v2, v3}, Lcom/keniu/security/sync/d/d/a/gw;->b(Lcom/keniu/security/sync/d/d/a/gw;J)J

    .line 3761
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/gw;->a(Lcom/keniu/security/sync/d/d/a/gw;I)I

    .line 3762
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->ab_()V

    .line 3763
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 2

    .prologue
    .line 3845
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3846
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->b:J

    .line 3847
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    .line 3848
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/gx;
    .locals 2

    .prologue
    .line 3866
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3867
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->c:J

    .line 3868
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    .line 3869
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3689
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3724
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->q()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->r()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3679
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->h()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3679
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->h()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->v()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->t()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->v()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->t()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 3679
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3679
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/gw;)Lcom/keniu/security/sync/d/d/a/gx;
    .locals 3
    .parameter

    .prologue
    .line 3776
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gw;->h()Lcom/keniu/security/sync/d/d/a/gw;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3784
    :goto_0
    return-object v0

    .line 3777
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gw;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3778
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gw;->k()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->b:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    .line 3780
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gw;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3781
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gw;->m()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->c:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    .line 3783
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gx;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 3784
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 3788
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->r()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3679
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->q()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3679
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/gx;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3679
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->r()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->r()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3679
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->r()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gx;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3795
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 3799
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 3800
    sparse-switch v1, :sswitch_data_0

    .line 3806
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/gx;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3808
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gx;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3809
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    move-object v0, p0

    .line 3810
    :goto_1
    return-object v0

    .line 3802
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gx;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3803
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gx;->af_()V

    move-object v0, p0

    .line 3804
    goto :goto_1

    .line 3815
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3816
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->b:J

    goto :goto_0

    .line 3820
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    .line 3821
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gx;->c:J

    goto :goto_0

    .line 3800
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->q()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->r()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gx;->q()Lcom/keniu/security/sync/d/d/a/gx;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3833
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 3836
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->b:J

    return-wide v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 3854
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->a:I

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

.method public final m()J
    .locals 2

    .prologue
    .line 3857
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gx;->c:J

    return-wide v0
.end method
