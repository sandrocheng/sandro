.class public Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "RootFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "/ms/antiTheftSetup/root"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 27
    sget v0, Lcom/avast/android/antitheft_setup_components/e;->c:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 30
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->a:Landroid/widget/Button;

    .line 31
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->n:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->b:Landroid/widget/Button;

    .line 33
    invoke-static {v3}, Lcom/avast/android/generic/Application;->a(Z)V

    .line 35
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->h:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 36
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->ah:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->P:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 39
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 41
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->c:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/o;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/o;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 51
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->a:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/p;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/p;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;->b:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/q;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/q;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/RootFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v1
.end method
