.class final Lcom/google/b/a/i;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic a:Lcom/google/b/a/e;


# direct methods
.method private constructor <init>(Lcom/google/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/b/a/e;Lcom/google/b/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/b/a/i;-><init>(Lcom/google/b/a/e;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    invoke-virtual {v0}, Lcom/google/b/a/e;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    invoke-virtual {v0, p1}, Lcom/google/b/a/e;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/b/a/j;

    invoke-direct {v0, p0}, Lcom/google/b/a/j;-><init>(Lcom/google/b/a/i;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    invoke-static {v0}, Lcom/google/b/a/e;->b(Lcom/google/b/a/e;)I

    move-result v0

    iget-object v1, p0, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    invoke-virtual {v1, p1}, Lcom/google/b/a/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    invoke-static {v1}, Lcom/google/b/a/e;->b(Lcom/google/b/a/e;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    invoke-static {v0}, Lcom/google/b/a/e;->b(Lcom/google/b/a/e;)I

    move-result v0

    return v0
.end method
