.class public final Lcom/keniu/security/service/r;
.super Ljava/lang/Object;
.source "ThreadNotifyOpenPref.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:I = 0x14d


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 36
    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    iget-object v2, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;)Z

    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    :goto_1
    iget-object v2, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    const v3, 0x7f0b080f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    const v4, 0x7f0b080e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020208

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 61
    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 63
    iget-object v5, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 67
    const/16 v1, 0x14d

    :try_start_0
    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 46
    :cond_3
    iget-object v2, p0, Lcom/keniu/security/service/r;->b:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
