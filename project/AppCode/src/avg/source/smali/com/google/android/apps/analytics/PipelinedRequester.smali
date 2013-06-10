.class Lcom/google/android/apps/analytics/PipelinedRequester;
.super Ljava/lang/Object;


# static fields
.field private static final RECEIVE_BUFFER_SIZE:I = 0x2000


# instance fields
.field callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

.field canPipeline:Z

.field connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

.field host:Lorg/apache/http/HttpHost;

.field lastStatusCode:I

.field socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 1

    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/PipelinedRequester;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    iput-object p1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    iput-object p2, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    return-void
.end method

.method private closeConnection()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private maybeOpenConnection()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    iget-object v2, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v1, v0, v6}, Lorg/apache/http/impl/DefaultHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->maybeOpenConnection()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public finishedCurrentRequests()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->closeConnection()V

    return-void
.end method

.method public installCallbacks(Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    return-void
.end method

.method public sendRequests()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->flush()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpConnectionMetrics;->getResponseCount()J

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v0, v4}, Lorg/apache/http/ProtocolVersion;->greaterEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->pipelineModeChanged(Z)V

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    :cond_1
    const-string v0, "Connection"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    const-string v7, "close"

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    invoke-interface {v6, v1}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->pipelineModeChanged(Z)V

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->lastStatusCode:I

    iget v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->lastStatusCode:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    iget v1, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->lastStatusCode:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->serverError(I)V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->closeConnection()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->callbacks:Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;->requestSent()V

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GoogleAnalyticsTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP Response Code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/apps/analytics/PipelinedRequester;->canPipeline:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/analytics/PipelinedRequester;->closeConnection()V

    goto :goto_1
.end method
