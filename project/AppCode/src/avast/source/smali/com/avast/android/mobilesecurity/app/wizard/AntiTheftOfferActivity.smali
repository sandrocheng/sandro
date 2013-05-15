.class public Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "AntiTheftOfferActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 25
    :cond_0
    return-void
.end method
