.class public Lcom/google/a/a/a/aq;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 2

    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/a/a/a/aq;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/google/a/a/a/aq;->a:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/google/a/a/a/aq;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/a/a/a/aq;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/a/a/a/aq;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/a/a/a/aq;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/google/a/a/a/aq;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/a/a/a/aq;->d(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 2

    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/a/a/a/aq;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/google/a/a/a/aq;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/a/a/a/aq;->f(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 2

    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/a/a/a/aq;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/google/a/a/a/aq;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
