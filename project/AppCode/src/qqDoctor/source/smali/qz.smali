.class public final Lqz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)V
    .locals 0

    iput-object p1, p0, Lqz;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqz;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ConnectionDetector;->a(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqz;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ConnectionDetector;->d(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
