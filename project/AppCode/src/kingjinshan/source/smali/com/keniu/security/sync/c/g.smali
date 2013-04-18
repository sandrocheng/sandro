.class public Lcom/keniu/security/sync/c/g;
.super Landroid/os/AsyncTask;
.source "ProgressAsyncTask.java"


# instance fields
.field private a:Lcom/keniu/security/sync/ui/h;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/os/Handler;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/keniu/security/sync/c/g;->c:Landroid/os/Handler;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/c/g;->d:I

    .line 33
    iput-object p3, p0, Lcom/keniu/security/sync/c/g;->f:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/keniu/security/sync/c/g;->e:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/keniu/security/sync/c/g;->c:Landroid/os/Handler;

    .line 27
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lcom/keniu/security/g;->a()Lcom/keniu/security/g;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keniu/security/g;->a(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/ui/h;->a(I)V

    .line 57
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/h;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/h;->dismiss()V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/ui/h;->b(I)V

    .line 61
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/h;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/h;->dismiss()V

    .line 72
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 73
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/sync/r;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/c/g;->cancel(Z)Z

    .line 39
    :cond_0
    new-instance v0, Lcom/keniu/security/sync/ui/h;

    iget-object v1, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/keniu/security/sync/c/g;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/keniu/security/sync/c/g;->f:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/keniu/security/sync/ui/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    .line 40
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    iget-object v1, p0, Lcom/keniu/security/sync/c/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/h;->setMessage(Ljava/lang/CharSequence;)V

    .line 41
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/c/g;->d:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    iget v1, p0, Lcom/keniu/security/sync/c/g;->d:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/h;->c(I)V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    new-instance v1, Lcom/keniu/security/sync/c/h;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/c/h;-><init>(Lcom/keniu/security/sync/c/g;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/h;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 49
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/c/g;->a:Lcom/keniu/security/sync/ui/h;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/h;->show()V

    .line 52
    :cond_3
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 53
    return-void

    .line 39
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method
