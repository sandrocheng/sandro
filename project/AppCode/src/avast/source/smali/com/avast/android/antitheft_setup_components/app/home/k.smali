.class Lcom/avast/android/antitheft_setup_components/app/home/k;
.super Ljava/lang/Object;
.source "InstallationFinishedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/k;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-static {}, Lcom/avast/android/generic/Application;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/k;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;)V

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/k;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;->c()V

    .line 50
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/k;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method
