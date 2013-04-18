.class public final Lcom/b/a/ak;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/ap;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:I

.field private d:Lcom/b/a/al;

.field private e:Lcom/b/a/an;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Lcom/b/a/aq;

.field private j:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5554
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 5807
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5864
    sget-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    .line 5888
    sget-object v0, Lcom/b/a/an;->a:Lcom/b/a/an;

    iput-object v0, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    .line 5912
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5948
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5984
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 6020
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 5555
    invoke-direct {p0}, Lcom/b/a/ak;->E()V

    .line 5556
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 5540
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ak;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5559
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 5807
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5864
    sget-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    .line 5888
    sget-object v0, Lcom/b/a/an;->a:Lcom/b/a/an;

    iput-object v0, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    .line 5912
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5948
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5984
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 6020
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 5560
    invoke-direct {p0}, Lcom/b/a/ak;->E()V

    .line 5561
    return-void
.end method

.method static synthetic A()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5540
    new-instance v0, Lcom/b/a/ak;

    invoke-direct {v0}, Lcom/b/a/ak;-><init>()V

    return-object v0
.end method

.method private static D()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5545
    invoke-static {}, Lcom/b/a/p;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private E()V
    .locals 1

    .prologue
    .line 5563
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 5564
    invoke-direct {p0}, Lcom/b/a/ak;->ah()Lcom/b/a/fp;

    .line 5566
    :cond_0
    return-void
.end method

.method private static N()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5568
    new-instance v0, Lcom/b/a/ak;

    invoke-direct {v0}, Lcom/b/a/ak;-><init>()V

    return-object v0
.end method

