.class public final Lorg/antivirus/core/a/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Lorg/apache/http/client/HttpClient;

.field private k:Lorg/apache/http/client/methods/HttpPost;

.field private l:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>(Ljava/net/URI;ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "methodCall"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->a:Ljava/lang/String;

    const-string v0, "methodName"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->b:Ljava/lang/String;

    const-string v0, "methodResponse"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->c:Ljava/lang/String;

    const-string v0, "params"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->d:Ljava/lang/String;

    const-string v0, "param"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->e:Ljava/lang/String;

    const-string v0, "fault"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->f:Ljava/lang/String;

    const-string v0, "faultCode"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->g:Ljava/lang/String;

    const-string v0, "faultString"

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->h:Ljava/lang/String;

    const-string v0, "d5544fG==*%877hT--==QQUPWeeY89904469=="

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->i:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Content-Type"

    const-string v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mozilla/5.0 (Linux; U; Android %s; en-us; %s) %s/%s (KHTML, like Gecko) Version/%s.%s/%s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "3.0.3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "3.0.3"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "174757"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Antivirus Pro"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "x-auth-token"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d5544fG==*%877hT--==QQUPWeeY89904469=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/a/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->j:Lorg/apache/http/client/HttpClient;

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .locals 7

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "methodCall"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "methodName"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "methodName"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "params"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "param"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0, p4}, Lorg/antivirus/core/a/ad;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "param"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    const-string v4, "param"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    aget-object v3, p2, v0

    invoke-static {v2, v3}, Lorg/antivirus/core/a/ad;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "param"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "params"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "methodCall"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lorg/antivirus/core/a/ab;->l:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "XmlPullParserException"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    new-instance v1, Lorg/antivirus/core/a/ac;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    iget-object v0, p0, Lorg/antivirus/core/a/ab;->j:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lorg/antivirus/core/a/ab;->k:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    new-instance v0, Lorg/antivirus/core/a/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V

    throw v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :catch_1
    move-exception v0

    const-string v0, "UnknownHostException"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lorg/antivirus/core/a/ac;

    const-string v1, "UnknownHostException"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V

    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "ClientProtocolException"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    new-instance v1, Lorg/antivirus/core/a/ac;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V

    throw v1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    :try_start_5
    new-instance v1, Lorg/antivirus/core/a/ac;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V

    throw v1
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    move-exception v0

    new-instance v1, Lorg/antivirus/core/a/ac;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V

    throw v1

    :cond_2
    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "entity == null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    const/4 v1, 0x0

    if-eqz p5, :cond_a

    const/4 v3, 0x0

    :try_start_7
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    const/16 v0, 0xff4

    :try_start_8
    new-array v3, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_3
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    move-result v0

    goto :goto_3

    :cond_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    const/4 v1, 0x0

    :goto_4
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    const/4 v2, 0x0

    :goto_5
    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_6
    :goto_7
    :try_start_d
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v2, v3

    :goto_8
    :try_start_e
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_7

    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    :cond_7
    :goto_9
    if-eqz v2, :cond_6

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_7

    :catch_9
    move-exception v0

    :try_start_11
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_a
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_a
    if-eqz v1, :cond_8

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    :cond_8
    :goto_b
    if-eqz v2, :cond_9

    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    :cond_9
    :goto_c
    :try_start_14
    throw v0

    :catch_b
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_b

    :catch_c
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_c

    :cond_a
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "methodResponse"

    invoke-interface {v1, v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "params"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "param"

    invoke-interface {v1, v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-static {v1}, Lorg/antivirus/core/a/ad;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_2

    :cond_b
    const-string v2, "fault"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-static {v1}, Lorg/antivirus/core/a/ad;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "faultString"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "faultCode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v2, Lorg/antivirus/core/a/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, p0, v0, v1}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V

    throw v2

    :cond_c
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v1, Lorg/antivirus/core/a/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/antivirus/core/a/ac;-><init>(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V

    throw v1
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    :catch_d
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_8

    :catch_f
    move-exception v0

    goto/16 :goto_5
.end method
