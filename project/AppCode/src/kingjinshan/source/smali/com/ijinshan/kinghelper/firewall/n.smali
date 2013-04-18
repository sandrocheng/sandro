.class final Lcom/ijinshan/kinghelper/firewall/n;
.super Ljava/lang/Object;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/n;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 828
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/n;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->g(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 829
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/n;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->h(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/PopupWindow;

    .line 830
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/n;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->i(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)V

    .line 831
    return-void
.end method
