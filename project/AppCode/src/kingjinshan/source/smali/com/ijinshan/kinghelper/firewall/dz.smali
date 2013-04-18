.class final Lcom/ijinshan/kinghelper/firewall/dz;
.super Ljava/lang/Thread;
.source "ServicesSmsListActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dz;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dz;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->b(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V

    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dz;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->c(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dz;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->d(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 169
    return-void
.end method
