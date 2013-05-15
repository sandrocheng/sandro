.class Lcom/avast/android/mobilesecurity/app/settings/w;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->b:Landroid/content/Context;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/settings/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/settings/w;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v2, "app_name"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    const v4, 0x7f0c01d4

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    const-string v3, "vps_version"

    iget-object v4, v2, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "vps_definitions_count"

    iget-wide v4, v2, Lcom/avast/android/mobilesecurity/engine/al;->c:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/l;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/i;->b(Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Bundle;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    const-string v2, "community_iq"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    :cond_1
    return-object v1

    .line 88
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/w;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0, p1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/settings/w;->a([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/settings/w;->a(Landroid/os/Bundle;)V

    return-void
.end method
