.class Lcom/avast/android/generic/b/n;
.super Landroid/os/Handler;
.source "CommandReceiver.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/b/m;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/b/m;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avast/android/generic/b/n;->a:Lcom/avast/android/generic/b/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/b/n;->a:Lcom/avast/android/generic/b/m;

    iget-object v1, v1, Lcom/avast/android/generic/b/m;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v1}, Lcom/avast/android/generic/b/l;->a(Lcom/avast/android/generic/b/l;)Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const-string v2, "Received message in command handler"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/b/n;->a:Lcom/avast/android/generic/b/m;

    iget-object v0, v0, Lcom/avast/android/generic/b/m;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->b(Lcom/avast/android/generic/b/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "AvastGeneric"

    const-string v2, "Error in handling command"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
