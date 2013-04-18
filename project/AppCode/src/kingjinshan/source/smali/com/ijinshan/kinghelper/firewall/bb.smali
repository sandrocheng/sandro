.class final Lcom/ijinshan/kinghelper/firewall/bb;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bb;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 997
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bb;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->d(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/ijinshan/kinghelper/firewall/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->a()V

    .line 998
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bb;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a()V

    .line 999
    return-void
.end method
