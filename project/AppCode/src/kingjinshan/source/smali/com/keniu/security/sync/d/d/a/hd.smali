.class public final Lcom/keniu/security/sync/d/d/a/hd;
.super Lcom/b/a/dn;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/hg;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/gj;

.field private c:Lcom/b/a/fp;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4453
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 4730
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4820
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4856
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4997
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 5033
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 4454
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->V()V

    .line 4455
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 4439
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hd;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4458
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 4730
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4820
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4856
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4997
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 5033
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 4459
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->V()V

    .line 4460
    return-void
.end method

.method static synthetic E()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4439
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hd;-><init>()V

    return-object v0
.end method

.method private static U()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4444
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private V()V
    .locals 1

    .prologue
    .line 4462
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4463
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->ad()Lcom/b/a/fp;

    .line 4465
    :cond_0
    return-void
.end method

.method private static W()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4467
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hd;-><init>()V

    return-object v0
.end method

.method private X()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4471
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 4472
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4473
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4477
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4478
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4479
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4480
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4481
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4482
    iput-boolean v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->f:Z

    .line 4483
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4484
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->g:I

    .line 4485
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4486
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->h:I

    .line 4487
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4488
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->i:I

    .line 4489
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4490
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->j:J

    .line 4491
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4492
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 4493
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4494
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 4495
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4496
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->m:I

    .line 4497
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4498
    return-object p0

    .line 4475
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private Y()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 2

    .prologue
    .line 4502
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hd;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hd;-><init>()V

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method private static Z()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 4511
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/hc;
    .locals 2
    .parameter

    .prologue
    .line 4439
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hd;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4921
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4922
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->g:I

    .line 4923
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4924
    return-object p0
.end method

.method private a(J)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4984
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4985
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->j:J

    .line 4986
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4987
    return-object p0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4744
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4745
    if-nez p1, :cond_0

    .line 4746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4748
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4749
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4753
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4754
    return-object p0

    .line 4751
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 2
    .parameter

    .prologue
    .line 4758
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4759
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4760
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4764
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4765
    return-object p0

    .line 4762
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gk;->i()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4835
    if-nez p1, :cond_0

    .line 4836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4838
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4839
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4840
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4841
    return-object p0
.end method

.method private a(Z)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4900
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4901
    iput-boolean p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->f:Z

    .line 4902
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4903
    return-object p0
.end method

.method private aa()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 2

    .prologue
    .line 4524
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    .line 4525
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4526
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hd;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 4529
    :cond_0
    return-object v0
.end method

.method private ab()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4784
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4785
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4786
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4790
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4791
    return-object p0

    .line 4788
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private ac()Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1

    .prologue
    .line 4794
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4795
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4796
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->ad()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    return-object p0
.end method

.method private ad()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 4808
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4809
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    .line 4814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4816
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private ae()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4844
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4845
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hc;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4846
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4847
    return-object p0
.end method

.method private af()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4880
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4881
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hc;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4882
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4883
    return-object p0
.end method

.method private ag()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4906
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->f:Z

    .line 4908
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4909
    return-object p0
.end method

.method private ah()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4927
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4928
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->g:I

    .line 4929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4930
    return-object p0
.end method

.method private ai()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4948
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4949
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->h:I

    .line 4950
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4951
    return-object p0
.end method

.method private aj()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 4969
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4970
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->i:I

    .line 4971
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4972
    return-object p0
.end method

.method private ak()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 2

    .prologue
    .line 4990
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4991
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->j:J

    .line 4992
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4993
    return-object p0
.end method

.method private al()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 5021
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5022
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hc;->ao_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 5023
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5024
    return-object p0
.end method

.method private am()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 5057
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5058
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hc;->aq_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 5059
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5060
    return-object p0
.end method

.method private an()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 5083
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5084
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->m:I

    .line 5085
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5086
    return-object p0
.end method

.method private b(I)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4942
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4943
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->h:I

    .line 4944
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4945
    return-object p0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 2
    .parameter

    .prologue
    .line 4768
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4769
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4771
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gj;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4776
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4780
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4781
    return-object p0

    .line 4774
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_0

    .line 4778
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4871
    if-nez p1, :cond_0

    .line 4872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4874
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4875
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4876
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4877
    return-object p0
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4963
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4964
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->i:I

    .line 4965
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4966
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 5012
    if-nez p1, :cond_0

    .line 5013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5015
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5016
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 5017
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5018
    return-object p0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 5077
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5078
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->m:I

    .line 5079
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5080
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 4590
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/hc;

    if-eqz v0, :cond_0

    .line 4591
    check-cast p1, Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    .line 4594
    :goto_0
    return-object v0

    .line 4593
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 4594
    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1
    .parameter

    .prologue
    .line 5048
    if-nez p1, :cond_0

    .line 5049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5051
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5052
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 5053
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5054
    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 4850
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4851
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4852
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4853
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 4886
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4887
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4888
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4889
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5027
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5028
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 5029
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5030
    return-void
.end method

