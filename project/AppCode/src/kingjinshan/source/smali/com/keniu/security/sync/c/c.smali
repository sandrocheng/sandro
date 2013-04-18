.class public final Lcom/keniu/security/sync/c/c;
.super Lcom/keniu/security/sync/c/g;
.source "DeleteTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    const v0, 0x7f0b08cb

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 17
    iput-object p3, p0, Lcom/keniu/security/sync/c/c;->a:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/keniu/security/sync/c/c;->d:I

    .line 19
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 28
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 29
    aget-object v0, p1, v5

    .line 31
    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :try_start_0
    new-instance v1, Lcom/keniu/security/sync/a/a;

    invoke-direct {v1}, Lcom/keniu/security/sync/a/a;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/sync/c/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/sync/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0.0.0.001"

    invoke-static {v1, v0, v2, v3}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jn;->n()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/keniu/security/sync/c/c;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keniu/security/sync/c/c;->c:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v0, 0x2711

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/sync/c/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/sync/c/c;->b:Landroid/content/Context;

    iget v2, p0, Lcom/keniu/security/sync/c/c;->d:I

    invoke-static {v1, v0, v2}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 44
    if-eqz v0, :cond_2

    move v0, v5

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/keniu/security/sync/c/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/keniu/security/sync/c/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/c;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/c;->a(Ljava/lang/Integer;)V

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
