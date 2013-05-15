.class Lcom/avast/android/mobilesecurity/app/home/h;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/avast/android/generic/util/s;

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Landroid/view/View;Lcom/avast/android/generic/util/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/h;->c:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/home/h;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/home/h;->b:Lcom/avast/android/generic/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f07001c

    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 330
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/avast/android/generic/ui/PasswordDialog;->a:I

    if-ne v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/h;->c:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/h;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/h;->b:Lcom/avast/android/generic/util/s;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/h;->c:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->d(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 335
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/h;->c:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->a(Lcom/avast/android/mobilesecurity/app/home/HomeActivity;Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    .line 338
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
