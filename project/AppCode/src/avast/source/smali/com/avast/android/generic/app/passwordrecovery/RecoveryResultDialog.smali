.class public Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "RecoveryResultDialog.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->a:Z

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iput-boolean v2, p0, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->a:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    sget v0, Lcom/avast/android/generic/z;->Z:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    iget-boolean v0, p0, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->a:Z

    if-eqz v0, :cond_0

    .line 39
    sget v0, Lcom/avast/android/generic/z;->cb:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 44
    :goto_0
    sget v0, Lcom/avast/android/generic/z;->i:I

    new-instance v2, Lcom/avast/android/generic/app/passwordrecovery/k;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/passwordrecovery/k;-><init>(Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 53
    return-object v0

    .line 41
    :cond_0
    sget v0, Lcom/avast/android/generic/z;->aH:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
