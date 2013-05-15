.class public Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "RootMethodFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->f:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V

    return-void
.end method

.method private a(Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->j:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/af;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/avast/android/antitheft_setup_components/app/home/af;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Lcom/avast/android/generic/util/o;Lcom/avast/android/generic/util/am;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 318
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    sget v0, Lcom/avast/android/antitheft_setup_components/g;->O:I

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->ae:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 353
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    sget v0, Lcom/avast/android/antitheft_setup_components/g;->O:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->p:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->s:I

    invoke-virtual {p0, v3}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/antitheft_setup_components/app/home/t;

    invoke-direct {v4, p0}, Lcom/avast/android/antitheft_setup_components/app/home/t;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    new-instance v5, Lcom/avast/android/antitheft_setup_components/app/home/u;

    invoke-direct {v5, p0}, Lcom/avast/android/antitheft_setup_components/app/home/u;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 374
    return-void
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 377
    sget v0, Lcom/avast/android/antitheft_setup_components/g;->g:I

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->ae:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 379
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    sget v0, Lcom/avast/android/antitheft_setup_components/g;->g:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->p:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->s:I

    invoke-virtual {p0, v3}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/antitheft_setup_components/app/home/v;

    invoke-direct {v4, p0}, Lcom/avast/android/antitheft_setup_components/app/home/v;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    new-instance v5, Lcom/avast/android/antitheft_setup_components/app/home/w;

    invoke-direct {v5, p0}, Lcom/avast/android/antitheft_setup_components/app/home/w;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 400
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/avast/android/generic/Application;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->j:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/aa;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/antitheft_setup_components/app/home/aa;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/g;->Q:I

    invoke-virtual {p0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->Y:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->a:I

    invoke-virtual {p0, v3}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/antitheft_setup_components/app/home/ac;

    invoke-direct {v4, p0}, Lcom/avast/android/antitheft_setup_components/app/home/ac;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    new-instance v5, Lcom/avast/android/antitheft_setup_components/app/home/ae;

    invoke-direct {v5, p0}, Lcom/avast/android/antitheft_setup_components/app/home/ae;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 250
    return-void
.end method

.method static synthetic e(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/g;->H:I

    invoke-virtual {p0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->p:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/avast/android/antitheft_setup_components/g;->s:I

    invoke-virtual {p0, v3}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/antitheft_setup_components/app/home/ah;

    invoke-direct {v4, p0}, Lcom/avast/android/antitheft_setup_components/app/home/ah;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    new-instance v5, Lcom/avast/android/antitheft_setup_components/app/home/s;

    invoke-direct {v5, p0}, Lcom/avast/android/antitheft_setup_components/app/home/s;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 348
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string v1, "ms-atSetup"

    const-string v2, "root method, update-zip, success"

    const-string v3, "finished"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 346
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AvastAntiTheftInstaller.temp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodWizardActivity;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodWizardActivity;->c()V

    .line 414
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->g()V

    return-void
.end method

.method static synthetic h(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const-string v0, "/ms/antiTheftSetup/rootMethod"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    sget v0, Lcom/avast/android/antitheft_setup_components/e;->b:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->b:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a:Landroid/widget/Button;

    .line 50
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->b:Landroid/widget/Button;

    .line 52
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->o:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 54
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->u:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->n:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 58
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 60
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->d:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 62
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->R:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->aa:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 66
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 68
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->i:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 69
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->A:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->x:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v5}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 73
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 74
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 75
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 76
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->e:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/ag;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 78
    invoke-static {v4}, Lcom/avast/android/generic/Application;->c(Z)V

    .line 80
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/r;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/r;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 96
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->d:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/x;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/x;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 112
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/y;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/y;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->b:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/z;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/z;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-object v1
.end method
