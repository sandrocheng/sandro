.class public final Lru;
.super Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru$a;
    }
.end annotation


# static fields
.field public static a:Lru$a;

.field public static b:I

.field public static c:I


# instance fields
.field private d:Lho;

.field private e:Landroid/content/Context;

.field private f:Ljf;

.field private g:Laan;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lru$a;

    invoke-direct {v0}, Lru$a;-><init>()V

    sput-object v0, Lru;->a:Lru$a;

    sput v1, Lru;->b:I

    sput v1, Lru;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/permission/AbsDummyServiceCallback;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru;->h:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lru;->e:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lru;->d:Lho;

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lru;->f:Ljf;

    iget-object v0, p0, Lru;->e:Landroid/content/Context;

    sget-object v1, Laan;->b:Laan;

    if-nez v1, :cond_0

    new-instance v1, Laan;

    invoke-direct {v1, v0}, Laan;-><init>(Landroid/content/Context;)V

    sput-object v1, Laan;->b:Laan;

    :cond_0
    sget-object v0, Laan;->b:Laan;

    iput-object v0, p0, Lru;->g:Laan;

    return-void
.end method

.method private a(II)Llz;
    .locals 4

    iget-object v0, p0, Lru;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lru;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llz;

    iget v3, v0, Llz;->a:I

    if-ne v3, p1, :cond_0

    iget v3, v0, Llz;->b:I

    if-ne v3, p2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lru;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0698

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const v1, 0xff1a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lov;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "MONITOR_LOG_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lru;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0699

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final onHandleAslynRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lru;->g:Laan;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Laao;

    invoke-direct {v2, v0, p1}, Laao;-><init>(Laan;Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-static {v0}, Lxf;->b(I)I

    move-result v0

    iput v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    iget v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mValue:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lru;->f:Ljf;

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-virtual {v0, v1, v2, v3}, Ljf;->a(III)V

    sget v0, Lru;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lru;->c:I

    iget-object v0, p0, Lru;->d:Lho;

    invoke-virtual {v0}, Lho;->bz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru;->f:Ljf;

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljf;->d(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-static {v1}, Lxf;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1, v3}, Lru;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final declared-synchronized onHandleSyncRequest(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lru;->g:Laan;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Laao;

    invoke-direct {v4, v2, p1}, Laao;-><init>(Laan;Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-static {v2}, Lxf;->b(I)I

    move-result v2

    iput v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    move v3, v0

    :goto_0
    if-eqz v3, :cond_4

    iget-object v4, p0, Lru;->f:Ljf;

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    iget v5, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT * FROM permission_log WHERE mUId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " and mRId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ORDER BY mTimestamp desc LIMIT 1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v4, Ljf;->a:Lhs;

    invoke-virtual {v5, v2}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v2, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Llz;

    invoke-direct {v2}, Llz;-><init>()V

    const-string v6, "mState"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Llz;->h:I

    const-string v6, "mTimestamp"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Llz;->i:J

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v4, v4, Ljf;->a:Lhs;

    invoke-virtual {v4}, Lhs;->b()V

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Llz;->i:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    iget v2, v2, Llz;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_5

    :cond_2
    :goto_2
    monitor-exit p0

    return v0

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    :try_start_1
    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    iget v4, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-direct {p0, v2, v4}, Lru;->a(II)Llz;

    move-result-object v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Llz;->i:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    iget v2, v2, Llz;->h:I

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_2

    :cond_7
    sget-object v4, Lru;->a:Lru$a;

    iget-boolean v4, v4, Lru$a;->b:Z

    if-ne v4, v1, :cond_8

    if-eqz v2, :cond_2

    iget v2, v2, Llz;->h:I

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_2

    :cond_8
    sget-object v4, Lru;->a:Lru$a;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lru$a;->b:Z

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lru;->e:Landroid/content/Context;

    const-class v6, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v5, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_ADD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Require_Info"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v5, p0, Lru;->e:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v4, Lru;->a:Lru$a;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v5, Lru;->a:Lru$a;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lru$a;->b:Z

    sget-object v5, Lru;->a:Lru$a;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v4, Lru;->a:Lru$a;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lru$a;->b:Z

    if-eqz v3, :cond_c

    sget-object v2, Lru;->a:Lru$a;

    iget v2, v2, Lru$a;->a:I

    if-nez v2, :cond_b

    iget-object v1, p0, Lru;->f:Ljf;

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    iget v3, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljf;->a(III)V

    sget v1, Lru;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lru;->b:I

    move v1, v0

    :cond_9
    :goto_3
    iget-object v0, p0, Lru;->d:Lho;

    invoke-virtual {v0}, Lho;->bz()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lru;->f:Ljf;

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    invoke-virtual {v0, v2}, Ljf;->d(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    invoke-static {v2}, Lxf;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_a

    invoke-direct {p0, v0, v2, v1}, Lru;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    :goto_4
    sget-object v0, Lru;->a:Lru$a;

    iget v0, v0, Lru$a;->a:I

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    :try_start_4
    sget-object v0, Lru;->a:Lru$a;

    iget v0, v0, Lru$a;->a:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lru;->f:Ljf;

    iget v2, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    iget v3, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Ljf;->a(III)V

    sget v0, Lru;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lru;->c:I

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Llz;->i:J

    :cond_d
    if-eqz v2, :cond_e

    iget v0, v2, Llz;->h:I

    sget-object v1, Lru;->a:Lru$a;

    iget v1, v1, Lru$a;->a:I

    if-ne v0, v1, :cond_f

    :cond_e
    if-nez v2, :cond_a

    :cond_f
    iget v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    iget v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    sget-object v2, Lru;->a:Lru$a;

    iget v2, v2, Lru$a;->a:I

    invoke-direct {p0, v0, v1}, Lru;->a(II)Llz;

    move-result-object v3

    if-eqz v3, :cond_10

    iput v2, v3, Llz;->h:I

    goto :goto_4

    :cond_10
    new-instance v3, Llz;

    invoke-direct {v3}, Llz;-><init>()V

    iput v0, v3, Llz;->a:I

    iput v1, v3, Llz;->b:I

    iput v2, v3, Llz;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Llz;->i:J

    iget-object v0, p0, Lru;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4
.end method
