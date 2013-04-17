.class final Lzu;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lmm;

.field private synthetic b:Lzs;


# direct methods
.method constructor <init>(Lzs;Lmm;)V
    .locals 0

    iput-object p1, p0, Lzu;->b:Lzs;

    iput-object p2, p0, Lzu;->a:Lmm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LQQPIM/UserActionTime;

    invoke-direct {v1}, LQQPIM/UserActionTime;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, LQQPIM/UserActionTime;->time:I

    const/16 v2, 0x14

    iput v2, v1, LQQPIM/UserActionTime;->userAction:I

    iget-object v2, p0, Lzu;->a:Lmm;

    iget-object v2, v2, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lzu;->a:Lmm;

    iget-object v2, v2, Lmm;->c:Ljava/lang/String;

    iget-object v3, p0, Lzu;->b:Lzs;

    iget-object v3, v3, Lzs;->d:Lho;

    invoke-virtual {v3}, Lho;->da()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzu;->a:Lmm;

    const-string v4, ""

    iput-object v4, v3, Lmm;->c:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lzu;->a:Lmm;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lzu;->b:Lzs;

    invoke-static {v0}, Lzs;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSms(Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzu;->b:Lzs;

    iget-object v0, v0, Lzs;->e:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lzu;->a:Lmm;

    iget-object v3, v3, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lzu;->a:Lmm;

    iput-object v2, v1, Lmm;->c:Ljava/lang/String;

    iget-object v1, p0, Lzu;->a:Lmm;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lzu;->b:Lzs;

    iget-object v1, v1, Lzs;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
