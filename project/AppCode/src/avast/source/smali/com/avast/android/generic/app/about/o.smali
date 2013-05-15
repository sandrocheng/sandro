.class public Lcom/avast/android/generic/app/about/o;
.super Ljava/lang/Object;
.source "FeedbackSender.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/o;->a:Landroid/content/Context;

    .line 81
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/o;->b:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/avast/android/generic/app/about/o;->c:Landroid/b/a/a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/avast/android/generic/app/about/o;->c:Landroid/b/a/a;

    invoke-virtual {v0}, Landroid/b/a/a;->a()V

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/o;->c:Landroid/b/a/a;

    .line 173
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 181
    const-string v0, "avast! Mobile Security"

    invoke-static {v0}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/about/o;->c:Landroid/b/a/a;

    .line 182
    iget-object v0, p0, Lcom/avast/android/generic/app/about/o;->c:Landroid/b/a/a;

    invoke-virtual {v0}, Landroid/b/a/a;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 186
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {p1, v0}, Lcom/avast/android/generic/app/about/q;->a(Landroid/content/Context;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/generic/g/q;Lcom/avast/android/generic/g/c;[B[B)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/avast/android/generic/app/about/o;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/avast/android/generic/app/about/o;->a(Landroid/content/Context;)V

    .line 104
    const/4 v1, 0x0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/avast/android/generic/g/n;->r()Lcom/avast/android/generic/g/o;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/avast/android/generic/app/about/o;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/avast/android/generic/util/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/g/o;->a(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {v2, p1}, Lcom/avast/android/generic/g/o;->a(Ljava/lang/String;)Lcom/avast/android/generic/g/o;

    .line 111
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-virtual {v2, p2}, Lcom/avast/android/generic/g/o;->b(Ljava/lang/String;)Lcom/avast/android/generic/g/o;

    .line 114
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p3, "no description"

    :cond_2
    invoke-virtual {v2, p3}, Lcom/avast/android/generic/g/o;->c(Ljava/lang/String;)Lcom/avast/android/generic/g/o;

    .line 116
    invoke-virtual {v2, p4}, Lcom/avast/android/generic/g/o;->a(Lcom/avast/android/generic/g/q;)Lcom/avast/android/generic/g/o;

    .line 117
    if-eqz p5, :cond_3

    .line 118
    invoke-virtual {v2, p5}, Lcom/avast/android/generic/g/o;->a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/o;

    .line 120
    :cond_3
    if-eqz p6, :cond_4

    .line 121
    invoke-static {p6}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/g/o;->b(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;

    .line 123
    :cond_4
    if-eqz p7, :cond_5

    .line 124
    invoke-static {p7}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/g/o;->c(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;

    .line 127
    :cond_5
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://af.ff.avast.com/feedback"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v4, "FeedbackSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending feedback with GUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/avast/android/generic/app/about/o;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v2}, Lcom/avast/android/generic/g/o;->c()Lcom/avast/android/generic/g/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/g/n;->bo()[B

    move-result-object v2

    .line 132
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 134
    iget-object v2, p0, Lcom/avast/android/generic/app/about/o;->c:Landroid/b/a/a;

    invoke-virtual {v2, v3}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_8

    .line 137
    :cond_6
    const-string v3, "FeedbackSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    if-eqz v1, :cond_7

    .line 155
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 159
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/o;->a()V

    .line 161
    :goto_1
    return v0

    .line 140
    :cond_8
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 141
    const-string v2, "OK"

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_a

    .line 142
    const/4 v0, 0x1

    .line 153
    if-eqz v1, :cond_9

    .line 155
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 159
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/o;->a()V

    goto :goto_1

    .line 144
    :cond_a
    :try_start_4
    const-string v2, "FeedbackSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 153
    if-eqz v1, :cond_b

    .line 155
    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 159
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/o;->a()V

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_6
    new-instance v2, Lcom/avast/android/generic/app/about/p;

    invoke-direct {v2, v0}, Lcom/avast/android/generic/app/about/p;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_c

    .line 155
    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 159
    :cond_c
    :goto_4
    invoke-direct {p0}, Lcom/avast/android/generic/app/about/o;->a()V

    throw v0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    :try_start_8
    new-instance v2, Lcom/avast/android/generic/app/about/p;

    invoke-direct {v2, v0}, Lcom/avast/android/generic/app/about/p;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 150
    :catch_2
    move-exception v0

    .line 151
    new-instance v2, Lcom/avast/android/generic/app/about/p;

    invoke-direct {v2, v0}, Lcom/avast/android/generic/app/about/p;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 156
    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_4
.end method
