.class public final Lcom/b/a/cx;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/b/a/cv;


# instance fields
.field private final a:I

.field private b:Lcom/b/a/bp;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/b/a/ct;

.field private e:[Lcom/b/a/cw;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/bp;Lcom/b/a/ct;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/b/a/cx;-><init>(Lcom/b/a/bp;Lcom/b/a/ct;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bp;Lcom/b/a/ct;IB)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput p3, p0, Lcom/b/a/cx;->a:I

    .line 1381
    iput-object p1, p0, Lcom/b/a/cx;->b:Lcom/b/a/bp;

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/b/a/bp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/b/a/ch;->a(Lcom/b/a/ct;Lcom/b/a/cj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cx;->c:Ljava/lang/String;

    .line 1383
    iput-object p2, p0, Lcom/b/a/cx;->d:Lcom/b/a/ct;

    .line 1385
    invoke-virtual {p1}, Lcom/b/a/bp;->l()I

    move-result v0

    new-array v0, v0, [Lcom/b/a/cw;

    iput-object v0, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    .line 1386
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/b/a/bp;->l()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    new-instance v2, Lcom/b/a/cw;

    invoke-virtual {p1, v0}, Lcom/b/a/bp;->a(I)Lcom/b/a/bj;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, v0}, Lcom/b/a/cw;-><init>(Lcom/b/a/bj;Lcom/b/a/ct;Lcom/b/a/cx;I)V

    aput-object v2, v1, v0

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    :cond_0
    invoke-static {p2}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cv;)V

    .line 1392
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/cw;
    .locals 3
    .parameter

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/b/a/cx;->d:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/b/a/cx;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ck;->a(Ljava/lang/String;)Lcom/b/a/cv;

    move-result-object p0

    .line 1363
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/b/a/cw;

    if-eqz v0, :cond_0

    .line 1364
    check-cast p0, Lcom/b/a/cw;

    move-object v0, p0

    .line 1366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/b/a/bp;)V
    .locals 3
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/b/a/cx;->b:Lcom/b/a/bp;

    .line 1404
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/bp;->a(I)Lcom/b/a/bj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/cw;->a(Lcom/b/a/cw;Lcom/b/a/bj;)V

    .line 1404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1407
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/b/a/cx;)V
    .locals 4
    .parameter

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/b/a/cw;->a(Lcom/b/a/cw;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/b/a/cx;Lcom/b/a/bp;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/b/a/cx;->b:Lcom/b/a/bp;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/b/a/bp;->a(I)Lcom/b/a/bj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/cw;->a(Lcom/b/a/cw;Lcom/b/a/bj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Lcom/b/a/cx;->a:I

    return v0
.end method

.method private e()Lcom/b/a/bp;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/b/a/cx;->b:Lcom/b/a/bp;

    return-object v0
.end method

.method private f()Lcom/b/a/bs;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/b/a/cx;->b:Lcom/b/a/bp;

    invoke-virtual {v0}, Lcom/b/a/bp;->n()Lcom/b/a/bs;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/util/List;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/b/a/cx;->e:[Lcom/b/a/cw;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1396
    invoke-static {v3}, Lcom/b/a/cw;->a(Lcom/b/a/cw;)V

    .line 1395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1398
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/b/a/cx;->b:Lcom/b/a/bp;

    invoke-virtual {v0}, Lcom/b/a/bp;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/b/a/cx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/b/a/cx;->d:Lcom/b/a/ct;

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/b/a/cx;->b:Lcom/b/a/bp;

    return-object v0
.end method
