.class Lcom/avast/android/mobilesecurity/ui/widget/x;
.super Ljava/lang/Object;
.source "YesNoDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/x;->a:Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/x;->a:Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->a(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)Lcom/avast/android/mobilesecurity/ui/widget/y;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/x;->a:Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;

    invoke-interface {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/y;->a(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V

    .line 108
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/x;->a:Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;->dismiss()V

    .line 109
    return-void
.end method
