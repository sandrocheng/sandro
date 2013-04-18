.class final Lcom/keniu/security/traffic/au;
.super Ljava/lang/Object;
.source "TrafficFixSmsAction.java"

# interfaces
.implements Lcn/com/wali/zft/ZftPluginCallBack;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Sync_End()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/at;->b:Z

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    const-string v1, "updateTrafficMainData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sync_End"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/keniu/security/traffic/at;->g()Lcom/keniu/security/traffic/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/traffic/aw;->a()V

    .line 114
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/keniu/security/traffic/aw;->a:Z

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/at;->a([Ljava/lang/String;Z)V

    .line 115
    invoke-static {v2}, Lcom/keniu/security/traffic/at;->a([Ljava/lang/String;)[Ljava/lang/String;

    .line 116
    invoke-static {v2}, Lcom/keniu/security/traffic/at;->b([Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    return-void
.end method

.method public final Sync_Status(Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Lcn/com/wali/zft/ZftPluginCallBack$SyncStatus;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u53d1\u9001\u77ed\u4fe1\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/keniu/security/traffic/at;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    invoke-static {}, Lcom/keniu/security/traffic/at;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "12"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/keniu/security/traffic/at;->d()Z

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/keniu/security/traffic/at;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "11"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/keniu/security/traffic/at;->f()Z

    .line 78
    :cond_2
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/keniu/security/traffic/at;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final Sync_Timeout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/at;->b:Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    const-string v1, "updateTrafficMainData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {}, Lcom/keniu/security/traffic/at;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sync_Timeout"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/keniu/security/traffic/at;->g()Lcom/keniu/security/traffic/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/traffic/aw;->a()V

    .line 97
    sget-boolean v0, Lcom/keniu/security/traffic/aw;->a:Z

    if-nez v0, :cond_0

    .line 98
    sget-boolean v0, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/keniu/security/traffic/at;->h()V

    .line 101
    :cond_0
    invoke-static {}, Lcom/keniu/security/traffic/at;->i()[Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/keniu/security/traffic/aw;->a:Z

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/at;->a([Ljava/lang/String;Z)V

    .line 102
    invoke-static {v2}, Lcom/keniu/security/traffic/at;->a([Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    invoke-static {v2}, Lcom/keniu/security/traffic/at;->b([Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    return-void
.end method
