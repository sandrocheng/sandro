.class Lcom/avast/android/generic/ui/ab;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/PasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/avast/android/generic/ui/ab;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 388
    new-instance v0, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/avast/android/generic/ui/ab;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/PasswordDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "password_recovery_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 390
    return-void
.end method
