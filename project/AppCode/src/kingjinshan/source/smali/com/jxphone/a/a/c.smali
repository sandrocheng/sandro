.class final Lcom/jxphone/a/a/c;
.super Ljava/lang/Thread;
.source "HttpDataSender.java"


# instance fields
.field final synthetic a:Lcom/jxphone/a/a/a;

.field private final b:[B

.field private final c:Lcom/jxphone/a/a/h;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/jxphone/a/a/g;


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/a/a/a;[BLcom/jxphone/a/a/h;Lcom/jxphone/a/a/g;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/jxphone/a/a/c;-><init>(Lcom/jxphone/a/a/a;[BLcom/jxphone/a/a/h;Lcom/jxphone/a/a/g;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/a/a/a;[BLcom/jxphone/a/a/h;Lcom/jxphone/a/a/g;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/jxphone/a/a/c;->a:Lcom/jxphone/a/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/jxphone/a/a/c;->b:[B

    .line 257
    iput-object p3, p0, Lcom/jxphone/a/a/c;->c:Lcom/jxphone/a/a/h;

    .line 258
    iput-object p5, p0, Lcom/jxphone/a/a/c;->d:Ljava/lang/String;

    .line 259
    iput-object p4, p0, Lcom/jxphone/a/a/c;->e:Lcom/jxphone/a/a/g;

    .line 260
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 264
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/jxphone/a/a/c;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 269
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Lcom/jxphone/a/a/c;->b:[B

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 270
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 274
    const-string v0, ""

    .line 275
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v4

    .line 282
    :goto_1
    if-eqz v0, :cond_8

    move v1, v5

    :goto_2
    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 290
    :goto_3
    if-eqz v0, :cond_7

    .line 291
    iget-object v0, p0, Lcom/jxphone/a/a/c;->c:Lcom/jxphone/a/a/h;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/jxphone/a/a/c;->c:Lcom/jxphone/a/a/h;

    iget-wide v1, v1, Lcom/jxphone/a/a/e;->a:J

    invoke-interface {v0}, Lcom/jxphone/a/a/h;->a()V

    .line 298
    :cond_1
    :goto_4
    return-void

    .line 281
    :cond_2
    :try_start_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jxphone/a/a/e;

    invoke-direct {v1}, Lcom/jxphone/a/a/e;-><init>()V

    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "[common]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    const-string v2, "result="

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jxphone/a/a/e;->b:I

    const-string v2, "time="

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/jxphone/a/a/e;->a:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v4

    goto :goto_1

    :cond_6
    move-object v0, v4

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    move-object v1, v4

    goto :goto_3

    .line 295
    :cond_7
    iget-object v0, p0, Lcom/jxphone/a/a/c;->e:Lcom/jxphone/a/a/g;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/jxphone/a/a/c;->e:Lcom/jxphone/a/a/g;

    invoke-interface {v0}, Lcom/jxphone/a/a/g;->a()V

    goto :goto_4

    :cond_8
    move v1, v6

    goto :goto_2
.end method
