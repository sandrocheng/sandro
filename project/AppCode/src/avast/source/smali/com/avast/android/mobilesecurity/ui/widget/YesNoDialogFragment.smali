.class public Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "YesNoDialogFragment.java"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Lcom/avast/android/mobilesecurity/ui/widget/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)Lcom/avast/android/mobilesecurity/ui/widget/y;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/y;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->a:Ljava/lang/CharSequence;

    .line 84
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->b:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->a:Ljava/lang/CharSequence;

    .line 98
    const-string v0, "question"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->b:Ljava/lang/CharSequence;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030031

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0063

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/avast/android/mobilesecurity/ui/widget/x;

    invoke-direct {v3, p0}, Lcom/avast/android/mobilesecurity/ui/widget/x;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0064

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/avast/android/mobilesecurity/ui/widget/w;

    invoke-direct {v3, p0}, Lcom/avast/android/mobilesecurity/ui/widget/w;-><init>(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 120
    const v0, 0x7f0700a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const-string v0, "title"

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 74
    const-string v0, "question"

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 64
    instance-of v0, p1, Lcom/avast/android/mobilesecurity/ui/widget/y;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/avast/android/mobilesecurity/ui/widget/y;

    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/y;

    .line 69
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Target fragment must implement YesNoDialogListener"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
