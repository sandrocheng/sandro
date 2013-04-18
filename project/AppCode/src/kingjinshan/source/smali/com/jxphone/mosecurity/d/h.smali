.class public Lcom/jxphone/mosecurity/d/h;
.super Ljava/lang/Object;
.source "HttpsMessageFettler.java"


# static fields
.field private static final a:Ljava/lang/String; = "messages"

.field private static final b:Ljava/lang/String; = "message"


# instance fields
.field private c:Ljava/net/URL;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/d/h;->c:Ljava/net/URL;

    .line 35
    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jxphone/mosecurity/c/e;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v0, Lcom/jxphone/mosecurity/c/e;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/e;-><init>()V

    .line 119
    const-string v1, "title"

    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/e;->a(Ljava/lang/String;)V

    .line 120
    const-string v1, "contentType"

    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    const/16 v2, 0x2f

    const/16 v3, 0x5f

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jxphone/mosecurity/c/f;->valueOf(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/f;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Lcom/jxphone/mosecurity/c/e;->a(Lcom/jxphone/mosecurity/c/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const-string v1, "id"

    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/e;->a(I)V

    .line 129
    const-string v1, "createAtTS"

    invoke-interface {p0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/e;->a(J)V

    .line 130
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/e;->b(Ljava/lang/String;)V

    .line 131
    return-object v0

    .line 126
    :catch_0
    move-exception v2

    const-class v2, Lcom/jxphone/mosecurity/d/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown content-type:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/jxphone/mosecurity/c/g;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 74
    .line 78
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 81
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v1

    move v1, v2

    move-object v2, v7

    .line 84
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 107
    :cond_0
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 89
    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    if-lt v1, v4, :cond_1

    .line 91
    const-string v0, "HttpsMessageFettler"

    const-string v1, "recheck the value of count"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_2
    :pswitch_1
    if-eqz v2, :cond_4

    .line 111
    new-instance v0, Lcom/jxphone/mosecurity/c/g;

    invoke-direct {v0, v2, v3}, Lcom/jxphone/mosecurity/c/g;-><init>([Lcom/jxphone/mosecurity/c/e;Z)V

    .line 113
    :goto_3
    return-object v0

    .line 94
    :cond_1
    if-nez v2, :cond_2

    .line 95
    const-string v0, "HttpsMessageFettler"

    const-string v1, "node: messages not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 98
    :cond_2
    add-int/lit8 v5, v1, 0x1

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/h;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/jxphone/mosecurity/c/e;

    move-result-object v6

    aput-object v6, v2, v1

    move v1, v5

    goto :goto_1

    .line 99
    :cond_3
    const-string v6, "messages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const-string v2, "count"

    invoke-interface {v0, v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    const-string v3, "hasMore"

    invoke-interface {v0, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 102
    new-array v4, v2, [Lcom/jxphone/mosecurity/c/e;

    move-object v8, v4

    move v4, v2

    move-object v2, v8

    goto :goto_1

    :cond_4
    move-object v0, v7

    .line 113
    goto :goto_3

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a([[Ljava/lang/String;)Lcom/jxphone/mosecurity/c/g;
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    array-length v1, p1

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 40
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 41
    aget-object v4, v3, v8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 45
    sub-int v2, v1, v6

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/d/h;->c:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    const/16 v1, 0x1f40

    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 55
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 56
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 58
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 60
    :try_start_3
    invoke-static {v0}, Lcom/jxphone/mosecurity/d/h;->a(Ljava/io/InputStream;)Lcom/jxphone/mosecurity/c/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 65
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 67
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 70
    :cond_3
    return-object v2

    .line 61
    :catch_0
    move-exception v2

    .line 62
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :catchall_0
    move-exception v2

    move-object v3, p0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v9

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 66
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 67
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    throw v0

    .line 65
    :catchall_1
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    move-object v3, p0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v3, p0

    move-object v1, v7

    goto :goto_1
.end method
