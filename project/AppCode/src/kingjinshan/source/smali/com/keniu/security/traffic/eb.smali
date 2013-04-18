.class final Lcom/keniu/security/traffic/eb;
.super Ljava/lang/Thread;
.source "TrafficXuanFuChuangStateReceiver.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/keniu/security/traffic/eb;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/keniu/security/traffic/eb;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->g(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/traffic/eb;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Lcom/keniu/security/a;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    invoke-virtual {v1}, Lcom/keniu/security/a;->M()V

    .line 780
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/eb;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/traffic/eb;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->E(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 790
    return-void

    .line 782
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Lcom/keniu/security/traffic/eb;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
