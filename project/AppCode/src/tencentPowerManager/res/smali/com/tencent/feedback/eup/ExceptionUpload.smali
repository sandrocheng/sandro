.class public Lcom/tencent/feedback/eup/ExceptionUpload;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/feedback/common/b/e;


# static fields
.field private static a:Lcom/tencent/feedback/upload/UploadHandler;

.field private static b:Lcom/tencent/feedback/eup/l;

.field private static c:Z

.field private static d:Z


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    sput-object v1, Lcom/tencent/feedback/eup/ExceptionUpload;->a:Lcom/tencent/feedback/upload/UploadHandler;

    .line 30
    sput-object v1, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;

    .line 31
    sput-boolean v0, Lcom/tencent/feedback/eup/ExceptionUpload;->c:Z

    .line 32
    sput-boolean v0, Lcom/tencent/feedback/eup/ExceptionUpload;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->e:Landroid/content/Context;

    .line 38
    const-string v0, "ExceptionUpload.ExceptionUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->e:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/tencent/feedback/eup/h;->a(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/tencent/feedback/eup/l;

    iget-object v1, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/feedback/eup/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;

    .line 43
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    invoke-static {p1, p2, v0}, Lcom/tencent/feedback/common/CommonInfo;->createCommonInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    const-string v0, "ExceptionUpload.ExceptionUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static declared-synchronized doUploadExceptionDatas(I)V
    .locals 3
    .parameter

    .prologue
    .line 248
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionUpload.doUploadExceptionDatas() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    if-gtz p0, :cond_1

    .line 270
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 252
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/tencent/feedback/eup/ExceptionUpload;->getExceptionUploadDatas(I)Lcom/tencent/feedback/upload/AbstractUploadDatas;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/tencent/feedback/eup/ExceptionUpload;->getMyUpload()Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v2

    .line 255
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 256
    invoke-static {}, Lcom/tencent/feedback/eup/ExceptionUpload;->isStartAfterQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/tencent/feedback/eup/ExceptionUpload;->c:Z

    if-nez v0, :cond_2

    .line 257
    const-string v0, "diable ,should wait for queryfinish!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 263
    :cond_2
    :try_start_2
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->a:Lcom/tencent/feedback/upload/UploadHandler;

    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;

    invoke-interface {v0, v2}, Lcom/tencent/feedback/upload/UploadHandler;->doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    :goto_1
    :try_start_3
    const-string v0, "ExceptionUpload.doUploadExceptionDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    const-string v0, "ExceptionUpload.doUploadExceptionDatas error"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getDefaultContract()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/tencent/feedback/eup/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUpload(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-static {p0}, Lcom/tencent/feedback/upload/b;->a(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getEupUserConfirmer()Lcom/tencent/feedback/eup/IEupUserConfirmer;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/tencent/feedback/eup/h;->e()Lcom/tencent/feedback/eup/IEupUserConfirmer;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getExceptionUploadDatas(I)Lcom/tencent/feedback/upload/AbstractUploadDatas;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 226
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    const-string v2, "ExceptionUpload.getExceptionUploadDatas() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    if-gtz p0, :cond_1

    .line 242
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 230
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/eup/h;->a()Lcom/tencent/feedback/eup/h;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/h;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;

    if-eqz v2, :cond_0

    .line 233
    invoke-static {}, Lcom/tencent/feedback/eup/ExceptionUpload;->isStartAfterQuery()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/tencent/feedback/eup/ExceptionUpload;->c:Z

    if-nez v2, :cond_2

    .line 234
    const-string v2, "diable ,should wait for queryfinish!"

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 238
    :cond_2
    :try_start_2
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/l;->a()I

    move-result v0

    if-eq v0, p0, :cond_3

    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;

    invoke-virtual {v0, p0}, Lcom/tencent/feedback/eup/l;->a(I)V

    .line 240
    :cond_3
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;

    invoke-static {}, Lcom/tencent/feedback/eup/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/l;->a(Ljava/lang/String;)V

    .line 241
    const-string v0, "ExceptionUpload.getExceptionUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->b:Lcom/tencent/feedback/eup/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getMyUpload()Lcom/tencent/feedback/upload/UploadHandler;
    .locals 2

    .prologue
    .line 191
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionUpload.getMyUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->a:Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getYourUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/tencent/feedback/eup/h;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    const-string v1, "ExceptionUpload.handleCatchException() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 106
    :try_start_0
    const-string v1, "eup handleCatchException!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/tencent/feedback/eup/h;->a()Lcom/tencent/feedback/eup/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    if-nez v1, :cond_0

    .line 123
    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    :goto_0
    return v0

    .line 109
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/eup/ExceptionUpload;->isStartAfterQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/tencent/feedback/eup/ExceptionUpload;->c:Z

    if-nez v2, :cond_1

    .line 110
    const-string v1, "diable ,should wait for queryfinish!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, p0, p1, v2}, Lcom/tencent/feedback/eup/h;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 123
    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    .line 120
    const-string v1, "ExceptionUpload.handleCatchException() error"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public static isDefaultEUP()Z
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/tencent/feedback/eup/h;->c()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isQueryFinish()Z
    .locals 2

    .prologue
    .line 204
    const-class v0, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/feedback/eup/ExceptionUpload;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isStartAfterQuery()Z
    .locals 2

    .prologue
    .line 214
    const-class v0, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/feedback/eup/ExceptionUpload;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setDefaultContract(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-static {p0}, Lcom/tencent/feedback/eup/h;->b(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static setDefaultEUP(Z)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-static {p0}, Lcom/tencent/feedback/eup/h;->a(Z)V

    .line 176
    return-void
.end method

.method public static setEupParams(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p1}, Lcom/tencent/feedback/eup/h;->a(I)V

    .line 71
    invoke-static {p0}, Lcom/tencent/feedback/eup/h;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static setEupUserConfirmer(Lcom/tencent/feedback/eup/IEupUserConfirmer;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-static {p0}, Lcom/tencent/feedback/eup/h;->a(Lcom/tencent/feedback/eup/IEupUserConfirmer;)V

    .line 132
    return-void
.end method

.method public static declared-synchronized setMyUpload(Lcom/tencent/feedback/upload/UploadHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionUpload.setMyUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 184
    sput-object p0, Lcom/tencent/feedback/eup/ExceptionUpload;->a:Lcom/tencent/feedback/upload/UploadHandler;

    invoke-static {p0}, Lcom/tencent/feedback/common/b/b;->a(Lcom/tencent/feedback/upload/UploadHandler;)V

    .line 185
    const-string v0, "ExceptionUpload.setMyUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v1

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized setQueryFinish(Z)V
    .locals 2
    .parameter

    .prologue
    .line 209
    const-class v0, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/feedback/eup/ExceptionUpload;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit v0

    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setStartAfterQuery(Z)V
    .locals 2
    .parameter

    .prologue
    .line 220
    const-class v0, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/feedback/eup/ExceptionUpload;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit v0

    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setYourUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    invoke-static {p0}, Lcom/tencent/feedback/eup/h;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 146
    return-void
.end method


# virtual methods
.method public onInitByQuery()V
    .locals 1

    .prologue
    .line 301
    const-string v0, "ExceptionUpload.onInitByQuery() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setQueryFinish(Z)V

    .line 305
    invoke-static {}, Lcom/tencent/feedback/eup/h;->a()Lcom/tencent/feedback/eup/h;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/feedback/eup/h;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_1
    const-string v0, "ExceptionUpload.onInitByQuery() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onSecurityStrategyChange(Lcom/tencent/feedback/common/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public onUploadStrategyChange(Lcom/tencent/feedback/common/b/f;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    const-string v0, "ExceptionUpload.onUploadStrategyChange() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 276
    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    monitor-enter p1

    .line 282
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/feedback/common/b/f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/feedback/common/b/f;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 283
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-static {}, Lcom/tencent/feedback/eup/h;->a()Lcom/tencent/feedback/eup/h;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1, v0}, Lcom/tencent/feedback/eup/h;->b(Z)V

    .line 289
    const-string v0, "ExceptionUpload.onUploadStrategyChange() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public setIsUseEup(Z)V
    .locals 3
    .parameter

    .prologue
    .line 49
    const-string v0, "ExceptionUpload.setIsUseEup() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lcom/tencent/feedback/common/b/b;->a(Lcom/tencent/feedback/common/b/e;)V

    .line 58
    iget-object v1, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/b;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/b/f;

    move-result-object v1

    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/tencent/feedback/common/b/f;->e(Z)V

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v2, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->e:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;Lcom/tencent/feedback/common/b/f;)V

    .line 66
    const-string v0, "ExceptionUpload.setIsUseEup() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
