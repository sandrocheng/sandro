.class public abstract Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;
.super Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;
.source "PopupCampaignEvent.java"


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;-><init>(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Lcom/avast/android/mobilesecurity/app/campaign/f;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Lcom/avast/android/mobilesecurity/app/campaign/f;Landroid/os/Bundle;)V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/campaign/h;)Landroid/view/View;
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    const-string v1, "campaign_event"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
