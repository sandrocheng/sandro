.class public final Lsq;
.super Lpe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsq$a;
    }
.end annotation


# instance fields
.field private k:Lcom/tencent/tmsecure/module/update/UpdateManager;

.field private l:Lcom/tencent/tmsecure/module/update/CheckResult;

.field private m:Lsq$a;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lpe;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lsq;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    iput-object v1, p0, Lsq;->m:Lsq$a;

    new-instance v0, Lsr;

    invoke-direct {v0, p0}, Lsr;-><init>(Lsq;)V

    iput-object v0, p0, Lsq;->n:Landroid/os/Handler;

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    iput-object v0, p0, Lsq;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    return-void
.end method

.method static synthetic a(Lsq;)Lsq$a;
    .locals 1

    iget-object v0, p0, Lsq;->m:Lsq$a;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    if-nez p1, :cond_2

    iget-object v1, p0, Lsq;->l:Lcom/tencent/tmsecure/module/update/CheckResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsq;->l:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsq;->l:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lpe;->g:I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lsq;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lsq;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lsq;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lsq;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x663f

    invoke-virtual {v0, v1, p1}, Lnd;->a(II)V

    return-void
.end method

.method protected final a(Lcom/tencent/tmsecure/module/update/CheckResult;I)V
    .locals 1

    iput-object p1, p0, Lsq;->l:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v0, p0, Lsq;->l:Lcom/tencent/tmsecure/module/update/CheckResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq;->l:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq;->l:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lsq;->c(I)V

    :cond_1
    return-void
.end method

.method protected final a(Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 2

    iget-object v0, p0, Lsq;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public final a(Lsq$a;)V
    .locals 0

    iput-object p1, p0, Lsq;->m:Lsq$a;

    return-void
.end method

.method protected final b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lsq;->c(I)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lsq;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0x8

    iget-object v2, p0, Lsq;->i:Lcom/tencent/tmsecure/module/update/ICheckListener;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    return-void
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Lsq;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/update/UpdateManager;->cancel()V

    :cond_0
    return-void
.end method
