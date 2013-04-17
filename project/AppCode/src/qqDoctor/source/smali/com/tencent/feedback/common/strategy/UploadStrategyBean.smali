.class public Lcom/tencent/feedback/common/strategy/UploadStrategyBean;
.super Ljava/lang/Object;
.source "UploadStrategyBean.java"


# static fields
.field public static final DEFAULT_MAXPACKAGESIZE:I = 0x32

.field public static final DEFAULT_TESTCOUNT:I = 0x1

.field public static final DEFAULT_UPLOADSERVER:Ljava/lang/String; = "http://monitor.uu.qq.com/analytics/upload"

.field public static final DEFAULT_UPLOADSTRATEGY:I = 0x3

.field public static final GRAY_Default_UploadSERVER:Ljava/lang/String; = "http://update.uu.qq.com/analytics/upload"

.field public static final GRAY_Test_UploadSERVER:Ljava/lang/String; = "http://x.uu.qq.com/gray/access"

.field public static final MIN_MAXPACKAGESIZE:I = 0xa

.field public static final RDM_TEST_UPLOADSERVER:Ljava/lang/String; = "http://monitor.sp0309.3g.qq.com/analytics/upload"

.field public static final ZHUAN_TEST_UPLOADSERVER:Ljava/lang/String; = "http://112.90.139.158:8080/analytics/upload"


# instance fields
.field private apkUID:Ljava/lang/String;

.field private exceptionUploadServerOpen:Z

.field private exceptionUploadUserOpen:Z

.field private maxPackageSize:I

.field private speedMonitorServerOpen:Z

.field private speedMonitorUserOpen:Z

.field private testCount:I

.field private uploadServer:Ljava/lang/String;

.field private uploadStrategy:I

.field private userEventServerOpen:Z

.field private userEventUserOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->testCount:I

    .line 23
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->maxPackageSize:I

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadStrategy:I

    .line 28
    const-string v0, "http://monitor.uu.qq.com/analytics/upload"

    iput-object v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadServer:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorServerOpen:Z

    .line 31
    iput-boolean v1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadServerOpen:Z

    .line 32
    iput-boolean v1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventServerOpen:Z

    .line 33
    iput-boolean v1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorUserOpen:Z

    .line 34
    iput-boolean v1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadUserOpen:Z

    .line 35
    iput-boolean v1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventUserOpen:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->apkUID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 187
    monitor-enter p0

    if-nez p1, :cond_0

    move v0, v1

    .line 227
    :goto_0
    monitor-exit p0

    return v0

    .line 190
    :cond_0
    :try_start_0
    const-class v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 192
    const-class v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    .line 194
    iget-boolean v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadServerOpen:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadServerOpen:Z

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_1
    iget-boolean v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadUserOpen:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadUserOpen:Z

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 198
    goto :goto_0

    .line 200
    :cond_2
    iget-boolean v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorServerOpen:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorServerOpen:Z

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_3
    iget-boolean v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorUserOpen:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorUserOpen:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_4
    iget-boolean v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventServerOpen:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventServerOpen:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :cond_5
    iget-boolean v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventUserOpen:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventUserOpen:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_6
    iget v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->maxPackageSize:I

    iget v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->maxPackageSize:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_7
    iget v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->testCount:I

    iget v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->testCount:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_8
    iget-object v2, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadServer:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 219
    goto :goto_0

    .line 221
    :cond_9
    iget v0, v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadStrategy:I

    iget v2, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadStrategy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_a

    move v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    move v0, v1

    .line 227
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getApkUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->apkUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGrayUploadServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    if-eqz v0, :cond_1

    .line 154
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_ZHUANTEST:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "http://112.90.139.158:8080/analytics/upload"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit p0

    return-object v0

    .line 157
    :cond_0
    :try_start_1
    const-string v0, "http://x.uu.qq.com/gray/access"

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "http://update.uu.qq.com/analytics/upload"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxPackageSize()I
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->maxPackageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestCount()I
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->testCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUploadServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    if-eqz v0, :cond_1

    .line 76
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_ZHUANTEST:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "http://112.90.139.158:8080/analytics/upload"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v0

    .line 79
    :cond_0
    :try_start_1
    const-string v0, "http://monitor.sp0309.3g.qq.com/analytics/upload"

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadServer:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUploadStrategy()I
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadStrategy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isExceptionUploadServerOpen()Z
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadServerOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isExceptionUploadUserOpen()Z
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadUserOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSpeedMonitorServerOpen()Z
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorServerOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSpeedMonitorUserOpen()Z
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorUserOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUserEventServerOpen()Z
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventServerOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUserEventUserOpen()Z
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventUserOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setApkUID(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->apkUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExceptionUploadServerOpen(Z)V
    .locals 1
    .parameter

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadServerOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExceptionUploadUserOpen(Z)V
    .locals 1
    .parameter

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->exceptionUploadUserOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxPackageSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->maxPackageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSpeedMonitorServerOpen(Z)V
    .locals 1
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorServerOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSpeedMonitorUserOpen(Z)V
    .locals 1
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->speedMonitorUserOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTestCount(I)V
    .locals 1
    .parameter

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->testCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUploadServer(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadServer:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUploadStrategy(I)V
    .locals 1
    .parameter

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->uploadStrategy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserEventServerOpen(Z)V
    .locals 1
    .parameter

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventServerOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserEventUserOpen(Z)V
    .locals 1
    .parameter

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->userEventUserOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getUploadServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "maxPackageSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getMaxPackageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uploadStrategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getUploadStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "speedMonitorServerOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isSpeedMonitorServerOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "speedMonitorUserOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isSpeedMonitorUserOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exceptionUploadServerOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isExceptionUploadServerOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exceptionUploadUserOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isExceptionUploadUserOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userEventServerOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isUserEventServerOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userEventUserOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isUserEventUserOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apkuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getApkUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
