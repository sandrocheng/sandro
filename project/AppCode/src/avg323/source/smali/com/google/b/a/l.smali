.class abstract Lcom/google/b/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:Lcom/google/b/a/k;

.field c:Lcom/google/b/a/k;

.field final synthetic d:Lcom/google/b/a/e;


# direct methods
.method private constructor <init>(Lcom/google/b/a/e;)V
    .locals 1

    iput-object p1, p0, Lcom/google/b/a/l;->d:Lcom/google/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/b/a/l;->d:Lcom/google/b/a/e;

    invoke-static {v0}, Lcom/google/b/a/e;->a(Lcom/google/b/a/e;)Lcom/google/b/a/k;

    move-result-object v0

    iget-object v0, v0, Lcom/google/b/a/k;->e:Lcom/google/b/a/k;

    iput-object v0, p0, Lcom/google/b/a/l;->b:Lcom/google/b/a/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/l;->c:Lcom/google/b/a/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/b/a/e;Lcom/google/b/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/b/a/l;-><init>(Lcom/google/b/a/e;)V

    return-void
.end method


# virtual methods
.method final b()Lcom/google/b/a/k;
    .locals 2

    iget-object v0, p0, Lcom/google/b/a/l;->b:Lcom/google/b/a/k;

    iget-object v1, p0, Lcom/google/b/a/l;->d:Lcom/google/b/a/e;

    invoke-static {v1}, Lcom/google/b/a/e;->a(Lcom/google/b/a/e;)Lcom/google/b/a/k;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, v0, Lcom/google/b/a/k;->e:Lcom/google/b/a/k;

    iput-object v1, p0, Lcom/google/b/a/l;->b:Lcom/google/b/a/k;

    iput-object v0, p0, Lcom/google/b/a/l;->c:Lcom/google/b/a/k;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/b/a/l;->b:Lcom/google/b/a/k;

    iget-object v1, p0, Lcom/google/b/a/l;->d:Lcom/google/b/a/e;

    invoke-static {v1}, Lcom/google/b/a/e;->a(Lcom/google/b/a/e;)Lcom/google/b/a/k;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/b/a/l;->c:Lcom/google/b/a/k;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/b/a/l;->d:Lcom/google/b/a/e;

    iget-object v1, p0, Lcom/google/b/a/l;->c:Lcom/google/b/a/k;

    iget-object v1, v1, Lcom/google/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/b/a/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/l;->c:Lcom/google/b/a/k;

    return-void
.end method
