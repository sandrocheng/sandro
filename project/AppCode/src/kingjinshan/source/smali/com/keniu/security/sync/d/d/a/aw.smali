.class public final Lcom/keniu/security/sync/d/d/a/aw;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ax;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gt;

.field private e:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1581
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 1753
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1843
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1582
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->q()V

    .line 1583
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 1567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/aw;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1586
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 1753
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1843
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1587
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->q()V

    .line 1588
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1832
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    .line 1837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1898
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1899
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1903
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1904
    return-object p0

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/gu;
    .locals 1

    .prologue
    .line 1907
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1908
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1909
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gu;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1922
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    .line 1927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 2
    .parameter

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->x()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/av;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1
    .parameter

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1768
    if-nez p1, :cond_0

    .line 1769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1771
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1772
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1776
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1777
    return-object p0

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 2
    .parameter

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1782
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1783
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1787
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1788
    return-object p0

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1
    .parameter

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1858
    if-nez p1, :cond_0

    .line 1859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1861
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1862
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1866
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1867
    return-object p0

    .line 1864
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gu;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 2
    .parameter

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1872
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gu;->i()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1873
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1877
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1878
    return-object p0

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gu;->i()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 2
    .parameter

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1792
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1799
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1803
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1804
    return-object p0

    .line 1797
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 2
    .parameter

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1882
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gt;->a(Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gu;->a(Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gu;->z()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1889
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1893
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1894
    return-object p0

    .line 1887
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    goto :goto_0

    .line 1891
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1
    .parameter

    .prologue
    .line 1673
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/av;

    if-eqz v0, :cond_0

    .line 1674
    check-cast p1, Lcom/keniu/security/sync/d/d/a/av;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/av;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    .line 1677
    :goto_0
    return-object v0

    .line 1676
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 1677
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1567
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/aw;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1572
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1590
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/av;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->A()Lcom/b/a/fp;

    .line 1592
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->N()Lcom/b/a/fp;

    .line 1594
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1596
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/aw;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1600
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 1601
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1602
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1606
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1607
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1608
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1612
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1613
    return-object p0

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 2

    .prologue
    .line 1617
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/aw;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->x()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/av;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/av;
    .locals 1

    .prologue
    .line 1626
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/av;->h()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/av;
    .locals 2

    .prologue
    .line 1630
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->x()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    .line 1631
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/av;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1632
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 1634
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/av;
    .locals 2

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->x()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    .line 1640
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/av;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1641
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aw;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 1644
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/av;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1648
    new-instance v1, Lcom/keniu/security/sync/d/d/a/av;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/av;-><init>(Lcom/keniu/security/sync/d/d/a/aw;)V

    .line 1649
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1650
    const/4 v0, 0x0

    .line 1651
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 1654
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/av;->a(Lcom/keniu/security/sync/d/d/a/av;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 1659
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1660
    or-int/lit8 v0, v3, 0x2

    move v2, v0

    .line 1662
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/av;->a(Lcom/keniu/security/sync/d/d/a/av;Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gt;

    .line 1667
    :goto_3
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/av;->a(Lcom/keniu/security/sync/d/d/a/av;I)I

    .line 1668
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->ab_()V

    .line 1669
    return-object v1

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/av;->a(Lcom/keniu/security/sync/d/d/a/av;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 1665
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gt;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/av;->a(Lcom/keniu/security/sync/d/d/a/av;Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gt;

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1808
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1809
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1813
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1814
    return-object p0

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 1817
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1818
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    .line 1819
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->A()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1577
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1622
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/av;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->s()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->t()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1567
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/av;->h()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1567
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/av;->h()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->x()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->v()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->x()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->v()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1567
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/aw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/av;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 3
    .parameter

    .prologue
    .line 1682
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/av;->h()Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1690
    :goto_0
    return-object v0

    .line 1683
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/av;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/av;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1686
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/av;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1687
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/av;->n()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gt;->a(Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gu;->a(Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gu;->z()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    .line 1689
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/av;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/aw;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 1690
    goto :goto_0

    .line 1684
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 1687
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1694
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1702
    :goto_0
    return v0

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1700
    goto :goto_0

    .line 1702
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->t()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1567
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/aw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->s()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1567
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/aw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->t()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->t()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1567
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/aw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->t()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 1713
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 1714
    sparse-switch v1, :sswitch_data_0

    .line 1720
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1722
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/aw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1723
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    move-object v0, p0

    .line 1724
    :goto_1
    return-object v0

    .line 1716
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/aw;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1717
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    move-object v0, p0

    .line 1718
    goto :goto_1

    .line 1729
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 1730
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1731
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 1733
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 1734
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 1738
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->z()Lcom/keniu/security/sync/d/d/a/gu;

    move-result-object v1

    .line 1739
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1740
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->n()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gu;->a(Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gu;

    .line 1742
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 1743
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gu;->z()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aw;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 1714
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
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->s()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->t()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aw;->s()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1757
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

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
    .line 1760
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1763
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 1825
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 1847
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gt;
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1853
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gt;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gv;
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gv;

    move-object v0, p0

    .line 1915
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aw;->d:Lcom/keniu/security/sync/d/d/a/gt;

    goto :goto_0
.end method
