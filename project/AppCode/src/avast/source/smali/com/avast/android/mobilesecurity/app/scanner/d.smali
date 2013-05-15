.class Lcom/avast/android/mobilesecurity/app/scanner/d;
.super Ljava/lang/Object;
.source "DeleteFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/d;->a:Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/d;->a:Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;->a:Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->setResult(I)V

    .line 75
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/d;->a:Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;->a:Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->finish()V

    .line 76
    return-void
.end method
