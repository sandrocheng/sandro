.class Lcom/avast/android/mobilesecurity/app/firewall/al;
.super Ljava/lang/Object;
.source "FirewallSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/firewall/ah;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/ah;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/al;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->b(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z

    .line 238
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->i(Z)V

    .line 240
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/am;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/am;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/al;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
