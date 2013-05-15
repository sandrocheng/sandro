.class Lcom/avast/android/generic/app/settings/k;
.super Ljava/lang/Object;
.source "SetRecoveryNumberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/k;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/k;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/k;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/k;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-static {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V

    .line 206
    :cond_0
    return-void
.end method
