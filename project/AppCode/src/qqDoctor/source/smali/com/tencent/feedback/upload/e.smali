.class public Lcom/tencent/feedback/upload/e;
.super Ljava/lang/Object;
.source "UploadHandlerRQDImp.java"

# interfaces
.implements Lcom/tencent/feedback/upload/UploadHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/upload/e$b;,
        Lcom/tencent/feedback/upload/e$a;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/feedback/upload/e;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/tencent/feedback/upload/c;

.field private d:Lcom/tencent/feedback/upload/e$a;

.field private e:Lcom/tencent/feedback/upload/e$b;

.field private f:Lcom/tencent/feedback/upload/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/upload/e;->b:Lcom/tencent/feedback/upload/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/tencent/feedback/upload/e;->c:Lcom/tencent/feedback/upload/c;

    .line 45
    iput-object v0, p0, Lcom/tencent/feedback/upload/e;->d:Lcom/tencent/feedback/upload/e$a;

    .line 46
    iput-object v0, p0, Lcom/tencent/feedback/upload/e;->e:Lcom/tencent/feedback/upload/e$b;

    .line 66
    iput-object p1, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/upload/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/upload/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/upload/e;->c:Lcom/tencent/feedback/upload/c;

    .line 68
    new-instance v0, Lcom/tencent/feedback/upload/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/feedback/upload/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/feedback/upload/e;->f:Lcom/tencent/feedback/upload/e$b;

    .line 69
    return-void
.end method

