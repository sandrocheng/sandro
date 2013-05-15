.class Lcom/avast/android/antitheft_setup_components/app/home/p;
.super Ljava/lang/Object;
.source "RootFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/p;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 55
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/p;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/p;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root mode"

    const-string v3, "rooted"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/p;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avast/android/antitheft_setup_components/app/home/p;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    invoke-virtual {v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameWizardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/p;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root mode"

    const-string v3, "non-rooted"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
