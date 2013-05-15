.class public Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "DownloadFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/f;

    invoke-direct {v0, p0}, Lcom/avast/android/antitheft_setup_components/app/home/f;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V

    .line 328
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/an;->c([Ljava/lang/Object;)Lcom/avast/android/generic/util/an;

    .line 329
    return-void
.end method

.method static synthetic d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a:Landroid/widget/Button;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->c()V

    .line 340
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 341
    return-void
.end method

.method static synthetic e(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d()V

    return-void
.end method

.method static synthetic g(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->c()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string v0, "/ms/antiTheftSetup/download"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d()V

    .line 336
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    sget v0, Lcom/avast/android/antitheft_setup_components/e;->e:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a:Landroid/widget/Button;

    .line 56
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->n:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b:Landroid/widget/Button;

    .line 58
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->e:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->c:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->f:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->k:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->e:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/d;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/d;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/e;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/e;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->c()V

    .line 87
    return-object v1
.end method
