.class Lcom/avast/android/generic/ui/ac;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/PasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/avast/android/generic/ui/ac;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/avast/android/generic/ui/ac;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->f(Lcom/avast/android/generic/ui/PasswordDialog;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/avast/android/generic/ui/ac;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->g(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ui/ae;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/generic/ui/ae;->sendEmptyMessageDelayed(IJ)Z

    .line 471
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    return-void
.end method
