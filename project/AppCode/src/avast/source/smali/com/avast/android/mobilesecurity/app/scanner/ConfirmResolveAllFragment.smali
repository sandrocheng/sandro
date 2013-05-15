.class public Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;
.super Lcom/avast/android/generic/util/ga/TrackedDialogFragment;
.source "ConfirmResolveAllFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;-><init>()V

    return-void
.end method

.method private b()V
    .locals 11

    .prologue
    const/16 v2, 0x8

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "com.avast.android.mobilesecurity.app.scanner.APPS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.avast.android.mobilesecurity.app.scanner.FILES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 101
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.avast.android.mobilesecurity.app.scanner.IGNORE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 103
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0015

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->b:Landroid/widget/TextView;

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0016

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->c:Landroid/widget/TextView;

    if-lez v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0017

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->d:Landroid/widget/TextView;

    if-lez v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    return-void

    :cond_0
    move v0, v2

    .line 104
    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    :cond_2
    move v1, v2

    .line 108
    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "/ms/scanner/confirmResolveAll"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->b()V

    .line 53
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030030

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->a:Landroid/view/View;

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0226

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/b;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/b;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0064

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/a;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/scanner/a;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->a:Landroid/view/View;

    const v2, 0x7f0700a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->b:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->a:Landroid/view/View;

    const v2, 0x7f0700a5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->c:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->a:Landroid/view/View;

    const v2, 0x7f070077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->d:Landroid/widget/TextView;

    .line 95
    return-object v1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->onPause()V

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->onResume()V

    .line 63
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    instance-of v0, p1, Lcom/avast/android/mobilesecurity/app/scanner/ap;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "fragment must implement YesNoCallback"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 47
    return-void
.end method
