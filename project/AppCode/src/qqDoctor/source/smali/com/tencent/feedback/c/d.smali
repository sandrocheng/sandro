.class public Lcom/tencent/feedback/c/d;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "CommonRecordUploadDatas.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:Lcommon/RequestPackage;

.field private e:[Ljava/lang/Long;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    sget-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_COMRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;)V

    .line 41
    iput-object v2, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/feedback/common/a;->b:J

    iput-wide v0, p0, Lcom/tencent/feedback/c/d;->b:J

    .line 43
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/feedback/common/a;->c:J

    iput-wide v0, p0, Lcom/tencent/feedback/c/d;->c:J

    .line 44
    iput-object v2, p0, Lcom/tencent/feedback/c/d;->d:Lcommon/RequestPackage;

    .line 45
    iput-object v2, p0, Lcom/tencent/feedback/c/d;->e:[Ljava/lang/Long;

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/feedback/c/d;->f:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/c/d;->g:Z

    .line 53
    iput-object p1, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private static a(Ljava/util/List;)Lcommon/MixPackage;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    const-string v0, "CommonRecordUploadDatas.encode2MixPackage() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 221
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 316
    :goto_0
    return-object v0

    .line 227
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 234
    :goto_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 237
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/c/i;

    .line 238
    invoke-virtual {v0}, Lcom/tencent/feedback/c/i;->e()Ljava/util/Map;

    move-result-object v8

    .line 240
    if-eqz v8, :cond_2

    .line 242
    const-string v8, "IP"

    invoke-virtual {v0}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 244
    invoke-static {v0}, Lcom/tencent/feedback/common/f$d;->a(Lcom/tencent/feedback/c/i;)Lspeedmonitor/IpMonitor;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_2
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 249
    :cond_3
    const-string v8, "PG"

    invoke-virtual {v0}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 252
    invoke-static {v0}, Lcom/tencent/feedback/common/f$d;->b(Lcom/tencent/feedback/c/i;)Lspeedmonitor/a;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 312
    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    const-string v0, "CommonRecordUploadDatas.encode2MixPackage() error"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 316
    goto :goto_0

    .line 257
    :cond_4
    :try_start_1
    const-string v8, "UA"

    invoke-virtual {v0}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 259
    invoke-static {v0}, Lcom/tencent/feedback/common/f$d;->c(Lcom/tencent/feedback/c/i;)Leventrecord/EventRecord;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "up dmList "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "up ipList "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "up erList "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 270
    new-instance v0, Lspeedmonitor/b;

    invoke-direct {v0}, Lspeedmonitor/b;-><init>()V

    .line 272
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 274
    invoke-virtual {v0, v6}, Lspeedmonitor/b;->b(Ljava/util/ArrayList;)V

    move v3, v2

    .line 278
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 280
    invoke-virtual {v0, v5}, Lspeedmonitor/b;->a(Ljava/util/ArrayList;)V

    .line 284
    :goto_3
    if-eqz v2, :cond_b

    move-object v2, v1

    .line 290
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 292
    new-instance v0, Leventrecord/a;

    invoke-direct {v0}, Leventrecord/a;-><init>()V

    .line 293
    invoke-virtual {v0, v7}, Leventrecord/a;->a(Ljava/util/ArrayList;)V

    .line 296
    :goto_5
    if-nez v2, :cond_7

    if-nez v0, :cond_7

    move-object v0, v1

    .line 297
    goto/16 :goto_0

    .line 299
    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 300
    if-eqz v2, :cond_8

    .line 301
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lspeedmonitor/b;->toByteArray()[B

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_8
    if-eqz v0, :cond_9

    .line 304
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Leventrecord/a;->toByteArray()[B

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_9
    new-instance v0, Lcommon/MixPackage;

    invoke-direct {v0}, Lcommon/MixPackage;-><init>()V

    .line 307
    invoke-virtual {v0, v3}, Lcommon/MixPackage;->a(Ljava/util/Map;)V

    .line 309
    const-string v2, "CommonRecordUploadDatas.encode2MixPackage() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_5

    :cond_b
    move-object v2, v0

    goto :goto_4

    :cond_c
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/feedback/c/d;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 2
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/feedback/c/d;->b:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide p1, p0, Lcom/tencent/feedback/c/d;->b:J

    :cond_0
    iput-wide p1, p0, Lcom/tencent/feedback/c/d;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/c/d;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/c/d;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized done(Z)V
    .locals 3
    .parameter

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    const-string v0, "CommonRecordUploadDatas.done() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 324
    if-eqz p1, :cond_2

    .line 327
    iget-object v0, p0, Lcom/tencent/feedback/c/d;->e:[Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/c/d;->e:[Ljava/lang/Long;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/feedback/c/d;->e:[Ljava/lang/Long;

    const-string v2, "RecordDAO.deleteRecordList() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "deleteRecordList() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 330
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove num :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/c/d;->d:Lcommon/RequestPackage;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/c/d;->e:[Ljava/lang/Long;

    .line 334
    :cond_2
    const-string v0, "CommonRecordUploadDatas.done() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 329
    :cond_3
    :try_start_2
    const-string v2, "RecordDAO.deleteRecordList() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public declared-synchronized getUploadRequestPackage(Z)Lcommon/RequestPackage;
    .locals 10
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    const-string v0, "CommonRecordUploadDatas.getUploadDatas() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/feedback/c/d;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    monitor-exit p0

    return-object v0

    .line 86
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/c/d;->d:Lcommon/RequestPackage;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/tencent/feedback/c/d;->d:Lcommon/RequestPackage;

    goto :goto_0

    .line 89
    :cond_2
    const-string v0, "should query for upload datas!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 95
    const/4 v0, 0x0

    .line 96
    :try_start_2
    iget-object v1, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_14

    .line 98
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/a/c;->a(I)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 100
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    const/4 v0, 0x0

    .line 102
    if-eqz v3, :cond_7

    .line 106
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    .line 107
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    int-to-long v6, v1

    const-wide/16 v8, 0x190

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/tencent/feedback/c/d;->c:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_6

    .line 109
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/a/a;

    .line 112
    invoke-static {v0}, Lcom/tencent/feedback/common/f$d;->a(Lcom/tencent/feedback/a/a;)Lcom/tencent/feedback/c/i;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_3

    .line 115
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    int-to-long v1, v1

    const-wide/16 v6, 0x190

    add-long/2addr v1, v6

    long-to-int v1, v1

    .line 120
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 121
    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v6

    .line 122
    if-eqz v6, :cond_4

    .line 124
    const/4 v2, 0x0

    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 126
    const-wide/16 v7, 0x0

    aput-wide v7, v6, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 129
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 130
    invoke-virtual {v0, v6, v7}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    .line 131
    invoke-virtual {v0, v6, v7}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 200
    :catch_0
    move-exception v0

    .line 202
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    if-eqz p1, :cond_5

    .line 208
    :try_start_4
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/c/d;->done(Z)V

    .line 211
    :cond_5
    const-string v0, "CommonRecordUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 214
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 135
    :cond_6
    :try_start_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v0, v1

    .line 136
    :cond_7
    iget-wide v1, p0, Lcom/tencent/feedback/c/d;->c:J

    int-to-long v5, v0

    sub-long v0, v1, v5

    .line 141
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    .line 143
    iget-object v2, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;[Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_8

    .line 146
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-gtz v0, :cond_a

    .line 206
    if-eqz p1, :cond_9

    .line 208
    :try_start_6
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/c/d;->done(Z)V

    .line 211
    :cond_9
    const-string v0, "CommonRecordUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 152
    :cond_a
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 153
    invoke-static {v4}, Lcom/tencent/feedback/c/d;->a(Ljava/util/List;)Lcommon/MixPackage;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_12

    .line 157
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Long;

    .line 158
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    array-length v0, v3

    if-ge v1, v0, :cond_b

    .line 159
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/c/i;

    invoke-virtual {v0}, Lcom/tencent/feedback/c/i;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v1

    .line 158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 161
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 162
    invoke-virtual {v2}, Lcommon/MixPackage;->toByteArray()[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    .line 165
    if-nez v0, :cond_d

    .line 166
    if-eqz p1, :cond_c

    .line 208
    :try_start_8
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/c/d;->done(Z)V

    .line 211
    :cond_c
    const-string v0, "CommonRecordUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 168
    :cond_d
    :try_start_9
    iget-object v1, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/feedback/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/a;->b(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    move-result-object v1

    .line 175
    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 177
    :try_start_a
    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getZipAlgorithm()I

    move-result v2

    int-to-byte v2, v2

    .line 178
    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryAlgorithm()I

    move-result v4

    int-to-byte v4, v4

    .line 179
    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryKey()Ljava/lang/String;

    move-result-object v5

    .line 180
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 182
    :try_start_b
    invoke-static {v0, v2, v4, v5}, Lcom/tencent/feedback/common/g;->a([BIILjava/lang/String;)[B

    move-result-object v0

    .line 183
    if-nez v0, :cond_10

    .line 185
    const-string v0, "encodeDatasByZipAndEncry failed!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 186
    if-eqz p1, :cond_e

    .line 208
    :try_start_c
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/c/d;->done(Z)V

    .line 211
    :cond_e
    const-string v0, "CommonRecordUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_d
    monitor-exit v1

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 206
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_f

    .line 208
    :try_start_e
    const-string v1, "finally call done(true)"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/feedback/c/d;->done(Z)V

    .line 211
    :cond_f
    const-string v1, "CommonRecordUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 80
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_10
    :try_start_f
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v1

    .line 190
    iget v5, p0, Lcom/tencent/feedback/c/d;->f:I

    invoke-static {v5, v1, v0, v2, v4}, Lcom/tencent/feedback/common/g;->a(ILcom/tencent/feedback/common/CommonInfo;[BII)Lcommon/RequestPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/c/d;->d:Lcommon/RequestPackage;

    .line 191
    iget-object v0, p0, Lcom/tencent/feedback/c/d;->d:Lcommon/RequestPackage;

    if-eqz v0, :cond_12

    .line 194
    iput-object v3, p0, Lcom/tencent/feedback/c/d;->e:[Ljava/lang/Long;

    .line 195
    iget-object v0, p0, Lcom/tencent/feedback/c/d;->d:Lcommon/RequestPackage;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    .line 206
    if-eqz p1, :cond_11

    .line 208
    :try_start_10
    const-string v1, "finally call done(true)"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/feedback/c/d;->done(Z)V

    .line 211
    :cond_11
    const-string v1, "CommonRecordUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_12
    if-eqz p1, :cond_13

    .line 208
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/c/d;->done(Z)V

    .line 211
    :cond_13
    const-string v0, "CommonRecordUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_4

    :cond_14
    move-object v3, v0

    goto/16 :goto_1
.end method
