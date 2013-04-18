.class final Lcom/ijinshan/kinghelper/firewall/bi;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bi;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iput p2, p0, Lcom/ijinshan/kinghelper/firewall/bi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bi;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bi;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/o;->dismiss()V

    .line 1117
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bi;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bi;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/bi;->a:I

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;I)V

    .line 1120
    return-void
.end method