.method private U()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5572
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 5573
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5574
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5575
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ak;->c:I

    .line 5576
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5577
    sget-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    .line 5578
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5579
    sget-object v0, Lcom/b/a/an;->a:Lcom/b/a/an;

    iput-object v0, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    .line 5580
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5581
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5582
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5583
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5584
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5585
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 5586
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5587
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 5588
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 5592
    :goto_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5593
    return-object p0

    .line 5590
    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private V()Lcom/b/a/ak;
    .locals 2

    .prologue
    .line 5597
    new-instance v0, Lcom/b/a/ak;

    invoke-direct {v0}, Lcom/b/a/ak;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->a(Lcom/b/a/aj;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private static W()Lcom/b/a/aj;
    .locals 1

    .prologue
    .line 5606
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private X()Lcom/b/a/aj;
    .locals 2

    .prologue
    .line 5619
    invoke-virtual {p0}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v0

    .line 5620
    invoke-virtual {v0}, Lcom/b/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5621
    invoke-static {v0}, Lcom/b/a/ak;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 5624
    :cond_0
    return-object v0
.end method

.method private Y()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5831
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5832
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5833
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5834
    return-object p0
.end method

.method private Z()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5857
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5858
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ak;->c:I

    .line 5859
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5860
    return-object p0
.end method

.method static synthetic a(Lcom/b/a/ak;)Lcom/b/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 5540
    invoke-virtual {p0}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/ak;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5851
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5852
    iput p1, p0, Lcom/b/a/ak;->c:I

    .line 5853
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5854
    return-object p0
.end method

.method private a(Lcom/b/a/al;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5872
    if-nez p1, :cond_0

    .line 5873
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5875
    :cond_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5876
    iput-object p1, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    .line 5877
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5878
    return-object p0
.end method

.method private a(Lcom/b/a/an;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5896
    if-nez p1, :cond_0

    .line 5897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5899
    :cond_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5900
    iput-object p1, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    .line 5901
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5902
    return-object p0
.end method

.method private a(Lcom/b/a/aq;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 6034
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 6035
    if-nez p1, :cond_0

    .line 6036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6038
    :cond_0
    iput-object p1, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 6039
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6043
    :goto_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6044
    return-object p0

    .line 6041
    :cond_1
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/ar;)Lcom/b/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 6048
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6049
    invoke-virtual {p1}, Lcom/b/a/ar;->s()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 6050
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6054
    :goto_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6055
    return-object p0

    .line 6052
    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/b/a/ar;->s()Lcom/b/a/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5822
    if-nez p1, :cond_0

    .line 5823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5825
    :cond_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5826
    iput-object p1, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5827
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5828
    return-object p0
.end method

.method private aa()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5881
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5882
    sget-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    .line 5883
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5884
    return-object p0
.end method

.method private ab()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5905
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5906
    sget-object v0, Lcom/b/a/an;->a:Lcom/b/a/an;

    iput-object v0, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    .line 5907
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5908
    return-object p0
.end method

.method private ac()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5936
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5937
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5938
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5939
    return-object p0
.end method

.method private ad()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 5972
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5973
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aj;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5974
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5975
    return-object p0
.end method

.method private ae()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 6008
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6009
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 6010
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6011
    return-object p0
.end method

.method private af()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 6074
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6075
    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 6076
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6080
    :goto_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6081
    return-object p0

    .line 6078
    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private ag()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 6084
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6085
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6086
    invoke-direct {p0}, Lcom/b/a/ak;->ah()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    return-object p0
.end method

.method private ah()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 6098
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6099
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    invoke-virtual {p0}, Lcom/b/a/ak;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/ak;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    .line 6104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 6106
    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    return-object v0
.end method

.method private b(Lcom/b/a/aq;)Lcom/b/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 6058
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 6059
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6061
    iget-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    invoke-static {v0}, Lcom/b/a/aq;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/ar;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 6066
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6070
    :goto_1
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6071
    return-object p0

    .line 6064
    :cond_0
    iput-object p1, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    goto :goto_0

    .line 6068
    :cond_1
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5927
    if-nez p1, :cond_0

    .line 5928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5930
    :cond_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5931
    iput-object p1, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5932
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5933
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5963
    if-nez p1, :cond_0

    .line 5964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5966
    :cond_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5967
    iput-object p1, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5968
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5969
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5673
    instance-of v0, p1, Lcom/b/a/aj;

    if-eqz v0, :cond_0

    .line 5674
    check-cast p1, Lcom/b/a/aj;

    invoke-virtual {p0, p1}, Lcom/b/a/ak;->a(Lcom/b/a/aj;)Lcom/b/a/ak;

    move-result-object v0

    .line 5677
    :goto_0
    return-object v0

    .line 5676
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 5677
    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 5999
    if-nez p1, :cond_0

    .line 6000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6002
    :cond_0
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6003
    iput-object p1, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 6004
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6005
    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5837
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5838
    iput-object p1, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5839
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5840
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5942
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5943
    iput-object p1, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5944
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5945
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5978
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5979
    iput-object p1, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5980
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5981
    return-void
.end method

.method private h(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 6014
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 6015
    iput-object p1, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 6016
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 6017
    return-void
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 5550
    invoke-static {}, Lcom/b/a/p;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5602
    invoke-static {}, Lcom/b/a/aj;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->U()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->V()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5540
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5540
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5540
    invoke-virtual {p0}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5540
    invoke-virtual {p0}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5540
    invoke-virtual {p0}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5540
    invoke-virtual {p0}, Lcom/b/a/ak;->y()Lcom/b/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/aj;)Lcom/b/a/ak;
    .locals 3
    .parameter

    .prologue
    .line 5682
    invoke-static {}, Lcom/b/a/aj;->e()Lcom/b/a/aj;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 5708
    :goto_0
    return-object v0

    .line 5683
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/aj;->j_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5684
    invoke-virtual {p1}, Lcom/b/a/aj;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ak;->a:I

    iput-object v0, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5686
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5687
    invoke-virtual {p1}, Lcom/b/a/aj;->k()I

    move-result v0

    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ak;->a:I

    iput v0, p0, Lcom/b/a/ak;->c:I

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5689
    :cond_3
    invoke-virtual {p1}, Lcom/b/a/aj;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5690
    invoke-virtual {p1}, Lcom/b/a/aj;->m()Lcom/b/a/al;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/ak;->a:I

    iput-object v0, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5692
    :cond_5
    invoke-virtual {p1}, Lcom/b/a/aj;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5693
    invoke-virtual {p1}, Lcom/b/a/aj;->o()Lcom/b/a/an;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/ak;->a:I

    iput-object v0, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5695
    :cond_7
    invoke-virtual {p1}, Lcom/b/a/aj;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5696
    invoke-virtual {p1}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/b/a/ak;->a:I

    iput-object v0, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5698
    :cond_9
    invoke-virtual {p1}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5699
    invoke-virtual {p1}, Lcom/b/a/aj;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_a
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/b/a/ak;->a:I

    iput-object v0, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5701
    :cond_b
    invoke-virtual {p1}, Lcom/b/a/aj;->t()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5702
    invoke-virtual {p1}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_c
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/b/a/ak;->a:I

    iput-object v0, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    .line 5704
    :cond_d
    invoke-virtual {p1}, Lcom/b/a/aj;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5705
    invoke-virtual {p1}, Lcom/b/a/aj;->w()Lcom/b/a/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v1, :cond_10

    iget v1, p0, Lcom/b/a/ak;->a:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    invoke-static {}, Lcom/b/a/aq;->e()Lcom/b/a/aq;

    move-result-object v2

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    invoke-static {v1}, Lcom/b/a/aq;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/ar;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    :goto_1
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    :goto_2
    iget v0, p0, Lcom/b/a/ak;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/b/a/ak;->a:I

    .line 5707
    :cond_e
    invoke-virtual {p1}, Lcom/b/a/aj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ak;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 5708
    goto/16 :goto_0

    .line 5705
    :cond_f
    iput-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    goto :goto_1

    :cond_10
    iget-object v1, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 5540
    invoke-direct {p0, p1}, Lcom/b/a/ak;->d(Lcom/b/a/ev;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5540
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 5712
    invoke-virtual {p0}, Lcom/b/a/ak;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5713
    invoke-virtual {p0}, Lcom/b/a/ak;->w()Lcom/b/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5715
    const/4 v0, 0x0

    .line 5718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->V()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5540
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->U()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 5540
    invoke-direct {p0, p1}, Lcom/b/a/ak;->d(Lcom/b/a/ev;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5540
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->V()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->V()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5540
    invoke-virtual {p0, p1, p2}, Lcom/b/a/ak;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ak;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 5725
    invoke-virtual {p0}, Lcom/b/a/ak;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 5729
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 5730
    sparse-switch v1, :sswitch_data_0

    .line 5736
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/ak;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5738
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ak;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5739
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    move-object v0, p0

    .line 5740
    :goto_1
    return-object v0

    .line 5732
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ak;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5733
    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    move-object v0, p0

    .line 5734
    goto :goto_1

    .line 5745
    :sswitch_1
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/ak;->a:I

    .line 5746
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    goto :goto_0

    .line 5750
    :sswitch_2
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/b/a/ak;->a:I

    .line 5751
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    goto :goto_0

    .line 5755
    :sswitch_3
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/ak;->a:I

    .line 5756
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/b/a/ak;->c:I

    goto :goto_0

    .line 5760
    :sswitch_4
    invoke-virtual {p1}, Lcom/b/a/m;->m()I

    move-result v1

    .line 5761
    invoke-static {v1}, Lcom/b/a/al;->a(I)Lcom/b/a/al;

    move-result-object v2

    .line 5762
    if-nez v2, :cond_1

    .line 5763
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/b/a/gi;->a(II)Lcom/b/a/gi;

    goto :goto_0

    .line 5765
    :cond_1
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/ak;->a:I

    .line 5766
    iput-object v2, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    goto :goto_0

    .line 5771
    :sswitch_5
    invoke-virtual {p1}, Lcom/b/a/m;->m()I

    move-result v1

    .line 5772
    invoke-static {v1}, Lcom/b/a/an;->a(I)Lcom/b/a/an;

    move-result-object v2

    .line 5773
    if-nez v2, :cond_2

    .line 5774
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/b/a/gi;->a(II)Lcom/b/a/gi;

    goto :goto_0

    .line 5776
    :cond_2
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/ak;->a:I

    .line 5777
    iput-object v2, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    goto :goto_0

    .line 5782
    :sswitch_6
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/b/a/ak;->a:I

    .line 5783
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5787
    :sswitch_7
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/b/a/ak;->a:I

    .line 5788
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5792
    :sswitch_8
    invoke-static {}, Lcom/b/a/aq;->s()Lcom/b/a/ar;

    move-result-object v1

    .line 5793
    invoke-virtual {p0}, Lcom/b/a/ak;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5794
    invoke-virtual {p0}, Lcom/b/a/ak;->w()Lcom/b/a/aq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/ar;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    .line 5796
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 5797
    invoke-virtual {v1}, Lcom/b/a/ar;->t()Lcom/b/a/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iput-object v1, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    invoke-virtual {p0}, Lcom/b/a/ak;->af_()V

    :goto_2
    iget v1, p0, Lcom/b/a/ak;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/b/a/ak;->a:I

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 5730
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->V()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->U()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->V()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5540
    invoke-direct {p0}, Lcom/b/a/ak;->U()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5812
    iget-object v0, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5813
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5814
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5815
    iput-object v0, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    .line 5818
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 5845
    iget v0, p0, Lcom/b/a/ak;->a:I

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

.method public final j_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5809
    iget v0, p0, Lcom/b/a/ak;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 5848
    iget v0, p0, Lcom/b/a/ak;->c:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 5866
    iget v0, p0, Lcom/b/a/ak;->a:I

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

.method public final m()Lcom/b/a/al;
    .locals 1

    .prologue
    .line 5869
    iget-object v0, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    return-object v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 5890
    iget v0, p0, Lcom/b/a/ak;->a:I

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

.method public final o()Lcom/b/a/an;
    .locals 1

    .prologue
    .line 5893
    iget-object v0, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 5914
    iget v0, p0, Lcom/b/a/ak;->a:I

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

.method public final q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5917
    iget-object v0, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5918
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5919
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5920
    iput-object v0, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    .line 5923
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 5950
    iget v0, p0, Lcom/b/a/ak;->a:I

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

.method public final s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5953
    iget-object v0, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5954
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5955
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5956
    iput-object v0, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    .line 5959
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 5986
    iget v0, p0, Lcom/b/a/ak;->a:I

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

.method public final u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5989
    iget-object v0, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 5990
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5991
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5992
    iput-object v0, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    .line 5995
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 6024
    iget v0, p0, Lcom/b/a/ak;->a:I

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

.method public final w()Lcom/b/a/aq;
    .locals 1

    .prologue
    .line 6027
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6028
    iget-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    .line 6030
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/aq;

    move-object v0, p0

    goto :goto_0
.end method

.method public final x()Lcom/b/a/au;
    .locals 1

    .prologue
    .line 6089
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 6090
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/au;

    move-object v0, p0

    .line 6092
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    goto :goto_0
.end method

.method public final y()Lcom/b/a/aj;
    .locals 2

    .prologue
    .line 5610
    invoke-virtual {p0}, Lcom/b/a/ak;->z()Lcom/b/a/aj;

    move-result-object v0

    .line 5611
    invoke-virtual {v0}, Lcom/b/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5612
    invoke-static {v0}, Lcom/b/a/ak;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 5614
    :cond_0
    return-object v0
.end method

.method public final z()Lcom/b/a/aj;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5628
    new-instance v1, Lcom/b/a/aj;

    invoke-direct {v1, p0}, Lcom/b/a/aj;-><init>(Lcom/b/a/ak;)V

    .line 5629
    iget v0, p0, Lcom/b/a/ak;->a:I

    .line 5630
    const/4 v2, 0x0

    .line 5631
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 5634
    :cond_0
    iget-object v3, p0, Lcom/b/a/ak;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/aj;->a(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5635
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5636
    or-int/lit8 v2, v2, 0x2

    .line 5638
    :cond_1
    iget v3, p0, Lcom/b/a/ak;->c:I

    invoke-static {v1, v3}, Lcom/b/a/aj;->a(Lcom/b/a/aj;I)I

    .line 5639
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5640
    or-int/lit8 v2, v2, 0x4

    .line 5642
    :cond_2
    iget-object v3, p0, Lcom/b/a/ak;->d:Lcom/b/a/al;

    invoke-static {v1, v3}, Lcom/b/a/aj;->a(Lcom/b/a/aj;Lcom/b/a/al;)Lcom/b/a/al;

    .line 5643
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5644
    or-int/lit8 v2, v2, 0x8

    .line 5646
    :cond_3
    iget-object v3, p0, Lcom/b/a/ak;->e:Lcom/b/a/an;

    invoke-static {v1, v3}, Lcom/b/a/aj;->a(Lcom/b/a/aj;Lcom/b/a/an;)Lcom/b/a/an;

    .line 5647
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 5648
    or-int/lit8 v2, v2, 0x10

    .line 5650
    :cond_4
    iget-object v3, p0, Lcom/b/a/ak;->f:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/aj;->b(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5651
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 5652
    or-int/lit8 v2, v2, 0x20

    .line 5654
    :cond_5
    iget-object v3, p0, Lcom/b/a/ak;->g:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/aj;->c(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5655
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 5656
    or-int/lit8 v2, v2, 0x40

    .line 5658
    :cond_6
    iget-object v3, p0, Lcom/b/a/ak;->h:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/aj;->d(Lcom/b/a/aj;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5659
    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_7

    .line 5660
    or-int/lit16 v0, v2, 0x80

    move v2, v0

    .line 5662
    :cond_7
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    if-nez v0, :cond_8

    .line 5663
    iget-object v0, p0, Lcom/b/a/ak;->i:Lcom/b/a/aq;

    invoke-static {v1, v0}, Lcom/b/a/aj;->a(Lcom/b/a/aj;Lcom/b/a/aq;)Lcom/b/a/aq;

    .line 5667
    :goto_0
    invoke-static {v1, v2}, Lcom/b/a/aj;->b(Lcom/b/a/aj;I)I

    .line 5668
    invoke-virtual {p0}, Lcom/b/a/ak;->ab_()V

    .line 5669
    return-object v1

    .line 5665
    :cond_8
    iget-object v0, p0, Lcom/b/a/ak;->j:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/b/a/aq;

    invoke-static {v1, v0}, Lcom/b/a/aj;->a(Lcom/b/a/aj;Lcom/b/a/aq;)Lcom/b/a/aq;

    goto :goto_0
.end method
