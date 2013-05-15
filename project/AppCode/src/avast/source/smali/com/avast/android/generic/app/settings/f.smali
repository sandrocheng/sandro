.class Lcom/avast/android/generic/app/settings/f;
.super Ljava/lang/Object;
.source "SetRecoveryNumberDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avast/android/generic/app/settings/f;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/avast/android/generic/t;->V:I

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/avast/android/generic/app/settings/f;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-static {v1, v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->a(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/settings/f;->a:Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;

    invoke-static {v0}, Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;->b(Lcom/avast/android/generic/app/settings/SetRecoveryNumberDialog;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/settings/g;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/settings/g;-><init>(Lcom/avast/android/generic/app/settings/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 71
    const/4 v0, 0x1

    return v0
.end method
