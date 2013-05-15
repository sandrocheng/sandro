.class public abstract Lcom/avast/android/generic/util/ga/TrackedDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TrackedDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 27
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/avast/android/generic/util/ga/TrackedDialogFragment;->a()Ljava/lang/String;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bo;->c(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
