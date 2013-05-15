.class final Lcom/avast/android/generic/l;
.super Ljava/lang/Object;
.source "PasswordProtector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 33
    sget-object v0, Lcom/avast/android/generic/k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 34
    iget v1, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/avast/android/generic/t;->ay:I

    if-ne v1, v3, :cond_2

    if-eqz v0, :cond_2

    .line 35
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/avast/android/generic/ui/PasswordDialog;->a:I

    if-ne v1, v3, :cond_0

    .line 36
    sget-object v1, Lcom/avast/android/generic/k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v3, Lcom/avast/android/generic/a/a;

    invoke-static {v1, v3}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/a/a;

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v1, v2}, Lcom/avast/android/generic/a/a;->a(Z)V

    .line 41
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/avast/android/generic/ui/PasswordDialog;->b:I

    if-ne v1, v3, :cond_1

    .line 42
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->moveTaskToBack(Z)Z

    :cond_1
    move v0, v2

    .line 46
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
