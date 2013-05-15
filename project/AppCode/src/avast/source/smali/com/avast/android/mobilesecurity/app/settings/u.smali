.class Lcom/avast/android/mobilesecurity/app/settings/u;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/ad;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/u;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/u;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/u;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;ZZ)V

    .line 333
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method
