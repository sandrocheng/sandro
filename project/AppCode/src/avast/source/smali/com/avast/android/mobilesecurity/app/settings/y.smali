.class Lcom/avast/android/mobilesecurity/app/settings/y;
.super Ljava/lang/Object;
.source "SettingsUpdatesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/y;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/y;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    const-string v1, "ms-Settings"

    const-string v2, "manualUpdate"

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 156
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/y;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesFragment;->c()V

    .line 157
    return-void
.end method
