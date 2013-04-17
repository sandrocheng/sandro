.class public final Lxi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxi$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Landroid/content/Context;

.field private static d:I

.field private static e:Z

.field private static f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lxi;->a:Z

    sput-boolean v0, Lxi;->b:Z

    sput v0, Lxi;->d:I

    sput-boolean v0, Lxi;->e:Z

    return-void
.end method

.method private static a(ILxi$a;)V
    .locals 4

    sget-object v0, Lxi;->c:Landroid/content/Context;

    sget-object v0, Lxi;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lxl;

    sget-object v1, Lxi;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lxl;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lxi;->f:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lxi;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lxi;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lxi;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lxi$a;)V
    .locals 2

    const/4 v1, 0x1

    sput-object p0, Lxi;->c:Landroid/content/Context;

    sput-boolean v1, Lxi;->b:Z

    invoke-static {}, Lxi;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lxi;->a(ILxi$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lxi;->c(Z)V

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxk;

    invoke-direct {v1, p1}, Lxk;-><init>(Lxi$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lxi;->h()V

    sget-boolean v1, Lxi;->b:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lho;->z(Z)V

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lxi;->c(Z)V

    if-eqz p1, :cond_0

    sget v0, Lxi;->d:I

    invoke-interface {p1, v0}, Lxi$a;->a(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZZLxi$a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-object p0, Lxi;->c:Landroid/content/Context;

    sput-boolean p2, Lxi;->a:Z

    sput-boolean p1, Lxi;->b:Z

    invoke-static {}, Lxi;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, p3}, Lxi;->a(ILxi$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lxi;->c(Z)V

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    sget-object v1, Lxi;->c:Landroid/content/Context;

    invoke-static {v1}, Lwn;->a(Landroid/content/Context;)Lwn;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxj;

    invoke-direct {v1, p3}, Lxj;-><init>(Lxi$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lxi;->c(Z)V

    if-eqz p3, :cond_2

    sget v0, Lxi;->d:I

    invoke-interface {p3, v0}, Lxi$a;->a(I)V

    :cond_2
    invoke-static {v2}, Lxi;->c(Z)V

    goto :goto_0
.end method

.method public static a(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 2

    sget-boolean v0, Lxi;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    goto :goto_0
.end method

.method static synthetic a(Lxi$a;)V
    .locals 11

    sget-object v0, Lxi;->c:Landroid/content/Context;

    sget-object v0, Lxi;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lxl;

    sget-object v1, Lxi;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lxl;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lxi;->f:Landroid/os/Handler;

    :cond_0
    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    new-instance v4, Ljf;

    invoke-direct {v4}, Ljf;-><init>()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v5

    invoke-virtual {v5}, Lho;->do()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljf;->a()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {v4}, Ljf;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4}, Ljf;->b()V

    :cond_2
    invoke-virtual {v5}, Lho;->dn()V

    :cond_3
    sget-boolean v1, Lxi;->b:Z

    sget-boolean v2, Lxi;->a:Z

    invoke-virtual {v4, v1, v2}, Ljf;->a(ZZ)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lxi;->f:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_10

    const/4 v0, -0x5

    iput v0, v2, Landroid/os/Message;->arg1:I

    sget-object v0, Lxi;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    sget-boolean v1, Lxi;->b:Z

    if-eqz v1, :cond_4

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lho;->H(I)V

    :cond_4
    sget-boolean v1, Lxi;->a:Z

    if-eqz v1, :cond_5

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lho;->I(I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v1, v4, Ljf;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    invoke-static {v1}, Lkx;->a(Landroid/content/pm/PackageInfo;)Lkx;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v3, v1, Lkx;->b:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v7, v4, Ljf;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, v1, Lkx;->f:Z

    if-eqz v7, :cond_8

    const-string v7, "com.android"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "com.google.android."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "android"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_8
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v7, :cond_2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkx;

    iget-object v2, v1, Lkx;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljf;->a(Ljava/lang/String;)Lkx;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v8, v2, Lkx;->e:[B

    if-eqz v8, :cond_a

    array-length v2, v8

    const/16 v9, 0xd

    if-ge v2, v9, :cond_e

    :cond_a
    const/16 v2, 0xd

    new-array v9, v2, [B

    const/4 v2, 0x0

    :goto_3
    array-length v10, v9

    if-ge v2, v10, :cond_d

    array-length v10, v8

    if-ge v2, v10, :cond_b

    aget-byte v10, v8, v2

    aput-byte v10, v9, v2

    :cond_b
    const/16 v10, 0xc

    if-ne v2, v10, :cond_c

    const/4 v10, 0x2

    aput-byte v10, v9, v2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    iput-object v9, v1, Lkx;->e:[B

    iget v2, v1, Lkx;->a:I

    iget-object v1, v1, Lkx;->e:[B

    invoke-virtual {v4, v2, v1}, Ljf;->a(I[B)I

    :cond_e
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_f
    invoke-virtual {v4, v1}, Ljf;->a(Lkx;)V

    goto :goto_4

    :cond_10
    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v3

    const/16 v4, 0x11

    if-lt v3, v4, :cond_13

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    sget-boolean v1, Lxi;->b:Z

    if-eqz v1, :cond_11

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lho;->H(I)V

    :cond_11
    sget-boolean v1, Lxi;->a:Z

    if-eqz v1, :cond_12

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lho;->I(I)V

    :cond_12
    if-eqz p0, :cond_5

    const/4 v0, -0x8

    iput v0, v2, Landroid/os/Message;->arg1:I

    sget-object v0, Lxi;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_13
    new-instance v3, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;

    const-class v4, Lcom/tencent/qqpimsecure/dao/DummyProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance v4, Lxg;

    sget-boolean v1, Lxi;->b:Z

    sget-boolean v6, Lxi;->a:Z

    invoke-direct {v4, v1, v6}, Lxg;-><init>(ZZ)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v6

    if-eqz v6, :cond_16

    const/4 v7, 0x2

    if-eq v6, v7, :cond_16

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-ne v6, v0, :cond_15

    const/4 v0, -0x1

    :goto_5
    iput v0, v2, Landroid/os/Message;->arg1:I

    sget-object v1, Lxi;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {p0, v0}, Lxi$a;->a(I)V

    sput v0, Lxi;->d:I

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    sget-boolean v2, Lxi;->b:Z

    if-eqz v2, :cond_14

    invoke-virtual {v1, v0}, Lho;->H(I)V

    :cond_14
    sget-boolean v2, Lxi;->a:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Lho;->I(I)V

    goto/16 :goto_0

    :cond_15
    const/4 v0, -0x6

    goto :goto_5

    :cond_16
    invoke-virtual {v5}, Lho;->by()Z

    move-result v1

    invoke-virtual {v5}, Lho;->di()Z

    move-result v6

    sget-boolean v7, Lxi;->b:Z

    if-eqz v7, :cond_17

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lho;->z(Z)V

    :cond_17
    sget-boolean v7, Lxi;->a:Z

    if-eqz v7, :cond_18

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lho;->O(Z)V

    :cond_18
    invoke-virtual {v0, v4, v3}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->init(Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;Lcom/tencent/tmsecure/module/permission/PermissionControlConfig;)V

    sget-boolean v3, Lxi;->b:Z

    if-eqz v3, :cond_19

    invoke-virtual {v5, v1}, Lho;->z(Z)V

    :cond_19
    sget-boolean v1, Lxi;->a:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v5, v6}, Lho;->O(Z)V

    :cond_1a
    iget v1, v4, Lxg;->b:I

    iget-boolean v3, v4, Lxg;->c:Z

    const/4 v5, 0x1

    if-ne v1, v5, :cond_20

    sget-boolean v1, Lxi;->b:Z

    if-eqz v1, :cond_1f

    const v1, 0x7f0b0700

    :goto_6
    sget-object v3, Lxi;->c:Landroid/content/Context;

    invoke-static {v3, v1}, Lha;->c(Landroid/content/Context;I)V

    const/4 v1, -0x2

    :goto_7
    sget-boolean v3, Lxi;->b:Z

    if-eqz v3, :cond_1b

    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lho;->z(Z)V

    :cond_1b
    sget-boolean v3, Lxi;->a:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lxi;->c:Landroid/content/Context;

    invoke-static {v0}, Lwn;->a(Landroid/content/Context;)Lwn;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lwn;->a()V

    :cond_1c
    sput v1, Lxi;->d:I

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    sget-boolean v3, Lxi;->b:Z

    if-eqz v3, :cond_1d

    invoke-virtual {v0, v1}, Lho;->H(I)V

    :cond_1d
    sget-boolean v3, Lxi;->a:Z

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v1}, Lho;->I(I)V

    :cond_1e
    if-eqz p0, :cond_5

    iput v1, v2, Landroid/os/Message;->arg1:I

    sget-object v0, Lxi;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1f
    const v1, 0x7f0b0701

    goto :goto_6

    :cond_20
    invoke-virtual {v4}, Lxg;->a()Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v1, -0x7

    goto :goto_7

    :cond_21
    const/4 v4, 0x6

    if-ne v1, v4, :cond_22

    if-eqz v3, :cond_22

    new-instance v1, Lru;

    sget-object v3, Lxi;->c:Landroid/content/Context;

    invoke-direct {v1, v3}, Lru;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->setCallback(Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;)V

    sget-boolean v1, Lxi;->a:Z

    sget-boolean v3, Lxi;->b:Z

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->setEnable(Z)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_22
    const/16 v1, -0x63

    goto :goto_7

    :cond_23
    move v0, v1

    goto/16 :goto_5
.end method

.method public static a(Z)V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    sput-boolean p0, Lxi;->b:Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    sget-boolean v2, Lxi;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lho;->H(I)V

    :cond_0
    sget-boolean v2, Lxi;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lho;->I(I)V

    :cond_1
    sget-boolean v1, Lxi;->a:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->setEnable(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lxi;->h()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lxi;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lxi$a;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-object p0, Lxi;->c:Landroid/content/Context;

    sput-boolean v2, Lxi;->a:Z

    invoke-static {}, Lxi;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lxi;->a(ILxi$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lxi;->c(Z)V

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    sget-object v1, Lxi;->c:Landroid/content/Context;

    invoke-static {v1}, Lwn;->a(Landroid/content/Context;)Lwn;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxm;

    invoke-direct {v1, p1}, Lxm;-><init>(Lxi$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lxi;->b(Z)V

    invoke-static {v3}, Lxi;->c(Z)V

    if-eqz p1, :cond_3

    sget v0, Lxi;->d:I

    invoke-interface {p1, v0}, Lxi$a;->a(I)V

    :cond_3
    invoke-static {v3}, Lxi;->c(Z)V

    sget-object v0, Lxi;->c:Landroid/content/Context;

    invoke-static {v0}, Lwn;->a(Landroid/content/Context;)Lwn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwn;->b()V

    goto :goto_0
.end method

.method public static b(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V
    .locals 5

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lxi;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    array-length v2, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    const v4, 0xffff

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;->mRids:[I

    const/16 v2, 0xe

    const/4 v3, 0x2

    aput v3, v1, v2

    :cond_1
    invoke-virtual {v0, p0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->addPermissionTableItem(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    :cond_2
    return-void
.end method

.method public static b(Z)V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    sput-boolean p0, Lxi;->a:Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    sget-boolean v2, Lxi;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lho;->H(I)V

    :cond_0
    sget-boolean v2, Lxi;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lho;->I(I)V

    :cond_1
    sget-boolean v1, Lxi;->b:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->setEnable(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lxi;->h()V

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lxi;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lxi;->c(Z)V

    return-void
.end method

.method private static declared-synchronized c(Z)V
    .locals 2

    const-class v0, Lxi;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lxi;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lxi;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lxi;->a:Z

    return v0
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lxi;->b:Z

    return v0
.end method

.method private static declared-synchronized g()Z
    .locals 2

    const-class v0, Lxi;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lxi;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static h()V
    .locals 5

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljf;

    invoke-direct {v1}, Ljf;-><init>()V

    sget-boolean v2, Lxi;->b:Z

    sget-boolean v3, Lxi;->a:Z

    invoke-virtual {v1, v2, v3}, Ljf;->a(ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method
