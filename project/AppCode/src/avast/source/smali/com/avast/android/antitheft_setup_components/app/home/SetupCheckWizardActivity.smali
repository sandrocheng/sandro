.class public Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckWizardActivity;
.super Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;
.source "SetupCheckWizardActivity.java"

# interfaces
.implements Lcom/avast/android/generic/ui/t;


# instance fields
.field private b:Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/ai;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    .line 17
    invoke-virtual {v0, p0}, Lcom/avast/android/antitheft_setup_components/app/home/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckFragment;->a(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckFragment;

    invoke-direct {v0}, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckWizardActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckFragment;

    .line 45
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckWizardActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckFragment;

    return-object v0
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
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckWizardActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->a()V

    .line 30
    return-void
.end method
