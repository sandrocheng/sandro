.class Lcom/avast/android/generic/service/f;
.super Landroid/os/Handler;
.source "WakefulIntentService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/service/WakefulIntentService;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/service/WakefulIntentService;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/avast/android/generic/service/f;->a:Lcom/avast/android/generic/service/WakefulIntentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 41
    iget-object v1, p0, Lcom/avast/android/generic/service/f;->a:Lcom/avast/android/generic/service/WakefulIntentService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "res"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "dur"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    return-void
.end method
