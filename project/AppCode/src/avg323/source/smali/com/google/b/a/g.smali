.class final Lcom/google/b/a/g;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic a:Lcom/google/b/a/e;


# direct methods
.method private constructor <init>(Lcom/google/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/b/a/g;->a:Lcom/google/b/a/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/b/a/e;Lcom/google/b/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/b/a/g;-><init>(Lcom/google/b/a/e;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/g;->a:Lcom/google/b/a/e;

    invoke-virtual {v0}, Lcom/google/b/a/e;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/b/a/g;->a:Lcom/google/b/a/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/b/a/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/b/a/h;

    invoke-direct {v0, p0}, Lcom/google/b/a/h;-><init>(Lcom/google/b/a/g;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/b/a/g;->a:Lcom/google/b/a/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/b/a/e;->a(Lcom/google/b/a/e;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/g;->a:Lcom/google/b/a/e;

    invoke-static {v0}, Lcom/google/b/a/e;->b(Lcom/google/b/a/e;)I

    move-result v0

    return v0
.end method
