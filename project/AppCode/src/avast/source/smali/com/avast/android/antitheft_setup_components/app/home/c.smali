.class Lcom/avast/android/antitheft_setup_components/app/home/c;
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
    .line 87
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/c;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/c;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "choose name"

    const-string v3, "cancel"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 92
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/c;->a:Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 93
    return-void
.end method