.method private h(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5063
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 5064
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 5065
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 5066
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .prologue
    .line 4999
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4449
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4507
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4533
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hc;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/hc;-><init>(Lcom/keniu/security/sync/d/d/a/hd;)V

    .line 4534
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4535
    const/4 v0, 0x0

    .line 4536
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_b

    move v3, v4

    .line 4539
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_9

    .line 4540
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;

    .line 4544
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    .line 4545
    or-int/lit8 v0, v3, 0x2

    .line 4547
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4548
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 4549
    or-int/lit8 v0, v0, 0x4

    .line 4551
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->b(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4552
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 4553
    or-int/lit8 v0, v0, 0x8

    .line 4555
    :cond_1
    iget-boolean v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->f:Z

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;Z)Z

    .line 4556
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 4557
    or-int/lit8 v0, v0, 0x10

    .line 4559
    :cond_2
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->g:I

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;I)I

    .line 4560
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 4561
    or-int/lit8 v0, v0, 0x20

    .line 4563
    :cond_3
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->h:I

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->b(Lcom/keniu/security/sync/d/d/a/hc;I)I

    .line 4564
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 4565
    or-int/lit8 v0, v0, 0x40

    .line 4567
    :cond_4
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->i:I

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->c(Lcom/keniu/security/sync/d/d/a/hc;I)I

    .line 4568
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_5

    .line 4569
    or-int/lit16 v0, v0, 0x80

    .line 4571
    :cond_5
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->j:J

    invoke-static {v1, v3, v4}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;J)J

    .line 4572
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_6

    .line 4573
    or-int/lit16 v0, v0, 0x100

    .line 4575
    :cond_6
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->c(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4576
    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_7

    .line 4577
    or-int/lit16 v0, v0, 0x200

    .line 4579
    :cond_7
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/keniu/security/sync/d/d/a/hc;->d(Lcom/keniu/security/sync/d/d/a/hc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4580
    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_8

    .line 4581
    or-int/lit16 v0, v0, 0x400

    .line 4583
    :cond_8
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->m:I

    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/hc;->d(Lcom/keniu/security/sync/d/d/a/hc;I)I

    .line 4584
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hc;->e(Lcom/keniu/security/sync/d/d/a/hc;I)I

    .line 4585
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->ab_()V

    .line 4586
    return-object v1

    .line 4542
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gj;

    goto/16 :goto_1

    :cond_a
    move v0, v3

    goto/16 :goto_2

    :cond_b
    move v3, v0

    goto/16 :goto_0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->X()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->Y()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4439
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4439
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4439
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4439
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4439
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4439
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    return-object v0
.end method

.method public final N()I
    .locals 1

    .prologue
    .line 5074
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->m:I

    return v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 4439
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4439
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 3
    .parameter

    .prologue
    .line 4599
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 4634
    :goto_0
    return-object v0

    .line 4600
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4601
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->k()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->h()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gj;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4603
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4604
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4601
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 4604
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4606
    :cond_5
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4607
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4609
    :cond_7
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4610
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->r()Z

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput-boolean v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->f:Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4612
    :cond_8
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4613
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->t()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->g:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4615
    :cond_9
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4616
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->v()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->h:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4618
    :cond_a
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->w()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4619
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->x()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->i:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4621
    :cond_b
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4622
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->z()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->j:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4624
    :cond_c
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->A()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4625
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->ao_()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_d
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4627
    :cond_e
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->ap_()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4628
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->aq_()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_f
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4630
    :cond_10
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->ar_()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4631
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->N()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->m:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    .line 4633
    :cond_11
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hd;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 4634
    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 4638
    const/4 v0, 0x1

    return v0
.end method

.method public final ao_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5002
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 5003
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5004
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5005
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    .line 5008
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final ap_()Z
    .locals 2

    .prologue
    .line 5035
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aq_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5038
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 5039
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5040
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5041
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    .line 5044
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final ar_()Z
    .locals 2

    .prologue
    .line 5071
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->Y()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4439
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->X()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4439
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4439
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->Y()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->Y()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4439
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hd;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->Y()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hd;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4645
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 4649
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 4650
    sparse-switch v1, :sswitch_data_0

    .line 4656
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4658
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hd;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4659
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    move-object v0, p0

    .line 4660
    :goto_1
    return-object v0

    .line 4652
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hd;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4653
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    move-object v0, p0

    .line 4654
    goto :goto_1

    .line 4665
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gj;->P()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v1

    .line 4666
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4667
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->k()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    .line 4669
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 4670
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gk;->D()Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 4674
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4675
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    goto :goto_0

    .line 4679
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4680
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    goto :goto_0

    .line 4684
    :sswitch_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4685
    invoke-virtual {p1}, Lcom/b/a/m;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->f:Z

    goto/16 :goto_0

    .line 4689
    :sswitch_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4690
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->g:I

    goto/16 :goto_0

    .line 4694
    :sswitch_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4695
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->h:I

    goto/16 :goto_0

    .line 4699
    :sswitch_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4700
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->i:I

    goto/16 :goto_0

    .line 4704
    :sswitch_8
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4705
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->j:J

    goto/16 :goto_0

    .line 4709
    :sswitch_9
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4710
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->k:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4714
    :sswitch_a
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4715
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->l:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4719
    :sswitch_b
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    .line 4720
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hd;->m:I

    goto/16 :goto_0

    .line 4650
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->X()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->Y()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4439
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hd;->X()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 2

    .prologue
    .line 4515
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    .line 4516
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4517
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hd;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 4519
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4734
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 4737
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4738
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    .line 4740
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gj;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gl;
    .locals 1

    .prologue
    .line 4799
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 4800
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gl;

    move-object v0, p0

    .line 4802
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->b:Lcom/keniu/security/sync/d/d/a/gj;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 4822
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

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

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4825
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4826
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4827
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 4828
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->d:Ljava/lang/Object;

    .line 4831
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 4858
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4861
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4862
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4863
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 4864
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->e:Ljava/lang/Object;

    .line 4867
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 4894
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 4897
    iget-boolean v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->f:Z

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 4915
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 4918
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->g:I

    return v0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 4936
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 4939
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->h:I

    return v0
.end method

.method public final w()Z
    .locals 2

    .prologue
    .line 4957
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 4960
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->i:I

    return v0
.end method

.method public final y()Z
    .locals 2

    .prologue
    .line 4978
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()J
    .locals 2

    .prologue
    .line 4981
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hd;->j:J

    return-wide v0
.end method
