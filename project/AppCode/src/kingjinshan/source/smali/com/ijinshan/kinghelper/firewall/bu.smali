.class final Lcom/ijinshan/kinghelper/firewall/bu;
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
    .line 594
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bu;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 597
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->x()V

    .line 598
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bu;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bu;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/app/Dialog;

    .line 601
    return-void
.end method
