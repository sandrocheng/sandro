.class public final Lcom/keniu/security/sync/d/d/a/av;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ax;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Lcom/keniu/security/sync/d/d/a/av;

.field private static final i:J


# instance fields
.field private d:I

.field private e:Lcom/keniu/security/sync/d/d/a/ge;

.field private f:Lcom/keniu/security/sync/d/d/a/gt;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1936
    new-instance v0, Lcom/keniu/security/sync/d/d/a/av;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/av;-><init>()V

    .line 1937
    sput-object v0, Lcom/keniu/security/sync/d/d/a/av;->c:Lcom/keniu/security/sync/d/d/a/av;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/av;->f:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1938
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1380
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 1432
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/av;->g:B

    .line 1461
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/av;->h:I

    .line 1380
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 1373
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/av;-><init>(Lcom/keniu/security/sync/d/d/a/aw;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/aw;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1378
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 1432
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/av;->g:B

    .line 1461
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/av;->h:I

    .line 1379
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/av;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1373
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/av;->d:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter

    .prologue
    .line 1490
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1496
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter

    .prologue
    .line 1544
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1550
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter

    .prologue
    .line 1512
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1518
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter

    .prologue
    .line 1501
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1507
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/av;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1
    .parameter

    .prologue
    .line 1557
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/av;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/av;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/av;Lcom/keniu/security/sync/d/d/a/gt;)Lcom/keniu/security/sync/d/d/a/gt;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/av;->f:Lcom/keniu/security/sync/d/d/a/gt;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 2
    .parameter

    .prologue
    .line 1523
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    .line 1524
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1525
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    .line 1527
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/av;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1534
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    .line 1535
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/aw;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/aw;)Lcom/keniu/security/sync/d/d/a/av;

    move-result-object v0

    .line 1538
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1
    .parameter

    .prologue
    .line 1564
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;-><init>(Lcom/b/a/dp;)V

    .line 1565
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/av;
    .locals 1

    .prologue
    .line 1384
    sget-object v0, Lcom/keniu/security/sync/d/d/a/av;->c:Lcom/keniu/security/sync/d/d/a/av;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1393
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 1373
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/av;->j:Z

    return v0
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/av;
    .locals 1

    .prologue
    .line 1388
    sget-object v0, Lcom/keniu/security/sync/d/d/a/av;->c:Lcom/keniu/security/sync/d/d/a/av;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 1429
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1430
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gt;->h()Lcom/keniu/security/sync/d/d/a/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->f:Lcom/keniu/security/sync/d/d/a/gt;

    .line 1431
    return-void
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1554
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1555
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/aw;
    .locals 1

    .prologue
    .line 1559
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/aw;->a(Lcom/keniu/security/sync/d/d/a/av;)Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1484
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/av;->u()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1373
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/av;->u()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1373
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/aw;->i()Lcom/keniu/security/sync/d/d/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1373
    sget-object v0, Lcom/keniu/security/sync/d/d/a/av;->c:Lcom/keniu/security/sync/d/d/a/av;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1373
    sget-object v0, Lcom/keniu/security/sync/d/d/a/av;->c:Lcom/keniu/security/sync/d/d/a/av;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1373
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aw;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/aw;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1451
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/av;->b()I

    .line 1452
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/av;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 1455
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/av;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->f:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 1458
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/av;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 1459
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1434
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/av;->g:B

    .line 1435
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1446
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1435
    goto :goto_0

    .line 1437
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/av;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1438
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/av;->g:B

    move v0, v2

    .line 1439
    goto :goto_0

    .line 1441
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1442
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/av;->g:B

    move v0, v2

    .line 1443
    goto :goto_0

    .line 1445
    :cond_3
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/av;->g:B

    move v0, v3

    .line 1446
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1463
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/av;->h:I

    .line 1464
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1477
    :goto_0
    return v0

    .line 1466
    :cond_0
    const/4 v0, 0x0

    .line 1467
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/av;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1468
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1471
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/av;->d:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/av;->f:Lcom/keniu/security/sync/d/d/a/gt;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1475
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/av;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1476
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/av;->h:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1398
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1406
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/av;->d:I

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
    .line 1409
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->e:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 1419
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/av;->d:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gt;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->f:Lcom/keniu/security/sync/d/d/a/gt;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gv;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/av;->f:Lcom/keniu/security/sync/d/d/a/gt;

    return-object v0
.end method
