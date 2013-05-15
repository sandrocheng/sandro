.class Lcom/avast/android/mobilesecurity/app/settings/z;
.super Ljava/lang/Object;
.source "SettingsUpdatesFragment.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/ui/widget/g;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/z;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;ZZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 168
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/z;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 170
    :cond_0
    return-void
.end method
