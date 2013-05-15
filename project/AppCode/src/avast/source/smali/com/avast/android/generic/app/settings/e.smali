.class Lcom/avast/android/generic/app/settings/e;
.super Ljava/lang/Object;
.source "RecoveryNumberDescriptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/settings/d;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/d;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/e;->a:Lcom/avast/android/generic/app/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/e;->a:Lcom/avast/android/generic/app/settings/d;

    iget-object v0, v0, Lcom/avast/android/generic/app/settings/d;->c:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/e;->a:Lcom/avast/android/generic/app/settings/d;

    iget-object v0, v0, Lcom/avast/android/generic/app/settings/d;->c:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    invoke-static {v0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->b(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)Lcom/avast/android/generic/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/app/settings/e;->a:Lcom/avast/android/generic/app/settings/d;

    iget-boolean v0, v0, Lcom/avast/android/generic/app/settings/d;->b:Z

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/e;->a:Lcom/avast/android/generic/app/settings/d;

    iget-object v0, v0, Lcom/avast/android/generic/app/settings/d;->c:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/t;->Q:I

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/support/v4/app/FragmentManager;I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/e;->a:Lcom/avast/android/generic/app/settings/d;

    iget-object v0, v0, Lcom/avast/android/generic/app/settings/d;->c:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    invoke-static {v0}, Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;->a(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;)V

    goto :goto_0
.end method
