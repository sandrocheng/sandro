.class public Lcom/antivirus/core/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/c/a/p;

    move-result-object v1

    sget-object v2, Lcom/google/c/a/g;->a:Lcom/google/c/a/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/p;Lcom/google/c/a/g;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/google/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/c/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/c/a/p;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/c/a/e;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/c/a/g;->c:Lcom/google/c/a/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/p;Lcom/google/c/a/g;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    :cond_0
    sget-object v2, Lcom/google/c/a/g;->a:Lcom/google/c/a/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/p;Lcom/google/c/a/g;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/c/a/e;->a()Lcom/google/c/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/c/a/p;

    move-result-object v1

    sget-object v2, Lcom/google/c/a/g;->c:Lcom/google/c/a/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/e;->a(Lcom/google/c/a/p;Lcom/google/c/a/g;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method
