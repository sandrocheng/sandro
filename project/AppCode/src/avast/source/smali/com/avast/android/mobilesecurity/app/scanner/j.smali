.class Lcom/avast/android/mobilesecurity/app/scanner/j;
.super Ljava/lang/Object;
.source "ReportDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    const v2, 0x7f0c0266

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->b(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->c(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->d(Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->b:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/j;->c:Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->dismiss()V

    goto :goto_0
.end method
