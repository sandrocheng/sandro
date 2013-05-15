.class Lcom/google/a/ak;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# instance fields
.field final synthetic a:Lcom/google/a/ad;


# direct methods
.method private constructor <init>(Lcom/google/a/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/a/ak;->a:Lcom/google/a/ad;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/ad;Lcom/google/a/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/google/a/ak;-><init>(Lcom/google/a/ad;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Z
    .locals 3
    .parameter

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/google/a/ak;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/google/a/ak;->a:Lcom/google/a/ad;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/a/ad;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 468
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/a/ak;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/a/ak;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->clear()V

    .line 523
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 488
    check-cast p1, Ljava/util/Map$Entry;

    .line 489
    iget-object v0, p0, Lcom/google/a/ak;->a:Lcom/google/a/ad;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/ad;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 490
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 491
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 472
    new-instance v0, Lcom/google/a/aj;

    iget-object v1, p0, Lcom/google/a/ak;->a:Lcom/google/a/ad;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/aj;-><init>(Lcom/google/a/ad;Lcom/google/a/ae;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 512
    check-cast p1, Ljava/util/Map$Entry;

    .line 513
    invoke-virtual {p0, p1}, Lcom/google/a/ak;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/google/a/ak;->a:Lcom/google/a/ad;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/ad;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/a/ak;->a:Lcom/google/a/ad;

    invoke-virtual {v0}, Lcom/google/a/ad;->size()I

    move-result v0

    return v0
.end method
