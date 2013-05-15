.class Lcom/avast/android/mobilesecurity/scan/b;
.super Landroid/database/ContentObserver;
.source "ScanFragment.java"


# instance fields
.field final synthetic a:Landroid/support/v4/app/LoaderManager;

.field final synthetic b:Lcom/avast/android/mobilesecurity/scan/ScanFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;Landroid/os/Handler;Landroid/support/v4/app/LoaderManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/b;->b:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/scan/b;->a:Landroid/support/v4/app/LoaderManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/b;->a:Landroid/support/v4/app/LoaderManager;

    const/16 v1, 0x2713

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/scan/b;->b:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 147
    return-void
.end method
