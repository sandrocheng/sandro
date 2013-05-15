.class public Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;
.super Landroid/app/Activity;
.source "CampaignWindowActivity.java"


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaign_event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->a:Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;

    .line 30
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->a:Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->finish()V

    .line 48
    :goto_0
    return-void

    .line 35
    :cond_0
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 36
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->a:Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/campaign/g;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/campaign/g;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/campaign/h;)Landroid/view/View;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignWindowActivity;->finish()V

    goto :goto_0
.end method
