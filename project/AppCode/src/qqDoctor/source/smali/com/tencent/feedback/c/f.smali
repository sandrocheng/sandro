.class public final Lcom/tencent/feedback/c/f;
.super Ljava/lang/Object;
.source "RealTimeProcess.java"

# interfaces
.implements Lcom/tencent/feedback/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/c/f$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:J

.field private d:Ljava/util/List;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/c/f;->a:Z

    .line 33
    new-instance v0, Lcom/tencent/feedback/c/g;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/c/g;-><init>(Lcom/tencent/feedback/c/f;)V

    iput-object v0, p0, Lcom/tencent/feedback/c/f;->f:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/tencent/feedback/c/f;->e:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/tencent/feedback/common/f;->c()Lcom/tencent/feedback/common/f$d;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/f$d;->a:I

    iput v0, p0, Lcom/tencent/feedback/c/f;->b:I

    .line 49
    invoke-static {}, Lcom/tencent/feedback/common/f;->c()Lcom/tencent/feedback/common/f$d;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/feedback/common/f$d;->b:J

    iput-wide v0, p0, Lcom/tencent/feedback/c/f;->c:J

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/feedback/c/f;->b:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/feedback/c/f;->f:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/tencent/feedback/c/f;->c:J

    iget-wide v5, p0, Lcom/tencent/feedback/c/f;->c:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/feedback/common/c;->a(ILjava/lang/Runnable;JJ)V

    .line 53
    return-void
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/c/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 3

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    const-string v0, "RealTimeProcess.getCommonList() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/feedback/c/f;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    monitor-exit p0

    return-object v0

    .line 102
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v1, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return list\'s item num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 106
    const-string v1, "RealTimeProcess.getCommonList() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/feedback/c/i;)V
    .locals 7
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    const-string v0, "RealTimeProcess.processUA() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/feedback/c/f;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/feedback/c/f;->a:Z

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const-string v0, "context == null || bean == null return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/feedback/c/f;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    const-string v0, "enable false! return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    iget v1, p0, Lcom/tencent/feedback/c/f;->b:I

    if-lt v0, v1, :cond_3

    .line 75
    const-string v0, "buffer over max num drop it!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    const-string v1, "add to buffer"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 82
    iget v1, p0, Lcom/tencent/feedback/c/f;->b:I

    if-lt v0, v1, :cond_4

    .line 84
    const-string v0, "buffer reach max num should do Upload!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/c/f;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;)V

    .line 88
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/feedback/c/f;->f:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/tencent/feedback/c/f;->c:J

    iget-wide v5, p0, Lcom/tencent/feedback/c/f;->c:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/feedback/common/c;->a(ILjava/lang/Runnable;JJ)V

    .line 91
    :cond_4
    const-string v0, "RealTimeProcess.processUA() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/c/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Lcom/tencent/feedback/c/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "real time process has disable"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "real time process doSyncUpload start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/tencent/feedback/c/f;->a()Ljava/util/List;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "real process will sync upload size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/tencent/feedback/UserActionRecord;->getMyUpload()Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_2

    .line 143
    const-string v2, "start doUpload"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 144
    new-instance v2, Lcom/tencent/feedback/c/f$a;

    iget-object v3, p0, Lcom/tencent/feedback/c/f;->e:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/tencent/feedback/c/f$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v1, v2, v4, v4}, Lcom/tencent/feedback/upload/UploadHandler;->doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;Lcom/tencent/feedback/upload/OnUploadFinshed;Ljava/lang/Object;)V

    .line 145
    const-string v0, "end doUpload"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 155
    :cond_1
    :goto_1
    const-string v0, "real time process  doSyncUpload end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    const-string v1, "can\'t start upload , insert this records"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/tencent/feedback/c/f;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    goto :goto_1
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    const-string v0, "realtime process close start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/feedback/c/f;->a:Z

    .line 232
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/feedback/common/c;->a(IZ)V

    .line 233
    iget-object v0, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tencent/feedback/c/f;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/feedback/c/f;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 237
    :cond_0
    const-string v0, "realtime process close end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
