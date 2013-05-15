.class Lcom/avast/android/mobilesecurity/app/firewall/aj;
.super Ljava/lang/Object;
.source "FirewallSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/ai;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/aj;->a:Lcom/avast/android/mobilesecurity/app/firewall/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/aj;->a:Lcom/avast/android/mobilesecurity/app/firewall/ai;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ai;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/aj;->a:Lcom/avast/android/mobilesecurity/app/firewall/ai;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ai;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_1
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/aj;->a:Lcom/avast/android/mobilesecurity/app/firewall/ai;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ai;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/aj;->a:Lcom/avast/android/mobilesecurity/app/firewall/ai;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/firewall/ai;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    const v2, 0x7f0c0329

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/aj;->a:Lcom/avast/android/mobilesecurity/app/firewall/ai;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ai;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method
