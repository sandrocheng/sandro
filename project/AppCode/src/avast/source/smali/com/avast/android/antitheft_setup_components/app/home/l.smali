.class Lcom/avast/android/antitheft_setup_components/app/home/l;
.super Ljava/lang/Object;
.source "InstallationModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/l;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/l;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "install mode"

    const-string v3, "advanced"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avast/android/generic/Application;->b(Z)V

    .line 58
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/l;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 59
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/l;->a:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckWizardActivity;->call(Landroid/content/Context;)V

    .line 60
    return-void
.end method
