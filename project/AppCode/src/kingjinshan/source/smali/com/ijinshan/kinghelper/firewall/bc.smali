.class final Lcom/ijinshan/kinghelper/firewall/bc;
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
    .line 1004
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bc;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bc;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    .line 1009
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bc;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const v1, 0x7f0b0212

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1012
    return-void
.end method
