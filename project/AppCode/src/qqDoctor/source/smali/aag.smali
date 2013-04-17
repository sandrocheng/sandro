.class public final Laag;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V
    .locals 0

    iput-object p1, p0, Laag;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laag;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->c(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laag;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->c(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
