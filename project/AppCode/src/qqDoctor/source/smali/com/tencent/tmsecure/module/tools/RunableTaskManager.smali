.class public final Lcom/tencent/tmsecure/module/tools/RunableTaskManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbyz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTask(Ljava/lang/Runnable;J)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Lbyz;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lbyz;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lbyz;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbyz;

    invoke-direct {v0}, Lbyz;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Lbyz;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Lbyz;

    invoke-virtual {v0, p1}, Lbyz;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->a:Lbyz;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
