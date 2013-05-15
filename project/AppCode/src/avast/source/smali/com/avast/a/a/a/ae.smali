.class public final Lcom/avast/a/a/a/ae;
.super Lcom/google/a/n;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/af;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13519
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 13691
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->b:Ljava/lang/Object;

    .line 13727
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->c:Ljava/lang/Object;

    .line 13784
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->e:Ljava/lang/Object;

    .line 13820
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->f:Ljava/lang/Object;

    .line 13520
    invoke-direct {p0}, Lcom/avast/a/a/a/ae;->o()V

    .line 13521
    return-void
.end method

.method static synthetic n()Lcom/avast/a/a/a/ae;
    .locals 1

    .prologue
    .line 13514
    invoke-static {}, Lcom/avast/a/a/a/ae;->p()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 0

    .prologue
    .line 13524
    return-void
.end method

.method private static p()Lcom/avast/a/a/a/ae;
    .locals 1

    .prologue
    .line 13526
    new-instance v0, Lcom/avast/a/a/a/ae;

    invoke-direct {v0}, Lcom/avast/a/a/a/ae;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/ae;
    .locals 2

    .prologue
    .line 13545
    invoke-static {}, Lcom/avast/a/a/a/ae;->p()Lcom/avast/a/a/a/ae;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->d()Lcom/avast/a/a/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/ae;->a(Lcom/avast/a/a/a/ad;)Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 13771
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13772
    iput p1, p0, Lcom/avast/a/a/a/ae;->d:I

    .line 13774
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/ad;)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 13599
    invoke-static {}, Lcom/avast/a/a/a/ad;->a()Lcom/avast/a/a/a/ad;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 13615
    :cond_0
    :goto_0
    return-object p0

    .line 13600
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13601
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/ae;->a(Ljava/lang/String;)Lcom/avast/a/a/a/ae;

    .line 13603
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13604
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/ae;->b(Ljava/lang/String;)Lcom/avast/a/a/a/ae;

    .line 13606
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13607
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/ae;->a(I)Lcom/avast/a/a/a/ae;

    .line 13609
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13610
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/ae;->c(Ljava/lang/String;)Lcom/avast/a/a/a/ae;

    .line 13612
    :cond_5
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13613
    invoke-virtual {p1}, Lcom/avast/a/a/a/ad;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/ae;->d(Ljava/lang/String;)Lcom/avast/a/a/a/ae;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13647
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 13648
    sparse-switch v0, :sswitch_data_0

    .line 13653
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13655
    :sswitch_0
    return-object p0

    .line 13660
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13661
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->b:Ljava/lang/Object;

    goto :goto_0

    .line 13665
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13666
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->c:Ljava/lang/Object;

    goto :goto_0

    .line 13670
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13671
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/ae;->d:I

    goto :goto_0

    .line 13675
    :sswitch_4
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13676
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->e:Ljava/lang/Object;

    goto :goto_0

    .line 13680
    :sswitch_5
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13681
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/ae;->f:Ljava/lang/Object;

    goto :goto_0

    .line 13648
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 13706
    if-nez p1, :cond_0

    .line 13707
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13709
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13710
    iput-object p1, p0, Lcom/avast/a/a/a/ae;->b:Ljava/lang/Object;

    .line 13712
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 13514
    check-cast p1, Lcom/avast/a/a/a/ad;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/ae;->a(Lcom/avast/a/a/a/ad;)Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/ad;
    .locals 1

    .prologue
    .line 13549
    invoke-static {}, Lcom/avast/a/a/a/ad;->a()Lcom/avast/a/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 13742
    if-nez p1, :cond_0

    .line 13743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13745
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13746
    iput-object p1, p0, Lcom/avast/a/a/a/ae;->c:Ljava/lang/Object;

    .line 13748
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13514
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/ad;
    .locals 2

    .prologue
    .line 13553
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->d()Lcom/avast/a/a/a/ad;

    move-result-object v0

    .line 13554
    invoke-virtual {v0}, Lcom/avast/a/a/a/ad;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13555
    invoke-static {v0}, Lcom/avast/a/a/a/ae;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 13557
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 13799
    if-nez p1, :cond_0

    .line 13800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13802
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13803
    iput-object p1, p0, Lcom/avast/a/a/a/ae;->e:Ljava/lang/Object;

    .line 13805
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13514
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13514
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->a()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/ad;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 13571
    new-instance v2, Lcom/avast/a/a/a/ad;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/ad;-><init>(Lcom/avast/a/a/a/ae;Lcom/avast/a/a/a/l;)V

    .line 13572
    iget v3, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13573
    const/4 v1, 0x0

    .line 13574
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 13577
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/ae;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/ad;->a(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13578
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 13579
    or-int/lit8 v0, v0, 0x2

    .line 13581
    :cond_0
    iget-object v1, p0, Lcom/avast/a/a/a/ae;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/ad;->b(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13582
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 13583
    or-int/lit8 v0, v0, 0x4

    .line 13585
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/ae;->d:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/ad;->a(Lcom/avast/a/a/a/ad;I)I

    .line 13586
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 13587
    or-int/lit8 v0, v0, 0x8

    .line 13589
    :cond_2
    iget-object v1, p0, Lcom/avast/a/a/a/ae;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/ad;->c(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13590
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 13591
    or-int/lit8 v0, v0, 0x10

    .line 13593
    :cond_3
    iget-object v1, p0, Lcom/avast/a/a/a/ae;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/ad;->d(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13594
    invoke-static {v2, v0}, Lcom/avast/a/a/a/ad;->b(Lcom/avast/a/a/a/ad;I)I

    .line 13595
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 13835
    if-nez p1, :cond_0

    .line 13836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13838
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/ae;->a:I

    .line 13839
    iput-object p1, p0, Lcom/avast/a/a/a/ae;->f:Ljava/lang/Object;

    .line 13841
    return-object p0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13693
    iget v1, p0, Lcom/avast/a/a/a/ae;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 13729
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

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

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 13514
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->b()Lcom/avast/a/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 13514
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->a()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 13514
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->a()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 13514
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->c()Lcom/avast/a/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 13765
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

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

.method public l()Z
    .locals 2

    .prologue
    .line 13786
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

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

.method public m()Z
    .locals 2

    .prologue
    .line 13822
    iget v0, p0, Lcom/avast/a/a/a/ae;->a:I

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

.method public final v()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13619
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13639
    :cond_0
    :goto_0
    return v0

    .line 13623
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13627
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13631
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13635
    invoke-virtual {p0}, Lcom/avast/a/a/a/ae;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13639
    const/4 v0, 0x1

    goto :goto_0
.end method
