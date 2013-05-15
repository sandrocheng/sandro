.class Lcom/avast/android/generic/app/settings/d;
.super Ljava/lang/Object;
.source "RecoveryNumberDescriptionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;Landroid/app/AlertDialog;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/d;->c:Lcom/avast/android/generic/app/settings/RecoveryNumberDescriptionDialog;

    iput-object p2, p0, Lcom/avast/android/generic/app/settings/d;->a:Landroid/app/AlertDialog;

    iput-boolean p3, p0, Lcom/avast/android/generic/app/settings/d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/d;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/avast/android/generic/app/settings/e;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/settings/e;-><init>(Lcom/avast/android/generic/app/settings/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method
