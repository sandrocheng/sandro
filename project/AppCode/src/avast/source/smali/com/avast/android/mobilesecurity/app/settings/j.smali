.class Lcom/avast/android/mobilesecurity/app/settings/j;
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
    .line 444
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/j;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/j;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/j;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->i(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/about/AboutActivity;->call(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 448
    return-void
.end method
