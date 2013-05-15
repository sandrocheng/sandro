.class public final Lcom/avast/android/generic/internet/c/a/d;
.super Lcom/google/a/n;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/e;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/a/c;

.field private j:Lcom/google/a/c;

.field private k:Lcom/avast/android/generic/internet/c/a/q;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 1496
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->b:Ljava/lang/Object;

    .line 1532
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->c:Ljava/lang/Object;

    .line 1568
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->d:Ljava/lang/Object;

    .line 1625
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->f:Ljava/lang/Object;

    .line 1661
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->g:Ljava/lang/Object;

    .line 1697
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->h:Ljava/lang/Object;

    .line 1733
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->i:Lcom/google/a/c;

    .line 1757
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->j:Lcom/google/a/c;

    .line 1781
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->a()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    .line 1271
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/d;->l()V

    .line 1272
    return-void
.end method

.method static synthetic k()Lcom/avast/android/generic/internet/c/a/d;
    .locals 1

    .prologue
    .line 1265
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/d;->m()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method private static m()Lcom/avast/android/generic/internet/c/a/d;
    .locals 1

    .prologue
    .line 1277
    new-instance v0, Lcom/avast/android/generic/internet/c/a/d;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/d;
    .locals 2

    .prologue
    .line 1306
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/d;->m()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->d()Lcom/avast/android/generic/internet/c/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/avast/android/generic/internet/c/a/c;)Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1612
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1613
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/d;->e:I

    .line 1615
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/c;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1380
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/c;->a()Lcom/avast/android/generic/internet/c/a/c;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-object p0

    .line 1381
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1382
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1384
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1385
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1387
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1388
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->c(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1390
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1391
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->a(I)Lcom/avast/android/generic/internet/c/a/d;

    .line 1393
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1394
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->d(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1396
    :cond_6
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1397
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->e(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1399
    :cond_7
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1400
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->f(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1402
    :cond_8
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1403
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->q()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1405
    :cond_9
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1406
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->s()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/d;

    .line 1408
    :cond_a
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/c;->u()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->b(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/d;

    goto/16 :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1789
    if-nez p1, :cond_0

    .line 1790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1792
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    .line 1794
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1795
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/r;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1799
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/r;->c()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    .line 1801
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1802
    return-object p0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1741
    if-nez p1, :cond_0

    .line 1742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1744
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1745
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->i:Lcom/google/a/c;

    .line 1747
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1423
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 1424
    sparse-switch v0, :sswitch_data_0

    .line 1429
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    :sswitch_0
    return-object p0

    .line 1436
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1437
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->b:Ljava/lang/Object;

    goto :goto_0

    .line 1441
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1442
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->c:Ljava/lang/Object;

    goto :goto_0

    .line 1446
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1447
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->e:I

    goto :goto_0

    .line 1451
    :sswitch_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1452
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1456
    :sswitch_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1457
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->g:Ljava/lang/Object;

    goto :goto_0

    .line 1461
    :sswitch_6
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1462
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->h:Ljava/lang/Object;

    goto :goto_0

    .line 1466
    :sswitch_7
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1467
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->i:Lcom/google/a/c;

    goto :goto_0

    .line 1471
    :sswitch_8
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1472
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->j:Lcom/google/a/c;

    goto :goto_0

    .line 1476
    :sswitch_9
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1477
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1481
    :sswitch_a
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->p()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    .line 1482
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1483
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->f()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;

    .line 1485
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 1486
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/r;->d()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/d;

    goto/16 :goto_0

    .line 1424
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1511
    if-nez p1, :cond_0

    .line 1512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1514
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1515
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->b:Ljava/lang/Object;

    .line 1517
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 1265
    check-cast p1, Lcom/avast/android/generic/internet/c/a/c;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/avast/android/generic/internet/c/a/c;)Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/c;
    .locals 1

    .prologue
    .line 1310
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/c;->a()Lcom/avast/android/generic/internet/c/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 2
    .parameter

    .prologue
    .line 1805
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->a()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/q;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/internet/c/a/r;->a(Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/r;->d()Lcom/avast/android/generic/internet/c/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    .line 1813
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1814
    return-object p0

    .line 1810
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    goto :goto_0
.end method

.method public b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1765
    if-nez p1, :cond_0

    .line 1766
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1768
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1769
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->j:Lcom/google/a/c;

    .line 1771
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1547
    if-nez p1, :cond_0

    .line 1548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1550
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1551
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->c:Ljava/lang/Object;

    .line 1553
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1265
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/c;
    .locals 2

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->d()Lcom/avast/android/generic/internet/c/a/c;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/c;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1316
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 1318
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1583
    if-nez p1, :cond_0

    .line 1584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1586
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1587
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->d:Ljava/lang/Object;

    .line 1589
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1265
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->a()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/c;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1332
    new-instance v2, Lcom/avast/android/generic/internet/c/a/c;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/c;-><init>(Lcom/avast/android/generic/internet/c/a/d;Lcom/avast/android/generic/internet/c/a/b;)V

    .line 1333
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1334
    const/4 v1, 0x0

    .line 1335
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    .line 1338
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->a(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1340
    or-int/lit8 v0, v0, 0x2

    .line 1342
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->b(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1344
    or-int/lit8 v0, v0, 0x4

    .line 1346
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->c(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 1348
    or-int/lit8 v0, v0, 0x8

    .line 1350
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/d;->e:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->a(Lcom/avast/android/generic/internet/c/a/c;I)I

    .line 1351
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 1352
    or-int/lit8 v0, v0, 0x10

    .line 1354
    :cond_3
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->d(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 1356
    or-int/lit8 v0, v0, 0x20

    .line 1358
    :cond_4
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->e(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 1360
    or-int/lit8 v0, v0, 0x40

    .line 1362
    :cond_5
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->f(Lcom/avast/android/generic/internet/c/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 1364
    or-int/lit16 v0, v0, 0x80

    .line 1366
    :cond_6
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->i:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->a(Lcom/avast/android/generic/internet/c/a/c;Lcom/google/a/c;)Lcom/google/a/c;

    .line 1367
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 1368
    or-int/lit16 v0, v0, 0x100

    .line 1370
    :cond_7
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->j:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->b(Lcom/avast/android/generic/internet/c/a/c;Lcom/google/a/c;)Lcom/google/a/c;

    .line 1371
    and-int/lit16 v1, v3, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_8

    .line 1372
    or-int/lit16 v0, v0, 0x200

    .line 1374
    :cond_8
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/c;->a(Lcom/avast/android/generic/internet/c/a/c;Lcom/avast/android/generic/internet/c/a/q;)Lcom/avast/android/generic/internet/c/a/q;

    .line 1375
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/c;->b(Lcom/avast/android/generic/internet/c/a/c;I)I

    .line 1376
    return-object v2

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1640
    if-nez p1, :cond_0

    .line 1641
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1643
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1644
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->f:Ljava/lang/Object;

    .line 1646
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1676
    if-nez p1, :cond_0

    .line 1677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1679
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1680
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->g:Ljava/lang/Object;

    .line 1682
    return-object p0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1783
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 1712
    if-nez p1, :cond_0

    .line 1713
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1715
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/d;->a:I

    .line 1716
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/d;->h:Ljava/lang/Object;

    .line 1718
    return-object p0
.end method

.method public f()Lcom/avast/android/generic/internet/c/a/q;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/d;->k:Lcom/avast/android/generic/internet/c/a/q;

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->b()Lcom/avast/android/generic/internet/c/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->a()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->a()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/d;->c()Lcom/avast/android/generic/internet/c/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 1415
    const/4 v0, 0x1

    return v0
.end method
