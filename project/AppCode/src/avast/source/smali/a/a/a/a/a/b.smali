.class La/a/a/a/a/b;
.super Ljava/lang/Object;
.source "ErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:La/a/a/a/a/a;


# direct methods
.method constructor <init>(La/a/a/a/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, La/a/a/a/a/b;->b:La/a/a/a/a/a;

    iput-object p2, p0, La/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 156
    :try_start_0
    new-instance v1, La/a/a/a/a/d;

    iget-object v0, p0, La/a/a/a/a/b;->b:La/a/a/a/a/a;

    invoke-static {v0}, La/a/a/a/a/a;->a(La/a/a/a/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/a/a/d;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    invoke-virtual {v1}, La/a/a/a/a/d;->a()Landroid/b/a/a;

    move-result-object v0

    .line 158
    iget-object v2, p0, La/a/a/a/a/b;->b:La/a/a/a/a/a;

    invoke-static {v2}, La/a/a/a/a/a;->b(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/b/a/a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    iget-object v4, p0, La/a/a/a/a/b;->b:La/a/a/a/a/a;

    invoke-static {v4}, La/a/a/a/a/a;->b(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 162
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, La/a/a/a/a/b;->b:La/a/a/a/a/a;

    invoke-static {v3}, La/a/a/a/a/a;->c(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, La/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 166
    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "Content-type"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "AvastGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ErrorHandler posting data... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, La/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v2}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 173
    const-string v2, "AvastGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErrorHandler post status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    :goto_0
    invoke-virtual {v1}, La/a/a/a/a/d;->b()V

    .line 181
    :cond_1
    return-void

    .line 174
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 175
    :goto_1
    :try_start_2
    const-string v2, "AvastGeneric"

    const-string v3, "ErrorHandler error"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {v1}, La/a/a/a/a/d;->b()V

    .line 177
    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 174
    :catch_1
    move-exception v0

    goto :goto_1
.end method
