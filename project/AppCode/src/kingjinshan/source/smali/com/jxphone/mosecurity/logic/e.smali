.class public final Lcom/jxphone/mosecurity/logic/e;
.super Ljava/lang/Object;
.source "FeedBackLogicImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/e;


# static fields
.field public static final a:Ljava/lang/String; = "http://report.sj.ijinshan.com/report/debug/upload"


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/e;->b:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/logic/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 136
    .line 140
    const/16 v0, 0x400

    :try_start_0
    new-array v1, v0, [B

    .line 143
    const-string v2, "\r\n"

    .line 144
    const-string v3, "--"

    .line 145
    const-string v4, "***mosecurity**"

    .line 147
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 150
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 151
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 152
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 153
    const-string v5, "POST"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 154
    const-string v5, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multipart/form-data;boundary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 165
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 168
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 169
    if-lez v7, :cond_0

    .line 171
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v9

    .line 196
    :goto_1
    return v0

    .line 177
    :cond_0
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 181
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 183
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    .line 190
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move v0, v9

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 63
    :try_start_0
    new-instance v0, Lcom/jxphone/b/a/b;

    const-string v1, "https://secure.jxphone.com/fb/api/v1/feedback.do"

    invoke-direct {v0, v1}, Lcom/jxphone/b/a/b;-><init>(Ljava/lang/String;)V

    .line 64
    const/16 v1, 0xa

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0401000302"

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "version"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jxphone/mosecurity/logic/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/keniu/security/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "content"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "email"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mobile"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "model"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "imei"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jxphone/mosecurity/logic/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/keniu/security/util/av;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "imsi"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jxphone/mosecurity/logic/e;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "os"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Android API Level"

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flag"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    aput-object v3, v1, v2

    .line 76
    const-string v2, "FeedBack"

    const-string v3, "send crush infomation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0, v1}, Lcom/jxphone/b/a/b;->a([[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error on feedback url"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 80
    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error on send feedback "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 83
    goto :goto_0
.end method

.method static synthetic a([Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/jxphone/mosecurity/logic/e;->b([Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static b([Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 89
    .line 93
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 96
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v2, v6

    .line 97
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 99
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    new-instance v4, Ljava/util/zip/ZipEntry;

    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 105
    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 106
    if-lez v4, :cond_0

    .line 108
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    move v0, v6

    .line 131
    :goto_2
    return v0

    .line 114
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 118
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/keniu/security/g;->a()Lcom/keniu/security/g;

    invoke-static {}, Lcom/keniu/security/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    .line 207
    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/jxphone/mosecurity/logic/f;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/f;-><init>(Lcom/jxphone/mosecurity/logic/e;)V

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/logic/f;->start()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v0, "fb"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jxphone/mosecurity/logic/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
