.class public final Lcom/tencent/feedback/eup/l;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "ExceptionUploadDatas.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcommon/RequestPackage;

.field private f:[Ljava/lang/Long;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_EUPData:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;)V

    .line 39
    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/f$a;->b:I

    iput v0, p0, Lcom/tencent/feedback/eup/l;->a:I

    .line 41
    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/f$a;->c:I

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

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/feedback/eup/l;->h:Z

    .line 52
    iput-object p1, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static a([BLjava/lang/String;)Lexceptionupload/Attachment;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 415
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

    .line 430
    :goto_0
    return-object v0

    .line 419
    :cond_1
    :try_start_0
    new-instance v0, Lexceptionupload/Attachment;

    invoke-direct {v0}, Lexceptionupload/Attachment;-><init>()V

    .line 420
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lexceptionupload/Attachment;->a(B)V

    .line 422
    invoke-virtual {v0, p1}, Lexceptionupload/Attachment;->a(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p0}, Lexceptionupload/Attachment;->a([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 430
    goto :goto_0
.end method

.method private static a(Lcom/tencent/feedback/eup/k;Ljava/lang/String;)Lexceptionupload/ExceptionUpload;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 298
    const-string v1, "ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 300
    if-nez p0, :cond_0

    .line 400
    :goto_0
    return-object v0

    .line 307
    :cond_0
    :try_start_0
    new-instance v1, Lexceptionupload/ExceptionUpload;

    invoke-direct {v1}, Lexceptionupload/ExceptionUpload;-><init>()V

    .line 309
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->d()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lexceptionupload/ExceptionUpload;->a(J)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->a(Ljava/lang/String;)V

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->b(Ljava/lang/String;)V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->d(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->j()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lexceptionupload/ExceptionUpload;->c(Ljava/lang/String;)V

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->e(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->f(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->n()[B

    move-result-object v4

    const-string v5, "log.txt"

    invoke-static {v4, v5}, Lcom/tencent/feedback/eup/l;->a([BLjava/lang/String;)Lexceptionupload/Attachment;

    move-result-object v4

    .line 327
    if-eqz v4, :cond_1

    .line 329
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->r()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "alltimes.txt"

    invoke-static {v4, v5}, Lcom/tencent/feedback/eup/l;->a([BLjava/lang/String;)Lexceptionupload/Attachment;

    move-result-object v4

    .line 333
    if-eqz v4, :cond_2

    .line 335
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_2
    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->a(Ljava/util/ArrayList;)V

    .line 340
    new-instance v4, Lexceptionupload/RunInfo;

    invoke-direct {v4}, Lexceptionupload/RunInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 341
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 352
    :goto_1
    :try_start_2
    invoke-virtual {v4, v2}, Lexceptionupload/RunInfo;->a(F)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 356
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    .line 363
    :goto_2
    :try_start_4
    invoke-virtual {v4, v2}, Lexceptionupload/RunInfo;->b(F)V

    .line 365
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->g()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lexceptionupload/RunInfo;->a(J)V

    .line 367
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->h()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lexceptionupload/RunInfo;->b(J)V

    .line 369
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->i()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lexceptionupload/RunInfo;->c(J)V

    .line 370
    invoke-virtual {v1, v4}, Lexceptionupload/ExceptionUpload;->a(Lexceptionupload/RunInfo;)V

    .line 373
    new-instance v2, Lexceptionupload/MobileDetail;

    invoke-direct {v2}, Lexceptionupload/MobileDetail;-><init>()V

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/feedback/common/CommonInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lexceptionupload/MobileDetail;->a(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->a(Lexceptionupload/MobileDetail;)V

    .line 379
    new-instance v2, Lexceptionupload/ContactInfo;

    invoke-direct {v2}, Lexceptionupload/ContactInfo;-><init>()V

    .line 380
    if-eqz p1, :cond_3

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lexceptionupload/ContactInfo;->a(Ljava/lang/String;)V

    .line 390
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/feedback/eup/k;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lexceptionupload/ContactInfo;->b(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, v2}, Lexceptionupload/ExceptionUpload;->a(Lexceptionupload/ContactInfo;)V

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eupdatas:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lexceptionupload/ExceptionUpload;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 394
    const-string v2, "ExceptionUploadDatas.parseEupDataBean2ExceptionUpload() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    .line 395
    goto/16 :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 349
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 350
    goto/16 :goto_1

    .line 358
    :catch_1
    move-exception v2

    .line 360
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 361
    goto/16 :goto_2

    .line 388
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lexceptionupload/ContactInfo;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 397
    :catch_2
    move-exception v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lexceptionupload/ExceptionUploadPackage;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 265
    const-string v0, "ExceptionUploadDatas.encode2RequestPackage() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 266
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 290
    :goto_0
    return-object v0

    .line 270
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    .line 273
    invoke-static {v0, p2}, Lcom/tencent/feedback/eup/l;->a(Lcom/tencent/feedback/eup/k;Ljava/lang/String;)Lexceptionupload/ExceptionUpload;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    .line 285
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    const-string v0, "ExceptionUploadDatas.encode2RequestPackage() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 278
    :cond_3
    :try_start_2
    new-instance v0, Lexceptionupload/ExceptionUploadPackage;

    invoke-direct {v0}, Lexceptionupload/ExceptionUploadPackage;-><init>()V

    .line 279
    invoke-virtual {v0, v2}, Lexceptionupload/ExceptionUploadPackage;->a(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    const-string v1, "ExceptionUploadDatas.encode2RequestPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    const-string v1, "ExceptionUploadDatas.encode2RequestPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 230
    const-string v0, "ExceptionUploadDatas.getEupDataBean() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 232
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 234
    :cond_0
    const-string v0, "context == null || maxNum <= 0!pls check"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v12

    .line 259
    :goto_0
    return-object v0

    .line 240
    :cond_1
    :try_start_0
    const-string v2, "desc"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v10}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v11

    .line 242
    if-nez v11, :cond_2

    .line 243
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 245
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 247
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, p1, v0

    const-string v2, "desc"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 250
    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    :cond_3
    const-string v0, "ExceptionUploadDatas.getEupDataBean() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v11

    .line 254
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v12

    .line 259
    goto :goto_0
.end method

.method private static b(Landroid/content/Context;I)Ljava/util/List;
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 467
    const-string v1, "ExceptionUploadDatas.getEupDataBeansInMerge() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 469
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 471
    :cond_0
    const-string v1, "context == null || maxNum <= 0!pls check"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x0

    .line 515
    :goto_0
    return-object v1

    .line 478
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/feedback/common/g;->b()J

    move-result-wide v8

    .line 479
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gez v1, :cond_2

    .line 481
    const-string v1, "get today times fail!pls check!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 482
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x2932e00

    sub-long v8, v1, v3

    .line 485
    :cond_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 488
    const-string v3, "desc"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "today catch 1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 493
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 497
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p1

    if-ge v1, v0, :cond_4

    .line 499
    const-string v12, "desc"

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, -0x1

    const-wide/16 v17, -0x1

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-wide/from16 v19, v8

    invoke-static/range {v10 .. v20}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yestoday catch 2 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 504
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 508
    :cond_4
    const-string v1, "ExceptionUploadDatas.getEupDataBeansInMerge() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, v21

    .line 509
    goto/16 :goto_0

    .line 511
    :catch_0
    move-exception v1

    .line 513
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 515
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/eup/l;->h:Z
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
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 57
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
    .line 62
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/feedback/eup/l;->a:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/tencent/feedback/eup/l;->a:I

    :cond_0
    iput p1, p0, Lcom/tencent/feedback/eup/l;->b:I
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

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/eup/l;->d:Ljava/lang/String;
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

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/eup/l;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized done(Z)V
    .locals 5
    .parameter

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    const-string v0, "ExceptionUploadDatas.done() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 439
    if-eqz p1, :cond_2

    .line 441
    invoke-direct {p0}, Lcom/tencent/feedback/eup/l;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;

    const-string v2, "EUPDAO.deleteEupList() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "deleteEupList() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 446
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

    .line 457
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;

    .line 460
    :cond_2
    const-string v0, "ExceptionUploadDatas.done() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :cond_3
    :try_start_2
    invoke-static {v0, v1}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    goto :goto_1

    .line 450
    :cond_4
    const-string v0, "in merge"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/tencent/feedback/common/g;->b()J

    move-result-wide v0

    .line 453
    iget-object v2, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;JJ)I

    move-result v0

    .line 454
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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized getUploadRequestPackage(Z)Lcommon/RequestPackage;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    :try_start_0
    const-string v0, "ExceptionUploadDatas.getUploadDatas() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "mContext == null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v1

    .line 225
    :goto_0
    monitor-exit p0

    return-object v0

    .line 106
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "should query for upload datas!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/feedback/eup/l;->b()Z

    move-result v2

    .line 115
    if-nez v2, :cond_4

    .line 118
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/feedback/eup/l;->b:I

    invoke-static {v0, v3}, Lcom/tencent/feedback/eup/l;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    .line 126
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 128
    :cond_2
    const-string v0, "list == null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    if-eqz p1, :cond_3

    .line 219
    :try_start_3
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 222
    :cond_3
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    goto :goto_0

    .line 123
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/feedback/eup/l;->b:I

    invoke-static {v0, v3}, Lcom/tencent/feedback/eup/l;->b(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 132
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/feedback/eup/l;->d:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/tencent/feedback/eup/l;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lexceptionupload/ExceptionUploadPackage;

    move-result-object v5

    .line 135
    if-eqz v5, :cond_10

    .line 139
    if-eqz v2, :cond_b

    .line 143
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    .line 148
    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->s()I

    move-result v3

    if-nez v3, :cond_7

    .line 150
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/eup/k;->b(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 213
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    if-eqz p1, :cond_6

    .line 219
    :try_start_6
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 222
    :cond_6
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    move-object v0, v1

    .line 225
    goto/16 :goto_0

    .line 154
    :cond_7
    :try_start_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 217
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_8

    .line 219
    :try_start_8
    const-string v1, "finally call done(true)"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 222
    :cond_8
    const-string v1, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update today exception count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    .line 168
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 173
    invoke-virtual {v5}, Lexceptionupload/ExceptionUploadPackage;->toByteArray()[B

    move-result-object v2

    .line 174
    if-nez v2, :cond_c

    .line 176
    const-string v0, "datas == null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 177
    if-eqz p1, :cond_a

    .line 219
    :try_start_a
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 222
    :cond_a
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v1

    goto/16 :goto_0

    .line 165
    :cond_b
    :try_start_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Long;

    .line 166
    const/4 v0, 0x0

    move v3, v0

    :goto_5
    array-length v0, v2

    if-ge v3, v0, :cond_12

    .line 167
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    .line 166
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 180
    :cond_c
    iget-object v3, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/feedback/eup/l;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/feedback/common/strategy/a;->b(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    move-result-object v3

    .line 186
    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 188
    :try_start_c
    invoke-virtual {v3}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getZipAlgorithm()I

    move-result v4

    int-to-byte v4, v4

    .line 189
    invoke-virtual {v3}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryAlgorithm()I

    move-result v5

    int-to-byte v5, v5

    .line 190
    invoke-virtual {v3}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryKey()Ljava/lang/String;

    move-result-object v6

    .line 191
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 192
    :try_start_d
    invoke-static {v2, v4, v5, v6}, Lcom/tencent/feedback/common/g;->a([BIILjava/lang/String;)[B

    move-result-object v2

    .line 194
    if-nez v2, :cond_e

    .line 196
    const-string v0, "encodeDatasByZipAndEncry failed!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 197
    if-eqz p1, :cond_d

    .line 219
    :try_start_e
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 222
    :cond_d
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v0, v1

    goto/16 :goto_0

    .line 191
    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v3

    throw v0

    .line 200
    :cond_e
    iget v3, p0, Lcom/tencent/feedback/eup/l;->g:I

    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v6

    invoke-static {v3, v6, v2, v4, v5}, Lcom/tencent/feedback/common/g;->a(ILcom/tencent/feedback/common/CommonInfo;[BII)Lcommon/RequestPackage;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;

    .line 201
    iget-object v2, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;

    if-eqz v2, :cond_10

    .line 205
    iput-object v0, p0, Lcom/tencent/feedback/eup/l;->f:[Ljava/lang/Long;

    .line 206
    iget-object v0, p0, Lcom/tencent/feedback/eup/l;->e:Lcommon/RequestPackage;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    .line 217
    if-eqz p1, :cond_f

    .line 219
    :try_start_10
    const-string v1, "finally call done(true)"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 222
    :cond_f
    const-string v1, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_10
    if-eqz p1, :cond_11

    .line 219
    const-string v0, "finally call done(true)"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/l;->done(Z)V

    .line 222
    :cond_11
    const-string v0, "ExceptionUploadDatas.getUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_3

    :cond_12
    move-object v0, v2

    goto/16 :goto_4
.end method
