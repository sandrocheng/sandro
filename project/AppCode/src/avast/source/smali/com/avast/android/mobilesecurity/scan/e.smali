.class Lcom/avast/android/mobilesecurity/scan/e;
.super Ljava/lang/Object;
.source "ScanFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/e;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/e;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a(Lcom/avast/android/mobilesecurity/scan/ScanFragment;Z)V

    .line 329
    return-void
.end method
