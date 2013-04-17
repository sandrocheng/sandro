.class final Lazk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;


# instance fields
.field private synthetic a:Lazj;


# direct methods
.method constructor <init>(Lazj;)V
    .locals 0

    iput-object p1, p0, Lazk;->a:Lazj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosingDateReached()V
    .locals 0

    return-void
.end method

.method public final onDayChanged()V
    .locals 0

    return-void
.end method

.method public final onNormalChanged(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lazk;->a:Lazj;

    invoke-static {v0}, Lazj;->a(Lazj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lazk;->a:Lazj;

    invoke-static {v0}, Lazj;->a(Lazj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
