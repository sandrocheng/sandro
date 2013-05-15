.class Lcom/avast/android/mobilesecurity/app/firewall/z;
.super Ljava/lang/Object;
.source "FirewallLogsFragment.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/firewall/core/a;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/y;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/y;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/z;->a:Lcom/avast/android/mobilesecurity/app/firewall/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/z;->a:Lcom/avast/android/mobilesecurity/app/firewall/y;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/z;->a:Lcom/avast/android/mobilesecurity/app/firewall/y;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/z;->a:Lcom/avast/android/mobilesecurity/app/firewall/y;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/y;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/aa;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/aa;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/z;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method
