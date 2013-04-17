.class public final Lcom/tencent/feedback/upload/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/feedback/upload/UploadHandler;


# static fields
.field private static b:Lcom/tencent/feedback/upload/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/upload/b;->b:Lcom/tencent/feedback/upload/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private static a(Lcommon/RequestPackage;)Lcom/qq/jce/wup/UniPacket;
    .locals 2
    .parameter

    .prologue
    .line 153
    const-string v0, "RQDUploadImp.encode2Unipackage() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 156
    :try_start_0
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    .line 160
    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    .line 162
    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    .line 164
    const-string v1, "detail"

    invoke-virtual {v0, v1, p0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v1, "RQDUploadImp.encode2Unipackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;
    .locals 2
    .parameter

    .prologue
    .line 75
    const-class v1, Lcom/tencent/feedback/upload/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/upload/b;->b:Lcom/tencent/feedback/upload/b;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/tencent/feedback/upload/b;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/upload/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/upload/b;->b:Lcom/tencent/feedback/upload/b;

    .line 78
    :cond_0
    sget-object v0, Lcom/tencent/feedback/upload/b;->b:Lcom/tencent/feedback/upload/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a([B)Lcommon/ResponsePackage;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 132
    const-string v0, "MyDoUpload.decode2ResponsePackage() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 134
    if-nez p0, :cond_0

    move-object v0, v1

    .line 147
    :goto_0
    return-object v0

    .line 137
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 138
    invoke-virtual {v0, p0}, Lcom/qq/jce/wup/UniPacket;->decode([B)V

    .line 139
    const-string v2, "detail"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcommon/ResponsePackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    const-string v1, "RQDUploadImp.decode2ResponsePackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    const-string v0, "decode response failed,return null!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    const-string v0, "RQDUploadImp.decode2ResponsePackage() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RQDUploadImp.decode2ResponsePackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;IILjava/lang/String;)[B
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x7530

    const/4 v2, 0x0

    .line 178
    const-string v0, "RQDUploadImp.doRequest() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 179
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 180
    invoke-static {v3, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 181
    invoke-static {v3, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 183
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 186
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 188
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 197
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 199
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use proxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 203
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-direct {v5, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 204
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 207
    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 209
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2

    .line 210
    const-string v0, "request failure!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v0, v2

    .line 251
    :goto_1
    return-object v0

    .line 191
    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 215
    if-nez v0, :cond_3

    .line 216
    const-string v0, "no response!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move-object v0, v2

    .line 244
    goto :goto_1

    .line 219
    :cond_3
    const-string v1, "get response and read!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 221
    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 222
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    :goto_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 225
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 230
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    .line 232
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    if-eqz v2, :cond_4

    .line 241
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 250
    :cond_4
    :goto_4
    const-string v1, "RQDUploadImp.doRequest() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 228
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    .line 229
    :try_start_6
    const-string v1, "read end!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 239
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 244
    :catch_1
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 244
    :catch_2
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 237
    :catchall_0
    move-exception v0

    .line 239
    :goto_5
    if-eqz v2, :cond_6

    .line 241
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 248
    :cond_6
    :goto_6
    throw v0

    .line 244
    :catch_3
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 237
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 230
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method private b([B)V
    .locals 7
    .parameter

    .prologue
    .line 330
    const-string v0, "RQDUploadImp.onUploadStrategy() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 331
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v3, Lstrategy/UploadStrategyPackage;

    invoke-direct {v3}, Lstrategy/UploadStrategyPackage;-><init>()V

    .line 335
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0, p1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 336
    invoke-virtual {v3, v0}, Lstrategy/UploadStrategyPackage;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 338
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;

    move-result-object v4

    .line 341
    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/tencent/feedback/common/b/b;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/b/f;

    move-result-object v5

    .line 342
    monitor-enter v5

    .line 343
    :try_start_0
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->b()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->b(I)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->b(Z)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->a(Z)V

    .line 348
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->c(Z)V

    .line 350
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->e()Ljava/util/Map;

    move-result-object v2

    .line 351
    if-eqz v2, :cond_4

    .line 353
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 354
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 355
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 357
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->c(Z)V

    .line 360
    :cond_2
    if-eqz v1, :cond_3

    .line 361
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->a(Z)V

    .line 363
    :cond_3
    if-eqz v2, :cond_4

    .line 364
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->b(Z)V

    .line 368
    :cond_4
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->a(I)V

    .line 369
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->a(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->c()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/b/f;->c(I)V

    .line 371
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v4, v0, v5}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;Lcom/tencent/feedback/common/b/f;)V

    .line 375
    const-string v0, "update succeed!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 376
    const-string v0, "RQDUploadImp.onUploadStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method private c([B)V
    .locals 4
    .parameter

    .prologue
    .line 382
    const-string v0, "RQDUploadImp.onSecurityStrategy() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 383
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    new-instance v0, Lstrategy/SecurityStrategyPackage;

    invoke-direct {v0}, Lstrategy/SecurityStrategyPackage;-><init>()V

    .line 387
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 388
    invoke-virtual {v0, v1}, Lstrategy/SecurityStrategyPackage;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 390
    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;

    move-result-object v1

    .line 394
    iget-object v2, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/b/b;->b(Landroid/content/Context;)Lcom/tencent/feedback/common/b/a;

    move-result-object v2

    .line 395
    monitor-enter v2

    .line 396
    :try_start_0
    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/b/a;->a(I)V

    .line 397
    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/b/a;->a(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/b/a;->b(I)V

    .line 399
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;Lcom/tencent/feedback/common/b/a;)V

    .line 402
    const-string v0, "update succeed!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 403
    const-string v0, "RQDUploadImp.onSecurityStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 87
    const-string v0, "RQDUploadImp.doUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 89
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getUploadDatas(Z)[B

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    const-string v0, "no datas return "

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    :try_start_1
    new-instance v1, Lcommon/RequestPackage;

    invoke-direct {v1}, Lcommon/RequestPackage;-><init>()V

    .line 100
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 101
    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/b/b;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/b/b;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/b/f;

    move-result-object v2

    .line 105
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :try_start_2
    invoke-virtual {v2}, Lcom/tencent/feedback/common/b/f;->d()Ljava/lang/String;

    move-result-object v0

    .line 107
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    iget-object v2, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v1}, Lcom/tencent/feedback/upload/b;->a(Lcommon/RequestPackage;)Lcom/qq/jce/wup/UniPacket;

    move-result-object v9

    .line 112
    const/4 v1, 0x0

    move v8, v7

    .line 114
    :goto_1
    const/4 v2, 0x2

    if-ge v8, v2, :cond_2

    .line 115
    invoke-virtual {v9}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v1

    const-string v2, "post"

    const/16 v3, 0x7530

    const/16 v4, 0x7530

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/upload/b;->a(Ljava/lang/String;[BLjava/lang/String;IILjava/lang/String;)[B

    move-result-object v1

    .line 116
    if-nez v1, :cond_2

    .line 117
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 126
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 120
    :try_start_5
    invoke-static {v0}, Lcom/tencent/feedback/upload/b;->a([B)Lcommon/ResponsePackage;

    move-result-object v1

    .line 121
    const-string v0, "RQDUploadImp.processResponse() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rpp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcommon/ResponsePackage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcommon/ResponsePackage;->a()B

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    :goto_2
    invoke-virtual {p1, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->done(Z)V

    const-string v0, "received response so process it! first fit the srcIp and server time!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {v1}, Lcommon/ResponsePackage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/CommonInfo;->setGateIP(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcommon/ResponsePackage;->g()J

    move-result-wide v3

    const-wide v5, 0xdc69183800L

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    const-string v0, "server time is ok! fix it!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Lcommon/ResponsePackage;->g()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/tencent/feedback/common/CommonInfo;->setServerTimeGap(J)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fix gate ip "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getGateIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fix server time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v1}, Lcommon/ResponsePackage;->c()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcommon/ResponsePackage;->e()B

    move-result v2

    invoke-virtual {v1}, Lcommon/ResponsePackage;->f()B

    move-result v3

    const-string v4, "S(@L@L@)"

    invoke-static {v0, v3, v2, v4}, Lcom/tencent/feedback/common/f;->b([BIILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcommon/ResponsePackage;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown strategy :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    :cond_4
    :goto_3
    const-string v0, "RQDUploadImp.processResponse() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 126
    :cond_5
    const-string v0, "RQDUploadImp.doUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v7

    .line 121
    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 126
    :catchall_2
    move-exception v0

    const-string v1, "RQDUploadImp.doUpload() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_1
    :try_start_9
    const-string v1, "process CMD_RESPONSE_ALL_STRATEGY"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    const-string v1, "RQDUploadImp.onMixPackage() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_4

    new-instance v1, Lcommon/MixPackage;

    invoke-direct {v1}, Lcommon/MixPackage;-><init>()V

    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcommon/MixPackage;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    invoke-virtual {v1}, Lcommon/MixPackage;->a()Ljava/util/Map;

    move-result-object v1

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/b;->c([B)V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/b;->b([B)V

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RQDUploadImp.onSpeedMonitorSource() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    const-string v0, "RQDUploadImp.onSpeedMonitorSource() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    const-string v0, "RQDUploadImp.onMixPackage() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const-string v1, "process CMD_RESPONSE_SECURITY_STRATEGY"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/b;->c([B)V

    goto :goto_3

    :pswitch_3
    const-string v0, "process CMD_RESPONSE_SPEEDMONITOR_STRATEGY"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    const-string v0, "RQDUploadImp.onSpeedMonitorSource() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    const-string v0, "RQDUploadImp.onSpeedMonitorSource() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_4
    const-string v1, "process CMD_RESPONSE_UPLOAD_STRATEGY"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/b;->b([B)V

    goto/16 :goto_3

    :pswitch_5
    const-string v0, "no data response!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
