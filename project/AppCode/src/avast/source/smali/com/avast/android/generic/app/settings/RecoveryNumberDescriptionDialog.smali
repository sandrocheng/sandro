.class public Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "RecoveryNumberDescriptionDialog.java"


# instance fields
.field private a:Lcom/avast/android/generic/ae;

.field private b:Landroid/support/v4/a/p;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;-><init>()V

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v2, "after_pin_setup"

    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "after_pin_setup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->setArguments(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_recovery_number"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->a()V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->a:Lcom/avast/android/generic/ae;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->b:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avast.android.generic.app.settings.CLOSE_RECOVERY_DESCRIPTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->b:Landroid/support/v4/a/p;

    .line 47
    new-instance v0, Lcom/avast/android/generic/app/settings/a;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/settings/a;-><init>(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->c:Landroid/content/BroadcastReceiver;

    .line 53
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->a:Lcom/avast/android/generic/ae;

    .line 55
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/t;->Q:I

    new-instance v2, Lcom/avast/android/generic/app/settings/b;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/settings/b;-><init>(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)V

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->d:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 70
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "after_pin_setup"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 74
    if-eqz v2, :cond_0

    sget v0, Lcom/avast/android/generic/z;->bB:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 77
    sget v0, Lcom/avast/android/generic/z;->cd:I

    new-instance v3, Lcom/avast/android/generic/app/settings/c;

    invoke-direct {v3, p0}, Lcom/avast/android/generic/app/settings/c;-><init>(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 90
    new-instance v1, Lcom/avast/android/generic/app/settings/d;

    invoke-direct {v1, p0, v0, v2}, Lcom/avast/android/generic/app/settings/d;-><init>(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;Landroid/app/AlertDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 109
    return-object v0

    .line 74
    :cond_0
    sget v0, Lcom/avast/android/generic/z;->an:I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 132
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->b:Landroid/support/v4/a/p;

    iget-object v1, p0, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method
