.class public final Lxb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# static fields
.field public static a:I

.field public static b:J

.field public static c:I

.field public static d:I

.field public static e:I


# instance fields
.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private l:Landroid/content/Context;

.field private m:Landroid/os/Handler;

.field private n:Lho;

.field private o:Z

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxb;->q:Ljava/util/List;

    iput-object p2, p0, Lxb;->m:Landroid/os/Handler;

    iput-object p1, p0, Lxb;->l:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lxb;->n:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lxb;->k:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-void
.end method

.method static synthetic a(Lxb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lxb;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lxb;ILlc;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(ZZ)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "netword_service_status"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0, p0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setEnable(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lov;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lxb;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptimizationUtil updateScanUI  pkgName "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v1, v0, Llc;->b:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v7, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v2, v3

    :goto_0
    iput-object v1, p0, Lxb;->q:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v2, 0xbc2

    iput v2, v0, Llc;->b:I

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v1, v0, Llc;->b:I

    const/16 v2, 0x3ef

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v7, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v2, v3

    :goto_2
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v2, 0xbc5

    iput v2, v0, Llc;->b:I

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_0
.end method

.method static synthetic b(Lxb;)Z
    .locals 1

    iget-boolean v0, p0, Lxb;->p:Z

    return v0
.end method

.method static synthetic c(Lxb;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxb;->p:Z

    return v0
.end method

.method private m()V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x2

    iget-object v0, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v2, 0x6d

    iget-object v3, p0, Lxb;->l:Landroid/content/Context;

    const v4, 0x7f0b0240

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    new-instance v5, Lxe;

    invoke-direct {v5, v4}, Lxe;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    iget-object v1, p0, Lxb;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lxb;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    iget v1, v1, Llc;->a:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lxb;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    iget-object v1, v1, Llc;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v5}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cloudScan(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Llc;

    invoke-direct {v2}, Llc;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v6, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v6, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lxb;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iput-object v3, p0, Lxb;->q:Ljava/util/List;

    iput-object v3, v2, Llc;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v1, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v5, "last_time_of_whole_scan"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v1, v3, v8, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    return-void

    :cond_3
    iget-object v1, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-virtual {v1, v3, v8, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v3, v0, Llc;->b:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lxb;->n:Lho;

    invoke-virtual {v1, v5}, Lho;->a(Z)V

    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v1

    invoke-virtual {v1, v5}, Lhh;->a(Z)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v5}, Lov;->a(ZZZ)V

    iget-object v1, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0xbbb

    iput v1, v0, Llc;->b:I

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lxb;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lxb;->p:Z

    return-void
.end method

.method public final a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lgx$b;)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lxb;->o:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v5, v0, Llc;->b:I

    const/16 v6, 0x3ea

    if-eq v5, v6, :cond_1

    iget v5, v0, Llc;->b:I

    const/16 v6, 0x3ef

    if-ne v5, v6, :cond_0

    :cond_1
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v3, 0x6d

    iget-object v5, p0, Lxb;->l:Landroid/content/Context;

    const v6, 0x7f0b0245

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lxb;->k:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v9, 0x41

    invoke-virtual {v8, v0, v9}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-static {v0, v2}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Z)Lkw;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lxb;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v6}, Lfy;->a(Landroid/app/Activity;Ljava/util/List;)Z

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v5}, Lfy;->a(Ljava/util/List;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doUninstallVirus isDelete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_5
    move v3, v0

    goto :goto_4

    :cond_8
    if-nez v3, :cond_a

    sget-object v0, Lgx;->a:Lgx;

    if-nez v0, :cond_9

    new-instance v0, Lgx;

    invoke-direct {v0}, Lgx;-><init>()V

    sput-object v0, Lgx;->a:Lgx;

    :cond_9
    sget-object v0, Lgx;->a:Lgx;

    sput-object p2, Lgx;->b:Lgx$b;

    iget-object v0, p0, Lxb;->k:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {p1, v0, v6}, Lgx;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/tmsecure/module/software/SoftwareManager;Ljava/util/List;)V

    :goto_6
    return v2

    :cond_a
    iget-boolean v0, p0, Lxb;->o:Z

    if-nez v0, :cond_b

    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lxb;->b(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move v2, v4

    goto :goto_6

    :cond_c
    sget-object v0, Lgx;->a:Lgx;

    if-nez v0, :cond_d

    new-instance v0, Lgx;

    invoke-direct {v0}, Lgx;-><init>()V

    sput-object v0, Lgx;->a:Lgx;

    :cond_d
    sget-object v0, Lgx;->a:Lgx;

    sput-object p2, Lgx;->b:Lgx$b;

    iget-object v0, p0, Lxb;->k:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {p1, v0, v5}, Lgx;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/tmsecure/module/software/SoftwareManager;Ljava/util/List;)V

    goto :goto_6

    :cond_e
    move v0, v3

    goto :goto_5

    :cond_f
    move v2, v4

    goto :goto_6
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_1

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v1

    iget-object v1, v1, Ljo;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "isopen"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0xbc1

    iput v1, v0, Llc;->b:I

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lxb;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public final c()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lxb;->n:Lho;

    invoke-virtual {v1, v4}, Lho;->p(Z)V

    iget-object v1, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0xbbc

    iput v1, v0, Llc;->b:I

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lxb;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public final d()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7d7

    if-ne v2, v3, :cond_1

    invoke-static {v4, v4}, Lxb;->a(ZZ)V

    iget-object v1, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0xbbd

    iput v1, v0, Llc;->b:I

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lxb;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public final e()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lxb;->l:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lxi;->a(Landroid/content/Context;Lxi$a;)V

    const-class v1, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxb;->n:Lho;

    invoke-virtual {v1, v4}, Lho;->z(Z)V

    invoke-static {v4}, Lxi;->a(Z)V

    :cond_0
    iget-object v1, p0, Lxb;->n:Lho;

    invoke-virtual {v1, v4}, Lho;->d(Z)V

    iget-object v1, p0, Lxb;->n:Lho;

    invoke-virtual {v1}, Lho;->s()V

    iget-object v1, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0xbc4

    iput v1, v0, Llc;->b:I

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final e(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lxb;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public final f()V
    .locals 10

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v2, 0x6d

    iget-object v3, p0, Lxb;->l:Landroid/content/Context;

    const v4, 0x7f0b023f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    move v5, v4

    move-wide v8, v2

    move-wide v3, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkw;

    invoke-virtual {v2}, Lkw;->I()J

    move-result-wide v6

    add-long v2, v3, v6

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-wide v8, v2

    move-wide v3, v8

    goto :goto_0

    :cond_1
    invoke-static {}, Lpt;->a()Lpt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpt;->a(Landroid/content/pm/IPackageDataObserver;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Llc;->e:Ljava/lang/Object;

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    const/16 v1, 0xbbf

    iput v1, v0, Llc;->b:I

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v2, 0x7d4

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lxb;->m()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v2, 0x3ee

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lxb;->m()V

    goto :goto_0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7dc

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v2, 0x6d

    iget-object v3, p0, Lxb;->l:Landroid/content/Context;

    const v4, 0x7f0b0243

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkw;

    invoke-static {v2}, Lpn;->b(Lkw;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lxb;->e:I

    iget-object v2, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v2, 0xbc3

    iput v2, v0, Llc;->b:I

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7d6

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v3, 0x6d

    iget-object v4, p0, Lxb;->l:Landroid/content/Context;

    const v5, 0x7f0b0241

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v2, Laaq;

    iget-object v3, p0, Lxb;->l:Landroid/content/Context;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Laaq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lxc;

    invoke-direct {v3, p0, v0}, Lxc;-><init>(Lxb;Llc;)V

    invoke-virtual {v2, v3}, Laaq;->a(Lcom/tencent/tmsecure/module/update/ICheckListener;)Lcom/tencent/tmsecure/module/update/CheckResult;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()Z
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v3, v0, Llc;->b:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_1

    iget-object v1, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v2, 0x6d

    iget-object v3, p0, Lxb;->l:Landroid/content/Context;

    const v4, 0x7f0b0242

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    const-class v1, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v3, 0xc

    new-instance v4, Lxd;

    invoke-direct {v4, p0, v1, v0}, Lxd;-><init>(Lxb;Lcom/tencent/tmsecure/module/update/UpdateManager;Llc;)V

    invoke-virtual {v1, v3, v4}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final k()V
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7d2

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lxb;->m:Landroid/os/Handler;

    const/16 v2, 0x6d

    iget-object v3, p0, Lxb;->l:Landroid/content/Context;

    const v4, 0x7f0b0244

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lxb;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v1

    new-instance v3, Lzk;

    iget-object v4, p0, Lxb;->l:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    invoke-virtual {v3, v6}, Lzk;->a(Z)Lzk$a;

    move-result-object v3

    iget v4, v3, Lzk$a;->b:I

    sput v4, Lxb;->a:I

    iget-wide v3, v3, Lzk$a;->c:J

    sput-wide v3, Lxb;->b:J

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v6}, Lzo;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lvh;->f()J

    move-result-wide v3

    invoke-static {}, Lvh;->e()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    const-wide/16 v7, 0x64

    mul-long/2addr v3, v7

    div-long/2addr v3, v5

    long-to-float v1, v3

    :goto_0
    iget-object v3, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v3, 0xbba

    iput v3, v0, Llc;->b:I

    iput-object v2, v0, Llc;->c:Ljava/lang/Object;

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Llc;->d:Ljava/lang/Object;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lxb;->l()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lxb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lxb;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lxb;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lxb;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lxb;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lxb;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lxb;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lxb;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb;->o:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptimizationUtil onPackageRemoved  arg0 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, p1}, Lxb;->b(Ljava/lang/String;)V

    return-void
.end method
