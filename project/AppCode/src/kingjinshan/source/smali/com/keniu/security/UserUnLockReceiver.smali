.class public Lcom/keniu/security/UserUnLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserUnLockReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->y()J

    move-result-wide v0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/service/MoSecurityService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    :cond_0
    return-void
.end method
