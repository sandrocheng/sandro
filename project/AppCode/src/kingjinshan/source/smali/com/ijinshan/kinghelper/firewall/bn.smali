.class final Lcom/ijinshan/kinghelper/firewall/bn;
.super Landroid/os/Handler;
.source "FirewallSmsLogListActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 1217
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1218
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1227
    :goto_0
    return-void

    .line 1220
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->m(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1221
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->n(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    .line 1222
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/bw;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ijinshan/kinghelper/firewall/bw;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Lcom/ijinshan/kinghelper/firewall/bw;)Lcom/ijinshan/kinghelper/firewall/bw;

    .line 1224
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bn;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->d(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/ijinshan/kinghelper/firewall/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
