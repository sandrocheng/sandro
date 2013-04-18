.class final Lcom/keniu/security/commumgr/r;
.super Landroid/content/BroadcastReceiver;
.source "OnekeyCallSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/keniu/security/commumgr/r;->a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/keniu/security/commumgr/r;->a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->b(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/keniu/security/commumgr/r;->a:Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;->b(Lcom/keniu/security/commumgr/OnekeyCallSettingActivity;)V

    goto :goto_0
.end method
