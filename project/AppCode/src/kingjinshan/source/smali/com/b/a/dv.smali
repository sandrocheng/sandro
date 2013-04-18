.class public final Lcom/b/a/dv;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"


# instance fields
.field private final a:Lcom/b/a/cj;

.field private final b:[Lcom/b/a/dw;


# direct methods
.method public constructor <init>(Lcom/b/a/cj;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    iput-object p1, p0, Lcom/b/a/dv;->a:Lcom/b/a/cj;

    .line 1409
    invoke-virtual {p1}, Lcom/b/a/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/b/a/dw;

    iput-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    .line 1411
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 1412
    invoke-virtual {p1}, Lcom/b/a/cj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/cq;

    .line 1413
    invoke-virtual {v0}, Lcom/b/a/cq;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1414
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v2

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v2, v3, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    new-instance v2, Lcom/b/a/dz;

    aget-object v3, p2, v1

    invoke-direct {v2, v3, p3, p4}, Lcom/b/a/dz;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    .line 1411
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1417
    :cond_0
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v2, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v2, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    new-instance v2, Lcom/b/a/dx;

    aget-object v3, p2, v1

    invoke-direct {v2, v3, p3, p4}, Lcom/b/a/dx;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    goto :goto_1

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    new-instance v2, Lcom/b/a/dy;

    aget-object v3, p2, v1

    invoke-direct {v2, v3, p3, p4}, Lcom/b/a/dy;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    goto :goto_1

    .line 1425
    :cond_2
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v2

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v2, v3, :cond_3

    .line 1426
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    new-instance v2, Lcom/b/a/ec;

    aget-object v3, p2, v1

    invoke-direct {v2, v3, p3, p4}, Lcom/b/a/ec;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    goto :goto_1

    .line 1428
    :cond_3
    invoke-virtual {v0}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v0

    sget-object v2, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v2, :cond_4

    .line 1429
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    new-instance v2, Lcom/b/a/ea;

    aget-object v3, p2, v1

    invoke-direct {v2, v3, p3, p4}, Lcom/b/a/ea;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    goto :goto_1

    .line 1432
    :cond_4
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    new-instance v2, Lcom/b/a/eb;

    aget-object v3, p2, v1

    invoke-direct {v2, v3, p3, p4}, Lcom/b/a/eb;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    goto :goto_1

    .line 1437
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/b/a/dv;)Lcom/b/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/b/a/dv;->a:Lcom/b/a/cj;

    return-object v0
.end method

.method private a(Lcom/b/a/cq;)Lcom/b/a/dw;
    .locals 2
    .parameter

    .prologue
    .line 1444
    invoke-virtual {p1}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/dv;->a:Lcom/b/a/cj;

    if-eq v0, v1, :cond_0

    .line 1445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type does not have extensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    invoke-virtual {p1}, Lcom/b/a/cq;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/dv;Lcom/b/a/cq;)Lcom/b/a/dw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-virtual {p1}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/dv;->a:Lcom/b/a/cj;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/b/a/cq;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type does not have extensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/dv;->b:[Lcom/b/a/dw;

    invoke-virtual {p1}, Lcom/b/a/cq;->d()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
