.class Lcom/avast/android/mobilesecurity/app/scanner/w;
.super Ljava/lang/Object;
.source "ScannerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/w;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 161
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/w;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/w;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    .line 162
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/w;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->g(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 163
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/w;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->c()I

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/w;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->a(I)V

    .line 166
    :cond_2
    return-void

    :cond_3
    move v2, v0

    .line 161
    goto :goto_0
.end method
