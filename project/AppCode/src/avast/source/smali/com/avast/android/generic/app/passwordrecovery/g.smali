.class Lcom/avast/android/generic/app/passwordrecovery/g;
.super Ljava/lang/Object;
.source "PasswordRecoveryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/passwordrecovery/f;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/passwordrecovery/f;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avast/android/generic/app/passwordrecovery/g;->a:Lcom/avast/android/generic/app/passwordrecovery/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/g;->a:Lcom/avast/android/generic/app/passwordrecovery/f;

    iget-object v0, v0, Lcom/avast/android/generic/app/passwordrecovery/f;->b:Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;

    iget-object v1, p0, Lcom/avast/android/generic/app/passwordrecovery/g;->a:Lcom/avast/android/generic/app/passwordrecovery/f;

    iget-object v1, v1, Lcom/avast/android/generic/app/passwordrecovery/f;->b:Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/g;->a:Lcom/avast/android/generic/app/passwordrecovery/f;

    iget-object v0, v0, Lcom/avast/android/generic/app/passwordrecovery/f;->b:Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/passwordrecovery/h;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/passwordrecovery/h;-><init>(Lcom/avast/android/generic/app/passwordrecovery/g;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/j;Ljava/lang/String;)Z

    move-result v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/avast/android/generic/app/passwordrecovery/g;->a:Lcom/avast/android/generic/app/passwordrecovery/f;

    iget-object v1, v1, Lcom/avast/android/generic/app/passwordrecovery/f;->b:Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;

    invoke-static {v1, v0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;Z)V

    .line 115
    :cond_0
    return-void
.end method
