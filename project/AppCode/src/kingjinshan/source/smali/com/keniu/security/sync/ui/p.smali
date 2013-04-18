.class final Lcom/keniu/security/sync/ui/p;
.super Landroid/os/AsyncTask;
.source "RegisterAct.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/RegisterAct;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/sync/ui/RegisterAct;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/ui/p;-><init>(Lcom/keniu/security/sync/ui/RegisterAct;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/ui/RegisterAct;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/keniu/security/sync/ui/p;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter

    .prologue
    .line 192
    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/keniu/security/sync/ui/p;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/p;->b:Landroid/app/ProgressDialog;

    .line 199
    iget-object v0, p0, Lcom/keniu/security/sync/ui/p;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/ui/RegisterAct;->a(Ljava/lang/Integer;)V

    .line 200
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 201
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/String;

    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/p;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/p;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/p;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/ui/RegisterAct;->a(Ljava/lang/Integer;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/p;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/p;->b:Landroid/app/ProgressDialog;

    .line 185
    iget-object v0, p0, Lcom/keniu/security/sync/ui/p;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/p;->a:Lcom/keniu/security/sync/ui/RegisterAct;

    const v2, 0x7f0b0859

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/ui/RegisterAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/keniu/security/sync/ui/p;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 187
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 188
    return-void
.end method
