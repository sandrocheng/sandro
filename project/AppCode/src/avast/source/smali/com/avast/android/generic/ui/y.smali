.class Lcom/avast/android/generic/ui/y;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/avast/android/generic/ui/PasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/PasswordDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/avast/android/generic/ui/y;->b:Lcom/avast/android/generic/ui/PasswordDialog;

    iput-object p2, p0, Lcom/avast/android/generic/ui/y;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/avast/android/generic/ui/y;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/avast/android/generic/ui/z;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/z;-><init>(Lcom/avast/android/generic/ui/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-void
.end method
