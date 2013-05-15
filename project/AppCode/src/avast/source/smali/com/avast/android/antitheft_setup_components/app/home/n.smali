.class Lcom/avast/android/antitheft_setup_components/app/home/n;
.super Ljava/lang/Object;
.source "InstallationModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/n;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    iput-object p2, p0, Lcom/avast/android/antitheft_setup_components/app/home/n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/n;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "install mode"

    const-string v3, "easyOld"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avast/android/generic/Application;->b(Z)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avast/android/generic/Application;->a(Z)V

    .line 122
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/n;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/generic/Application;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/n;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 124
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/n;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/SetupCheckWizardActivity;->call(Landroid/content/Context;)V

    .line 125
    return-void
.end method
