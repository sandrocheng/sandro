.class Lcom/avast/android/mobilesecurity/app/scanner/b;
.super Ljava/lang/Object;
.source "ConfirmResolveAllFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/b;->a:Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/b;->a:Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ConfirmResolveAllFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    check-cast v0, Lcom/avast/android/mobilesecurity/app/scanner/ap;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ap;->a()V

    .line 78
    :cond_0
    return-void
.end method
