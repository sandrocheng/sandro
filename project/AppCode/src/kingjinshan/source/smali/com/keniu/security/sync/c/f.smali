.class public final Lcom/keniu/security/sync/c/f;
.super Landroid/os/AsyncTask;
.source "LoginTask.java"


# instance fields
.field a:Lcom/keniu/security/sync/d/d/a/jn;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/ProgressDialog;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/keniu/security/sync/c/f;->c:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/f;->e:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/f;->f:Ljava/lang/String;

    .line 43
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/f;->g:Ljava/lang/String;

    .line 45
    :try_start_0
    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/sync/c/f;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/sync/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0.0.0.001"

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/f;->a:Lcom/keniu/security/sync/d/d/a/jn;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b086c

    .line 54
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->a:Lcom/keniu/security/sync/d/d/a/jn;

    if-nez v0, :cond_1

    .line 59
    const-string v0, ">>>>> null response"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    const v1, 0x7f0b0860

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    .line 95
    :goto_0
    return-void

    .line 66
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->a:Lcom/keniu/security/sync/d/d/a/jn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jn;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->k()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v4

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    .line 94
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :sswitch_0
    :try_start_1
    const-string v0, ">>>>> log suc"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 71
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->a:Lcom/keniu/security/sync/d/d/a/jn;

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/jn;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "pass_word"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "auto_status"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->g:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->c:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    const v0, 0x7f0b0869

    .line 77
    goto :goto_1

    .line 79
    :sswitch_1
    const v0, 0x7f0b0870

    .line 80
    goto :goto_1

    .line 82
    :sswitch_2
    const v0, 0x7f0b0871

    .line 83
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    .line 89
    goto :goto_1

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xbc9 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/keniu/security/sync/c/f;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b086c

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->a:Lcom/keniu/security/sync/d/d/a/jn;

    if-nez v0, :cond_1

    const-string v0, ">>>>> null response"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    const v1, 0x7f0b0860

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->a:Lcom/keniu/security/sync/d/d/a/jn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jn;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->k()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    :try_start_1
    const-string v0, ">>>>> log suc"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->a:Lcom/keniu/security/sync/d/d/a/jn;

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/jn;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pass_word"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto_status"

    iget-object v2, p0, Lcom/keniu/security/sync/c/f;->g:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->c:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const v0, 0x7f0b0869

    goto :goto_1

    :sswitch_1
    const v0, 0x7f0b0870

    goto :goto_1

    :sswitch_2
    const v0, 0x7f0b0871

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xbc9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/sync/c/f;->d:Landroid/app/ProgressDialog;

    .line 35
    iget-object v0, p0, Lcom/keniu/security/sync/c/f;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/sync/c/f;->d:Landroid/app/ProgressDialog;

    const v2, 0x7f0b0868

    invoke-static {v0, v1, v2}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;Landroid/app/AlertDialog;I)V

    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    return-void
.end method