.method private declared-synchronized a()Lcom/tencent/feedback/upload/e$a;
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/upload/e;->d:Lcom/tencent/feedback/upload/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/upload/e;
    .locals 3
    .parameter

    .prologue
    .line 52
    const-class v1, Lcom/tencent/feedback/upload/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/upload/e;->b:Lcom/tencent/feedback/upload/e;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/tencent/feedback/upload/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/feedback/upload/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/upload/e;->b:Lcom/tencent/feedback/upload/e;

    .line 56
    :cond_0
    sget-object v0, Lcom/tencent/feedback/upload/e;->b:Lcom/tencent/feedback/upload/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I[BLjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x9

    .line 292
    const-string v0, "dispatch2OnRecevied start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 293
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 295
    :cond_0
    const-string v0, "process responseDatas == null or CMD_RESPONSE_NO_DATA"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 300
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 302
    const-string v0, "process CMD_RESPONSE_ALL_STRATEGY"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcommon/MixPackage;

    invoke-direct {v0}, Lcommon/MixPackage;-><init>()V

    .line 304
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p2}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 305
    invoke-virtual {v0, v1}, Lcommon/MixPackage;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 306
    invoke-virtual {v0}, Lcommon/MixPackage;->a()Ljava/util/Map;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 309
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 311
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v3, v0, p3}, Lcom/tencent/feedback/upload/e;->a(I[BLjava/lang/Object;)V

    goto :goto_1

    .line 315
    :cond_2
    if-ne p1, v1, :cond_4

    .line 317
    const-string v0, "process CMD_RESPONSE_SPEEDMONITOR_STRATEGY"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/tencent/feedback/upload/e;->b()Lcom/tencent/feedback/upload/e$b;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_3

    .line 321
    invoke-interface {v0, v1, p2}, Lcom/tencent/feedback/upload/e$b;->a(I[B)V

    .line 338
    :cond_3
    :goto_2
    const-string v0, "dispatch2OnRecevied end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_4
    const-string v0, "process common received"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/tencent/feedback/upload/e;->d()Lcom/tencent/feedback/upload/e$b;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_5

    .line 330
    invoke-interface {v0, p1, p2}, Lcom/tencent/feedback/upload/e$b;->a(I[B)V

    .line 333
    :cond_5
    invoke-direct {p0}, Lcom/tencent/feedback/upload/e;->c()Lcom/tencent/feedback/upload/e$b;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_3

    .line 335
    invoke-interface {v0, p1, p2}, Lcom/tencent/feedback/upload/e$b;->a(I[B)V

    goto :goto_2
.end method

.method private declared-synchronized b()Lcom/tencent/feedback/upload/e$b;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/upload/e;->e:Lcom/tencent/feedback/upload/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Lcom/tencent/feedback/upload/e$b;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized d()Lcom/tencent/feedback/upload/e$b;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/upload/e;->f:Lcom/tencent/feedback/upload/e$b;
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
.method public final declared-synchronized a(Lcom/tencent/feedback/upload/e$a;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/upload/e;->d:Lcom/tencent/feedback/upload/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/feedback/upload/e$b;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/upload/e;->e:Lcom/tencent/feedback/upload/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;Lcom/tencent/feedback/upload/OnUploadFinshed;Ljava/lang/Object;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    const-string v0, "RQDUploadImp.doUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 125
    const/4 v8, 0x0

    .line 126
    const-string v10, ""

    .line 129
    if-nez p1, :cond_2

    .line 131
    :try_start_0
    const-string v0, "uploadDatas == null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadError:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 133
    :try_start_1
    const-string v2, "uploadDatas is null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    if-eqz p2, :cond_0

    .line 228
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, v0, v1, v2}, Lcom/tencent/feedback/upload/OnUploadFinshed;->onUploadFinshed(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;Ljava/lang/String;)V

    .line 229
    :cond_0
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 230
    :goto_1
    return-void

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getUploadRequestPackage(Z)Lcommon/RequestPackage;

    move-result-object v0

    .line 138
    if-nez v0, :cond_5

    .line 140
    const-string v0, "RequestPackage == null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadFail:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :try_start_3
    const-string v2, "RequestPackage is null"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 227
    if-eqz p2, :cond_3

    .line 228
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2, v0, v1, v2}, Lcom/tencent/feedback/upload/OnUploadFinshed;->onUploadFinshed(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;Ljava/lang/String;)V

    .line 229
    :cond_3
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v0

    goto :goto_2

    .line 146
    :cond_5
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestPacket:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcommon/RequestPackage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    .line 150
    const-string v2, "test"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    .line 151
    const-string v2, "test"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    .line 152
    const-string v2, "detail"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v3

    .line 155
    const/4 v0, 0x0

    .line 157
    const/4 v1, 0x0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v4, "Gray"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 161
    iget-object v1, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getGrayUploadServer()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 168
    :goto_3
    if-nez v2, :cond_9

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t upload data type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadError:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 172
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t upload data type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .line 227
    if-eqz p2, :cond_6

    .line 228
    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_4
    invoke-interface {p2, v0, v1, v2}, Lcom/tencent/feedback/upload/OnUploadFinshed;->onUploadFinshed(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;Ljava/lang/String;)V

    .line 229
    :cond_6
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_7
    :try_start_6
    const-string v4, "RQD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 165
    iget-object v1, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getUploadServer()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    .line 228
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v0

    goto :goto_4

    .line 176
    :cond_9
    :try_start_7
    iget-object v1, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_a

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 180
    :cond_a
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 181
    iget-object v1, p0, Lcom/tencent/feedback/upload/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_b
    if-eqz v1, :cond_d

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 186
    new-instance v6, Lcom/tencent/feedback/upload/c$b;

    invoke-direct {v6, p0}, Lcom/tencent/feedback/upload/c$b;-><init>(Lcom/tencent/feedback/upload/e;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 189
    iget-object v0, p0, Lcom/tencent/feedback/upload/e;->c:Lcom/tencent/feedback/upload/c;

    invoke-virtual {v0, v2, v3, v1, v6}, Lcom/tencent/feedback/upload/c;->a(Ljava/lang/String;[BLjava/lang/String;Lcom/tencent/feedback/upload/c$b;)[B

    move-result-object v9

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 192
    invoke-direct {p0}, Lcom/tencent/feedback/upload/e;->a()Lcom/tencent/feedback/upload/e$a;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_c

    .line 195
    iget-wide v4, v6, Lcom/tencent/feedback/upload/c$b;->b:J

    iget-wide v6, v6, Lcom/tencent/feedback/upload/c$b;->c:J

    invoke-interface/range {v0 .. v7}, Lcom/tencent/feedback/upload/e$a;->a(Ljava/lang/String;JJJ)V

    :cond_c
    move-object v0, v9

    .line 199
    :cond_d
    if-nez v0, :cond_10

    .line 201
    const-string v0, "response received is null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadError:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 203
    :try_start_8
    const-string v2, "received response null"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 227
    if-eqz p2, :cond_e

    .line 228
    if-nez p1, :cond_f

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p2, v0, v1, v2}, Lcom/tencent/feedback/upload/OnUploadFinshed;->onUploadFinshed(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;Ljava/lang/String;)V

    .line 229
    :cond_e
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 228
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v0

    goto :goto_5

    .line 209
    :cond_10
    :try_start_9
    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 210
    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->decode([B)V

    .line 211
    const-string v0, "detail"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcommon/ResponsePackage;

    .line 212
    iget-byte v1, v0, Lcommon/ResponsePackage;->a:B

    if-nez v1, :cond_16

    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadOk:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 213
    :goto_6
    :try_start_a
    sget-object v2, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadOk:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;

    if-ne v1, v2, :cond_14

    .line 214
    const-string v2, "RQDUploadImp.processResponse() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-eqz v0, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rpp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcommon/ResponsePackage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcommon/ResponsePackage;->a()B

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {p1, v2}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->done(Z)V

    const-string v2, "received response so process it! first fit the srcIp and server time!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcommon/ResponsePackage;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/CommonInfo;->setGateIP(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcommon/ResponsePackage;->g()J

    move-result-wide v3

    const-wide v5, 0xdc69183800L

    cmp-long v3, v3, v5

    if-ltz v3, :cond_11

    const-string v3, "server time is ok! fix it!"

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Lcommon/ResponsePackage;->g()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v3, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/feedback/common/CommonInfo;->setServerTimeGap(J)V

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fix gate ip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getGateIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fix server time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v0}, Lcommon/ResponsePackage;->c()[B

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcommon/ResponsePackage;->e()B

    move-result v3

    invoke-virtual {v0}, Lcommon/ResponsePackage;->f()B

    move-result v4

    const-string v5, "S(@L@L@)"

    invoke-static {v2, v4, v3, v5}, Lcom/tencent/feedback/common/g;->b([BIILjava/lang/String;)[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v2

    if-eqz v2, :cond_13

    :try_start_b
    invoke-virtual {v0}, Lcommon/ResponsePackage;->b()I

    move-result v0

    invoke-direct {p0, v0, v2, p3}, Lcom/tencent/feedback/upload/e;->a(I[BLjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :cond_13
    :goto_8
    :try_start_c
    const-string v0, "RQDUploadImp.processResponse() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 227
    :cond_14
    if-eqz p2, :cond_15

    .line 228
    if-nez p1, :cond_19

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p2, v0, v1, v10}, Lcom/tencent/feedback/upload/OnUploadFinshed;->onUploadFinshed(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;Ljava/lang/String;)V

    .line 229
    :cond_15
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 212
    :cond_16
    :try_start_d
    sget-object v1, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadFail:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_6

    .line 214
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :try_start_e
    const-string v2, "process received error"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_8

    .line 219
    :catch_1
    move-exception v0

    .line 221
    :goto_a
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    sget-object v8, Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;->UploadError:Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 223
    :try_start_10
    const-string v1, "throw error"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 227
    if-eqz p2, :cond_18

    .line 228
    if-nez p1, :cond_1a

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p2, v0, v8, v1}, Lcom/tencent/feedback/upload/OnUploadFinshed;->onUploadFinshed(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;Ljava/lang/String;)V

    .line 229
    :cond_18
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 228
    :cond_19
    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v0

    goto :goto_9

    :cond_1a
    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v0

    goto :goto_b

    .line 227
    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_c
    if-eqz p2, :cond_1b

    .line 228
    if-nez p1, :cond_1c

    const/4 v0, 0x0

    :goto_d
    invoke-interface {p2, v0, v8, v10}, Lcom/tencent/feedback/upload/OnUploadFinshed;->onUploadFinshed(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;Lcom/tencent/feedback/upload/OnUploadFinshed$UploadResult;Ljava/lang/String;)V

    .line 229
    :cond_1b
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_1c
    invoke-virtual {p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    move-result-object v0

    goto :goto_d

    .line 227
    :catchall_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    goto :goto_c

    .line 219
    :catch_2
    move-exception v0

    move-object v1, v8

    goto :goto_a

    :cond_1d
    move-object v2, v1

    goto/16 :goto_3
.end method
