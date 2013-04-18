.class final Lcom/keniu/security/sync/c;
.super Landroid/os/AsyncTask;
.source "AutoVerifyMonitor.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/a;

.field private b:Lcom/ijinshan/kinghelper/firewall/core/w;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/sync/a;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/c;-><init>(Lcom/keniu/security/sync/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/keniu/security/sync/c;->a:Lcom/keniu/security/sync/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/core/w;

    iput-object v0, p0, Lcom/keniu/security/sync/c;->b:Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 79
    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    invoke-static {}, Lcom/keniu/security/sync/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 4
    .parameter

    .prologue
    .line 84
    const-string v0, ">>>>> post the verify"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->r:I

    invoke-static {}, Lcom/keniu/security/sync/a;->d()Lcom/keniu/security/sync/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x2

    .line 93
    :goto_0
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    .line 94
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    const-string v3, "dialog_type"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 100
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/c;->a:Lcom/keniu/security/sync/a;

    iget-object v0, p0, Lcom/keniu/security/sync/c;->b:Lcom/ijinshan/kinghelper/firewall/core/w;

    invoke-static {v0}, Lcom/keniu/security/sync/a;->a(Lcom/ijinshan/kinghelper/firewall/core/w;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/core/w;

    iput-object v0, p0, Lcom/keniu/security/sync/c;->b:Lcom/ijinshan/kinghelper/firewall/core/w;

    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    invoke-static {}, Lcom/keniu/security/sync/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, ">>>>> post the verify"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->r:I

    invoke-static {}, Lcom/keniu/security/sync/a;->d()Lcom/keniu/security/sync/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "dialog_type"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/c;->a:Lcom/keniu/security/sync/a;

    iget-object v0, p0, Lcom/keniu/security/sync/c;->b:Lcom/ijinshan/kinghelper/firewall/core/w;

    invoke-static {v0}, Lcom/keniu/security/sync/a;->a(Lcom/ijinshan/kinghelper/firewall/core/w;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
