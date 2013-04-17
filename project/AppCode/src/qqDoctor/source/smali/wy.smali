.class final Lwy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lwr;


# direct methods
.method constructor <init>(Lwr;)V
    .locals 0

    iput-object p1, p0, Lwy;->a:Lwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lwy;->a:Lwr;

    invoke-static {v0}, Lwr;->b(Lwr;)Ljd;

    move-result-object v0

    invoke-virtual {v0}, Ljd;->c()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lwy;->a:Lwr;

    invoke-static {v0}, Lwr;->r(Lwr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STReportError;

    iput-object v2, v0, LQQPIM/STReportError;->strHardInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    new-instance v2, LQQPIM/VECReportError;

    invoke-direct {v2, v1}, LQQPIM/VECReportError;-><init>(Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportOperatorDataSyncErrorMsg(LQQPIM/VECReportError;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwy;->a:Lwr;

    invoke-static {v0}, Lwr;->b(Lwr;)Ljd;

    move-result-object v0

    invoke-virtual {v0}, Ljd;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
