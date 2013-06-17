.class final Lcom/google/b/a/a/ab;
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

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/ab;->b(Lcom/google/b/b/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/b/b/f;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/b/b/f;->a(Ljava/lang/Number;)Lcom/google/b/b/f;

    return-void
.end method

.method public bridge synthetic a(Lcom/google/b/b/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/ab;->a(Lcom/google/b/b/f;Ljava/lang/Number;)V

    return-void
.end method

.method public b(Lcom/google/b/b/a;)Ljava/lang/Number;
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
    :try_start_0
    invoke-virtual {p1}, Lcom/google/b/b/a;->n()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/b/i;

    invoke-direct {v1, v0}, Lcom/google/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
