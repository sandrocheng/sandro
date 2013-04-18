.class final Lcom/ijinshan/kinghelper/firewall/ba;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ba;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ba;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    .line 920
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ba;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 921
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ba;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->g(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/widget/PopupWindow;

    .line 922
    return-void
.end method
