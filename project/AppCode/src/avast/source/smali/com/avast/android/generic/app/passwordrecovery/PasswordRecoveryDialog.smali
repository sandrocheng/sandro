.class public Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PasswordRecoveryDialog.java"


# instance fields
.field private a:Z

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/support/v4/a/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;)Landroid/support/v4/a/p;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->d:Landroid/support/v4/a/p;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->b:Landroid/app/ProgressDialog;

    .line 178
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a()V

    .line 160
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->b:Landroid/app/ProgressDialog;

    .line 162
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->b:Landroid/app/ProgressDialog;

    sget v1, Lcom/avast/android/generic/z;->U:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 164
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 166
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a:Z

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a()V

    .line 145
    new-instance v0, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;-><init>()V

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->setArguments(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "recovery_result_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/app/passwordrecovery/RecoveryResultDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->dismiss()V

    .line 151
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    iget-boolean v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a(Landroid/content/Context;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string v0, "progress_showing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a:Z

    .line 46
    :cond_0
    new-instance v0, Lcom/avast/android/generic/app/passwordrecovery/c;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/passwordrecovery/c;-><init>(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->c:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->d:Landroid/support/v4/a/p;

    .line 64
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->d:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avast.android.generic.app.passwordrecovery.ACTION_NEW_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    sget v0, Lcom/avast/android/generic/z;->Z:I

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    sget v0, Lcom/avast/android/generic/z;->bW:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 77
    sget v0, Lcom/avast/android/generic/z;->O:I

    new-instance v2, Lcom/avast/android/generic/app/passwordrecovery/d;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/passwordrecovery/d;-><init>(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    sget v0, Lcom/avast/android/generic/z;->e:I

    new-instance v2, Lcom/avast/android/generic/app/passwordrecovery/e;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/passwordrecovery/e;-><init>(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 95
    new-instance v1, Lcom/avast/android/generic/app/passwordrecovery/f;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/f;-><init>(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 120
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->d:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;)V

    .line 135
    invoke-direct {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a()V

    .line 136
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v0, "progress_showing"

    iget-boolean v1, p0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-void
.end method
