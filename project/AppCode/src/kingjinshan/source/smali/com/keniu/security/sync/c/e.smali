.class public final Lcom/keniu/security/sync/c/e;
.super Lcom/keniu/security/sync/c/g;
.source "LoadHistoryTask.java"


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 29
    aget-object v0, p1, v5

    .line 31
    aget-object v1, p1, v7

    .line 33
    const-string v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    :try_start_0
    new-instance v2, Lcom/keniu/security/sync/a/a;

    invoke-direct {v2}, Lcom/keniu/security/sync/a/a;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/keniu/security/sync/c/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/keniu/security/sync/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0.0.001"

    invoke-static {v2, v1, v3, v4}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/jn;->n()Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/keniu/security/sync/c/e;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keniu/security/sync/c/e;->c:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, 0x2711

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    const-string v2, "contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    .line 45
    :goto_1
    invoke-static {v2}, Lcom/keniu/security/sync/y;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {v2}, Lcom/keniu/security/sync/y;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/e;->a:Ljava/util/List;

    .line 51
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/c/e;->a:Ljava/util/List;

    if-nez v0, :cond_4

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v2, v7

    .line 44
    goto :goto_1

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/keniu/security/sync/c/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/e;->a:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/keniu/security/sync/c/e;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/y;->a(Ljava/util/List;I)Z

    goto :goto_2

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/sync/c/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 54
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 61
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 63
    iget-object v0, p0, Lcom/keniu/security/sync/c/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/keniu/security/sync/c/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/keniu/security/sync/c/e;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/e;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/keniu/security/sync/c/e;->a:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/e;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/e;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 24
    return-void
.end method
