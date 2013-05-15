.class Lcom/avast/android/mobilesecurity/scan/d;
.super Ljava/lang/Object;
.source "ScanFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/d;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/d;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->b(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/d;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a(Z)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/d;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Lcom/avast/android/mobilesecurity/scan/ScanService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/d;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->d(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/d;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Lcom/avast/android/mobilesecurity/scan/ScanService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a()V

    goto :goto_0
.end method
