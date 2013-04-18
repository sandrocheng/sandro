.class public final Lcom/keniu/security/sync/d/d/a/in;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/io;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4622
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 4767
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4623
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->n()V

    .line 4624
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 4608
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/in;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4627
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 4767
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4628
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->n()V

    .line 4629
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/in;)Lcom/keniu/security/sync/d/d/a/im;
    .locals 2
    .parameter

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->u()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/im;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/in;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 1
    .parameter

    .prologue
    .line 4781
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4782
    if-nez p1, :cond_0

    .line 4783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4785
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4786
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    .line 4790
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4791
    return-object p0

    .line 4788
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 2
    .parameter

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4796
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4797
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    .line 4801
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4802
    return-object p0

    .line 4799
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 2
    .parameter

    .prologue
    .line 4805
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4806
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4808
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4813
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    .line 4817
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4818
    return-object p0

    .line 4811
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 4815
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 1
    .parameter

    .prologue
    .line 4699
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/im;

    if-eqz v0, :cond_0

    .line 4700
    check-cast p1, Lcom/keniu/security/sync/d/d/a/im;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/im;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    .line 4703
    :goto_0
    return-object v0

    .line 4702
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 4703
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/in;
    .locals 1

    .prologue
    .line 4608
    new-instance v0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/in;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4613
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->p()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 4631
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/im;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4632
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->x()Lcom/b/a/fp;

    .line 4634
    :cond_0
    return-void
.end method

.method private static o()Lcom/keniu/security/sync/d/d/a/in;
    .locals 1

    .prologue
    .line 4636
    new-instance v0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/in;-><init>()V

    return-object v0
.end method

.method private p()Lcom/keniu/security/sync/d/d/a/in;
    .locals 1

    .prologue
    .line 4640
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 4641
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4642
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4646
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4647
    return-object p0

    .line 4644
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/in;
    .locals 2

    .prologue
    .line 4651
    new-instance v0, Lcom/keniu/security/sync/d/d/a/in;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/in;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->u()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/keniu/security/sync/d/d/a/im;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/im;
    .locals 1

    .prologue
    .line 4660
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/im;->h()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/im;
    .locals 2

    .prologue
    .line 4664
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->u()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    .line 4665
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/im;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4666
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/in;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 4668
    :cond_0
    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/im;
    .locals 2

    .prologue
    .line 4673
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->u()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    .line 4674
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/im;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4675
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/in;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 4678
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/im;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4682
    new-instance v1, Lcom/keniu/security/sync/d/d/a/im;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/im;-><init>(Lcom/keniu/security/sync/d/d/a/in;)V

    .line 4683
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4684
    const/4 v2, 0x0

    .line 4685
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 4688
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 4689
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/im;->a(Lcom/keniu/security/sync/d/d/a/im;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 4693
    :goto_0
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/im;->a(Lcom/keniu/security/sync/d/d/a/im;I)I

    .line 4694
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->ab_()V

    .line 4695
    return-object v1

    .line 4691
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/im;->a(Lcom/keniu/security/sync/d/d/a/im;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/in;
    .locals 1

    .prologue
    .line 4821
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4822
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4823
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    .line 4827
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4828
    return-object p0

    .line 4825
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 4831
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4832
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    .line 4833
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->x()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private x()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 4845
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4846
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    .line 4851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4853
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4618
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4656
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/im;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->p()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->q()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4608
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/im;->h()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4608
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/im;->h()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->u()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->s()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->u()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->s()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 4608
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4608
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/in;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/im;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 3
    .parameter

    .prologue
    .line 4708
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/im;->h()Lcom/keniu/security/sync/d/d/a/im;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 4713
    :goto_0
    return-object v0

    .line 4709
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/im;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4710
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/im;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    .line 4712
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/im;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/in;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 4713
    goto :goto_0

    .line 4710
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4717
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 4725
    :goto_0
    return v0

    .line 4721
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 4723
    goto :goto_0

    .line 4725
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->q()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4608
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/in;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->p()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4608
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/in;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4608
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/in;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->q()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->q()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4608
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/in;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->q()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/in;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4732
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 4736
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 4737
    sparse-switch v1, :sswitch_data_0

    .line 4743
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/in;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4745
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/in;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4746
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    move-object v0, p0

    .line 4747
    :goto_1
    return-object v0

    .line 4739
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/in;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4740
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    move-object v0, p0

    .line 4741
    goto :goto_1

    .line 4752
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 4753
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4754
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 4756
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 4757
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/in;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 4737
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
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->p()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->q()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4608
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/in;->p()Lcom/keniu/security/sync/d/d/a/in;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4771
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/in;->a:I

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
    .line 4774
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 4775
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 4777
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 4837
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 4839
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/in;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method
