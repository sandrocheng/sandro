.class Lcom/avast/android/mobilesecurity/app/settings/e;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/e;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/e;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const-string v1, "ms-Settings"

    const-string v2, "uninstallProtection"

    if-eqz p2, :cond_0

    const-string v3, "on"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 372
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/e;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Landroid/content/Context;)V

    .line 373
    return-void

    .line 370
    :cond_0
    const-string v3, "off"

    goto :goto_0
.end method
