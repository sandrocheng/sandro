.class public final Lcom/b/a/cw;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/b/a/cv;


# instance fields
.field private final a:I

.field private b:Lcom/b/a/bj;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/b/a/ct;

.field private final e:Lcom/b/a/cx;

.field private f:Lcom/b/a/cj;

.field private g:Lcom/b/a/cj;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/bj;Lcom/b/a/ct;Lcom/b/a/cx;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1415
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/b/a/cw;-><init>(Lcom/b/a/bj;Lcom/b/a/ct;Lcom/b/a/cx;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bj;Lcom/b/a/ct;Lcom/b/a/cx;IB)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    iput p4, p0, Lcom/b/a/cw;->a:I

    .line 1467
    iput-object p1, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    .line 1468
    iput-object p2, p0, Lcom/b/a/cw;->d:Lcom/b/a/ct;

    .line 1469
    iput-object p3, p0, Lcom/b/a/cw;->e:Lcom/b/a/cx;

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/b/a/cx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/bj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cw;->c:Ljava/lang/String;

    .line 1473
    invoke-static {p2}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cv;)V

    .line 1474
    return-void
.end method

.method private a(Lcom/b/a/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    .line 1497
    return-void
.end method

.method static synthetic a(Lcom/b/a/cw;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x22

    .line 1415
    iget-object v0, p0, Lcom/b/a/cw;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v1}, Lcom/b/a/bj;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_0

    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v2}, Lcom/b/a/bj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cw;->f:Lcom/b/a/cj;

    iget-object v0, p0, Lcom/b/a/cw;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v1}, Lcom/b/a/bj;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_1

    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v2}, Lcom/b/a/bj;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cw;->g:Lcom/b/a/cj;

    return-void
.end method

.method static synthetic a(Lcom/b/a/cw;Lcom/b/a/bj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    return-void
.end method

.method private d()I
    .locals 1

    .prologue
    .line 1420
    iget v0, p0, Lcom/b/a/cw;->a:I

    return v0
.end method

.method private e()Lcom/b/a/bj;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    return-object v0
.end method

.method private f()Lcom/b/a/cx;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/b/a/cw;->e:Lcom/b/a/cx;

    return-object v0
.end method

.method private g()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/b/a/cw;->f:Lcom/b/a/cj;

    return-object v0
.end method

.method private h()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/b/a/cw;->g:Lcom/b/a/cj;

    return-object v0
.end method

.method private j()Lcom/b/a/bm;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v0}, Lcom/b/a/bj;->o()Lcom/b/a/bm;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 1477
    iget-object v0, p0, Lcom/b/a/cw;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v1}, Lcom/b/a/bj;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    .line 1479
    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_0

    .line 1480
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v2}, Lcom/b/a/bj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_0
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cw;->f:Lcom/b/a/cj;

    .line 1485
    iget-object v0, p0, Lcom/b/a/cw;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v1}, Lcom/b/a/bj;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    .line 1487
    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_1

    .line 1488
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v2}, Lcom/b/a/bj;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_1
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cw;->g:Lcom/b/a/cj;

    .line 1492
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    invoke-virtual {v0}, Lcom/b/a/bj;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/b/a/cw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/b/a/cw;->d:Lcom/b/a/ct;

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/b/a/cw;->b:Lcom/b/a/bj;

    return-object v0
.end method
