.class Lcom/avast/android/mobilesecurity/app/settings/x;
.super Ljava/lang/Object;
.source "SettingsUpdatesFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setEnabled(Z)V

    .line 133
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->b(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->b(ZZZ)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    const-string v1, "ms-Settings"

    const-string v2, "autoUpdate"

    if-eqz p2, :cond_2

    const-string v3, "on"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 141
    if-eqz p2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/x;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 145
    :cond_1
    return-void

    .line 139
    :cond_2
    const-string v3, "off"

    goto :goto_0
.end method
