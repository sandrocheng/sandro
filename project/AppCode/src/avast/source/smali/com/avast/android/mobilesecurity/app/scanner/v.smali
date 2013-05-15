.class Lcom/avast/android/mobilesecurity/app/scanner/v;
.super Ljava/lang/Object;
.source "ScannerFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    .line 138
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v8, v6

    .line 140
    :goto_0
    if-eqz v8, :cond_2

    .line 141
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    const-string v1, "ms-Scanner"

    const-string v2, "automatic scan"

    if-eqz p2, :cond_4

    const-string v3, "enabled"

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 142
    if-eqz p2, :cond_2

    .line 143
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->c(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    const-string v1, "ms-Scanner"

    const-string v2, "automatic scan type"

    const-string v3, "Apps"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->d(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    const-string v1, "ms-Scanner"

    const-string v2, "automatic scan type"

    const-string v3, "SD Card"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 152
    :cond_2
    if-eqz v8, :cond_5

    if-eqz p2, :cond_5

    move v0, v6

    .line 153
    :goto_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->e(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/WeekDaysRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/WeekDaysRow;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/v;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->f(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/TimeButtonRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/TimeButtonRow;->setEnabled(Z)V

    .line 155
    return-void

    :cond_3
    move v8, v7

    .line 138
    goto :goto_0

    .line 141
    :cond_4
    const-string v3, "disabled"

    goto :goto_1

    :cond_5
    move v0, v7

    .line 152
    goto :goto_2
.end method
