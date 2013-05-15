.class Lcom/avast/android/mobilesecurity/app/firewall/am;
.super Ljava/lang/Object;
.source "FirewallSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/al;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/al;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/am;->a:Lcom/avast/android/mobilesecurity/app/firewall/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/am;->a:Lcom/avast/android/mobilesecurity/app/firewall/al;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/al;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/am;->a:Lcom/avast/android/mobilesecurity/app/firewall/al;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_1
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/am;->a:Lcom/avast/android/mobilesecurity/app/firewall/al;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 252
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/am;->a:Lcom/avast/android/mobilesecurity/app/firewall/al;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->d(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/am;->a:Lcom/avast/android/mobilesecurity/app/firewall/al;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/am;->a:Lcom/avast/android/mobilesecurity/app/firewall/al;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/al;->b:Lcom/avast/android/mobilesecurity/app/firewall/ah;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ah;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;->a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)V

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method
