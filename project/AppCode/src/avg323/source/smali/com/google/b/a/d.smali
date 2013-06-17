.class public final Lcom/google/b/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/b/b/a;)Lcom/google/b/b;
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/b/b/a;->g()Lcom/google/b/b/e;

    const/4 v1, 0x0

    sget-object v0, Lcom/google/b/a/a/a;->P:Lcom/google/b/j;

    invoke-virtual {v0, p0}, Lcom/google/b/j;->a(Lcom/google/b/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/b/b/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/b/d;->a:Lcom/google/b/d;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/b/i;

    invoke-direct {v1, v0}, Lcom/google/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/b/i;

    invoke-direct {v1, v0}, Lcom/google/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/b/c;

    invoke-direct {v1, v0}, Lcom/google/b/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/b/i;

    invoke-direct {v1, v0}, Lcom/google/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/google/b/b;Lcom/google/b/b/f;)V
    .locals 1

    sget-object v0, Lcom/google/b/a/a/a;->P:Lcom/google/b/j;

    invoke-virtual {v0, p1, p0}, Lcom/google/b/j;->a(Lcom/google/b/b/f;Ljava/lang/Object;)V

    return-void
.end method
