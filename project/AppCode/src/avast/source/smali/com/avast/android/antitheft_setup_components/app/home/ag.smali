.class Lcom/avast/android/antitheft_setup_components/app/home/ag;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/af;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/af;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ag;->a:Lcom/avast/android/antitheft_setup_components/app/home/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ag;->a:Lcom/avast/android/antitheft_setup_components/app/home/af;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/af;->d:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ag;->a:Lcom/avast/android/antitheft_setup_components/app/home/af;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/af;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ag;->a:Lcom/avast/android/antitheft_setup_components/app/home/af;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/af;->d:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ag;->a:Lcom/avast/android/antitheft_setup_components/app/home/af;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/af;->d:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ag;->a:Lcom/avast/android/antitheft_setup_components/app/home/af;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/af;->d:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->f(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ag;->a:Lcom/avast/android/antitheft_setup_components/app/home/af;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/af;->d:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->h(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    goto :goto_0
.end method
