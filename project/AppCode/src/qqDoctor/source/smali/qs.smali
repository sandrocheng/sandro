.class final Lqs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LQQPIM/CmdInfoRes;

.field private synthetic b:Ljava/util/ArrayList;

.field private synthetic c:Lqr;


# direct methods
.method constructor <init>(Lqr;LQQPIM/CmdInfoRes;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lqs;->c:Lqr;

    iput-object p2, p0, Lqs;->a:LQQPIM/CmdInfoRes;

    iput-object p3, p0, Lqs;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x2

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iget-object v1, p0, Lqs;->a:LQQPIM/CmdInfoRes;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportTipsRes(LQQPIM/CmdInfoRes;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lqs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfoRes;

    invoke-virtual {v0}, LQQPIM/CloudInfoRes;->getPhase()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, LQQPIM/CloudInfoRes;->getPhase()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, LQQPIM/CloudInfoRes;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    :cond_1
    iget-object v2, p0, Lqs;->c:Lqr;

    invoke-virtual {v0}, LQQPIM/CloudInfoRes;->getTipsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lqr;->b(Ljava/lang/String;)LQQPIM/CloudInfo;

    move-result-object v2

    iget-object v3, p0, Lqs;->c:Lqr;

    invoke-static {v3}, Lqr;->a(Lqr;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lqs;->c:Lqr;

    invoke-static {v2}, Lqr;->b(Lqr;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqs;->c:Lqr;

    invoke-static {v0}, Lqr;->c(Lqr;)V

    iget-object v0, p0, Lqs;->c:Lqr;

    invoke-static {v0}, Lqr;->d(Lqr;)V

    iget-object v0, p0, Lqs;->c:Lqr;

    invoke-static {v0}, Lqr;->e(Lqr;)V

    :cond_3
    return-void
.end method
