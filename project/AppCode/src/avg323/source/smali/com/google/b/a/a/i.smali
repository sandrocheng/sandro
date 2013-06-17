.class final Lcom/google/b/a/a/i;
.super Lcom/google/b/j;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/b/b/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/i;->b(Lcom/google/b/b/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/b/b/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/i;->a(Lcom/google/b/b/f;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public a(Lcom/google/b/b/f;Ljava/lang/StringBuilder;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/b/b/f;->b(Ljava/lang/String;)Lcom/google/b/b/f;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/google/b/b/a;)Ljava/lang/StringBuilder;
    .locals 2

    invoke-virtual {p1}, Lcom/google/b/b/a;->g()Lcom/google/b/b/e;

    move-result-object v0

    sget-object v1, Lcom/google/b/b/e;->i:Lcom/google/b/b/e;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/b/b/a;->k()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/b/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
