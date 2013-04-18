.class public final Lcom/b/a/bk;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bl;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Lcom/b/a/bm;

.field private f:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8662
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 8847
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8883
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8919
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8955
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 8663
    invoke-direct {p0}, Lcom/b/a/bk;->u()V

    .line 8664
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 8648
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bk;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8667
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 8847
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8883
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8919
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8955
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 8668
    invoke-direct {p0}, Lcom/b/a/bk;->u()V

    .line 8669
    return-void
.end method

.method private A()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8871
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8872
    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8873
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8874
    return-object p0
.end method

.method private D()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8907
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8908
    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bj;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8909
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8910
    return-object p0
.end method

.method private E()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8943
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8944
    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bj;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8945
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8946
    return-object p0
.end method

.method private N()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 9009
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9010
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 9011
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 9015
    :goto_0
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 9016
    return-object p0

    .line 9013
    :cond_0
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private U()Lcom/b/a/bn;
    .locals 1

    .prologue
    .line 9019
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 9020
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 9021
    invoke-direct {p0}, Lcom/b/a/bk;->V()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/b/a/bn;

    return-object p0
.end method

.method private V()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 9033
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 9034
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    invoke-virtual {p0}, Lcom/b/a/bk;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/bk;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    .line 9039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 9041
    :cond_0
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bk;)Lcom/b/a/bj;
    .locals 2
    .parameter

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/b/a/bk;->r()Lcom/b/a/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/bk;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/b/a/bm;)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8969
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 8970
    if-nez p1, :cond_0

    .line 8971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8973
    :cond_0
    iput-object p1, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 8974
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8978
    :goto_0
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8979
    return-object p0

    .line 8976
    :cond_1
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/b/a/bn;)Lcom/b/a/bk;
    .locals 2
    .parameter

    .prologue
    .line 8983
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8984
    invoke-virtual {p1}, Lcom/b/a/bn;->k()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 8985
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8989
    :goto_0
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8990
    return-object p0

    .line 8987
    :cond_0
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/b/a/bn;->k()Lcom/b/a/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8862
    if-nez p1, :cond_0

    .line 8863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8865
    :cond_0
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8866
    iput-object p1, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8867
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8868
    return-object p0
.end method

.method private b(Lcom/b/a/bm;)Lcom/b/a/bk;
    .locals 2
    .parameter

    .prologue
    .line 8993
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 8994
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8996
    iget-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    invoke-static {v0}, Lcom/b/a/bm;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/bn;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 9001
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 9005
    :goto_1
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 9006
    return-object p0

    .line 8999
    :cond_0
    iput-object p1, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    goto :goto_0

    .line 9003
    :cond_1
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8898
    if-nez p1, :cond_0

    .line 8899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8901
    :cond_0
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8902
    iput-object p1, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8903
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8904
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8934
    if-nez p1, :cond_0

    .line 8935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8937
    :cond_0
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8938
    iput-object p1, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8939
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8940
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8757
    instance-of v0, p1, Lcom/b/a/bj;

    if-eqz v0, :cond_0

    .line 8758
    check-cast p1, Lcom/b/a/bj;

    invoke-virtual {p0, p1}, Lcom/b/a/bk;->a(Lcom/b/a/bj;)Lcom/b/a/bk;

    move-result-object v0

    .line 8761
    :goto_0
    return-object v0

    .line 8760
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 8761
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 8877
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8878
    iput-object p1, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8879
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8880
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 8913
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8914
    iput-object p1, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8915
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8916
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 8949
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8950
    iput-object p1, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8951
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8952
    return-void
.end method

.method static synthetic s()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8648
    new-instance v0, Lcom/b/a/bk;

    invoke-direct {v0}, Lcom/b/a/bk;-><init>()V

    return-object v0
.end method

.method private static t()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8653
    invoke-static {}, Lcom/b/a/p;->r()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 8671
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    if-eqz v0, :cond_0

    .line 8672
    invoke-direct {p0}, Lcom/b/a/bk;->V()Lcom/b/a/fp;

    .line 8674
    :cond_0
    return-void
.end method

.method private static v()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8676
    new-instance v0, Lcom/b/a/bk;

    invoke-direct {v0}, Lcom/b/a/bk;-><init>()V

    return-object v0
