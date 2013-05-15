.class public Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "RootFinishedActivity.java"


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    .line 13
    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedActivity;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;

    .line 25
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedActivity;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootFinishedActivity;->finish()V

    .line 21
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 34
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 32
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method
