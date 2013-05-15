.class public Lcom/avast/android/mobilesecurity/app/wizard/EulaWizardActivity;
.super Lcom/avast/android/generic/app/wizard/EulaWizardActivity;
.source "EulaWizardActivity.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avast/android/generic/app/wizard/EulaWizardActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/EulaWizardActivity;->a:Z

    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/avast/android/generic/app/wizard/EulaWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/avast/android/generic/app/wizard/EulaWizardActivity;->onStart()V

    .line 25
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/EulaWizardActivity;->a:Z

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/home/AppSetupIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/wizard/EulaWizardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/EulaWizardActivity;->a:Z

    .line 29
    :cond_0
    return-void
.end method
