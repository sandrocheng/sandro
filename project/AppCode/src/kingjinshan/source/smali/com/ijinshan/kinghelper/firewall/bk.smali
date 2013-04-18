.class final Lcom/ijinshan/kinghelper/firewall/bk;
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
    .line 1160
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bk;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1163
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->k(Z)V

    .line 1164
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bk;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Z)V

    .line 1166
    return-void
.end method
