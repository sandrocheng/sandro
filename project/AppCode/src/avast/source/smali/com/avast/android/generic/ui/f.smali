.class Lcom/avast/android/generic/ui/f;
.super Ljava/lang/Object;
.source "ChangePasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/e;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/e;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v0, v0, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->b(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v0, v0, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->c(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v2, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v2, v2, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v2, v1, v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Lcom/avast/android/generic/ui/ChangePasswordDialog;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v0, v0, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/ae;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 189
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ae;->d(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v1, v1, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/avast/android/generic/app/passwordrecovery/b;->a:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {v1, v2}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 195
    iget-object v1, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v1, v1, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v1, v1, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enableProtection"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ae;->b(Z)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v0, v0, Lcom/avast/android/generic/ui/e;->b:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    sget v1, Lcom/avast/android/generic/t;->u:I

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Lcom/avast/android/generic/ui/ChangePasswordDialog;I)V

    .line 201
    iget-object v0, p0, Lcom/avast/android/generic/ui/f;->a:Lcom/avast/android/generic/ui/e;

    iget-object v0, v0, Lcom/avast/android/generic/ui/e;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 203
    :cond_1
    return-void
.end method
