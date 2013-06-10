.class public Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Lorg/antivirus/AVService$LocalBinder;

.field private j:Landroid/content/ServiceConnection;

.field private k:Lorg/antivirus/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->f:Z

    iput-boolean v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->g:Z

    new-instance v0, Lorg/antivirus/ui/versionUpdate/d;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/versionUpdate/d;-><init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V

    iput-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->j:Landroid/content/ServiceConnection;

    new-instance v0, Lorg/antivirus/ui/versionUpdate/f;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/versionUpdate/f;-><init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V

    iput-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->k:Lorg/antivirus/a/i;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;Lorg/antivirus/AVService$LocalBinder;)Lorg/antivirus/AVService$LocalBinder;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->i:Lorg/antivirus/AVService$LocalBinder;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Lorg/antivirus/a/i;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->k:Lorg/antivirus/a/i;

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Lorg/antivirus/AVService$LocalBinder;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->i:Lorg/antivirus/AVService$LocalBinder;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->f:Z

    return v0
.end method

.method static synthetic d(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->g:Z

    return v0
.end method

.method static synthetic i(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090145

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v0, 0x108009b

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f030023

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0800bf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f0800c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->c:Landroid/widget/TextView;

    const v0, 0x7f0800be

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090146

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/antivirus/ui/versionUpdate/h;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/versionUpdate/h;-><init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090004

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/antivirus/ui/versionUpdate/i;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/versionUpdate/i;-><init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iput v1, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d:I

    :goto_0
    const-string v1, "progress_max"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d:I

    if-lt v0, v1, :cond_1

    iput v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e:I

    :goto_1
    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b:Landroid/widget/ProgressBar;

    iget v1, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b:Landroid/widget/ProgressBar;

    iget v1, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d:I

    int-to-double v0, v0

    iget v2, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->h:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    iput v4, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d:I

    goto :goto_0

    :cond_1
    iput v4, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e:I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->f:Z

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->g:Z

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->g:Z

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
