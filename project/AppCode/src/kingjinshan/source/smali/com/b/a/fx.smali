.class final Lcom/b/a/fx;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# instance fields
.field final synthetic a:Lcom/b/a/fq;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/fq;)V
    .locals 1
    .parameter

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/fx;-><init>(Lcom/b/a/fq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/fq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/b/a/fx;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 470
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/b/a/fx;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/b/a/fq;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->clear()V

    .line 525
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 490
    check-cast p1, Ljava/util/Map$Entry;

    .line 491
    iget-object v0, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 492
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 493
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

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 474
    new-instance v0, Lcom/b/a/fw;

    iget-object v1, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-direct {v0, v1}, Lcom/b/a/fw;-><init>(Lcom/b/a/fq;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 514
    check-cast p1, Ljava/util/Map$Entry;

    .line 515
    invoke-virtual {p0, p1}, Lcom/b/a/fx;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fq;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/b/a/fx;->a:Lcom/b/a/fq;

    invoke-virtual {v0}, Lcom/b/a/fq;->size()I

    move-result v0

    return v0
.end method