.end method

.method private w()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8680
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 8681
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8682
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8683
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8684
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8685
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8686
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8687
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8688
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 8692
    :goto_0
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8693
    return-object p0

    .line 8690
    :cond_0
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private x()Lcom/b/a/bk;
    .locals 2

    .prologue
    .line 8697
    new-instance v0, Lcom/b/a/bk;

    invoke-direct {v0}, Lcom/b/a/bk;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/bk;->r()Lcom/b/a/bj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/bk;->a(Lcom/b/a/bj;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static y()Lcom/b/a/bj;
    .locals 1

    .prologue
    .line 8706
    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private z()Lcom/b/a/bj;
    .locals 2

    .prologue
    .line 8719
    invoke-virtual {p0}, Lcom/b/a/bk;->r()Lcom/b/a/bj;

    move-result-object v0

    .line 8720
    invoke-virtual {v0}, Lcom/b/a/bj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8721
    invoke-static {v0}, Lcom/b/a/bk;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 8724
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 8658
    invoke-static {}, Lcom/b/a/p;->s()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8702
    invoke-static {}, Lcom/b/a/bj;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->w()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8648
    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8648
    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/b/a/bk;->r()Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/b/a/bk;->r()Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8648
    invoke-virtual {p0}, Lcom/b/a/bk;->q()Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/bj;)Lcom/b/a/bk;
    .locals 3
    .parameter

    .prologue
    .line 8766
    invoke-static {}, Lcom/b/a/bj;->e()Lcom/b/a/bj;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 8780
    :goto_0
    return-object v0

    .line 8767
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/bj;->z_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8768
    invoke-virtual {p1}, Lcom/b/a/bj;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bk;->a:I

    iput-object v0, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8770
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/bj;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8771
    invoke-virtual {p1}, Lcom/b/a/bj;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/bk;->a:I

    iput-object v0, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8773
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/bj;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8774
    invoke-virtual {p1}, Lcom/b/a/bj;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/bk;->a:I

    iput-object v0, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    .line 8776
    :cond_6
    invoke-virtual {p1}, Lcom/b/a/bj;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8777
    invoke-virtual {p1}, Lcom/b/a/bj;->o()Lcom/b/a/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v1, :cond_9

    iget v1, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v2

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    invoke-static {v1}, Lcom/b/a/bm;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/bn;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    :goto_2
    iget v0, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/b/a/bk;->a:I

    .line 8779
    :cond_7
    invoke-virtual {p1}, Lcom/b/a/bj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bk;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 8780
    goto/16 :goto_0

    .line 8777
    :cond_8
    iput-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 8648
    invoke-direct {p0, p1}, Lcom/b/a/bk;->d(Lcom/b/a/ev;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 8784
    invoke-virtual {p0}, Lcom/b/a/bk;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8785
    invoke-virtual {p0}, Lcom/b/a/bk;->o()Lcom/b/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bm;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8787
    const/4 v0, 0x0

    .line 8790
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->w()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 8648
    invoke-direct {p0, p1}, Lcom/b/a/bk;->d(Lcom/b/a/ev;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8648
    invoke-virtual {p0, p1, p2}, Lcom/b/a/bk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bk;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 8797
    invoke-virtual {p0}, Lcom/b/a/bk;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 8801
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 8802
    sparse-switch v1, :sswitch_data_0

    .line 8808
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/bk;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8810
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bk;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 8811
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    move-object v0, p0

    .line 8812
    :goto_1
    return-object v0

    .line 8804
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/bk;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 8805
    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    move-object v0, p0

    .line 8806
    goto :goto_1

    .line 8817
    :sswitch_1
    iget v1, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/bk;->a:I

    .line 8818
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    goto :goto_0

    .line 8822
    :sswitch_2
    iget v1, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/bk;->a:I

    .line 8823
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    goto :goto_0

    .line 8827
    :sswitch_3
    iget v1, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/b/a/bk;->a:I

    .line 8828
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    goto :goto_0

    .line 8832
    :sswitch_4
    invoke-static {}, Lcom/b/a/bm;->k()Lcom/b/a/bn;

    move-result-object v1

    .line 8833
    invoke-virtual {p0}, Lcom/b/a/bk;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8834
    invoke-virtual {p0}, Lcom/b/a/bk;->o()Lcom/b/a/bm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/bn;->a(Lcom/b/a/bm;)Lcom/b/a/bn;

    .line 8836
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 8837
    invoke-virtual {v1}, Lcom/b/a/bn;->l()Lcom/b/a/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    invoke-virtual {p0}, Lcom/b/a/bk;->af_()V

    :goto_2
    iget v1, p0, Lcom/b/a/bk;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/b/a/bk;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 8802
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->w()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8648
    invoke-direct {p0}, Lcom/b/a/bk;->w()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8852
    iget-object v0, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8853
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8854
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 8855
    iput-object v0, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    .line 8858
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 8885
    iget v0, p0, Lcom/b/a/bk;->a:I

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

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8888
    iget-object v0, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8889
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8890
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 8891
    iput-object v0, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    .line 8894
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 8921
    iget v0, p0, Lcom/b/a/bk;->a:I

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

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8924
    iget-object v0, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8925
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8926
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 8927
    iput-object v0, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    .line 8930
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 8959
    iget v0, p0, Lcom/b/a/bk;->a:I

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

.method public final o()Lcom/b/a/bm;
    .locals 1

    .prologue
    .line 8962
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 8963
    iget-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    .line 8965
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/b/a/bm;

    move-object v0, p0

    goto :goto_0
.end method

.method public final p()Lcom/b/a/bo;
    .locals 1

    .prologue
    .line 9024
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 9025
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/b/a/bo;

    move-object v0, p0

    .line 9027
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    goto :goto_0
.end method

.method public final q()Lcom/b/a/bj;
    .locals 2

    .prologue
    .line 8710
    invoke-virtual {p0}, Lcom/b/a/bk;->r()Lcom/b/a/bj;

    move-result-object v0

    .line 8711
    invoke-virtual {v0}, Lcom/b/a/bj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8712
    invoke-static {v0}, Lcom/b/a/bk;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 8714
    :cond_0
    return-object v0
.end method

.method public final r()Lcom/b/a/bj;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8728
    new-instance v1, Lcom/b/a/bj;

    invoke-direct {v1, p0}, Lcom/b/a/bj;-><init>(Lcom/b/a/bk;)V

    .line 8729
    iget v0, p0, Lcom/b/a/bk;->a:I

    .line 8730
    const/4 v2, 0x0

    .line 8731
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 8734
    :cond_0
    iget-object v3, p0, Lcom/b/a/bk;->b:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/bj;->a(Lcom/b/a/bj;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8735
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8736
    or-int/lit8 v2, v2, 0x2

    .line 8738
    :cond_1
    iget-object v3, p0, Lcom/b/a/bk;->c:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/bj;->b(Lcom/b/a/bj;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8739
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8740
    or-int/lit8 v2, v2, 0x4

    .line 8742
    :cond_2
    iget-object v3, p0, Lcom/b/a/bk;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/b/a/bj;->c(Lcom/b/a/bj;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8743
    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    .line 8744
    or-int/lit8 v0, v2, 0x8

    move v2, v0

    .line 8746
    :cond_3
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    if-nez v0, :cond_4

    .line 8747
    iget-object v0, p0, Lcom/b/a/bk;->e:Lcom/b/a/bm;

    invoke-static {v1, v0}, Lcom/b/a/bj;->a(Lcom/b/a/bj;Lcom/b/a/bm;)Lcom/b/a/bm;

    .line 8751
    :goto_0
    invoke-static {v1, v2}, Lcom/b/a/bj;->a(Lcom/b/a/bj;I)I

    .line 8752
    invoke-virtual {p0}, Lcom/b/a/bk;->ab_()V

    .line 8753
    return-object v1

    .line 8749
    :cond_4
    iget-object v0, p0, Lcom/b/a/bk;->f:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/b/a/bm;

    invoke-static {v1, v0}, Lcom/b/a/bj;->a(Lcom/b/a/bj;Lcom/b/a/bm;)Lcom/b/a/bm;

    goto :goto_0
.end method

.method public final z_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8849
    iget v0, p0, Lcom/b/a/bk;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
