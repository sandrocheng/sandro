.class final Lcom/tencent/feedback/c/f$a;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "RealTimeProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    sget-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_RealTimeRecords:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    .line 173
    iput-object p2, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    .line 179
    iput-object p1, p0, Lcom/tencent/feedback/c/f$a;->b:Landroid/content/Context;

    .line 180
    return-void
.end method


# virtual methods
.method public final declared-synchronized done(Z)V
    .locals 2
    .parameter

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeUpUploadDatas.done() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 216
    const-string v0, "isHandled false , record to db"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/tencent/feedback/c/f$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    :cond_1
    const-string v0, "TimeUpUploadDatas.done() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUploadRequestPackage(Z)Lcommon/RequestPackage;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 190
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeUpUploadDatas.getUploadDatas() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 206
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 196
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/c/f$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/feedback/c/f$a;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/tencent/feedback/c/h;->a(Landroid/content/Context;Ljava/util/List;)Lcommon/RequestPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 197
    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    .line 206
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    const-string v0, "TimeUpUploadDatas.getUploadDatas error"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
