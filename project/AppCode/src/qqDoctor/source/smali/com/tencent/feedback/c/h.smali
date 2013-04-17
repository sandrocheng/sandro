.class public final Lcom/tencent/feedback/c/h;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "RealTimeRecordUploadDatas.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/feedback/c/f;

.field private c:Lcommon/RequestPackage;

.field private d:Z

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/feedback/c/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 40
    sget-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_RealTimeRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;)V

    .line 30
    iput-object v1, p0, Lcom/tencent/feedback/c/h;->a:Landroid/content/Context;

    .line 31
    iput-object v1, p0, Lcom/tencent/feedback/c/h;->b:Lcom/tencent/feedback/c/f;

    .line 32
    iput-object v1, p0, Lcom/tencent/feedback/c/h;->c:Lcommon/RequestPackage;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/c/h;->d:Z

    .line 36
    iput-object v1, p0, Lcom/tencent/feedback/c/h;->e:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/tencent/feedback/c/h;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/tencent/feedback/c/h;->b:Lcom/tencent/feedback/c/f;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lcommon/RequestPackage;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/tencent/feedback/c/h;->b(Ljava/util/List;)Leventrecord/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    if-nez v1, :cond_2

    .line 126
    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Leventrecord/a;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 129
    if-nez v1, :cond_3

    .line 130
    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/feedback/common/strategy/a;->b(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    move-result-object v2

    .line 139
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    :try_start_3
    invoke-virtual {v2}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getZipAlgorithm()I

    move-result v3

    int-to-byte v3, v3

    .line 142
    invoke-virtual {v2}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryAlgorithm()I

    move-result v4

    int-to-byte v4, v4

    .line 143
    invoke-virtual {v2}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryKey()Ljava/lang/String;

    move-result-object v5

    .line 144
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    invoke-static {v1, v3, v4, v5}, Lcom/tencent/feedback/common/g;->a([BIILjava/lang/String;)[B

    move-result-object v1

    .line 146
    if-nez v1, :cond_4

    .line 148
    const-string v1, "encodeDatasByZipAndEncry failed!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 149
    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 156
    :catch_0
    move-exception v1

    .line 158
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 160
    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_4
    :try_start_7
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v2

    .line 153
    const/16 v5, 0xb

    invoke-static {v5, v2, v1, v3, v4}, Lcom/tencent/feedback/common/g;->a(ILcom/tencent/feedback/common/CommonInfo;[BII)Lcommon/RequestPackage;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    .line 164
    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :catchall_1
    move-exception v0

    const-string v1, "RealTimeRecordUploadDatas.encode2EventRecordPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized a(Lcommon/RequestPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/c/h;->c:Lcommon/RequestPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/c/h;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Lcommon/RequestPackage;
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/c/h;->c:Lcommon/RequestPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/util/List;)Leventrecord/a;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string v0, "RealTimeRecordUploadDatas.encode2EventRecordPackage() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 171
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 193
    :goto_0
    return-object v0

    .line 175
    :cond_1
    :try_start_0
    new-instance v1, Leventrecord/a;

    invoke-direct {v1}, Leventrecord/a;-><init>()V

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/c/i;

    .line 180
    invoke-static {v0}, Lcom/tencent/feedback/common/f$d;->c(Lcom/tencent/feedback/c/i;)Leventrecord/EventRecord;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    .line 193
    goto :goto_0

    .line 186
    :cond_3
    :try_start_1
    invoke-virtual {v1, v3}, Leventrecord/a;->a(Ljava/util/ArrayList;)V

    .line 187
    const-string v0, "RealTimeRecordUploadDatas.encode2EventRecordPackage() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 188
    goto :goto_0
.end method

.method private declared-synchronized c()Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/c/h;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/c/h;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/c/h;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final done(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 200
    const-string v0, "RealTimeRecordUploadDatas.done() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v1}, Lcom/tencent/feedback/c/h;->a(Lcommon/RequestPackage;)V

    .line 204
    invoke-direct {p0}, Lcom/tencent/feedback/c/h;->c()Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-direct {p0, v1}, Lcom/tencent/feedback/c/h;->a(Ljava/util/List;)V

    .line 207
    if-eqz v0, :cond_1

    .line 209
    if-nez p1, :cond_0

    .line 211
    const-string v1, "isHandled false , record to db"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/tencent/feedback/c/h;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 216
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    :cond_1
    const-string v0, "RealTimeRecordUploadDatas.done() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public final getUploadRequestPackage(Z)Lcommon/RequestPackage;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    const-string v0, "RealTimeRecordUploadDatas.getUploadDatas() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/feedback/c/h;->b:Lcom/tencent/feedback/c/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/feedback/c/h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 111
    :cond_1
    :goto_0
    return-object v0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/tencent/feedback/c/h;->b()Lcommon/RequestPackage;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/c/h;->b:Lcom/tencent/feedback/c/f;

    invoke-virtual {v0}, Lcom/tencent/feedback/c/f;->a()Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/tencent/feedback/c/h;->a(Ljava/util/List;)V

    .line 92
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_4

    .line 93
    :cond_3
    const-string v0, "RealTimeRecordUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 95
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/tencent/feedback/c/h;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tencent/feedback/c/h;->a(Landroid/content/Context;Ljava/util/List;)Lcommon/RequestPackage;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lcom/tencent/feedback/c/h;->a(Lcommon/RequestPackage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    const-string v1, "RealTimeRecordUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    const-string v0, "getUploadDatas error"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    const-string v0, "RealTimeRecordUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    .line 111
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    const-string v1, "RealTimeRecordUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
.end method
