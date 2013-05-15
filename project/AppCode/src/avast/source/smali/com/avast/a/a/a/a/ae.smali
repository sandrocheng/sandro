.class public final Lcom/avast/a/a/a/a/ae;
.super Lcom/google/a/n;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/af;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Lcom/avast/a/a/a/a/r;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Z

.field private j:J

.field private k:Ljava/lang/Object;

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 1724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    .line 1813
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    .line 1902
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    .line 1991
    invoke-static {}, Lcom/avast/a/a/a/a/r;->a()Lcom/avast/a/a/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    .line 2034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    .line 2123
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->g:Ljava/lang/Object;

    .line 2222
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->k:Ljava/lang/Object;

    .line 1397
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->o()V

    .line 1398
    return-void
.end method

.method static synthetic n()Lcom/avast/a/a/a/a/ae;
    .locals 1

    .prologue
    .line 1391
    invoke-static {}, Lcom/avast/a/a/a/a/ae;->p()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 0

    .prologue
    .line 1401
    return-void
.end method

.method private static p()Lcom/avast/a/a/a/a/ae;
    .locals 1

    .prologue
    .line 1403
    new-instance v0, Lcom/avast/a/a/a/a/ae;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/ae;-><init>()V

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1727
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    .line 1729
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1731
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1816
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1817
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    .line 1818
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1820
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 1905
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1906
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    .line 1907
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1909
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 2037
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2038
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    .line 2039
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2041
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/a/ae;
    .locals 2

    .prologue
    .line 1438
    invoke-static {}, Lcom/avast/a/a/a/a/ae;->p()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->d()Lcom/avast/a/a/a/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/ad;)Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2209
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2210
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ae;->j:J

    .line 2212
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/ad;)Lcom/avast/a/a/a/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 1528
    invoke-static {}, Lcom/avast/a/a/a/a/ad;->a()Lcom/avast/a/a/a/a/ad;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-object p0

    .line 1529
    :cond_1
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->b(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1530
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1531
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->b(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    .line 1532
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1539
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->c(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1540
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1541
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->c(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    .line 1542
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1549
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->d(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1550
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1551
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->d(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    .line 1552
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1559
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1560
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->f()Lcom/avast/a/a/a/a/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->b(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/ae;

    .line 1562
    :cond_5
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->e(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1563
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1564
    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->e(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    .line 1565
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1572
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1573
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(Ljava/lang/String;)Lcom/avast/a/a/a/a/ae;

    .line 1575
    :cond_7
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1576
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->d(I)Lcom/avast/a/a/a/a/ae;

    .line 1578
    :cond_8
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1579
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(Z)Lcom/avast/a/a/a/a/ae;

    .line 1581
    :cond_9
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1582
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->n()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/ae;->a(J)Lcom/avast/a/a/a/a/ae;

    .line 1584
    :cond_a
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1585
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->b(Ljava/lang/String;)Lcom/avast/a/a/a/a/ae;

    .line 1587
    :cond_b
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1588
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->r()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/ae;->b(J)Lcom/avast/a/a/a/a/ae;

    .line 1590
    :cond_c
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1591
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->t()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/ae;->c(J)Lcom/avast/a/a/a/a/ae;

    .line 1593
    :cond_d
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/ad;->x()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/ae;->d(J)Lcom/avast/a/a/a/a/ae;

    goto/16 :goto_0

    .line 1534
    :cond_e
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->q()V

    .line 1535
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->b(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1544
    :cond_f
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->r()V

    .line 1545
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->c(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1554
    :cond_10
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->s()V

    .line 1555
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->d(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1567
    :cond_11
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->t()V

    .line 1568
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/a/a/a/ad;->e(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4
.end method

.method public a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 1938
    if-nez p1, :cond_0

    .line 1939
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1941
    :cond_0
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->s()V

    .line 1942
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 1760
    if-nez p1, :cond_0

    .line 1761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1763
    :cond_0
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->q()V

    .line 1764
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1766
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/o;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2070
    if-nez p1, :cond_0

    .line 2071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2073
    :cond_0
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->t()V

    .line 2074
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2076
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 1999
    if-nez p1, :cond_0

    .line 2000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2002
    :cond_0
    iput-object p1, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    .line 2004
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2005
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 1849
    if-nez p1, :cond_0

    .line 1850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1852
    :cond_0
    invoke-direct {p0}, Lcom/avast/a/a/a/a/ae;->r()V

    .line 1853
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/ae;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1632
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 1633
    sparse-switch v0, :sswitch_data_0

    .line 1638
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    :sswitch_0
    return-object p0

    .line 1645
    :sswitch_1
    invoke-static {}, Lcom/avast/a/a/a/a/j;->p()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    .line 1646
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 1647
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/k;->d()Lcom/avast/a/a/a/a/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/ae;

    goto :goto_0

    .line 1651
    :sswitch_2
    invoke-static {}, Lcom/avast/a/a/a/a/y;->r()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    .line 1652
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 1653
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/z;->d()Lcom/avast/a/a/a/a/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/ae;

    goto :goto_0

    .line 1657
    :sswitch_3
    invoke-static {}, Lcom/avast/a/a/a/a/g;->r()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    .line 1658
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 1659
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/h;->d()Lcom/avast/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/ae;

    goto :goto_0

    .line 1663
    :sswitch_4
    invoke-static {}, Lcom/avast/a/a/a/a/r;->ad()Lcom/avast/a/a/a/a/s;

    move-result-object v0

    .line 1664
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1665
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->m()Lcom/avast/a/a/a/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/a/s;->a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/s;

    .line 1667
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 1668
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/s;->d()Lcom/avast/a/a/a/a/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/ae;

    goto :goto_0

    .line 1672
    :sswitch_5
    invoke-static {}, Lcom/avast/a/a/a/a/o;->al()Lcom/avast/a/a/a/a/p;

    move-result-object v0

    .line 1673
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 1674
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/p;->d()Lcom/avast/a/a/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/o;)Lcom/avast/a/a/a/a/ae;

    goto :goto_0

    .line 1678
    :sswitch_6
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1679
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->g:Ljava/lang/Object;

    goto :goto_0

    .line 1683
    :sswitch_7
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1684
    invoke-virtual {p1}, Lcom/google/a/d;->m()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->h:I

    goto :goto_0

    .line 1688
    :sswitch_8
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1689
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/a/ae;->i:Z

    goto/16 :goto_0

    .line 1693
    :sswitch_9
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1694
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/ae;->j:J

    goto/16 :goto_0

    .line 1698
    :sswitch_a
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1699
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->k:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1703
    :sswitch_b
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1704
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/ae;->l:J

    goto/16 :goto_0

    .line 1708
    :sswitch_c
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1709
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/ae;->m:J

    goto/16 :goto_0

    .line 1713
    :sswitch_d
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1714
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/ae;->n:J

    goto/16 :goto_0

    .line 1633
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2138
    if-nez p1, :cond_0

    .line 2139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2141
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2142
    iput-object p1, p0, Lcom/avast/a/a/a/a/ae;->g:Ljava/lang/Object;

    .line 2144
    return-object p0
.end method

.method public a(Z)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2188
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2189
    iput-boolean p1, p0, Lcom/avast/a/a/a/a/ae;->i:Z

    .line 2191
    return-object p0
.end method

.method public a(I)Lcom/avast/a/a/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/j;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 1391
    check-cast p1, Lcom/avast/a/a/a/a/ad;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/ad;)Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/a/ad;
    .locals 1

    .prologue
    .line 1442
    invoke-static {}, Lcom/avast/a/a/a/a/ad;->a()Lcom/avast/a/a/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2266
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2267
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ae;->l:J

    .line 2269
    return-object p0
.end method

.method public b(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 2015
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    invoke-static {}, Lcom/avast/a/a/a/a/r;->a()Lcom/avast/a/a/a/a/r;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    invoke-static {v0}, Lcom/avast/a/a/a/a/r;->a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/a/a/a/a/s;->a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/a/a/a/s;->d()Lcom/avast/a/a/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    .line 2023
    :goto_0
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2024
    return-object p0

    .line 2020
    :cond_0
    iput-object p1, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2237
    if-nez p1, :cond_0

    .line 2238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2240
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2241
    iput-object p1, p0, Lcom/avast/a/a/a/a/ae;->k:Ljava/lang/Object;

    .line 2243
    return-object p0
.end method

.method public b(I)Lcom/avast/a/a/a/a/y;
    .locals 1
    .parameter

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/y;

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/a/ad;
    .locals 2

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->d()Lcom/avast/a/a/a/a/ad;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/ad;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1448
    invoke-static {v0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 1450
    :cond_0
    return-object v0
.end method

.method public c(J)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2287
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2288
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ae;->m:J

    .line 2290
    return-object p0
.end method

.method public c(I)Lcom/avast/a/a/a/a/g;
    .locals 1
    .parameter

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/g;

    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->a()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/a/ad;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1464
    new-instance v2, Lcom/avast/a/a/a/a/ad;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/a/ad;-><init>(Lcom/avast/a/a/a/a/ae;Lcom/avast/a/a/a/a/b;)V

    .line 1465
    iget v3, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1466
    const/4 v1, 0x0

    .line 1467
    iget v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    .line 1468
    iget-object v4, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    .line 1469
    iget v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1471
    :cond_0
    iget-object v4, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/avast/a/a/a/a/ad;->a(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;

    .line 1472
    iget v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1473
    iget-object v4, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    .line 1474
    iget v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1476
    :cond_1
    iget-object v4, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/avast/a/a/a/a/ad;->b(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;

    .line 1477
    iget v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1478
    iget-object v4, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    .line 1479
    iget v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1481
    :cond_2
    iget-object v4, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/avast/a/a/a/a/ad;->c(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;

    .line 1482
    and-int/lit8 v4, v3, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_c

    .line 1485
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/ad;->a(Lcom/avast/a/a/a/a/ad;Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/r;

    .line 1486
    iget v1, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 1487
    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    .line 1488
    iget v1, p0, Lcom/avast/a/a/a/a/ae;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 1490
    :cond_3
    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->f:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/ad;->d(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;

    .line 1491
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 1492
    or-int/lit8 v0, v0, 0x2

    .line 1494
    :cond_4
    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/ad;->a(Lcom/avast/a/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 1496
    or-int/lit8 v0, v0, 0x4

    .line 1498
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/a/ae;->h:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/ad;->a(Lcom/avast/a/a/a/a/ad;I)I

    .line 1499
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 1500
    or-int/lit8 v0, v0, 0x8

    .line 1502
    :cond_6
    iget-boolean v1, p0, Lcom/avast/a/a/a/a/ae;->i:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/ad;->a(Lcom/avast/a/a/a/a/ad;Z)Z

    .line 1503
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 1504
    or-int/lit8 v0, v0, 0x10

    .line 1506
    :cond_7
    iget-wide v4, p0, Lcom/avast/a/a/a/a/ae;->j:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/ad;->a(Lcom/avast/a/a/a/a/ad;J)J

    .line 1507
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 1508
    or-int/lit8 v0, v0, 0x20

    .line 1510
    :cond_8
    iget-object v1, p0, Lcom/avast/a/a/a/a/ae;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/ad;->b(Lcom/avast/a/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 1512
    or-int/lit8 v0, v0, 0x40

    .line 1514
    :cond_9
    iget-wide v4, p0, Lcom/avast/a/a/a/a/ae;->l:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/ad;->b(Lcom/avast/a/a/a/a/ad;J)J

    .line 1515
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 1516
    or-int/lit16 v0, v0, 0x80

    .line 1518
    :cond_a
    iget-wide v4, p0, Lcom/avast/a/a/a/a/ae;->m:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/ad;->c(Lcom/avast/a/a/a/a/ad;J)J

    .line 1519
    and-int/lit16 v1, v3, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_b

    .line 1520
    or-int/lit16 v0, v0, 0x100

    .line 1522
    :cond_b
    iget-wide v3, p0, Lcom/avast/a/a/a/a/ae;->n:J

    invoke-static {v2, v3, v4}, Lcom/avast/a/a/a/a/ad;->d(Lcom/avast/a/a/a/a/ad;J)J

    .line 1523
    invoke-static {v2, v0}, Lcom/avast/a/a/a/a/ad;->b(Lcom/avast/a/a/a/a/ad;I)I

    .line 1524
    return-object v2

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public d(I)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2167
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2168
    iput p1, p0, Lcom/avast/a/a/a/a/ae;->h:I

    .line 2170
    return-object p0
.end method

.method public d(J)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2308
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

    .line 2309
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ae;->n:J

    .line 2311
    return-object p0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->b()Lcom/avast/a/a/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->a()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->a()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->c()Lcom/avast/a/a/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 1993
    iget v0, p0, Lcom/avast/a/a/a/a/ae;->a:I

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

.method public m()Lcom/avast/a/a/a/a/r;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/avast/a/a/a/a/ae;->e:Lcom/avast/a/a/a/a/r;

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1600
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->e()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1601
    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->a(I)Lcom/avast/a/a/a/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/j;->v()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1624
    :cond_0
    :goto_1
    return v1

    .line 1600
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1606
    :goto_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->f()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1607
    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->b(I)Lcom/avast/a/a/a/a/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/y;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1606
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1612
    :goto_3
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->k()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1613
    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/ae;->c(I)Lcom/avast/a/a/a/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/g;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1612
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1618
    :cond_4
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1619
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ae;->m()Lcom/avast/a/a/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/a/a/a/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method
