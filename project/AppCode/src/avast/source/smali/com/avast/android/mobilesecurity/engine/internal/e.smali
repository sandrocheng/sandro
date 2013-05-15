.class public Lcom/avast/android/mobilesecurity/engine/internal/e;
.super Ljava/lang/Object;
.source "FalsePositiveManager.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/io/File;Landroid/content/pm/PackageInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/ac;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v2

    .line 228
    const-string v1, ""

    .line 229
    if-eqz v2, :cond_1e

    .line 230
    iget-object v1, v2, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 234
    :goto_0
    const/4 v4, 0x0

    .line 235
    if-eqz p3, :cond_0

    .line 236
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 251
    :cond_0
    :try_start_0
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/g;->b:Lcom/avast/android/mobilesecurity/engine/internal/g;

    const/16 v2, 0x40

    invoke-static {v1, p2, v2}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/File;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 261
    :goto_1
    if-nez v2, :cond_2

    .line 262
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->e:Lcom/avast/android/mobilesecurity/engine/ac;

    .line 378
    :cond_1
    :goto_2
    return-object v1

    .line 253
    :catch_0
    move-exception v1

    .line 254
    const/4 v2, 0x0

    .line 257
    goto :goto_1

    .line 255
    :catch_1
    move-exception v1

    .line 256
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object v1, p2

    move-object v3, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 264
    invoke-static/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/engine/internal/e;->a(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;)Ljava/io/File;

    move-result-object v10

    .line 266
    if-nez v10, :cond_3

    .line 267
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->b:Lcom/avast/android/mobilesecurity/engine/ac;

    goto :goto_2

    .line 288
    :cond_3
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->b(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v4

    .line 295
    if-nez v4, :cond_4

    .line 296
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;

    goto :goto_2

    .line 299
    :cond_4
    const/4 v1, 0x0

    .line 300
    const/4 v7, 0x0

    .line 303
    :try_start_1
    const-string v3, "avdroid"

    invoke-static {v3}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 304
    :try_start_2
    invoke-virtual {v8}, Landroid/b/a/a;->b()V

    .line 305
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 306
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "len"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    const-string v3, "fp"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "vps"

    invoke-direct {v1, v2, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "virus"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, v4, Lcom/avast/android/mobilesecurity/engine/y;->b:Ljava/lang/String;

    iget-object v2, v4, Lcom/avast/android/mobilesecurity/engine/y;->a:Ljava/lang/String;

    iget-object v3, v4, Lcom/avast/android/mobilesecurity/engine/y;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/engine/y;->d:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 317
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "&"

    const-string v6, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v3, "Content-type"

    const-string v4, "iavs4/upload"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v8, v2}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    move-result-object v2

    .line 328
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 349
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 350
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->c:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    .line 380
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 382
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 386
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_6
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 331
    :sswitch_0
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 332
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 334
    :cond_7
    move-object/from16 v0, p6

    invoke-static {v8, v1, v10, v0}, Lcom/avast/android/mobilesecurity/engine/internal/e;->a(Lorg/apache/http/client/HttpClient;Ljava/net/URI;Ljava/io/File;Lcom/avast/android/mobilesecurity/engine/r;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 335
    if-nez v2, :cond_e

    .line 336
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->c:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10

    .line 380
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 382
    :try_start_6
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 386
    :cond_8
    :goto_5
    if-eqz v8, :cond_9

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_9
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_6
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 341
    :sswitch_1
    :try_start_7
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 342
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10

    .line 380
    if-eqz v2, :cond_a

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 382
    :try_start_8
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 386
    :cond_a
    :goto_7
    if-eqz v8, :cond_b

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_b
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_8
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 346
    :sswitch_2
    :try_start_9
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 347
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    .line 380
    if-eqz v2, :cond_c

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 382
    :try_start_a
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 386
    :cond_c
    :goto_9
    if-eqz v8, :cond_d

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_d
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_a
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 356
    :cond_e
    :try_start_b
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 370
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 371
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->c:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    .line 380
    if-eqz v2, :cond_f

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 382
    :try_start_c
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 386
    :cond_f
    :goto_b
    if-eqz v8, :cond_10

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_10
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_c
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 358
    :sswitch_3
    :try_start_d
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 359
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->c:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    .line 380
    if-eqz v2, :cond_11

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 382
    :try_start_e
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 386
    :cond_11
    :goto_d
    if-eqz v8, :cond_12

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_12
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_e
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 362
    :sswitch_4
    :try_start_f
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 363
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    .line 380
    if-eqz v2, :cond_13

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 382
    :try_start_10
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 386
    :cond_13
    :goto_f
    if-eqz v8, :cond_14

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_14
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_10
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 367
    :sswitch_5
    :try_start_11
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 368
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 380
    if-eqz v2, :cond_15

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 382
    :try_start_12
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 386
    :cond_15
    :goto_11
    if-eqz v8, :cond_16

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_16
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_12
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 373
    :catch_2
    move-exception v2

    move-object v2, v7

    move-object v3, v1

    .line 375
    :goto_13
    :try_start_13
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->c:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 380
    if-eqz v2, :cond_17

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 382
    :try_start_14
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 386
    :cond_17
    :goto_14
    if-eqz v3, :cond_18

    .line 387
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    .line 389
    :cond_18
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_15
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 376
    :catch_3
    move-exception v2

    move-object v8, v1

    .line 378
    :goto_16
    :try_start_15
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->c:Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 380
    if-eqz v7, :cond_19

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 382
    :try_start_16
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    .line 386
    :cond_19
    :goto_17
    if-eqz v8, :cond_1a

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_1a
    if-eqz v10, :cond_1

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1

    .line 395
    const/4 v2, 0x0

    :goto_18
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 380
    :cond_1b
    throw v1

    :catchall_0
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    :goto_19
    if-eqz v7, :cond_1c

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 382
    :try_start_17
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 386
    :cond_1c
    :goto_1a
    if-eqz v8, :cond_1d

    .line 387
    invoke-virtual {v8}, Landroid/b/a/a;->a()V

    .line 389
    :cond_1d
    if-eqz v10, :cond_1b

    .line 390
    const-string v2, "submit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1b

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_1b

    .line 395
    const/4 v2, 0x0

    :goto_1b
    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 396
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 383
    :catch_4
    move-exception v2

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto/16 :goto_9

    :catch_6
    move-exception v2

    goto/16 :goto_7

    :catch_7
    move-exception v2

    goto/16 :goto_b

    :catch_8
    move-exception v2

    goto/16 :goto_11

    :catch_9
    move-exception v2

    goto/16 :goto_f

    :catch_a
    move-exception v2

    goto/16 :goto_d

    :catch_b
    move-exception v2

    goto/16 :goto_5

    :catch_c
    move-exception v2

    goto :goto_17

    :catch_d
    move-exception v2

    goto/16 :goto_14

    :catch_e
    move-exception v2

    goto :goto_1a

    .line 380
    :catchall_1
    move-exception v1

    goto :goto_19

    :catchall_2
    move-exception v1

    move-object v7, v2

    goto :goto_19

    :catchall_3
    move-exception v1

    move-object v7, v2

    move-object v8, v3

    goto :goto_19

    .line 376
    :catch_f
    move-exception v1

    goto/16 :goto_16

    :catch_10
    move-exception v1

    move-object v7, v2

    goto/16 :goto_16

    .line 373
    :catch_11
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    goto/16 :goto_13

    :catch_12
    move-exception v1

    move-object v3, v8

    goto/16 :goto_13

    :cond_1e
    move-object v9, v1

    goto/16 :goto_0

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xce -> :sswitch_1
        0x194 -> :sswitch_1
        0x196 -> :sswitch_2
    .end sparse-switch

    .line 356
    :sswitch_data_1
    .sparse-switch
        0xcc -> :sswitch_3
        0xce -> :sswitch_4
        0x194 -> :sswitch_4
        0x196 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/engine/ab;)Lcom/avast/android/mobilesecurity/engine/ac;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 423
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;)Ljava/io/File;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 480
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submit"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 486
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 487
    const/4 v1, 0x0

    .line 659
    :cond_1
    :goto_0
    return-object v1

    .line 489
    :catch_0
    move-exception v1

    .line 491
    :cond_2
    const/4 v4, 0x0

    .line 492
    const/4 v1, 0x0

    .line 493
    const/4 v3, 0x0

    .line 495
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_17

    .line 496
    :try_start_2
    new-instance v4, Lcom/avast/android/mobilesecurity/engine/internal/b;

    invoke-direct {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_18

    .line 497
    :try_start_3
    const-string v1, "A1A57000"

    invoke-virtual {v4, v1}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;)V

    .line 498
    const-string v1, "NAME"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v1, "SIZE"

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4, v1, v8, v9}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;J)V

    .line 501
    const-string v1, "HTYP"

    const-string v6, "SHA256"

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v1, "HASH"

    invoke-virtual {v4, v1, p1}, Lcom/avast/android/mobilesecurity/engine/internal/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "TYPE"

    const-string v6, "Submit [FP]"

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v1, "STYP"

    const-wide/16 v8, 0x2

    invoke-virtual {v4, v1, v8, v9}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;J)V

    .line 509
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_4

    .line 513
    const-string v6, ""

    .line 514
    iget-object v8, v1, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    const-string v9, "-"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 515
    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    const-string v8, "-"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 516
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    const/4 v9, -0x1

    if-le v1, v9, :cond_3

    .line 517
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 516
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 520
    :cond_3
    const-string v1, "VPS "

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_19

    .line 524
    :cond_4
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 526
    const-string v6, "\\."

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 527
    const-string v6, "PROG"

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    const/4 v10, 0x2

    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    rem-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-virtual {v4, v6, v8, v9}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_19

    .line 534
    :goto_2
    :try_start_5
    const-string v1, "VIRU"

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v1, "FLAG"

    const-string v6, "40800000"

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "DATE"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v4, v1, v8, v9}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;J)V

    .line 545
    const-string v1, "O/SA"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v1, "DEVI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p3, :cond_5

    .line 550
    const-string v1, "PRNA"

    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_5
    if-eqz p5, :cond_7

    .line 555
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/engine/ab;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 556
    const-string v1, "DESC"

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/avast/android/mobilesecurity/engine/ab;->a:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_6
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/engine/ab;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 560
    const-string v1, "EMAI"

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/avast/android/mobilesecurity/engine/ab;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_7
    const-string v1, "UNID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v6, "GUID"

    const-class v1, Lcom/avast/android/generic/ae;

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 573
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 575
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_19

    .line 576
    :try_start_6
    const-string v3, "DATA"

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/avast/android/mobilesecurity/engine/internal/b;->c(Ljava/lang/String;J)V

    .line 579
    const/high16 v3, 0x1

    new-array v3, v3, [B

    .line 580
    const/high16 v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 582
    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_10

    .line 583
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 584
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 585
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/high16 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a([BII)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a([B)V

    .line 589
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 590
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 592
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 627
    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    .line 628
    :goto_4
    const/4 v1, 0x0

    .line 634
    if-eqz v4, :cond_8

    .line 636
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 637
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16

    .line 642
    :cond_8
    if-eqz v3, :cond_9

    .line 644
    :try_start_8
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 649
    :cond_9
    if-eqz v2, :cond_1

    .line 651
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 652
    :catch_2
    move-exception v1

    .line 653
    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 595
    :cond_a
    :try_start_a
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    const/high16 v9, 0x1

    if-ge v8, v9, :cond_d

    .line 596
    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_3

    .line 629
    :catch_3
    move-exception v2

    move-object v3, v1

    .line 630
    :goto_6
    const/4 v1, 0x0

    .line 634
    if-eqz v5, :cond_b

    .line 636
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_14

    .line 637
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15

    .line 642
    :cond_b
    if-eqz v4, :cond_c

    .line 644
    :try_start_d
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 649
    :cond_c
    if-eqz v3, :cond_1

    .line 651
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 652
    :catch_4
    move-exception v1

    goto :goto_5

    .line 599
    :cond_d
    const/4 v8, 0x0

    const/high16 v9, 0x1

    :try_start_f
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v3, v8, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 601
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/high16 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a([BII)[B

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a([B)V

    .line 604
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 605
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 608
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 609
    const/high16 v8, 0x1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    sub-int/2addr v8, v9

    const/high16 v9, 0x1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v7, v9

    invoke-virtual {v6, v3, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_3

    .line 631
    :catch_5
    move-exception v2

    move-object v3, v1

    .line 632
    :goto_7
    const/4 v1, 0x0

    .line 634
    if-eqz v5, :cond_e

    .line 636
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    .line 637
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13

    .line 642
    :cond_e
    if-eqz v4, :cond_f

    .line 644
    :try_start_12
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 649
    :cond_f
    if-eqz v3, :cond_1

    .line 651
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_0

    .line 652
    :catch_6
    move-exception v1

    goto :goto_5

    .line 616
    :cond_10
    :try_start_14
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v6, v7}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a([BII)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a([B)V

    .line 625
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->a()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 626
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_5

    .line 634
    if-eqz v5, :cond_11

    .line 636
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    .line 637
    :try_start_16
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 642
    :cond_11
    if-eqz v4, :cond_12

    .line 644
    :try_start_17
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    .line 649
    :cond_12
    if-eqz v1, :cond_13

    .line 651
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    :cond_13
    move-object v1, v2

    .line 659
    goto/16 :goto_0

    .line 634
    :catchall_0
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    move-object v1, v2

    :goto_8
    if-eqz v5, :cond_14

    .line 636
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    .line 637
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 642
    :cond_14
    if-eqz v4, :cond_15

    .line 644
    :try_start_1b
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/b;->b()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    .line 649
    :cond_15
    if-eqz v3, :cond_16

    .line 651
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c

    .line 634
    :cond_16
    throw v1

    .line 645
    :catch_7
    move-exception v1

    .line 646
    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 638
    :catch_8
    move-exception v1

    .line 639
    :goto_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 645
    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto :goto_9

    .line 652
    :catch_c
    move-exception v1

    goto/16 :goto_5

    .line 645
    :catch_d
    move-exception v1

    goto :goto_9

    .line 652
    :catch_e
    move-exception v1

    goto/16 :goto_5

    .line 638
    :catch_f
    move-exception v1

    goto :goto_a

    :catch_10
    move-exception v1

    goto :goto_a

    :catch_11
    move-exception v1

    goto :goto_a

    :catch_12
    move-exception v1

    goto :goto_a

    :catch_13
    move-exception v1

    goto :goto_a

    :catch_14
    move-exception v1

    goto :goto_a

    :catch_15
    move-exception v1

    goto :goto_a

    :catch_16
    move-exception v1

    goto :goto_a

    .line 634
    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_8

    :catchall_2
    move-exception v1

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_8

    .line 631
    :catch_17
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    goto/16 :goto_7

    :catch_18
    move-exception v2

    move-object v4, v1

    goto/16 :goto_7

    :catch_19
    move-exception v1

    goto/16 :goto_7

    .line 629
    :catch_1a
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    goto/16 :goto_6

    :catch_1b
    move-exception v2

    move-object v4, v1

    goto/16 :goto_6

    :catch_1c
    move-exception v1

    goto/16 :goto_6

    .line 627
    :catch_1d
    move-exception v2

    move-object v2, v3

    move-object v3, v1

    goto/16 :goto_4

    :catch_1e
    move-exception v2

    move-object v2, v3

    move-object v4, v5

    move-object v3, v1

    goto/16 :goto_4

    :catch_1f
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_4

    .line 532
    :catch_20
    move-exception v1

    goto/16 :goto_2
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Ljava/net/URI;Ljava/io/File;Lcom/avast/android/mobilesecurity/engine/r;)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 441
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    const-string v5, ";"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";full;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 443
    const-string v2, "Content-type"

    const-string v3, "iavs4/upload"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/j;

    const-string v3, "binary/octet-stream"

    invoke-direct {v2, p2, v3, p3}, Lcom/avast/android/mobilesecurity/engine/internal/j;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/r;)V

    .line 447
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 449
    :try_start_0
    invoke-interface {p0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 453
    :goto_0
    return-object v0

    .line 450
    :catch_0
    move-exception v1

    goto :goto_0

    .line 452
    :catch_1
    move-exception v1

    goto :goto_0
.end method
