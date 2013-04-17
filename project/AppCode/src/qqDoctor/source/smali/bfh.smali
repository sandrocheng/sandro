.class final Lbfh;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lbfg;


# direct methods
.method constructor <init>(Lbfg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbfh;->b:Lbfg;

    iput-object p2, p0, Lbfh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, LQQPIM/stUrgentInfo;

    iget-object v0, p0, Lbfh;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, LQQPIM/stUrgentInfo;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iget-object v3, p0, Lbfh;->b:Lbfg;

    invoke-static {v3}, Lbfg;->a(Lbfg;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->setUrgentInfo(Ljava/lang/String;LQQPIM/stUrgentInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbfh;->b:Lbfg;

    invoke-static {v0}, Lbfg;->b(Lbfg;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbfh;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbfh;->b:Lbfg;

    invoke-static {v1}, Lbfg;->c(Lbfg;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbfh;->b:Lbfg;

    invoke-static {v0}, Lbfg;->d(Lbfg;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbfh;->b:Lbfg;

    invoke-static {v1}, Lbfg;->e(Lbfg;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
