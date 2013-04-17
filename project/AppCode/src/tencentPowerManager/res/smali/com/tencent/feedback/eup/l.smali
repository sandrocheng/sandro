.class public final Lcom/tencent/feedback/eup/l;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcommon/RequestPackage;

.field private f:[Ljava/lang/Long;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>()V

    .line 39
    invoke-static {}, Lcom/tencent/feedback/common/d;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/c;->b:I

    iput v0, p0, Lcom/tencent/feedback/eup/l;->a:I

    .line 41
    invoke-static {}, Lcom/tencent/feedback/common/d;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/c;->c:I

    iput v0, p0, Lcom/tencent/feedback/eup/l;->b:I

    .line 42
    iput-object v1, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/eup/l;->d:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;

    .line 45
    iput-object v1, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/feedback/eup/l;->g:I

    .line 50
    iput-object p1, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static a([BLjava/lang/String;)Lexceptionupload/Attachment;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 354
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 369
    :goto_0
    return-object v0

    .line 358
    :cond_1
    :try_start_0
    new-instance v0, Lexceptionupload/Attachment;

    invoke-direct {v0}, Lexceptionupload/Attachment;-><init>()V

    .line 359
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lexceptionupload/Attachment;->a(B)V

    .line 361
    invoke-virtual {v0, p1}, Lexceptionupload/Attachment;->a(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, p0}, Lexceptionupload/Attachment;->a([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 369
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/feedback/common/a/e;Ljava/lang/String;)Lexceptionupload/ExceptionUpload;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 254
    const-string v0, "ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 256
    if-nez p1, :cond_0

    move-object v0, v1

    .line 339
    :goto_0
    return-object v0

    .line 263
    :cond_0
    :try_start_0
    new-instance v2, Lexceptionupload/ExceptionUpload;

    invoke-direct {v2}, Lexceptionupload/ExceptionUpload;-><init>()V

    .line 265
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lexceptionupload/ExceptionUpload;->a(J)V

    .line 267
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexceptionupload/ExceptionUpload;->a(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexceptionupload/ExceptionUpload;->b(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexceptionupload/ExceptionUpload;->d(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->j()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/tencent/feedback/common/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lexceptionupload/ExceptionUpload;->c(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2, v0}, Lexceptionupload/ExceptionUpload;->e(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lexceptionupload/ExceptionUpload;->f(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->n()[B

    move-result-object v0

    const-string v4, "log.txt"

    invoke-static {v0, v4}, Lcom/tencent/feedback/eup/l;->a([BLjava/lang/String;)Lexceptionupload/Attachment;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_1

    .line 284
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {v2, v4}, Lexceptionupload/ExceptionUpload;->a(Ljava/util/ArrayList;)V

    .line 290
    :cond_1
    new-instance v4, Lexceptionupload/RunInfo;

    invoke-direct {v4}, Lexceptionupload/RunInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 291
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 302
    :goto_1
    :try_start_2
    invoke-virtual {v4, v0}, Lexceptionupload/RunInfo;->a(F)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    :try_start_3
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    .line 313
    :goto_2
    :try_start_4
    invoke-virtual {v4, v0}, Lexceptionupload/RunInfo;->b(F)V

    .line 315
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->g()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lexceptionupload/RunInfo;->a(J)V

    .line 317
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->h()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lexceptionupload/RunInfo;->b(J)V

    .line 319
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->i()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lexceptionupload/RunInfo;->c(J)V

    .line 320
    invoke-virtual {v2, v4}, Lexceptionupload/ExceptionUpload;->a(Lexceptionupload/RunInfo;)V

    .line 323
    new-instance v3, Lexceptionupload/MobileDetail;

    invoke-direct {v3}, Lexceptionupload/MobileDetail;-><init>()V

    .line 324
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMEI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lexceptionupload/MobileDetail;->a(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2, v3}, Lexceptionupload/ExceptionUpload;->a(Lexceptionupload/MobileDetail;)V

    .line 328
    new-instance v0, Lexceptionupload/ContactInfo;

    invoke-direct {v0}, Lexceptionupload/ContactInfo;-><init>()V

    .line 329
    invoke-virtual {v0, p2}, Lexceptionupload/ContactInfo;->a(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2, v0}, Lexceptionupload/ExceptionUpload;->a(Lexceptionupload/ContactInfo;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eupdatas:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lexceptionupload/ExceptionUpload;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 333
    const-string v0, "ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    move-object v0, v2

    .line 334
    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    .line 300
    goto/16 :goto_1

    .line 308
    :catch_1
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v3

    .line 311
    goto/16 :goto_2

    .line 336
    :catch_2
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 339
    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lexceptionupload/ExceptionUploadPackage;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 221
    const-string v0, "ExceptionUploadDatas.encode2RequestPackage() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 222
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 246
    :goto_0
    return-object v0

    .line 226
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/e;

    .line 229
    invoke-static {p0, v0, p2}, Lcom/tencent/feedback/eup/l;->a(Landroid/content/Context;Lcom/tencent/feedback/common/a/e;Ljava/lang/String;)Lexceptionupload/ExceptionUpload;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    :catch_0
    move-exception v0

    .line 241
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    const-string v0, "ExceptionUploadDatas.encode2RequestPackage() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 234
    :cond_3
    :try_start_2
    new-instance v0, Lexceptionupload/ExceptionUploadPackage;

    invoke-direct {v0}, Lexceptionupload/ExceptionUploadPackage;-><init>()V

    .line 235
    invoke-virtual {v0, v2}, Lexceptionupload/ExceptionUploadPackage;->a(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    const-string v1, "ExceptionUploadDatas.encode2RequestPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    const-string v1, "ExceptionUploadDatas.encode2RequestPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 189
    const-string v0, "ExceptionUploadDatas.getEupDataBean() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 191
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 215
    :goto_0
    return-object v0

    .line 196
    :cond_1
    :try_start_0
    const-string v0, "desc"

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2}, Lcom/tencent/feedback/common/e;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 198
    if-nez v0, :cond_2

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    const-string v3, "desc"

    const/4 v4, 0x2

    invoke-static {p0, v2, v3, v4}, Lcom/tencent/feedback/common/e;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_3
    const-string v2, "ExceptionUploadDatas.getEupDataBean() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 215
    goto :goto_0
.end method

.method private declared-synchronized a(Lcommon/RequestPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a([Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Lcommon/RequestPackage;
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()[Ljava/lang/Long;
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;
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
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/eup/l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1
    .parameter

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/eup/l;->a:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/tencent/feedback/eup/l;->a:I

    :cond_0
    iput p1, p0, Lcom/tencent/feedback/eup/l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/eup/l;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final done(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 377
    const-string v0, "ExceptionUploadDatas.done() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 378
    if-eqz p1, :cond_2

    .line 380
    invoke-direct {p0}, Lcom/tencent/feedback/eup/l;->c()[Ljava/lang/Long;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    const-string v2, "EUPDAO.deleteEupList() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    if-nez v1, :cond_3

    const-string v0, "deleteEupList() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 385
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

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, v3}, Lcom/tencent/feedback/eup/l;->a(Lcommon/RequestPackage;)V

    .line 387
    invoke-direct {p0, v3}, Lcom/tencent/feedback/eup/l;->a([Ljava/lang/Long;)V

    .line 389
    :cond_2
    const-string v0, "ExceptionUploadDatas.done() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_3
    invoke-static {v1, v0}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    goto :goto_1
.end method

.method public final getUploadDatas(Z)[B
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 100
    const-string v0, "ExceptionUploadDatas.getUploadDatas() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/tencent/feedback/eup/l;->b()Lcommon/RequestPackage;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcommon/RequestPackage;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "should query for upload datas!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/feedback/eup/l;->b:I

    invoke-static {v0, v2}, Lcom/tencent/feedback/eup/l;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_4

    .line 176
    :cond_2
    if-eqz p1, :cond_3

    .line 178
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 181
    :cond_3
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 120
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/feedback/eup/l;->d:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/tencent/feedback/eup/l;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lexceptionupload/ExceptionUploadPackage;

    move-result-object v4

    .line 122
    if-eqz v4, :cond_c

    .line 125
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/Long;

    .line 126
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, v5

    if-ge v2, v0, :cond_5

    .line 127
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/e;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/e;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    .line 126
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 129
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 130
    invoke-virtual {v4}, Lexceptionupload/ExceptionUploadPackage;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 133
    if-nez v0, :cond_7

    .line 134
    if-eqz p1, :cond_6

    .line 178
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 181
    :cond_6
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 136
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/b/b;->b(Landroid/content/Context;)Lcom/tencent/feedback/common/b/a;

    move-result-object v2

    .line 142
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :try_start_3
    invoke-virtual {v2}, Lcom/tencent/feedback/common/b/a;->c()I

    move-result v3

    int-to-byte v3, v3

    .line 145
    invoke-virtual {v2}, Lcom/tencent/feedback/common/b/a;->b()I

    move-result v4

    int-to-byte v4, v4

    .line 146
    invoke-virtual {v2}, Lcom/tencent/feedback/common/b/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 147
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    invoke-static {v0, v3, v4, v6}, Lcom/tencent/feedback/common/f;->a([BIILjava/lang/String;)[B

    move-result-object v0

    .line 150
    if-nez v0, :cond_a

    .line 152
    const-string v0, "encodeDatasByZipAndEncry failed!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 153
    if-eqz p1, :cond_8

    .line 178
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 181
    :cond_8
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 147
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    if-eqz p1, :cond_9

    .line 178
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 181
    :cond_9
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    :goto_2
    move-object v0, v1

    .line 184
    goto/16 :goto_0

    .line 156
    :cond_a
    :try_start_7
    iget v2, p0, Lcom/tencent/feedback/eup/l;->g:I

    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v6

    invoke-static {v2, v6, v0, v3, v4}, Lcom/tencent/feedback/common/f;->a(ILcom/tencent/feedback/common/CommonInfo;[BBB)Lcommon/RequestPackage;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/tencent/feedback/eup/l;->a(Lcommon/RequestPackage;)V

    .line 160
    if-eqz v0, :cond_c

    .line 164
    invoke-direct {p0, v5}, Lcom/tencent/feedback/eup/l;->a([Ljava/lang/Long;)V

    .line 165
    invoke-virtual {v0}, Lcommon/RequestPackage;->toByteArray()[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    .line 176
    if-eqz p1, :cond_b

    .line 178
    const-string v1, "finally call done(true)"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 181
    :cond_b
    const-string v1, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_c
    if-eqz p1, :cond_d

    .line 178
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 181
    :cond_d
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_e

    .line 178
    const-string v1, "finally call done(true)"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 181
    :cond_e
    const-string v1, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0
.end method
