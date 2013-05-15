.class Lcom/avast/android/mobilesecurity/app/settings/g;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/g;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/g;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const-string v1, "ms-Settings"

    const-string v2, "uninstallAntiTheft"

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 395
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/g;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/support/v4/app/FragmentManager;I)V

    .line 397
    return-void
.end method
