.class Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/util/o;

.field final synthetic b:Lcom/avast/android/generic/util/am;

.field final synthetic c:Landroid/app/ProgressDialog;

.field final synthetic d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Lcom/avast/android/generic/util/o;Lcom/avast/android/generic/util/am;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->a:Lcom/avast/android/generic/util/o;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->b:Lcom/avast/android/generic/util/am;

    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->c:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Z)Z

    .line 151
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f060004

    const v4, 0x7f060005

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->a:Lcom/avast/android/generic/util/o;

    invoke-static {v5}, Lcom/avast/android/antitheft_setup_components/b/a;->a(Lcom/avast/android/generic/util/o;)I

    move-result v5

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->b:Lcom/avast/android/generic/util/am;

    invoke-static/range {v0 .. v6}, Lcom/avast/android/generic/util/ag;->a(Landroid/content/Context;Ljava/lang/String;ZIIILcom/avast/android/generic/util/am;)V

    .line 156
    const-string v0, "AvastAntiTheft"

    const-string v1, "ZIP uninstall succeeded"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/j;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/j;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-static {v2, v0}, Lcom/avast/android/generic/util/q;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/i;->d:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->a(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;Z)Z

    goto :goto_1
.end method
