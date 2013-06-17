.class final Lcom/google/b/a/a/f;
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

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/f;->b(Lcom/google/b/b/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/b/b/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/f;->a(Lcom/google/b/b/f;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/b/b/f;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/b/b/f;->b(Ljava/lang/String;)Lcom/google/b/b/f;

    return-void
.end method

.method public b(Lcom/google/b/b/a;)Ljava/lang/String;
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
    sget-object v1, Lcom/google/b/b/e;->h:Lcom/google/b/b/e;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/b/b/a;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/b/b/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
