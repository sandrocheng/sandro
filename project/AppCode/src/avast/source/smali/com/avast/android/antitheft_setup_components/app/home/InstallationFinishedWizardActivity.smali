.class public Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;
.super Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;
.source "InstallationFinishedWizardActivity.java"


# instance fields
.field private b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;

    invoke-direct {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;

    .line 30
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;->finish()V

    .line 36
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 23
    invoke-super {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 21
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
