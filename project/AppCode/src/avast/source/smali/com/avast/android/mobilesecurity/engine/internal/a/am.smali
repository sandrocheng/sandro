.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/am;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/an;


# instance fields
.field private a:I

.field private b:Lcom/google/a/z;

.field private c:J

.field private d:Ljava/lang/Object;

.field private e:Lcom/google/a/c;

.field private f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 1474
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    .line 1551
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->d:Ljava/lang/Object;

    .line 1587
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->e:Lcom/google/a/c;

    .line 1611
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    .line 1310
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->l()V

    .line 1311
    return-void
.end method

.method static synthetic k()Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->m()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 1314
    return-void
.end method

.method private static m()Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1

    .prologue
    .line 1316
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;-><init>()V

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1476
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1477
    new-instance v0, Lcom/google/a/y;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    invoke-direct {v0, v1}, Lcom/google/a/y;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    .line 1478
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1480
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 2

    .prologue
    .line 1335
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->m()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1
    .parameter

    .prologue
    .line 1538
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1539
    iput-wide p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->c:J

    .line 1541
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/aa;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1
    .parameter

    .prologue
    .line 1629
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    .line 1631
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1632
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 2
    .parameter

    .prologue
    .line 1391
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-object p0

    .line 1392
    :cond_1
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/google/a/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1393
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1394
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/google/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    .line 1395
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1402
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1403
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(J)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 1405
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1406
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 1408
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1409
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->h()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 1411
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    goto :goto_0

    .line 1397
    :cond_6
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->n()V

    .line 1398
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    invoke-static {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/google/a/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1
    .parameter

    .prologue
    .line 1619
    if-nez p1, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1622
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    .line 1624
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1625
    return-object p0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1
    .parameter

    .prologue
    .line 1595
    if-nez p1, :cond_0

    .line 1596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1598
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1599
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->e:Lcom/google/a/c;

    .line 1601
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 1427
    sparse-switch v0, :sswitch_data_0

    .line 1432
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    :sswitch_0
    return-object p0

    .line 1439
    :sswitch_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->n()V

    .line 1440
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/z;->a(Lcom/google/a/c;)V

    goto :goto_0

    .line 1444
    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1445
    invoke-virtual {p1}, Lcom/google/a/d;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->c:J

    goto :goto_0

    .line 1449
    :sswitch_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1450
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1454
    :sswitch_4
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1455
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->e:Lcom/google/a/c;

    goto :goto_0

    .line 1459
    :sswitch_5
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    .line 1460
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1461
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 1463
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 1464
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    goto :goto_0

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1
    .parameter

    .prologue
    .line 1502
    if-nez p1, :cond_0

    .line 1503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->n()V

    .line 1506
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    invoke-interface {v0, p1}, Lcom/google/a/z;->add(Ljava/lang/Object;)Z

    .line 1508
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 1304
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/al;
    .locals 1

    .prologue
    .line 1339
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 2
    .parameter

    .prologue
    .line 1635
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    .line 1643
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1644
    return-object p0

    .line 1640
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    .locals 1
    .parameter

    .prologue
    .line 1566
    if-nez p1, :cond_0

    .line 1567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1569
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1570
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->d:Ljava/lang/Object;

    .line 1572
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/al;
    .locals 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    move-result-object v0

    .line 1344
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1345
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 1347
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/al;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1361
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/am;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 1362
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1363
    const/4 v1, 0x0

    .line 1364
    iget v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    .line 1365
    new-instance v4, Lcom/google/a/am;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    invoke-direct {v4, v5}, Lcom/google/a/am;-><init>(Lcom/google/a/z;)V

    iput-object v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    .line 1367
    iget v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

    .line 1369
    :cond_0
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b:Lcom/google/a/z;

    invoke-static {v2, v4}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Lcom/google/a/z;)Lcom/google/a/z;

    .line 1370
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1373
    :goto_0
    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->c:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;J)J

    .line 1374
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1375
    or-int/lit8 v0, v0, 0x2

    .line 1377
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 1379
    or-int/lit8 v0, v0, 0x4

    .line 1381
    :cond_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Lcom/google/a/c;)Lcom/google/a/c;

    .line 1382
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 1383
    or-int/lit8 v0, v0, 0x8

    .line 1385
    :cond_3
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    .line 1386
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/al;I)I

    .line 1387
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1613
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a:I

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

.method public f()Lcom/avast/android/mobilesecurity/engine/internal/a/z;
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->f:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x1

    return v0
.end method
