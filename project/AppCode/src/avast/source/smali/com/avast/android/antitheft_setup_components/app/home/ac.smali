.class Lcom/avast/android/antitheft_setup_components/app/home/ac;
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
    .line 223
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ac;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ac;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, update-zip"

    const-string v3, "edify"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 228
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ac;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avast/android/antitheft_setup_components/app/home/ad;

    invoke-direct {v1, p0}, Lcom/avast/android/antitheft_setup_components/app/home/ad;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/ac;)V

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/b/a;->a(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V

    .line 238
    return-void
.end method
