.class Lcom/avast/android/mobilesecurity/app/settings/d;
.super Landroid/content/BroadcastReceiver;
.source "SettingsFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/d;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    const-string v0, "phone_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/d;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/t;->f(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/d;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/d;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V

    .line 162
    :cond_0
    return-void
.end method
