.class final Lcom/ijinshan/kinghelper/firewall/bh;
.super Ljava/lang/Object;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 277
    check-cast p2, Lcom/keniu/security/service/g;

    .line 278
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {p2}, Lcom/keniu/security/service/g;->a()Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    .line 280
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->a(Lcom/keniu/security/service/f;)V

    .line 283
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v0, v1}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b(Lcom/keniu/security/service/f;)V

    .line 289
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bh;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    .line 291
    :cond_0
    return-void
.end method
