.class Lcom/avast/android/mobilesecurity/app/settings/c;
.super Landroid/os/AsyncTask;
.source "SettingsAccountFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/c;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/settings/c;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/settings/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/settings/c;-><init>(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/generic/util/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/settings/c;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/i;->b(Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Bundle;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const-string v2, "community_iq"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    :cond_0
    return-object v1

    .line 44
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/c;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/c;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;

    invoke-static {v0, p1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/settings/c;->a([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/settings/c;->a(Landroid/os/Bundle;)V

    return-void
.end method
