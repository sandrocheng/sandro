.class final Lcom/ijinshan/kinghelper/firewall/bl;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bl;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/bl;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1173
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bl;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bl;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->k()V

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bl;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Z)V

    .line 1178
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->k(Z)V

    .line 1179
    return-void
.end method
