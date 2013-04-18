.class final Lcom/keniu/security/traffic/dm;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p1, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    .line 813
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const v6, 0x7f0b0352

    .line 817
    iget-object v0, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Lcom/keniu/security/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 822
    if-nez v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f02013f

    iget-object v3, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 829
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 830
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 831
    iget-object v3, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    const-class v4, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 832
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 833
    const-string v3, "autoadjustnotify"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    iget-object v3, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    const/4 v4, 0x5

    const/high16 v5, 0x800

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 841
    iget-object v3, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    const v5, 0x7f0b031a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/traffic/dm;->a:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 846
    const/16 v2, 0x3f0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
