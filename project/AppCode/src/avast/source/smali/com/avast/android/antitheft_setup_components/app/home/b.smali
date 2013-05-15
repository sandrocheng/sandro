.class Lcom/avast/android/antitheft_setup_components/app/home/b;
.super Ljava/lang/Object;
.source "ChooseNameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "choose name"

    const-string v3, "continue"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v1}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/Application;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-virtual {v2}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/avast/android/antitheft_setup_components/app/home/DownloadWizardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->startActivity(Landroid/content/Intent;)V

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->N:I

    invoke-virtual {v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/b;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->z:I

    invoke-virtual {v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
