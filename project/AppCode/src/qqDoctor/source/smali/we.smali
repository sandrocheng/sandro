.class public final Lwe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Lov;

.field private c:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field private d:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

.field private e:Lit;

.field private f:[B

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lwe;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lwe;->b:Lov;

    new-array v0, v1, [B

    iput-object v0, p0, Lwe;->f:[B

    iput v1, p0, Lwe;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lwe;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwe;->i:Z

    new-instance v0, Lwe$a;

    invoke-direct {v0, p0}, Lwe$a;-><init>(Lwe;)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Lwe;->b:Lov;

    sput-boolean v1, Lazu;->a:Z

    sput-boolean v1, Lazu;->b:Z

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwe;->e:Lit;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v0, p0, Lwe;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iput-object v0, p0, Lwe;->d:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    return-void
.end method

.method static synthetic a(Lwe;)[B
    .locals 1

    iget-object v0, p0, Lwe;->f:[B

    return-object v0
.end method

.method static synthetic b(Lwe;)Lov;
    .locals 1

    iget-object v0, p0, Lwe;->b:Lov;

    return-object v0
.end method


# virtual methods
.method public final onClosingDateReached()V
    .locals 4

    const-class v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lwf;

    invoke-direct {v1}, Lwf;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDayChanged()V
    .locals 0

    return-void
.end method

.method public final onNormalChanged(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 7

    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lwe;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lwe;->k:J

    iget-wide v0, p0, Lwe;->j:J

    iget-wide v2, p0, Lwe;->k:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lwe;->k:J

    iput-wide v0, p0, Lwe;->j:J

    iput-boolean v5, p0, Lwe;->i:Z

    :goto_0
    iget-boolean v0, p0, Lwe;->i:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lwe;->a:Z

    if-nez v0, :cond_2

    iget v0, p0, Lwe;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lwe;->g:I

    iget v0, p0, Lwe;->g:I

    iget v1, p0, Lwe;->h:I

    if-ge v0, v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iput-boolean v4, p0, Lwe;->i:Z

    goto :goto_0

    :cond_1
    iput v4, p0, Lwe;->g:I

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iget-object v2, p0, Lwe;->e:Lit;

    invoke-virtual {v2}, Lit;->getClosingDayForMonth()I

    move-result v2

    invoke-static {v0, v2}, La;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v2}, La;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sput-boolean v4, Lazu;->a:Z

    sput-boolean v4, Lazu;->b:Z

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwg;

    invoke-direct {v1, p0, p1}, Lwg;-><init>(Lwe;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lwe;->e:Lit;

    invoke-virtual {v0}, Lit;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lwe;->e:Lit;

    invoke-virtual {v0}, Lit;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v0

    iget-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    long-to-float v1, v1

    iget-wide v2, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    long-to-float v0, v2

    div-float v0, v1, v0

    cmpl-float v1, v0, v6

    if-ltz v1, :cond_4

    sget-boolean v1, Lazu;->b:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lwe;->e:Lit;

    invoke-virtual {v1}, Lit;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lwe;->e:Lit;

    invoke-virtual {v1}, Lit;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_6

    sput-boolean v5, Lazu;->b:Z

    sput-boolean v5, Lazu;->a:Z

    iget-object v1, p0, Lwe;->b:Lov;

    invoke-virtual {v1, v0, v5}, Lov;->a(FZ)V

    iget-object v1, p0, Lwe;->d:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v4}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    :cond_4
    :goto_2
    cmpg-float v1, v0, v6

    if-gez v1, :cond_5

    const v1, 0x3f666666

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    sget-boolean v1, Lazu;->a:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lwe;->e:Lit;

    invoke-virtual {v1}, Lit;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    sput-boolean v5, Lazu;->a:Z

    iget-object v1, p0, Lwe;->b:Lov;

    invoke-virtual {v1, v0, v4}, Lov;->a(FZ)V

    :cond_5
    sput-boolean v4, Lwe;->a:Z

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lwe;->e:Lit;

    invoke-virtual {v1}, Lit;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    sput-boolean v5, Lazu;->b:Z

    sput-boolean v5, Lazu;->a:Z

    iget-object v1, p0, Lwe;->b:Lov;

    invoke-virtual {v1, v0, v4}, Lov;->a(FZ)V

    goto :goto_2
.end method
