.class final Loi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lkv;

.field private synthetic b:Z

.field private synthetic c:Loh;


# direct methods
.method constructor <init>(Loh;Lkv;Z)V
    .locals 0

    iput-object p1, p0, Loi;->c:Loh;

    iput-object p2, p0, Loi;->a:Lkv;

    iput-boolean p3, p0, Loi;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Loi;->c:Loh;

    iget-object v2, p0, Loi;->a:Lkv;

    iget-boolean v3, p0, Loi;->b:Z

    invoke-static {v1, v2, v3}, Loh;->a(Loh;Lkv;Z)LQQPIM/DownSoftInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, LQQPIM/DownInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AQQSecure_GA_2_0/011201&ADR&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lft;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&V2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, LQQPIM/DownInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportDownSoft(LQQPIM/DownInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ErrorCode;->judgeErrorCode(I)B

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
