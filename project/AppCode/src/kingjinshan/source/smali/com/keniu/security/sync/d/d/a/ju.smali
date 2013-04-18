.class public final Lcom/keniu/security/sync/d/d/a/ju;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jv;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3595
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 3740
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3596
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->n()V

    .line 3597
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 3581
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ju;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3600
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 3740
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->n()V

    .line 3602
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ju;)Lcom/keniu/security/sync/d/d/a/jt;
    .locals 2
    .parameter

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->u()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ju;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1
    .parameter

    .prologue
    .line 3754
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3755
    if-nez p1, :cond_0

    .line 3756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3758
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3759
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    .line 3763
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3764
    return-object p0

    .line 3761
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 2
    .parameter

    .prologue
    .line 3768
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3769
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3770
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    .line 3774
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3775
    return-object p0

    .line 3772
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 2
    .parameter

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3779
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3781
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3786
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    .line 3790
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3791
    return-object p0

    .line 3784
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 3788
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1
    .parameter

    .prologue
    .line 3672
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/jt;

    if-eqz v0, :cond_0

    .line 3673
    check-cast p1, Lcom/keniu/security/sync/d/d/a/jt;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/jt;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    .line 3676
    :goto_0
    return-object v0

    .line 3675
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 3676
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1

    .prologue
    .line 3581
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ju;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3586
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 3604
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jt;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3605
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->x()Lcom/b/a/fp;

    .line 3607
    :cond_0
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1

    .prologue
    .line 3609
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ju;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1

    .prologue
    .line 3613
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 3614
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3615
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3619
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3620
    return-object p0

    .line 3617
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 2

    .prologue
    .line 3624
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ju;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ju;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->u()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/keniu/security/sync/d/d/a/jt;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/jt;
    .locals 1

    .prologue
    .line 3633
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jt;->h()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/jt;
    .locals 2

    .prologue
    .line 3637
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->u()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    .line 3638
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3639
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ju;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 3641
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/jt;
    .locals 2

    .prologue
    .line 3646
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->u()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    .line 3647
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3648
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ju;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 3651
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/jt;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3655
    new-instance v1, Lcom/keniu/security/sync/d/d/a/jt;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/jt;-><init>(Lcom/keniu/security/sync/d/d/a/ju;)V

    .line 3656
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3657
    const/4 v2, 0x0

    .line 3658
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 3661
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3662
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jt;->a(Lcom/keniu/security/sync/d/d/a/jt;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 3666
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/jt;->a(Lcom/keniu/security/sync/d/d/a/jt;I)I

    .line 3667
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->ab_()V

    .line 3668
    return-object v1

    .line 3664
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jt;->a(Lcom/keniu/security/sync/d/d/a/jt;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ju;
    .locals 1

    .prologue
    .line 3794
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3795
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3796
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    .line 3800
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3801
    return-object p0

    .line 3798
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 3804
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3805
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    .line 3806
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3819
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    .line 3824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3826
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3591
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3629
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jt;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->p()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->q()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3581
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jt;->h()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3581
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jt;->h()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->u()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->s()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->u()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->s()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 3581
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3581
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ju;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/jt;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 3
    .parameter

    .prologue
    .line 3681
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jt;->h()Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3686
    :goto_0
    return-object v0

    .line 3682
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jt;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3683
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jt;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    .line 3685
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jt;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ju;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 3686
    goto :goto_0

    .line 3683
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3690
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3698
    :goto_0
    return v0

    .line 3694
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 3696
    goto :goto_0

    .line 3698
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->q()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3581
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ju;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->p()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3581
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ju;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3581
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ju;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->q()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->q()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3581
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ju;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->q()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ju;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3705
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 3709
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 3710
    sparse-switch v1, :sswitch_data_0

    .line 3716
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ju;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3718
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ju;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3719
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    move-object v0, p0

    .line 3720
    :goto_1
    return-object v0

    .line 3712
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ju;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3713
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    move-object v0, p0

    .line 3714
    goto :goto_1

    .line 3725
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 3726
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3727
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 3729
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3730
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ju;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 3710
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
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->p()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->q()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3581
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ju;->p()Lcom/keniu/security/sync/d/d/a/ju;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3744
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->a:I

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
    .line 3747
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3748
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3750
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 3809
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 3812
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ju;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method
