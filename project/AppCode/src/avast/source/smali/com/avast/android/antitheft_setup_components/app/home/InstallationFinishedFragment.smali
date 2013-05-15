.class public Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "InstallationFinishedFragment.java"


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedWizardActivity;->c()V

    .line 62
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "/ms/antiTheftSetup/finished"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    sget v0, Lcom/avast/android/antitheft_setup_components/e;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 26
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->a:Landroid/widget/Button;

    .line 27
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->m:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    invoke-static {}, Lcom/avast/android/generic/Application;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {}, Lcom/avast/android/generic/Application;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    sget v2, Lcom/avast/android/antitheft_setup_components/g;->t:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->a:Landroid/widget/Button;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->c:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->a:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/k;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/k;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-object v1

    .line 34
    :cond_0
    sget v2, Lcom/avast/android/antitheft_setup_components/g;->ad:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->a:Landroid/widget/Button;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->c:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationFinishedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method
