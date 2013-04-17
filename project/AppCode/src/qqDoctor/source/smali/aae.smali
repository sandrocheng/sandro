.class final Laae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;


# instance fields
.field private synthetic a:Laac;


# direct methods
.method constructor <init>(Laac;)V
    .locals 0

    iput-object p1, p0, Laae;->a:Laac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(F)V
    .locals 2

    iget-object v0, p0, Laae;->a:Laac;

    iget-object v0, v0, Laac;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->c(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Laae;->a:Laac;

    iget-object v1, v1, Laac;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->c(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
