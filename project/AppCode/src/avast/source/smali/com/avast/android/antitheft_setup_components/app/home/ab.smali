.class Lcom/avast/android/antitheft_setup_components/app/home/ab;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/aa;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 205
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->f(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, direct write"

    const-string v3, "success"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 210
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ab;->a:Lcom/avast/android/antitheft_setup_components/app/home/aa;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->g(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    goto :goto_0
.end method
