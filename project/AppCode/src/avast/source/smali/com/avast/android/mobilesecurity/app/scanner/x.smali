.class Lcom/avast/android/mobilesecurity/app/scanner/x;
.super Ljava/lang/Object;
.source "ScannerFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/ah;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/x;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/WeekDaysRow;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    if-nez p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/x;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->g(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 176
    :cond_0
    return-void
.end method
