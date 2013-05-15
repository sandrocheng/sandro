.class public Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "ScanWizardActivity.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/scan/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/avast/android/generic/util/al;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->call(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;->finish()V

    .line 74
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    return-void
.end method

.method protected d()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v2, "serviceClass"

    const-class v3, Lcom/avast/android/mobilesecurity/app/wizard/WizardScannerScanService;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    const-string v2, "skipable"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/wizard/WizardScannerScanService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
