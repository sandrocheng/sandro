.class public final Lcom/keniu/security/sync/d/d/a/hw;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hx;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/gq;

.field private c:Lcom/b/a/fp;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3732
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 3895
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3733
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->p()V

    .line 3734
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 3718
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hw;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3737
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 3895
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3738
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->p()V

    .line 3739
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3999
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 4000
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->d:I

    .line 4001
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 4002
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hw;)Lcom/keniu/security/sync/d/d/a/hv;
    .locals 2
    .parameter

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->w()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1
    .parameter

    .prologue
    .line 3993
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3994
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hw;->d:I

    .line 3995
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 3996
    return-object p0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1
    .parameter

    .prologue
    .line 3909
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3910
    if-nez p1, :cond_0

    .line 3911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3913
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3914
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 3918
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3919
    return-object p0

    .line 3916
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gr;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 2
    .parameter

    .prologue
    .line 3923
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3924
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3925
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 3929
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3930
    return-object p0

    .line 3927
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gr;->i()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 2
    .parameter

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3934
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3936
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gq;->a(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gr;->a(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gr;->D()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3941
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 3945
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3946
    return-object p0

    .line 3939
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    goto :goto_0

    .line 3943
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1
    .parameter

    .prologue
    .line 3815
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/hv;

    if-eqz v0, :cond_0

    .line 3816
    check-cast p1, Lcom/keniu/security/sync/d/d/a/hv;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hv;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    .line 3819
    :goto_0
    return-object v0

    .line 3818
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 3819
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3718
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hw;-><init>()V

    return-object v0
.end method

.method private static o()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3723
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->n()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 3741
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hv;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3742
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->z()Lcom/b/a/fp;

    .line 3744
    :cond_0
    return-void
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3746
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hw;-><init>()V

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3750
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 3751
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3752
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3756
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3757
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->d:I

    .line 3758
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3759
    return-object p0

    .line 3754
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 2

    .prologue
    .line 3763
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hw;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->w()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/keniu/security/sync/d/d/a/hv;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/hv;
    .locals 1

    .prologue
    .line 3772
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hv;->h()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/hv;
    .locals 2

    .prologue
    .line 3776
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->w()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    .line 3777
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3778
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 3780
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/hv;
    .locals 2

    .prologue
    .line 3785
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->w()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    .line 3786
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3787
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 3790
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/hv;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3794
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hv;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/hv;-><init>(Lcom/keniu/security/sync/d/d/a/hw;)V

    .line 3795
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3796
    const/4 v0, 0x0

    .line 3797
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_2

    move v3, v4

    .line 3800
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3801
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hv;->a(Lcom/keniu/security/sync/d/d/a/hv;Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gq;

    .line 3805
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3806
    or-int/lit8 v0, v3, 0x2

    .line 3808
    :goto_2
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hw;->d:I

    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/hv;->a(Lcom/keniu/security/sync/d/d/a/hv;I)I

    .line 3809
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hv;->b(Lcom/keniu/security/sync/d/d/a/hv;I)I

    .line 3810
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->ab_()V

    .line 3811
    return-object v1

    .line 3803
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gq;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hv;->a(Lcom/keniu/security/sync/d/d/a/hv;Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gq;

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/hw;
    .locals 1

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3950
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3951
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 3955
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3956
    return-object p0

    .line 3953
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/gr;
    .locals 1

    .prologue
    .line 3959
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3960
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 3961
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->z()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gr;

    return-object p0
.end method

.method private z()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 3973
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3974
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    .line 3979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3981
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 3728
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->o()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 3768
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hv;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->r()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->s()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3718
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hv;->h()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3718
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hv;->h()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->w()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->u()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->w()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->u()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 3718
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3718
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/hv;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 3
    .parameter

    .prologue
    .line 3824
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hv;->h()Lcom/keniu/security/sync/d/d/a/hv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3832
    :goto_0
    return-object v0

    .line 3825
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hv;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3826
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hv;->k()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->h()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gq;->a(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gr;->a(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gr;->D()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3828
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hv;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3829
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hv;->n()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->d:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    .line 3831
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hv;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hw;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 3832
    goto :goto_0

    .line 3826
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3836
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3848
    :goto_0
    return v0

    .line 3840
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->m()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 3842
    goto :goto_0

    .line 3844
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->k()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gq;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3846
    goto :goto_0

    .line 3848
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->s()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3718
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->r()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 3718
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hw;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3718
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->s()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->s()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3718
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->s()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hw;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3855
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 3859
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 3860
    sparse-switch v1, :sswitch_data_0

    .line 3866
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/hw;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3868
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3869
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    move-object v0, p0

    .line 3870
    :goto_1
    return-object v0

    .line 3862
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3863
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    move-object v0, p0

    .line 3864
    goto :goto_1

    .line 3875
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gq;->N()Lcom/keniu/security/sync/d/d/a/gr;

    move-result-object v1

    .line 3876
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3877
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->k()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gr;->a(Lcom/keniu/security/sync/d/d/a/gq;)Lcom/keniu/security/sync/d/d/a/gr;

    .line 3879
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 3880
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gr;->D()Lcom/keniu/security/sync/d/d/a/gq;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hw;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 3884
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    .line 3885
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hw;->d:I

    goto :goto_0

    .line 3860
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
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->r()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->s()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 3718
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hw;->r()Lcom/keniu/security/sync/d/d/a/hw;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3899
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gq;
    .locals 1

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3903
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    .line 3905
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gq;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gs;
    .locals 1

    .prologue
    .line 3964
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 3965
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gs;

    move-object v0, p0

    .line 3967
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->b:Lcom/keniu/security/sync/d/d/a/gq;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 3987
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->a:I

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

.method public final n()I
    .locals 1

    .prologue
    .line 3990
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hw;->d:I

    return v0
.end method
