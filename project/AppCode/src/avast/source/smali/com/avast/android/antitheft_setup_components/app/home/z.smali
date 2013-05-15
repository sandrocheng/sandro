.class Lcom/avast/android/antitheft_setup_components/app/home/z;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/z;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 126
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/z;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/z;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method"

    const-string v3, "update-zip"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/z;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    .line 138
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/z;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/z;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method"

    const-string v3, "direct write"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/z;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, error"

    const-string v3, "invalid checkbox state"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
