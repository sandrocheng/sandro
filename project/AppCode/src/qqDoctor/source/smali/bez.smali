.class final Lbez;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbew;


# direct methods
.method constructor <init>(Lbew;)V
    .locals 0

    iput-object p1, p0, Lbez;->a:Lbew;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbez;->a:Lbew;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbew;->b(Lbew;Z)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbez;->a:Lbew;

    invoke-static {v0}, Lbew;->f(Lbew;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iget-object v2, p0, Lbez;->a:Lbew;

    invoke-static {v2}, Lbew;->f(Lbew;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getBindPhoneList(Ljava/lang/String;Ljava/util/ArrayList;)I

    :cond_0
    iget-object v0, p0, Lbez;->a:Lbew;

    invoke-static {v0}, Lbew;->g(Lbew;)Ljh;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljh;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lbez;->a:Lbew;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbew;->b(Lbew;Z)Z

    iget-object v0, p0, Lbez;->a:Lbew;

    invoke-static {v0}, Lbew;->h(Lbew;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
