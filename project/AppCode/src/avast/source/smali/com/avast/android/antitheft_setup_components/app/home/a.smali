.class Lcom/avast/android/antitheft_setup_components/app/home/a;
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
    .line 51
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/a;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/a;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "choose name"

    const-string v3, "generate random name"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/a;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/antitheft_setup_components/app/home/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/a;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/a;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v1}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/EditTextRow;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(I)V

    .line 59
    return-void
.end method
