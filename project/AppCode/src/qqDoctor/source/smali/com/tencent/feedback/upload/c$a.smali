.class public final Lcom/tencent/feedback/upload/c$a;
.super Lcom/tencent/feedback/upload/c;
.source "RequestHandlerAbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/upload/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/tencent/feedback/upload/c;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 74
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLjava/lang/String;Lcom/tencent/feedback/upload/c$b;)[B
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do request start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 134
    if-nez p2, :cond_3

    const-wide/16 v3, 0x0

    move-wide v4, v3

    .line 136
    :goto_0
    const/4 v8, 0x0

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v6, 0x0

    .line 141
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send bytes[] length:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 142
    if-eqz p2, :cond_4

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object v14, v3

    .line 145
    :goto_1
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 146
    const/16 v9, 0x7530

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 148
    const/16 v9, 0x2710

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 149
    const/16 v9, 0x7d0

    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 153
    const-string v9, "http.protocol.handle-redirects"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lorg/apache/http/params/BasicHttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 155
    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v15, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 158
    new-instance v3, Lcom/tencent/feedback/upload/d;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/tencent/feedback/upload/d;-><init>(Lcom/tencent/feedback/upload/c$a;)V

    invoke-virtual {v15, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 168
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v9, "wap"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "use proxy "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v9

    .line 172
    new-instance v10, Lorg/apache/http/HttpHost;

    invoke-direct {v10, v3, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 173
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v9, "http.route.default-proxy"

    invoke-interface {v3, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 177
    :cond_0
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b

    .line 178
    :try_start_1
    invoke-virtual {v9, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c

    .line 180
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 181
    const/4 v11, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    const/4 v3, 0x0

    move-object/from16 v20, v10

    move v10, v11

    move v11, v12

    move v12, v8

    move-object v8, v9

    move-object/from16 v9, v20

    .line 186
    :goto_2
    const/4 v13, 0x2

    if-ge v11, v13, :cond_14

    const/4 v13, 0x2

    if-ge v12, v13, :cond_14

    .line 188
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "try time "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v13, v11, 0x1

    .line 190
    if-eqz p4, :cond_1

    .line 191
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v4, v5, v1}, Lcom/tencent/feedback/upload/c$b;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 194
    :cond_1
    new-instance v11, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v11}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :try_start_3
    invoke-virtual {v15, v8, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    .line 208
    :try_start_4
    const-string v3, "http.request"

    invoke-interface {v11, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpRequest;

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "execute request:\n "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 213
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 214
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v9, v16, v18

    if-lez v9, :cond_6

    .line 216
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/tencent/feedback/upload/c$b;->a(J)V

    .line 222
    :goto_3
    const/16 v9, 0x12d

    if-eq v11, v9, :cond_2

    const/16 v9, 0x12e

    if-eq v11, v9, :cond_2

    const/16 v9, 0x12f

    if-eq v11, v9, :cond_2

    const/16 v9, 0x133

    if-ne v11, v9, :cond_9

    :cond_2
    const/4 v9, 0x1

    :goto_4
    if-eqz v9, :cond_b

    .line 223
    add-int/lit8 v12, v12, 0x1

    .line 224
    const-string v9, "Location"

    invoke-interface {v10, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 225
    if-nez v9, :cond_a

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirect code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Location is null! return"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v4, v10

    move v5, v11

    .line 254
    :goto_5
    const/16 v9, 0xc8

    if-eq v5, v9, :cond_e

    .line 255
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request failure!"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 284
    :try_start_5
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 297
    :goto_7
    const/4 v3, 0x0

    .line 304
    :goto_8
    return-object v3

    .line 134
    :cond_3
    move-object/from16 v0, p2

    array-length v3, v0

    int-to-long v3, v3

    move-wide v4, v3

    goto/16 :goto_0

    .line 142
    :cond_4
    :try_start_6
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    move-object v14, v3

    goto/16 :goto_1

    .line 200
    :catch_0
    move-exception v11

    .line 201
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    if-eqz p4, :cond_5

    .line 203
    const-wide/16 v16, 0x0

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/tencent/feedback/upload/c$b;->a(J)V

    :cond_5
    move v11, v13

    .line 204
    goto/16 :goto_2

    .line 218
    :cond_6
    const-wide/16 v16, -0x1

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/tencent/feedback/upload/c$b;->a(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 276
    :catch_1
    move-exception v3

    move-object v4, v3

    move-object v5, v6

    move-object v3, v7

    move-object v6, v8

    .line 277
    :goto_9
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 281
    if-eqz v5, :cond_7

    .line 282
    :try_start_9
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 291
    :cond_7
    :goto_a
    if-eqz v6, :cond_8

    .line 292
    :try_start_a
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    .line 299
    :cond_8
    :goto_b
    const-string v4, "do request end"

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 301
    if-nez v3, :cond_13

    const-wide/16 v4, 0x0

    .line 302
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received bytes[] length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 222
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 231
    :cond_a
    :try_start_b
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "redirect code:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " Location"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 234
    const/4 v13, 0x0

    .line 237
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 238
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 239
    :try_start_c
    invoke-virtual {v9, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move v11, v13

    .line 240
    goto/16 :goto_2

    .line 242
    :cond_b
    const/16 v9, 0xc8

    if-ne v11, v9, :cond_c

    .line 243
    :try_start_d
    const-string v4, "request success!"

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    move-object v4, v10

    move v5, v11

    .line 244
    goto/16 :goto_5

    .line 247
    :cond_c
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 248
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    .line 249
    :try_start_e
    invoke-virtual {v9, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move v11, v13

    .line 250
    goto/16 :goto_2

    .line 256
    :cond_d
    :try_start_f
    const-string v3, "StatusLine == null"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_6

    .line 294
    :catch_2
    move-exception v3

    .line 295
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 261
    :cond_e
    if-nez v3, :cond_f

    .line 262
    :try_start_10
    const-string v3, "no response datas!"

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    .line 284
    :try_start_11
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    .line 297
    :goto_d
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 294
    :catch_3
    move-exception v3

    .line 295
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_d

    .line 265
    :cond_f
    :try_start_12
    const-string v4, "get response and read!"

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 267
    new-instance v5, Ljava/io/DataInputStream;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    .line 268
    :try_start_13
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 270
    :goto_e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_10

    .line 271
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_e

    .line 276
    :catch_4
    move-exception v3

    move-object v4, v3

    move-object v6, v8

    move-object v3, v7

    goto/16 :goto_9

    .line 273
    :cond_10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 274
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    move-result-object v3

    .line 275
    :try_start_14
    const-string v4, "read end!"

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_f

    .line 281
    :try_start_15
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    .line 291
    :goto_f
    :try_start_16
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_5

    goto/16 :goto_b

    .line 294
    :catch_5
    move-exception v4

    .line 295
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 284
    :catch_6
    move-exception v4

    .line 285
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_f

    .line 284
    :catch_7
    move-exception v4

    .line 285
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 294
    :catch_8
    move-exception v4

    .line 295
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 280
    :catchall_0
    move-exception v3

    .line 281
    :goto_10
    if-eqz v6, :cond_11

    .line 282
    :try_start_17
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    .line 291
    :cond_11
    :goto_11
    if-eqz v8, :cond_12

    .line 292
    :try_start_18
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a

    .line 297
    :cond_12
    :goto_12
    throw v3

    .line 284
    :catch_9
    move-exception v4

    .line 285
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_11

    .line 294
    :catch_a
    move-exception v4

    .line 295
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_12

    .line 301
    :cond_13
    array-length v4, v3

    int-to-long v4, v4

    goto/16 :goto_c

    .line 280
    :catchall_1
    move-exception v3

    move-object v8, v9

    goto :goto_10

    :catchall_2
    move-exception v3

    move-object v8, v9

    goto :goto_10

    :catchall_3
    move-exception v3

    move-object v8, v9

    goto :goto_10

    :catchall_4
    move-exception v3

    move-object v6, v5

    goto :goto_10

    :catchall_5
    move-exception v3

    move-object v8, v6

    move-object v6, v5

    goto :goto_10

    .line 276
    :catch_b
    move-exception v3

    move-object v4, v3

    move-object v5, v6

    move-object v3, v7

    move-object v6, v8

    goto/16 :goto_9

    :catch_c
    move-exception v3

    move-object v4, v3

    move-object v5, v6

    move-object v3, v7

    move-object v6, v9

    goto/16 :goto_9

    :catch_d
    move-exception v3

    move-object v4, v3

    move-object v5, v6

    move-object v3, v7

    move-object v6, v9

    goto/16 :goto_9

    :catch_e
    move-exception v3

    move-object v4, v3

    move-object v5, v6

    move-object v3, v7

    move-object v6, v9

    goto/16 :goto_9

    :catch_f
    move-exception v4

    move-object v6, v8

    goto/16 :goto_9

    :cond_14
    move-object v4, v9

    move v5, v10

    goto/16 :goto_5
.end method
