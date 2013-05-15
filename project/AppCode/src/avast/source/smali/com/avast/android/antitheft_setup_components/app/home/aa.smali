.class Lcom/avast/android/antitheft_setup_components/app/home/aa;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    iput-object p2, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 159
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Z)Z

    .line 163
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "AvastAntiTheftInstaller.temp.apk"

    const-string v2, "/system/app/com.avast.android.antitheft.apk"

    const/4 v3, 0x0

    sget v4, Lcom/avast/android/antitheft_setup_components/f;->e:I

    sget v5, Lcom/avast/android/antitheft_setup_components/f;->d:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v11}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v11

    invoke-virtual {v11}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v11

    invoke-static/range {v0 .. v11}, Lcom/avast/android/generic/util/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIIZZILcom/avast/android/generic/util/o;Lcom/avast/android/generic/util/am;Z)V

    .line 172
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/com.avast.android.antitheft.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Z)Z
    :try_end_0
    .catch Lcom/avast/android/generic/util/a/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    new-instance v1, Lcom/avast/android/antitheft_setup_components/app/home/ab;

    invoke-direct {v1, p0}, Lcom/avast/android/antitheft_setup_components/app/home/ab;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/aa;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 177
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, direct write, error"

    const-string v3, "not enough space"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 182
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->E:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/avast/android/generic/util/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-virtual {v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/avast/android/generic/util/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Z)Z

    goto :goto_1

    .line 187
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 188
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, direct write, error"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    invoke-static {v1, v6}, Lcom/avast/android/generic/util/q;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/aa;->b:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Z)Z

    goto :goto_1
.end method
