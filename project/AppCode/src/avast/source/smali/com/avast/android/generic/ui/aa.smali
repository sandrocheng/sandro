.class Lcom/avast/android/generic/ui/aa;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/PasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/avast/android/generic/ui/aa;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 347
    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    const/16 v1, 0x52

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
