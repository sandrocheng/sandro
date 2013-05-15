.class public abstract Lcom/avast/android/mobilesecurity/app/campaign/NotificationCampaignEvent;
.super Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;
.source "NotificationCampaignEvent.java"


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;-><init>(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Lcom/avast/android/mobilesecurity/app/campaign/f;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Lcom/avast/android/mobilesecurity/app/campaign/f;Landroid/os/Bundle;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 44
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 46
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/NotificationCampaignEvent;->b(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    const-string v2, "campaign_notification"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/campaign/NotificationCampaignEvent;->b()Lcom/avast/android/mobilesecurity/app/campaign/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/app/campaign/f;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)Landroid/app/Notification;
.end method
