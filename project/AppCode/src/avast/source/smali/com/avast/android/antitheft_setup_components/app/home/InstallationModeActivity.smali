.class public Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeActivity;
.super Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;
.source "InstallationModeActivity.java"

# interfaces
.implements Lcom/avast/android/generic/ui/t;


# instance fields
.field private b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avast.android.antitheft_setup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/avast/android/generic/Application;->g()V

    .line 23
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-direct {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    .line 45
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeActivity;->finish()V

    .line 51
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-super {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 36
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
