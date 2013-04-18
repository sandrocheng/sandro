.class public final Lcom/keniu/security/sync/d/d/a/hn;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ho;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:J

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 863
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 691
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->r()V

    .line 692
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/hn;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 863
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 696
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->r()V

    .line 697
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 928
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->D()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private D()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 941
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 942
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 2

    .prologue
    .line 967
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 968
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->d:J

    .line 969
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 970
    return-object p0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 989
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->e:I

    .line 990
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 991
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/hn;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 2
    .parameter

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->y()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hm;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hn;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1
    .parameter

    .prologue
    .line 982
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 983
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/hn;->e:I

    .line 984
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 985
    return-object p0
.end method

.method private a(J)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1
    .parameter

    .prologue
    .line 961
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 962
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/hn;->d:J

    .line 963
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 964
    return-object p0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 878
    if-nez p1, :cond_0

    .line 879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 881
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 882
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 886
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 887
    return-object p0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 2
    .parameter

    .prologue
    .line 891
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 892
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 893
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 897
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 898
    return-object p0

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 2
    .parameter

    .prologue
    .line 901
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 902
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 909
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 913
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 914
    return-object p0

    .line 907
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1
    .parameter

    .prologue
    .line 779
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/hm;

    if-eqz v0, :cond_0

    .line 780
    check-cast p1, Lcom/keniu/security/sync/d/d/a/hm;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hm;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .line 782
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 783
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1

    .prologue
    .line 676
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hn;-><init>()V

    return-object v0
.end method

.method private static q()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 681
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->d()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 699
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hm;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->D()Lcom/b/a/fp;

    .line 702
    :cond_0
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1

    .prologue
    .line 704
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hn;-><init>()V

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 2

    .prologue
    .line 708
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 709
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 710
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 714
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 715
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->d:J

    .line 716
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->e:I

    .line 718
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 719
    return-object p0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 2

    .prologue
    .line 723
    new-instance v0, Lcom/keniu/security/sync/d/d/a/hn;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/hn;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->y()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/keniu/security/sync/d/d/a/hm;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hm;->h()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/hm;
    .locals 2

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->y()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hm;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hn;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 740
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/hm;
    .locals 2

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->y()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hm;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hn;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 750
    :cond_0
    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/hm;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 754
    new-instance v1, Lcom/keniu/security/sync/d/d/a/hm;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/hm;-><init>(Lcom/keniu/security/sync/d/d/a/hn;)V

    .line 755
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 756
    const/4 v0, 0x0

    .line 757
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 760
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hm;->a(Lcom/keniu/security/sync/d/d/a/hm;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 765
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 766
    or-int/lit8 v0, v3, 0x2

    .line 768
    :goto_2
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/hn;->d:J

    invoke-static {v1, v3, v4}, Lcom/keniu/security/sync/d/d/a/hm;->a(Lcom/keniu/security/sync/d/d/a/hm;J)J

    .line 769
    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 770
    or-int/lit8 v0, v0, 0x4

    .line 772
    :cond_0
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hn;->e:I

    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/hm;->a(Lcom/keniu/security/sync/d/d/a/hm;I)I

    .line 773
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hm;->b(Lcom/keniu/security/sync/d/d/a/hm;I)I

    .line 774
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->ab_()V

    .line 775
    return-object v1

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/hm;->a(Lcom/keniu/security/sync/d/d/a/hm;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/hn;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 918
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 919
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 923
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 924
    return-object p0

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 686
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->e()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hm;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->t()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->u()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 676
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hm;->h()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 676
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hm;->h()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->y()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->w()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->y()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->w()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/hm;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 3
    .parameter

    .prologue
    .line 788
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hm;->h()Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 799
    :goto_0
    return-object v0

    .line 789
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hm;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hm;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 792
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hm;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hm;->n()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->d:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 795
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hm;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hm;->p()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->e:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    .line 798
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hm;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hn;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 799
    goto :goto_0

    .line 790
    :cond_4
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 811
    :goto_0
    return v0

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 809
    goto :goto_0

    .line 811
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->u()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->t()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/hn;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->u()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->u()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/hn;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->u()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/hn;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 822
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 823
    sparse-switch v1, :sswitch_data_0

    .line 829
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/hn;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hn;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 832
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    move-object v0, p0

    .line 833
    :goto_1
    return-object v0

    .line 825
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/hn;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 826
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    move-object v0, p0

    .line 827
    goto :goto_1

    .line 838
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 839
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 842
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 843
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/hn;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 847
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 848
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->d:J

    goto :goto_0

    .line 852
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

    .line 853
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/hn;->e:I

    goto :goto_0

    .line 823
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->t()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->u()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/hn;->t()Lcom/keniu/security/sync/d/d/a/hn;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 867
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

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
    .line 870
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 873
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 935
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 955
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

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

.method public final n()J
    .locals 2

    .prologue
    .line 958
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->d:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 976
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->a:I

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

.method public final p()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/hn;->e:I

    return v0
.end method
