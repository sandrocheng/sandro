.class Lcom/avast/android/generic/app/settings/g;
.super Ljava/lang/Object;
.source "SetRecoveryNumberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/settings/f;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/f;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/g;->a:Lcom/avast/android/generic/app/settings/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/g;->a:Lcom/avast/android/generic/app/settings/f;

    iget-object v0, v0, Lcom/avast/android/generic/app/settings/f;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/g;->a:Lcom/avast/android/generic/app/settings/f;

    iget-object v0, v0, Lcom/avast/android/generic/app/settings/f;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/g;->a:Lcom/avast/android/generic/app/settings/f;

    iget-object v0, v0, Lcom/avast/android/generic/app/settings/f;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-static {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V

    .line 69
    :cond_0
    return-void
.end method
