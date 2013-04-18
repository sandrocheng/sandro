.class final Lcom/ijinshan/kinghelper/firewall/bd;
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
    .line 1016
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bd;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bd;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bd;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b()V

    .line 1022
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bd;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;

    .line 1024
    :cond_0
    return-void
.end method
