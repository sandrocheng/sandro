.class final Lcom/ijinshan/kinghelper/firewall/eb;
.super Ljava/lang/Thread;
.source "ServicesSmsListActivity.java"


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/eb;->c:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/eb;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/eb;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 270
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eb;->c:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->e(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Lcom/ijinshan/kinghelper/firewall/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/eg;->b()Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    .line 276
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 277
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    aput-object v0, v4, v7

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eb;->c:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v6, "address = ? and type = 1"

    invoke-virtual {v0, v5, v6, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    add-int/lit8 v0, v2, 0x1

    .line 289
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/eb;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    move v2, v0

    .line 290
    goto :goto_0

    .line 293
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/eb;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eb;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
