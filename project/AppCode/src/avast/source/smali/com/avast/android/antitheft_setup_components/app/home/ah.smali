.class Lcom/avast/android/antitheft_setup_components/app/home/ah;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ah;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ah;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, update-zip, success"

    const-string v3, "ROM manager"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 329
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ah;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->g(Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ah;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodWizardActivity;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodWizardActivity;->c()V

    .line 332
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ah;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 333
    return-void
.end method
