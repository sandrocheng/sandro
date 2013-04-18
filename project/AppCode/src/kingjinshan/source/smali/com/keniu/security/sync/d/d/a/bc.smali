.class public final Lcom/keniu/security/sync/d/d/a/bc;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bd;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gy;

.field private e:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 787
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 877
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 616
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->q()V

    .line 617
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bc;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 787
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 877
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 621
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->q()V

    .line 622
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 865
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 932
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 933
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 937
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 938
    return-object p0

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/gz;
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 942
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 943
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gz;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 955
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 956
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bc;)Lcom/keniu/security/sync/d/d/a/bb;
    .locals 2
    .parameter

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->x()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 801
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 802
    if-nez p1, :cond_0

    .line 803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 805
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 806
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 810
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 811
    return-object p0

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 2
    .parameter

    .prologue
    .line 815
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 817
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 821
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 822
    return-object p0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 891
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 892
    if-nez p1, :cond_0

    .line 893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 895
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 896
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 900
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 901
    return-object p0

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gz;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 2
    .parameter

    .prologue
    .line 905
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 906
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 907
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 911
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 912
    return-object p0

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 2
    .parameter

    .prologue
    .line 825
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 826
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 833
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 837
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 838
    return-object p0

    .line 831
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 2
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 916
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 918
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 923
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 927
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 928
    return-object p0

    .line 921
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 707
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/bb;

    if-eqz v0, :cond_0

    .line 708
    check-cast p1, Lcom/keniu/security/sync/d/d/a/bb;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bb;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    .line 711
    :goto_0
    return-object v0

    .line 710
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 711
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 601
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bc;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 606
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->d()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 624
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bb;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->A()Lcom/b/a/fp;

    .line 626
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->N()Lcom/b/a/fp;

    .line 628
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bc;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 635
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 636
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 640
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 641
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 642
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 646
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 647
    return-object p0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 2

    .prologue
    .line 651
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bc;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bc;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->x()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/keniu/security/sync/d/d/a/bb;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/bb;
    .locals 1

    .prologue
    .line 660
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bb;->h()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/bb;
    .locals 2

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->x()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 668
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/bb;
    .locals 2

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->x()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bc;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 678
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/bb;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 682
    new-instance v1, Lcom/keniu/security/sync/d/d/a/bb;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/bb;-><init>(Lcom/keniu/security/sync/d/d/a/bc;)V

    .line 683
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 684
    const/4 v0, 0x0

    .line 685
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 688
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bb;->a(Lcom/keniu/security/sync/d/d/a/bb;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 693
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 694
    or-int/lit8 v0, v3, 0x2

    move v2, v0

    .line 696
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bb;->a(Lcom/keniu/security/sync/d/d/a/bb;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    .line 701
    :goto_3
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/bb;->a(Lcom/keniu/security/sync/d/d/a/bb;I)I

    .line 702
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->ab_()V

    .line 703
    return-object v1

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bb;->a(Lcom/keniu/security/sync/d/d/a/bb;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bb;->a(Lcom/keniu/security/sync/d/d/a/bb;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/bc;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 842
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 843
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 847
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 848
    return-object p0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 852
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    .line 853
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->A()Lcom/b/a/fp;

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
    .line 611
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->e()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bb;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->s()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->t()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 601
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bb;->h()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 601
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bb;->h()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->x()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->v()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->x()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->v()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/bb;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 3
    .parameter

    .prologue
    .line 716
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bb;->h()Lcom/keniu/security/sync/d/d/a/bb;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 724
    :goto_0
    return-object v0

    .line 717
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bb;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bb;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 720
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bb;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bb;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    .line 723
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bc;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 724
    goto :goto_0

    .line 718
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 721
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 728
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 736
    :goto_0
    return v0

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 734
    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->t()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->s()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bc;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->t()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->t()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->t()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bc;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 747
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 748
    sparse-switch v1, :sswitch_data_0

    .line 754
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/bc;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 757
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    move-object v0, p0

    .line 758
    :goto_1
    return-object v0

    .line 750
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bc;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 751
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    move-object v0, p0

    .line 752
    goto :goto_1

    .line 763
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 764
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 767
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 768
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 772
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->N()Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    .line 773
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 774
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    .line 776
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 777
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bc;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 748
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
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->s()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->t()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bc;->s()Lcom/keniu/security/sync/d/d/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 791
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

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
    .line 794
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 797
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 859
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 881
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 887
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gy;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ha;

    move-object v0, p0

    .line 949
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bc;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0
.end method
