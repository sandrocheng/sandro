.class Lcom/antivirus/ui/versionUpdate/f;
.super Lcom/antivirus/e/h;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method protected constructor <init>(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/e/h;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/antivirus/ui/versionUpdate/f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->c(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->c(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/antivirus/ui/versionUpdate/f;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/antivirus/ui/versionUpdate/g;

    invoke-direct {v1, p0, v0}, Lcom/antivirus/ui/versionUpdate/g;-><init>(Lcom/antivirus/ui/versionUpdate/f;Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/antivirus/ui/versionUpdate/f;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
