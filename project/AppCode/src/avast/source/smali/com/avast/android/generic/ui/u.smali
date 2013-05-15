.class final Lcom/avast/android/generic/ui/u;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/ad;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/avast/android/generic/ui/u;->a:Lcom/avast/android/generic/ui/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 163
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget v2, Lcom/avast/android/generic/ui/PasswordDialog;->a:I

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/avast/android/generic/ui/u;->a:Lcom/avast/android/generic/ui/ad;

    invoke-interface {v1}, Lcom/avast/android/generic/ui/ad;->a()V

    .line 171
    :goto_0
    return v0

    .line 167
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget v2, Lcom/avast/android/generic/ui/PasswordDialog;->b:I

    if-ne v1, v2, :cond_1

    .line 168
    iget-object v1, p0, Lcom/avast/android/generic/ui/u;->a:Lcom/avast/android/generic/ui/ad;

    invoke-interface {v1}, Lcom/avast/android/generic/ui/ad;->b()V

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
