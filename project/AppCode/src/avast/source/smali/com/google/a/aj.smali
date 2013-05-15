.class Lcom/google/a/aj;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/a/ad;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/google/a/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/aj;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/ad;Lcom/google/a/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/google/a/aj;-><init>(Lcom/google/a/ad;)V

    return-void
.end method

.method private b()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/a/aj;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    invoke-static {v0}, Lcom/google/a/ad;->c(Lcom/google/a/ad;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/aj;->d:Ljava/util/Iterator;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/a/aj;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/aj;->c:Z

    .line 547
    iget v0, p0, Lcom/google/a/aj;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/aj;->b:I

    iget-object v1, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    invoke-static {v1}, Lcom/google/a/ad;->b(Lcom/google/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    invoke-static {v0}, Lcom/google/a/ad;->b(Lcom/google/a/ad;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/a/aj;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 550
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/a/aj;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 538
    iget v0, p0, Lcom/google/a/aj;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    invoke-static {v1}, Lcom/google/a/ad;->b(Lcom/google/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/a/aj;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/a/aj;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/google/a/aj;->c:Z

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/a/aj;->c:Z

    .line 559
    iget-object v0, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    invoke-static {v0}, Lcom/google/a/ad;->a(Lcom/google/a/ad;)V

    .line 561
    iget v0, p0, Lcom/google/a/aj;->b:I

    iget-object v1, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    invoke-static {v1}, Lcom/google/a/ad;->b(Lcom/google/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/google/a/aj;->a:Lcom/google/a/ad;

    iget v1, p0, Lcom/google/a/aj;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/a/aj;->b:I

    invoke-static {v0, v1}, Lcom/google/a/ad;->a(Lcom/google/a/ad;I)Ljava/lang/Object;

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/google/a/aj;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
