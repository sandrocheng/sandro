.class public final Lcom/keniu/security/f/t;
.super Lcom/keniu/security/f/ae;
.source "UpdateCheck.java"


# static fields
.field private static D:Lcom/keniu/security/f/h;

.field private static E:Lcom/keniu/security/f/h;

.field private static F:Lcom/keniu/security/f/h;

.field private static G:Lcom/keniu/security/f/h;


# instance fields
.field private A:Z

.field private B:Lcom/keniu/security/f/v;

.field private C:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lcom/keniu/security/f/ae;-><init>(I)V

    .line 26
    iput-boolean v0, p0, Lcom/keniu/security/f/t;->A:Z

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/f/t;->C:Z

    .line 23
    iput-boolean p1, p0, Lcom/keniu/security/f/t;->C:Z

    .line 24
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 222
    :try_start_0
    invoke-static {}, Lcom/keniu/security/f/s;->a()Lcom/keniu/security/f/s;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/f/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/keniu/security/f/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    if-eqz p3, :cond_0

    iget v3, p2, Lcom/keniu/security/f/aa;->b:I

    iget-object v4, p2, Lcom/keniu/security/f/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/keniu/security/f/s;->a(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 231
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    new-instance v1, Lcom/keniu/security/f/u;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/f/u;-><init>(Lcom/keniu/security/f/t;Ljava/io/FileOutputStream;)V

    .line 250
    invoke-static {p1, p2, v1}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Lcom/keniu/security/f/af;)I

    move-result v1

    .line 251
    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {p0, v1}, Lcom/keniu/security/f/t;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 254
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    move-object v0, v7

    .line 358
    :cond_1
    :goto_0
    return-object v0

    .line 259
    :cond_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 267
    :cond_3
    iget-boolean v0, p2, Lcom/keniu/security/f/aa;->f:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_f

    .line 273
    :try_start_4
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 275
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_5

    .line 278
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/t;->c(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 279
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v7

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_4

    .line 261
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 357
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/t;->c(I)V

    move-object v0, v7

    .line 358
    goto :goto_0

    .line 282
    :cond_5
    :try_start_7
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 283
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v0

    .line 286
    :try_start_8
    iget-object v2, p2, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 288
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 292
    :goto_2
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 294
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    :cond_6
    :goto_3
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 299
    if-lez v5, :cond_9

    .line 301
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 302
    if-eqz v2, :cond_6

    .line 304
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 333
    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v1, :cond_7

    .line 335
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 337
    :cond_7
    if-eqz v2, :cond_8

    .line 339
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :cond_8
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 314
    :cond_9
    if-eqz v2, :cond_b

    .line 316
    :try_start_a
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 317
    iget-object v3, p2, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 319
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/keniu/security/f/t;->c(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 320
    if-eqz v0, :cond_a

    .line 335
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 337
    :cond_a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v0, v7

    goto/16 :goto_0

    .line 324
    :cond_b
    :try_start_c
    new-instance v2, Lcom/keniu/security/f/h;

    invoke-direct {v2}, Lcom/keniu/security/f/h;-><init>()V

    .line 325
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/f/h;->a([B)Z

    move-result v3

    if-nez v3, :cond_d

    .line 327
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/keniu/security/f/t;->c(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 328
    if-eqz v0, :cond_c

    .line 335
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 337
    :cond_c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v7

    goto/16 :goto_0

    .line 333
    :cond_d
    if-eqz v0, :cond_e

    .line 335
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 337
    :cond_e
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v2

    goto/16 :goto_0

    .line 342
    :cond_f
    new-instance v0, Lcom/keniu/security/f/h;

    invoke-direct {v0}, Lcom/keniu/security/f/h;-><init>()V

    .line 346
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/h;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/t;->c(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-object v0, v7

    .line 349
    goto/16 :goto_0

    .line 333
    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v1, v7

    goto :goto_4

    .line 259
    :catchall_4
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_10
    move-object v2, v7

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 455
    sget-object v0, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    invoke-static {v0, p0}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I

    move-result v0

    .line 458
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lcom/keniu/security/f/h;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    return-object v0
.end method

.method public static c()Lcom/keniu/security/f/h;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/keniu/security/f/t;->E:Lcom/keniu/security/f/h;

    return-object v0
.end method

.method public static d()Lcom/keniu/security/f/h;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    return-object v0
.end method

.method public static e()Lcom/keniu/security/f/h;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/keniu/security/f/t;->G:Lcom/keniu/security/f/h;

    return-object v0
.end method

.method private e(I)V
    .locals 7
    .parameter

    .prologue
    .line 366
    :try_start_0
    new-instance v1, Lcom/keniu/security/f/v;

    invoke-direct {v1}, Lcom/keniu/security/f/v;-><init>()V

    .line 367
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v2

    .line 371
    invoke-static {p1}, Lcom/keniu/security/f/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v2}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v0

    .line 374
    sget-object v3, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    const-string v4, "mosecurity.apk"

    invoke-static {v3, v4, v0}, Lcom/keniu/security/f/t;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    sget-object v3, Lcom/keniu/security/f/t;->E:Lcom/keniu/security/f/h;

    const-string v4, "mosecurity.apk"

    invoke-static {v3, v4, v0}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    sget-object v3, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    const-string v4, "version"

    const-string v5, "mosecurity.apk"

    invoke-virtual {v3, v4, v5}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/keniu/security/f/v;->c:Ljava/lang/String;

    .line 379
    sget-object v3, Lcom/keniu/security/f/t;->E:Lcom/keniu/security/f/h;

    const-string v4, "size"

    invoke-virtual {v3, v0, v4}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/keniu/security/f/v;->b:I

    .line 380
    sget-object v0, Lcom/keniu/security/f/t;->E:Lcom/keniu/security/f/h;

    const-string v3, "global"

    const-string v4, "description"

    invoke-virtual {v0, v3, v4}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/keniu/security/f/v;->d:Ljava/lang/String;

    .line 386
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/f/t;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    invoke-virtual {v2}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-boolean v3, p0, Lcom/keniu/security/f/t;->A:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    const-string v4, "data"

    invoke-static {v3, v4, v0}, Lcom/keniu/security/f/t;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/keniu/security/f/v;->h:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/keniu/security/f/v;->i:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/keniu/security/f/v;->j:Ljava/util/ArrayList;

    .line 395
    sget-object v0, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    const-string v3, "version"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 397
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    invoke-virtual {v2, v0}, Lcom/keniu/security/f/ab;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    invoke-virtual {v2, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    sget-object v5, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    const-string v6, "version"

    invoke-virtual {v5, v6, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-static {v5, v4}, Lcom/keniu/security/f/ag;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 409
    sget-object v4, Lcom/keniu/security/f/t;->G:Lcom/keniu/security/f/h;

    invoke-virtual {v2, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    sget-object v5, Lcom/keniu/security/f/t;->G:Lcom/keniu/security/f/h;

    const-string v6, "size"

    invoke-virtual {v5, v4, v6}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 417
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 422
    iget v5, v1, Lcom/keniu/security/f/v;->e:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/keniu/security/f/v;->e:I

    .line 423
    iget-object v5, v1, Lcom/keniu/security/f/v;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/keniu/security/f/ab;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v5, v1, Lcom/keniu/security/f/v;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, v1, Lcom/keniu/security/f/v;->j:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/t;->c(I)V

    .line 451
    :goto_1
    return-void

    .line 428
    :cond_2
    :try_start_1
    sget-object v0, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    const-string v3, "version"

    const-string v4, "data"

    invoke-virtual {v0, v3, v4}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    iget v3, v1, Lcom/keniu/security/f/v;->e:I

    if-nez v3, :cond_3

    .line 436
    invoke-virtual {v2, v0}, Lcom/keniu/security/f/ab;->g(Ljava/lang/String;)V

    .line 439
    :cond_3
    iput-object v0, v1, Lcom/keniu/security/f/v;->f:Ljava/lang/String;

    .line 440
    sget-object v0, Lcom/keniu/security/f/t;->G:Lcom/keniu/security/f/h;

    const-string v2, "global"

    const-string v3, "description"

    invoke-virtual {v0, v2, v3}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/keniu/security/f/v;->g:Ljava/lang/String;

    .line 444
    :cond_4
    iput p1, v1, Lcom/keniu/security/f/v;->a:I

    .line 445
    iput-object v1, p0, Lcom/keniu/security/f/t;->B:Lcom/keniu/security/f/v;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private m()V
    .locals 11

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/f/t;->B:Lcom/keniu/security/f/v;

    .line 89
    :try_start_0
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    invoke-static {v2, v1}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v7, :cond_1

    move v2, v6

    :goto_0
    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v7}, Lcom/keniu/security/f/t;->e(I)V

    .line 215
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v5

    .line 91
    goto :goto_0

    .line 96
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->b()Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v3, Lcom/keniu/security/f/aa;

    invoke-direct {v3}, Lcom/keniu/security/f/aa;-><init>()V

    .line 100
    iget-boolean v4, p0, Lcom/keniu/security/f/t;->C:Z

    if-eqz v4, :cond_3

    .line 102
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    .line 109
    :goto_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 110
    if-nez v4, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto :goto_1

    .line 106
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 204
    :catch_0
    move-exception v0

    move v0, v5

    .line 206
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/keniu/security/f/t;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-direct {p0, v0}, Lcom/keniu/security/f/t;->e(I)V

    goto :goto_1

    .line 116
    :cond_4
    :try_start_4
    invoke-static {v4, v1}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    .line 119
    if-ne v5, v7, :cond_5

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto :goto_1

    .line 125
    :cond_5
    if-ne v5, v6, :cond_6

    .line 127
    :try_start_5
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->g()V

    .line 131
    :cond_6
    invoke-static {v5}, Lcom/keniu/security/f/t;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 134
    const-string v6, "mosecurity.apk"

    invoke-static {v4, v6, v1}, Lcom/keniu/security/f/t;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 136
    sput-object v4, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    .line 153
    :cond_7
    :goto_3
    invoke-static {v5}, Lcom/keniu/security/f/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 156
    invoke-virtual {v3}, Lcom/keniu/security/f/aa;->a()V

    .line 157
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    .line 159
    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    .line 160
    if-nez v1, :cond_c

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    .line 138
    :cond_8
    :try_start_6
    sget-object v1, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    invoke-virtual {v1, v4}, Lcom/keniu/security/f/h;->a(Lcom/keniu/security/f/h;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 140
    :cond_9
    const-string v1, "info"

    invoke-virtual {v3, v4, v1}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v1

    .line 142
    if-nez v1, :cond_a

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    .line 147
    :cond_a
    :try_start_7
    sput-object v4, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    .line 148
    sput-object v1, Lcom/keniu/security/f/t;->E:Lcom/keniu/security/f/h;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 210
    :catchall_0
    move-exception v0

    move v1, v5

    :goto_4
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v2

    if-nez v2, :cond_b

    .line 212
    invoke-direct {p0, v1}, Lcom/keniu/security/f/t;->e(I)V

    :cond_b
    throw v0

    .line 166
    :cond_c
    :try_start_8
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v4, "version"

    const-string v6, "data_switch"

    invoke-virtual {v1, v4, v6}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    if-eqz v4, :cond_f

    .line 171
    const-string v6, "force"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 173
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keniu/security/f/ab;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keniu/security/f/ab;->h()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x6ddd00

    cmp-long v4, v6, v8

    if-gez v4, :cond_d

    .line 178
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/keniu/security/f/t;->A:Z

    .line 185
    :cond_d
    :goto_5
    const-string v4, "data"

    invoke-static {v1, v4, v0}, Lcom/keniu/security/f/t;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 187
    sput-object v1, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 210
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    .line 182
    :cond_f
    const/4 v4, 0x1

    :try_start_9
    iput-boolean v4, p0, Lcom/keniu/security/f/t;->A:Z

    goto :goto_5

    .line 189
    :cond_10
    sget-object v0, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/h;->a(Lcom/keniu/security/f/h;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 191
    :cond_11
    const-string v0, "info"

    invoke-virtual {v3, v1, v0}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v0

    .line 193
    if-nez v0, :cond_12

    .line 210
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    .line 198
    :cond_12
    :try_start_a
    sput-object v1, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    .line 199
    sput-object v0, Lcom/keniu/security/f/t;->G:Lcom/keniu/security/f/h;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    .line 210
    :catchall_1
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()Lcom/keniu/security/f/v;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/keniu/security/f/t;->B:Lcom/keniu/security/f/v;

    return-object v0
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    invoke-virtual {p0, v5}, Lcom/keniu/security/f/t;->c(I)V

    .line 74
    invoke-virtual {p0, v6}, Lcom/keniu/security/f/t;->d(I)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/f/t;->B:Lcom/keniu/security/f/v;

    :try_start_0
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->m()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    invoke-static {v2, v1}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v7, :cond_1

    move v2, v6

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v7}, Lcom/keniu/security/f/t;->e(I)V

    .line 78
    :cond_0
    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/t;->d(I)V

    .line 79
    return-void

    :cond_1
    move v2, v5

    .line 76
    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/f/aa;

    invoke-direct {v3}, Lcom/keniu/security/f/aa;-><init>()V

    iget-boolean v4, p0, Lcom/keniu/security/f/t;->C:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    :goto_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v5

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/keniu/security/f/t;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/keniu/security/f/t;->e(I)V

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-static {v4, v1}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    if-ne v5, v7, :cond_5

    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto :goto_1

    :cond_5
    if-ne v5, v6, :cond_6

    :try_start_5
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->g()V

    :cond_6
    invoke-static {v5}, Lcom/keniu/security/f/t;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "mosecurity.apk"

    invoke-static {v4, v6, v1}, Lcom/keniu/security/f/t;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sput-object v4, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    :cond_7
    :goto_3
    invoke-static {v5}, Lcom/keniu/security/f/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v3}, Lcom/keniu/security/f/aa;->a()V

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    :cond_8
    :try_start_6
    sget-object v1, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    invoke-virtual {v1, v4}, Lcom/keniu/security/f/h;->a(Lcom/keniu/security/f/h;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_9
    const-string v1, "info"

    invoke-virtual {v3, v4, v1}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    :cond_a
    :try_start_7
    sput-object v4, Lcom/keniu/security/f/t;->D:Lcom/keniu/security/f/h;

    sput-object v1, Lcom/keniu/security/f/t;->E:Lcom/keniu/security/f/h;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move v1, v5

    :goto_4
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v2

    if-nez v2, :cond_b

    invoke-direct {p0, v1}, Lcom/keniu/security/f/t;->e(I)V

    :cond_b
    throw v0

    :cond_c
    :try_start_8
    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    const-string v4, "version"

    const-string v6, "data_switch"

    invoke-virtual {v1, v4, v6}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v6, "force"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keniu/security/f/ab;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keniu/security/f/ab;->h()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x6ddd00

    cmp-long v4, v6, v8

    if-gez v4, :cond_d

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/keniu/security/f/t;->A:Z

    :cond_d
    :goto_5
    const-string v4, "data"

    invoke-static {v1, v4, v0}, Lcom/keniu/security/f/t;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sput-object v1, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    :cond_f
    const/4 v4, 0x1

    :try_start_9
    iput-boolean v4, p0, Lcom/keniu/security/f/t;->A:Z

    goto :goto_5

    :cond_10
    sget-object v0, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/h;->a(Lcom/keniu/security/f/h;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_11
    const-string v0, "info"

    invoke-virtual {v3, v1, v0}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/keniu/security/f/t;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/keniu/security/f/t;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/keniu/security/f/t;->e(I)V

    goto/16 :goto_1

    :cond_12
    :try_start_a
    sput-object v1, Lcom/keniu/security/f/t;->F:Lcom/keniu/security/f/h;

    sput-object v0, Lcom/keniu/security/f/t;->G:Lcom/keniu/security/f/h;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_4
.end method
