.class Lcom/avast/android/mobilesecurity/app/scanner/t;
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
    .line 104
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/t;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/t;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    const-string v1, "ms-Scanner"

    const-string v2, "manual scan"

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 108
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/t;->a:Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;->b(Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;)V

    .line 109
    return-void
.end method
