.class Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;->b:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 242
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;->b:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->d(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;->b:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;->b:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->e(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->c(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Ljava/lang/String;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/o;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/n;->b:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->g(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V

    goto :goto_0
.end method
