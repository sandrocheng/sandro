.class public final Lcom/keniu/security/sync/d/d/a/ji;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jj;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Ljava/util/List;

.field private e:Lcom/b/a/fc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6322
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 6521
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6611
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6323
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->q()V

    .line 6324
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 6308
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ji;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6327
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 6521
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6611
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6328
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->q()V

    .line 6329
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 6599
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6600
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    .line 6605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6607
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 6614
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6615
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6616
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6618
    :cond_0
    return-void
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6730
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6732
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6733
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6737
    :goto_0
    return-object p0

    .line 6735
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/iq;
    .locals 2

    .prologue
    .line 6769
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->b(Lcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    return-object p0
.end method

.method private U()Ljava/util/List;
    .locals 1

    .prologue
    .line 6779
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fc;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private V()Lcom/b/a/fc;
    .locals 5

    .prologue
    .line 6784
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6785
    new-instance v0, Lcom/b/a/fc;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->ae_()Lcom/b/a/dp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->ad_()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/fc;-><init>(Ljava/util/List;ZLcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    .line 6791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6793
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    return-object v0

    .line 6785
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ji;)Lcom/keniu/security/sync/d/d/a/jh;
    .locals 2
    .parameter

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->x()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ji;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6646
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 6647
    if-nez p2, :cond_0

    .line 6648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6650
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6651
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6652
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6656
    :goto_0
    return-object p0

    .line 6654
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(ILcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6660
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6661
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6662
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6663
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6667
    :goto_0
    return-object p0

    .line 6665
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->a(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter

    .prologue
    .line 6535
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 6536
    if-nez p1, :cond_0

    .line 6537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6539
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6540
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6544
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6545
    return-object p0

    .line 6542
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 2
    .parameter

    .prologue
    .line 6549
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6550
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6551
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6555
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6556
    return-object p0

    .line 6553
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter

    .prologue
    .line 6670
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 6671
    if-nez p1, :cond_0

    .line 6672
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6674
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6675
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6676
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6680
    :goto_0
    return-object p0

    .line 6678
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 2
    .parameter

    .prologue
    .line 6698
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6699
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6700
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6701
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6705
    :goto_0
    return-object p0

    .line 6703
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private a(Ljava/lang/Iterable;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter

    .prologue
    .line 6720
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6721
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6722
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/b/a/dn;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6723
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6727
    :goto_0
    return-object p0

    .line 6725
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/ip;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6684
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 6685
    if-nez p2, :cond_0

    .line 6686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6688
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6689
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6690
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6694
    :goto_0
    return-object p0

    .line 6692
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(ILcom/keniu/security/sync/d/d/a/iq;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6709
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6710
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6711
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6712
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6716
    :goto_0
    return-object p0

    .line 6714
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/iq;->i()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->b(ILcom/b/a/dk;)Lcom/b/a/fc;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 2
    .parameter

    .prologue
    .line 6559
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 6560
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6562
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6567
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6571
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6572
    return-object p0

    .line 6565
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 6569
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private c(I)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter

    .prologue
    .line 6740
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6741
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6742
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6743
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6747
    :goto_0
    return-object p0

    .line 6745
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->d(I)V

    goto :goto_0
.end method

.method private d(I)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 1
    .parameter

    .prologue
    .line 6751
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->b(I)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1
    .parameter

    .prologue
    .line 6415
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/jh;

    if-eqz v0, :cond_0

    .line 6416
    check-cast p1, Lcom/keniu/security/sync/d/d/a/jh;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/jh;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    .line 6419
    :goto_0
    return-object v0

    .line 6418
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 6419
    goto :goto_0
.end method

.method private e(I)Lcom/keniu/security/sync/d/d/a/iq;
    .locals 2
    .parameter

    .prologue
    .line 6774
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->V()Lcom/b/a/fc;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->h()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/fc;->c(ILcom/b/a/dk;)Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/iq;

    return-object p0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6308
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ji;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6313
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->v()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 6331
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jh;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6332
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->A()Lcom/b/a/fp;

    .line 6333
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->V()Lcom/b/a/fc;

    .line 6335
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6337
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ji;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6341
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 6342
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6343
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6347
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6348
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_1

    .line 6349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6350
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6354
    :goto_1
    return-object p0

    .line 6345
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 6352
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->e()V

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 2

    .prologue
    .line 6358
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ji;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ji;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->x()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/keniu/security/sync/d/d/a/jh;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/jh;
    .locals 1

    .prologue
    .line 6367
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jh;->h()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/jh;
    .locals 2

    .prologue
    .line 6371
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->x()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    .line 6372
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6373
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ji;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 6375
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/jh;
    .locals 2

    .prologue
    .line 6380
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->x()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    .line 6381
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6382
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ji;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 6385
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/jh;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6389
    new-instance v1, Lcom/keniu/security/sync/d/d/a/jh;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/jh;-><init>(Lcom/keniu/security/sync/d/d/a/ji;)V

    .line 6390
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6391
    const/4 v2, 0x0

    .line 6392
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    .line 6395
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 6396
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 6400
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_3

    .line 6401
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 6402
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6403
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6405
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;Ljava/util/List;)Ljava/util/List;

    .line 6409
    :goto_1
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;I)I

    .line 6410
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->ab_()V

    .line 6411
    return-object v1

    .line 6398
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 6407
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ji;
    .locals 1

    .prologue
    .line 6575
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6576
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6577
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6581
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6582
    return-object p0

    .line 6579
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 6585
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6586
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6587
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->A()Lcom/b/a/fp;

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
    .line 6318
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->w()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 6363
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jh;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->s()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->t()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6308
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jh;->h()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6308
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jh;->h()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->x()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->v()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->x()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->v()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 6308
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6308
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ji;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/ip;
    .locals 1
    .parameter

    .prologue
    .line 6638
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6639
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ip;

    move-object v0, p0

    .line 6641
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->a(I)Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ip;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/jh;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 6424
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jh;->h()Lcom/keniu/security/sync/d/d/a/jh;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 6455
    :goto_0
    return-object v0

    .line 6425
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jh;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6426
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jh;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6428
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_6

    .line 6429
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6430
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6431
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6432
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6437
    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    .line 6454
    :cond_2
    :goto_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ji;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 6455
    goto :goto_0

    .line 6426
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 6434
    :cond_5
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    .line 6435
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 6440
    :cond_6
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6441
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6442
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->b()V

    .line 6443
    iput-object v3, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    .line 6444
    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    .line 6445
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    .line 6446
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jh;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->V()Lcom/b/a/fc;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    goto :goto_4

    :cond_7
    move-object v0, v3

    goto :goto_5

    .line 6450
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-static {p1}, Lcom/keniu/security/sync/d/d/a/jh;->a(Lcom/keniu/security/sync/d/d/a/jh;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fc;->a(Ljava/lang/Iterable;)Lcom/b/a/fc;

    goto :goto_4
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6459
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 6473
    :goto_0
    return v0

    .line 6463
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 6465
    goto :goto_0

    :cond_1
    move v0, v2

    .line 6467
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->o()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6468
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ji;->a(I)Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/ip;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 6470
    goto :goto_0

    .line 6467
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6473
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->t()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6308
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ji;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/keniu/security/sync/d/d/a/ir;
    .locals 1
    .parameter

    .prologue
    .line 6755
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6756
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ir;

    move-object v0, p0

    .line 6757
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0, p1}, Lcom/b/a/fc;->c(I)Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ir;

    move-object v0, p0

    goto :goto_0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->s()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 6308
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ji;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6308
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ji;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->t()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->t()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6308
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ji;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->t()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ji;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 6480
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 6484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 6485
    sparse-switch v1, :sswitch_data_0

    .line 6491
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ji;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6493
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ji;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 6494
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    move-object v0, p0

    .line 6495
    :goto_1
    return-object v0

    .line 6487
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ji;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 6488
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    move-object v0, p0

    .line 6489
    goto :goto_1

    .line 6500
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 6501
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6502
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 6504
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 6505
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 6509
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ip;->t()Lcom/keniu/security/sync/d/d/a/iq;

    move-result-object v1

    .line 6510
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 6511
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/iq;->t()Lcom/keniu/security/sync/d/d/a/ip;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->D()V

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ji;->af_()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v2, v1}, Lcom/b/a/fc;->a(Lcom/b/a/dk;)Lcom/b/a/fc;

    goto/16 :goto_0

    .line 6485
    nop

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
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->s()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->t()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ji;->s()Lcom/keniu/security/sync/d/d/a/ji;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6525
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->a:I

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
    .line 6528
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 6529
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 6531
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 6590
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 6591
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 6593
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 6624
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6625
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6627
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 6762
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-eqz v0, :cond_0

    .line 6763
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->i()Ljava/util/List;

    move-result-object v0

    .line 6765
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 6631
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    if-nez v0, :cond_0

    .line 6632
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6634
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ji;->e:Lcom/b/a/fc;

    invoke-virtual {v0}, Lcom/b/a/fc;->c()I

    move-result v0

    goto :goto_0
.end method
