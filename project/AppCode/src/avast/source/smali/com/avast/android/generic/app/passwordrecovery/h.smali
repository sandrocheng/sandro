.class Lcom/avast/android/generic/app/passwordrecovery/h;
.super Ljava/lang/Object;
.source "PasswordRecoveryDialog.java"

# interfaces
.implements Lcom/avast/android/generic/app/passwordrecovery/j;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/passwordrecovery/g;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/passwordrecovery/g;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/avast/android/generic/app/passwordrecovery/h;->a:Lcom/avast/android/generic/app/passwordrecovery/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/app/passwordrecovery/b;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.generic.app.passwordrecovery.ACTION_NEW_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "state_code"

    invoke-virtual {p1}, Lcom/avast/android/generic/app/passwordrecovery/b;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/avast/android/generic/app/passwordrecovery/h;->a:Lcom/avast/android/generic/app/passwordrecovery/g;

    iget-object v1, v1, Lcom/avast/android/generic/app/passwordrecovery/g;->a:Lcom/avast/android/generic/app/passwordrecovery/f;

    iget-object v1, v1, Lcom/avast/android/generic/app/passwordrecovery/f;->b:Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;

    invoke-static {v1}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;->a(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;)Landroid/support/v4/a/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 110
    return-void
.end method
