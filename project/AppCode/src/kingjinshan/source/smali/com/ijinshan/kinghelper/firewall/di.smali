.class final Lcom/ijinshan/kinghelper/firewall/di;
.super Ljava/lang/Thread;
.source "ServiceSmsGroupActivity.java"


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/di;->c:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/di;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/di;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 200
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/di;->c:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Lcom/ijinshan/kinghelper/firewall/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/do;->e()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 204
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    aput-object v0, v3, v6

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/di;->c:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v5, "address = ? and type = 1"

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    add-int/lit8 v0, v2, 0x1

    .line 215
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/di;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    move v2, v0

    .line 216
    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/di;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/di;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
