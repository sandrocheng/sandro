.class Lcom/avast/android/mobilesecurity/app/firewall/x;
.super Landroid/os/Handler;
.source "FirewallLogsFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/x;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/x;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/x;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)V

    .line 92
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/x;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->c(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/x;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->c(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 94
    :cond_0
    return-void
.end method
