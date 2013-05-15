.class Lcom/avast/android/generic/ui/z;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/y;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/y;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    iget-object v0, v0, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->d(Lcom/avast/android/generic/ui/PasswordDialog;)V

    .line 330
    iget-object v0, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    iget-object v0, v0, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    iget-object v1, v1, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v1}, Lcom/avast/android/generic/ui/PasswordDialog;->e(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    iget-object v1, v1, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v1}, Lcom/avast/android/generic/ui/PasswordDialog;->e(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    iget-object v0, v0, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->b(Lcom/avast/android/generic/ui/PasswordDialog;)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    iget-object v0, v0, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->f(Lcom/avast/android/generic/ui/PasswordDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/avast/android/generic/ui/z;->a:Lcom/avast/android/generic/ui/y;

    iget-object v0, v0, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->f(Lcom/avast/android/generic/ui/PasswordDialog;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
