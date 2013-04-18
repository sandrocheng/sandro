.class public final Lcom/keniu/security/sync/d/d/a/ic;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/id;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/gn;

.field private c:Lcom/b/a/fp;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1244
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 1417
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1245
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->s()V

    .line 1246
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ic;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1249
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 1417
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1250
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->s()V

    .line 1251
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/go;
    .locals 1

    .prologue
    .line 1481
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1482
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1483
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->D()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private D()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1496
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    .line 1501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 2

    .prologue
    .line 1521
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1522
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->d:J

    .line 1523
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1524
    return-object p0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 2

    .prologue
    .line 1542
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->e:J

    .line 1544
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1545
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ic;)Lcom/keniu/security/sync/d/d/a/ib;
    .locals 2
    .parameter

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->y()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ib;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ic;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 2
    .parameter

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1446
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1447
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1451
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1452
    return-object p0

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(J)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1
    .parameter

    .prologue
    .line 1536
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1537
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/ic;->e:J

    .line 1538
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1539
    return-object p0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 2
    .parameter

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1456
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1463
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1467
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1468
    return-object p0

    .line 1461
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0

    .line 1465
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1
    .parameter

    .prologue
    .line 1333
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ib;

    if-eqz v0, :cond_0

    .line 1334
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ib;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ib;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    .line 1337
    :goto_0
    return-object v0

    .line 1336
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 1337
    goto :goto_0
.end method

.method static synthetic q()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1

    .prologue
    .line 1230
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ic;-><init>()V

    return-object v0
.end method

.method private static r()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1235
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 1253
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->D()Lcom/b/a/fp;

    .line 1256
    :cond_0
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1

    .prologue
    .line 1258
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ic;-><init>()V

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1262
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 1263
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1264
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1268
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1269
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->d:J

    .line 1270
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1271
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->e:J

    .line 1272
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1273
    return-object p0

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 2

    .prologue
    .line 1277
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ic;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ic;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->y()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/ib;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ib;
    .locals 1

    .prologue
    .line 1286
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->h()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ib;
    .locals 2

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->y()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    .line 1300
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ib;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ic;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 1304
    :cond_0
    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ib;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1308
    new-instance v1, Lcom/keniu/security/sync/d/d/a/ib;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/ib;-><init>(Lcom/keniu/security/sync/d/d/a/ic;)V

    .line 1309
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1310
    const/4 v0, 0x0

    .line 1311
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 1314
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ib;->a(Lcom/keniu/security/sync/d/d/a/ib;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    .line 1319
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 1320
    or-int/lit8 v0, v3, 0x2

    .line 1322
    :goto_2
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/ic;->d:J

    invoke-static {v1, v3, v4}, Lcom/keniu/security/sync/d/d/a/ib;->a(Lcom/keniu/security/sync/d/d/a/ib;J)J

    .line 1323
    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1324
    or-int/lit8 v0, v0, 0x4

    .line 1326
    :cond_0
    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/ic;->e:J

    invoke-static {v1, v2, v3}, Lcom/keniu/security/sync/d/d/a/ib;->b(Lcom/keniu/security/sync/d/d/a/ib;J)J

    .line 1327
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ib;->a(Lcom/keniu/security/sync/d/d/a/ib;I)I

    .line 1328
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->ab_()V

    .line 1329
    return-object v1

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ib;->a(Lcom/keniu/security/sync/d/d/a/ib;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1472
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1473
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1477
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1478
    return-object p0

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1240
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1282
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->u()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1230
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->h()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1230
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->h()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->y()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->i()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->y()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->i()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ic;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1
    .parameter

    .prologue
    .line 1515
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1516
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/ic;->d:J

    .line 1517
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1518
    return-object p0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 1
    .parameter

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1432
    if-nez p1, :cond_0

    .line 1433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1435
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1436
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1440
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1441
    return-object p0

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ib;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 3
    .parameter

    .prologue
    .line 1342
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->h()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1353
    :goto_0
    return-object v0

    .line 1343
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ib;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ib;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1346
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ib;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1347
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ib;->n()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/sync/d/d/a/ic;->a(J)Lcom/keniu/security/sync/d/d/a/ic;

    .line 1349
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ib;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1350
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ib;->p()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->e:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    .line 1352
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ib;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ic;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 1353
    goto :goto_0

    .line 1344
    :cond_4
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1357
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1365
    :goto_0
    return v0

    .line 1361
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1363
    goto :goto_0

    .line 1365
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ic;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->u()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ic;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ic;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ic;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ic;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1372
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 1376
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 1377
    sparse-switch v1, :sswitch_data_0

    .line 1383
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1385
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ic;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1386
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    move-object v0, p0

    .line 1387
    :goto_1
    return-object v0

    .line 1379
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ic;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1380
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->af_()V

    move-object v0, p0

    .line 1381
    goto :goto_1

    .line 1392
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->Z()Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    .line 1393
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ic;->k()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    .line 1396
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 1397
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ic;

    goto :goto_0

    .line 1401
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1402
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->d:J

    goto :goto_0

    .line 1406
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    .line 1407
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ic;->e:J

    goto :goto_0

    .line 1377
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
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->u()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->v()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->u()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/ib;
    .locals 2

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ic;->y()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    .line 1291
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ib;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1292
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ic;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 1294
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1421
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    .line 1489
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->b:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 1509
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

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
    .line 1512
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->d:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 1530
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->a:I

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

.method public final p()J
    .locals 2

    .prologue
    .line 1533
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ic;->e:J

    return-wide v0
.end method
