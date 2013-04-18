.class public final Lcom/keniu/security/service/s;
.super Ljava/lang/Object;
.source "ThreadRecommendExamine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:I = 0x1c


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v0, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    const-string v1, "com.keniu.security.main.main_manager"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    const-string v1, "495param3"

    const-string v2, "no_value"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const-string v2, "RECOMMEND_EXAMINE_NOTIFY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    iget-object v2, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    const v3, 0x7f0b080d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    const v4, 0x7f0b0219

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020208

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 53
    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 55
    iget-object v5, p0, Lcom/keniu/security/service/s;->b:Landroid/content/Context;

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 58
    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 62
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
