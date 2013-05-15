.class Lcom/avast/android/antitheft_setup_components/app/home/i;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/f;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/f;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 263
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/f;->a(Lcom/avast/android/antitheft_setup_components/app/home/f;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "choose name"

    const-string v3, "continue"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 269
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/g;->ab:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v1}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/antitheft_setup_components/b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    invoke-static {}, Lcom/avast/android/generic/Application;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/g;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v2, v2, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v2}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodWizardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->startActivity(Landroid/content/Intent;)V

    .line 280
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/g;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v2, v2, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v2}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AvastAntiTheftInstaller.temp.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v1, v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->f(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V

    goto/16 :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    invoke-static {v1}, Lcom/avast/android/antitheft_setup_components/app/home/f;->b(Lcom/avast/android/antitheft_setup_components/app/home/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v1, v1, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v1}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/antitheft_setup_components/b;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/g;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 309
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/c;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 312
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->e(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/i;->a:Lcom/avast/android/antitheft_setup_components/app/home/f;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/avast/android/antitheft_setup_components/app/home/j;

    invoke-direct {v1, p0}, Lcom/avast/android/antitheft_setup_components/app/home/j;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
