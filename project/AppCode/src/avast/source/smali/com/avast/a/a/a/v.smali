.class public final Lcom/avast/a/a/a/v;
.super Lcom/google/a/l;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/x;


# static fields
.field private static final a:Lcom/avast/a/a/a/v;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13160
    new-instance v0, Lcom/avast/a/a/a/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/v;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/v;->a:Lcom/avast/a/a/a/v;

    .line 13161
    sget-object v0, Lcom/avast/a/a/a/v;->a:Lcom/avast/a/a/a/v;

    invoke-direct {v0}, Lcom/avast/a/a/a/v;->m()V

    .line 13162
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/w;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12692
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 12785
    iput-byte v0, p0, Lcom/avast/a/a/a/v;->f:B

    .line 12820
    iput v0, p0, Lcom/avast/a/a/a/v;->g:I

    .line 12693
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/w;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12687
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/v;-><init>(Lcom/avast/a/a/a/w;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12694
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 12785
    iput-byte v0, p0, Lcom/avast/a/a/a/v;->f:B

    .line 12820
    iput v0, p0, Lcom/avast/a/a/a/v;->g:I

    .line 12694
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/v;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12687
    iput p1, p0, Lcom/avast/a/a/a/v;->c:I

    return p1
.end method

.method public static a()Lcom/avast/a/a/a/v;
    .locals 1

    .prologue
    .line 12698
    sget-object v0, Lcom/avast/a/a/a/v;->a:Lcom/avast/a/a/a/v;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/v;)Lcom/avast/a/a/a/w;
    .locals 1
    .parameter

    .prologue
    .line 12919
    invoke-static {}, Lcom/avast/a/a/a/v;->h()Lcom/avast/a/a/a/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/w;->a(Lcom/avast/a/a/a/v;)Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12687
    iput-object p1, p0, Lcom/avast/a/a/a/v;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/v;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12687
    iput p1, p0, Lcom/avast/a/a/a/v;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12687
    iput-object p1, p0, Lcom/avast/a/a/a/v;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/avast/a/a/a/w;
    .locals 1

    .prologue
    .line 12916
    invoke-static {}, Lcom/avast/a/a/a/w;->l()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 12737
    iget-object v0, p0, Lcom/avast/a/a/a/v;->d:Ljava/lang/Object;

    .line 12738
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12739
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 12741
    iput-object v0, p0, Lcom/avast/a/a/a/v;->d:Ljava/lang/Object;

    .line 12744
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private l()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 12769
    iget-object v0, p0, Lcom/avast/a/a/a/v;->e:Ljava/lang/Object;

    .line 12770
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12771
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 12773
    iput-object v0, p0, Lcom/avast/a/a/a/v;->e:Ljava/lang/Object;

    .line 12776
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 12781
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/a/a/a/v;->c:I

    .line 12782
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/v;->d:Ljava/lang/Object;

    .line 12783
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/v;->e:Ljava/lang/Object;

    .line 12784
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 12687
    invoke-virtual {p0}, Lcom/avast/a/a/a/v;->j()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 12687
    invoke-virtual {p0}, Lcom/avast/a/a/a/v;->i()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12808
    invoke-virtual {p0}, Lcom/avast/a/a/a/v;->w()I

    .line 12809
    iget v0, p0, Lcom/avast/a/a/a/v;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12810
    iget v0, p0, Lcom/avast/a/a/a/v;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(II)V

    .line 12812
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/v;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12813
    invoke-direct {p0}, Lcom/avast/a/a/a/v;->k()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 12815
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/v;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 12816
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/v;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 12818
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12710
    iget v1, p0, Lcom/avast/a/a/a/v;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 12713
    iget v0, p0, Lcom/avast/a/a/a/v;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 12720
    iget v0, p0, Lcom/avast/a/a/a/v;->b:I

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

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12723
    iget-object v0, p0, Lcom/avast/a/a/a/v;->d:Ljava/lang/Object;

    .line 12724
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12725
    check-cast v0, Ljava/lang/String;

    .line 12733
    :goto_0
    return-object v0

    .line 12727
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 12729
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 12730
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12731
    iput-object v1, p0, Lcom/avast/a/a/a/v;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12733
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 12752
    iget v0, p0, Lcom/avast/a/a/a/v;->b:I

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

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12755
    iget-object v0, p0, Lcom/avast/a/a/a/v;->e:Ljava/lang/Object;

    .line 12756
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12757
    check-cast v0, Ljava/lang/String;

    .line 12765
    :goto_0
    return-object v0

    .line 12759
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 12761
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 12762
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12763
    iput-object v1, p0, Lcom/avast/a/a/a/v;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12765
    goto :goto_0
.end method

.method public i()Lcom/avast/a/a/a/w;
    .locals 1

    .prologue
    .line 12917
    invoke-static {}, Lcom/avast/a/a/a/v;->h()Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/avast/a/a/a/w;
    .locals 1

    .prologue
    .line 12921
    invoke-static {p0}, Lcom/avast/a/a/a/v;->a(Lcom/avast/a/a/a/v;)Lcom/avast/a/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12787
    iget-byte v2, p0, Lcom/avast/a/a/a/v;->f:B

    .line 12788
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 12803
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 12788
    goto :goto_0

    .line 12790
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/v;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12791
    iput-byte v1, p0, Lcom/avast/a/a/a/v;->f:B

    goto :goto_1

    .line 12794
    :cond_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/v;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12795
    iput-byte v1, p0, Lcom/avast/a/a/a/v;->f:B

    goto :goto_1

    .line 12798
    :cond_3
    invoke-virtual {p0}, Lcom/avast/a/a/a/v;->f()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12799
    iput-byte v1, p0, Lcom/avast/a/a/a/v;->f:B

    goto :goto_1

    .line 12802
    :cond_4
    iput-byte v0, p0, Lcom/avast/a/a/a/v;->f:B

    move v1, v0

    .line 12803
    goto :goto_1
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12822
    iget v0, p0, Lcom/avast/a/a/a/v;->g:I

    .line 12823
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12839
    :goto_0
    return v0

    .line 12825
    :cond_0
    const/4 v0, 0x0

    .line 12826
    iget v1, p0, Lcom/avast/a/a/a/v;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12827
    iget v1, p0, Lcom/avast/a/a/a/v;->c:I

    invoke-static {v2, v1}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12830
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/v;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12831
    invoke-direct {p0}, Lcom/avast/a/a/a/v;->k()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12834
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/v;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 12835
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/v;->l()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12838
    :cond_3
    iput v0, p0, Lcom/avast/a/a/a/v;->g:I

    goto :goto_0
.end method
