.class final Lcom/ijinshan/kinghelper/firewall/bm;
.super Ljava/lang/Thread;
.source "FirewallSmsLogListActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bm;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bm;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    .line 1205
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bm;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1206
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1207
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bm;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1208
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1209
    return-void
.end method
