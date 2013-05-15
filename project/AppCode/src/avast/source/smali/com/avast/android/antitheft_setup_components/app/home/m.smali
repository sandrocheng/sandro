.class Lcom/avast/android/antitheft_setup_components/app/home/m;
.super Ljava/lang/Object;
.source "InstallationModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/m;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    iput-object p2, p0, Lcom/avast/android/antitheft_setup_components/app/home/m;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/m;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "install mode"

    const-string v3, "easyPlay"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 104
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/m;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/m;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/m;->b:Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 106
    return-void
.end method
