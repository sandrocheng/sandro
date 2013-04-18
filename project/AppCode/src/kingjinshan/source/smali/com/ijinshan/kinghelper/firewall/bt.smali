.class final Lcom/ijinshan/kinghelper/firewall/bt;
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
    .line 576
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bt;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/bt;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 579
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->x()V

    .line 580
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 581
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bt;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bt;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    .line 584
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bt;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->k(Z)V

    .line 586
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bt;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Z)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bt;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/app/Dialog;

    .line 590
    return-void
.end method
