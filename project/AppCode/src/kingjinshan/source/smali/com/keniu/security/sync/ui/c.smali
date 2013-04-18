.class final Lcom/keniu/security/sync/ui/c;
.super Landroid/os/AsyncTask;
.source "AccountMgrAct.java"


# instance fields
.field a:Lcom/keniu/security/sync/d/d/a/jt;

.field final synthetic b:Lcom/keniu/security/sync/ui/AccountMgrAct;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/keniu/security/sync/ui/AccountMgrAct;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/sync/ui/c;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/c;->a:Lcom/keniu/security/sync/d/d/a/jt;

    .line 124
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 130
    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->a:Lcom/keniu/security/sync/d/d/a/jt;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jt;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->a(Lcom/keniu/security/sync/ui/AccountMgrAct;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->b(Lcom/keniu/security/sync/ui/AccountMgrAct;)V

    .line 133
    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    const v1, 0x7f0b0862

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->b(Landroid/content/Context;I)V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    check-cast p1, [Ljava/lang/String;

    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jt;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/c;->a:Lcom/keniu/security/sync/d/d/a/jt;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->a:Lcom/keniu/security/sync/d/d/a/jt;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jt;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->k()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->a(Lcom/keniu/security/sync/ui/AccountMgrAct;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->b(Lcom/keniu/security/sync/ui/AccountMgrAct;)V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    const v1, 0x7f0b0862

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->b(Landroid/content/Context;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/keniu/security/sync/ui/c;->b:Lcom/keniu/security/sync/ui/AccountMgrAct;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/c;->c:Landroid/app/ProgressDialog;

    const v2, 0x7f0b0863

    invoke-static {v0, v1, v2}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;Landroid/app/AlertDialog;I)V

    .line 119
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 120
    return-void
.end method
