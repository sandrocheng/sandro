.class Lcom/avast/android/generic/app/passwordrecovery/f;
.super Ljava/lang/Object;
.source "PasswordRecoveryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/avast/android/generic/app/passwordrecovery/f;->b:Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryDialog;

    iput-object p2, p0, Lcom/avast/android/generic/app/passwordrecovery/f;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avast/android/generic/app/passwordrecovery/f;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/avast/android/generic/app/passwordrecovery/g;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/passwordrecovery/g;-><init>(Lcom/avast/android/generic/app/passwordrecovery/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method
