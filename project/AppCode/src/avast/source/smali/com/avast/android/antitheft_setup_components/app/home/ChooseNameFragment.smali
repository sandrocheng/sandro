.class public Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "ChooseNameFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lcom/avast/android/generic/ui/widget/EditTextRow;

.field private e:Ljava/util/regex/Pattern;

.field private f:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 29
    const-string v0, "[[a-z][A-Z][0-9][\\!\\-][ ]]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Lcom/avast/android/generic/ui/widget/EditTextRow;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->d:Lcom/avast/android/generic/ui/widget/EditTextRow;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->f:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "/ms/antiTheftSetup/chooseName"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    sget v0, Lcom/avast/android/antitheft_setup_components/e;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 39
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a:Landroid/widget/Button;

    .line 40
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->n:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->b:Landroid/widget/Button;

    .line 41
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->g:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->c:Landroid/widget/Button;

    .line 42
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->l:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/EditTextRow;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->d:Lcom/avast/android/generic/ui/widget/EditTextRow;

    .line 44
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->d:Lcom/avast/android/generic/ui/widget/EditTextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->T:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/EditTextRow;->c(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->d:Lcom/avast/android/generic/ui/widget/EditTextRow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Lcom/avast/android/generic/d/e;)V

    .line 47
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->d:Lcom/avast/android/generic/ui/widget/EditTextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->V:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/EditTextRow;->a(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->f:Landroid/app/Activity;

    .line 51
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->c:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/a;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/a;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->a:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/b;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/b;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;->b:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/c;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/c;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/ChooseNameFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v1
.end method
