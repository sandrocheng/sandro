.class final Lcom/ijinshan/kinghelper/firewall/bj;
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
    .line 1138
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bj;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bj;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1144
    sget-object v1, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/bj;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const v3, 0x7f0b0263

    invoke-virtual {v2, v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    sget-object v1, Lcom/keniu/security/protection/ui/PreventTheftHelpActivity;->b:Ljava/lang/String;

    const-string v2, "file:///android_asset/html/private_xieyi.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bj;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1149
    return-void
.end method
