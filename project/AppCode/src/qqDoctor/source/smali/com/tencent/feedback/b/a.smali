.class public Lcom/tencent/feedback/b/a;
.super Ljava/lang/Object;
.source "OnSpeedMonitorReceivedImp.java"

# interfaces
.implements Lcom/tencent/feedback/upload/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/b/a$a;,
        Lcom/tencent/feedback/b/a$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;I)J
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 36
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    move-wide v0, v2

    .line 61
    :goto_0
    return-wide v0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 41
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 43
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    const/16 v1, 0x7530

    :try_start_1
    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v5

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s conn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 54
    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 57
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    if-eqz v1, :cond_2

    .line 55
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move-wide v0, v2

    .line 59
    goto :goto_0

    .line 56
    :catch_2
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-wide v0, v2

    .line 60
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    :goto_2
    if-eqz v1, :cond_3

    .line 55
    :try_start_5
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 59
    :cond_3
    :goto_3
    throw v0

    .line 56
    :catch_3
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 53
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_2

    .line 47
    :catch_4
    move-exception v0

    move-object v1, v4

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/feedback/b/a$b;
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 151
    :cond_1
    :goto_0
    return-object v0

    .line 68
    :cond_2
    new-instance v0, Lcom/tencent/feedback/b/a$b;

    invoke-direct {v0}, Lcom/tencent/feedback/b/a$b;-><init>()V

    .line 73
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 77
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v3, v8, v3

    iput-wide v3, v0, Lcom/tencent/feedback/b/a$b;->a:J

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v0, Lcom/tencent/feedback/b/a$b;->a:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    move v3, v2

    .line 83
    :goto_1
    array-length v2, v8

    if-ge v3, v2, :cond_4

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v2, v8, v3

    if-gez v2, :cond_3

    aget-byte v2, v8, v3

    add-int/lit16 v2, v2, 0x100

    :goto_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 84
    :cond_3
    aget-byte v2, v8, v3

    goto :goto_2

    .line 86
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/feedback/b/a$b;->f:Ljava/lang/String;

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 88
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 91
    if-ltz v2, :cond_8

    .line 92
    :goto_3
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v7, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 95
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 96
    const/16 v2, 0x7530

    :try_start_1
    invoke-virtual {v4, v3, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    iput-wide v2, v0, Lcom/tencent/feedback/b/a$b;->b:J

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v0, Lcom/tencent/feedback/b/a$b;->b:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP/1.1 \r\nHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v3

    .line 103
    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v2

    .line 105
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 106
    const-string v1, "UTF-8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v8, v6

    iput-wide v5, v0, Lcom/tencent/feedback/b/a$b;->c:J

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "re: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/tencent/feedback/b/a$b;->c:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 113
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    iput-wide v5, v0, Lcom/tencent/feedback/b/a$b;->d:J

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/tencent/feedback/b/a$b;->d:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 119
    :cond_5
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_5

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    iput-wide v5, v0, Lcom/tencent/feedback/b/a$b;->e:J

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readp: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/tencent/feedback/b/a$b;->e:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c

    .line 129
    if-eqz v3, :cond_6

    .line 131
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 138
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 144
    :cond_7
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_8
    const/16 v2, 0x50

    goto/16 :goto_3

    .line 100
    :cond_9
    :try_start_7
    const-string v2, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_4

    .line 132
    :catch_1
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 139
    :catch_2
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 124
    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 126
    :goto_7
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 129
    if-eqz v3, :cond_a

    .line 131
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 136
    :cond_a
    :goto_8
    if-eqz v2, :cond_b

    .line 138
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 144
    :cond_b
    :goto_9
    if-eqz v4, :cond_1

    .line 145
    :try_start_b
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 146
    :catch_4
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :catch_5
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 139
    :catch_6
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 129
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_a
    if-eqz v3, :cond_c

    .line 131
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 136
    :cond_c
    :goto_b
    if-eqz v1, :cond_d

    .line 138
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 144
    :cond_d
    :goto_c
    if-eqz v4, :cond_e

    .line 145
    :try_start_e
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 149
    :cond_e
    :goto_d
    throw v0

    .line 132
    :catch_7
    move-exception v2

    .line 133
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 139
    :catch_8
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 146
    :catch_9
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_d

    .line 129
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_a

    .line 124
    :catch_a
    move-exception v2

    move-object v3, v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_7

    :catch_b
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_7

    :catch_c
    move-exception v1

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/feedback/b/a$b;
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 156
    if-eqz p0, :cond_0

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    const/4 v2, 0x0

    .line 223
    :goto_0
    return-object v2

    .line 159
    :cond_1
    new-instance v3, Lcom/tencent/feedback/b/a$b;

    invoke-direct {v3}, Lcom/tencent/feedback/b/a$b;-><init>()V

    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    const/4 v4, 0x0

    .line 164
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    if-gtz v7, :cond_13

    :cond_2
    const-string v7, "no default proxy!"

    invoke-static {v7}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_a

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_1
    if-nez v7, :cond_12

    const/4 v2, 0x0

    :cond_5
    :goto_2
    if-nez v2, :cond_14

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v6, v2

    .line 165
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 166
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 167
    const/16 v2, 0x7530

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 168
    const/16 v2, 0x7530

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 172
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 176
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 180
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 184
    :cond_6
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v15, -0x1

    if-ne v2, v15, :cond_6

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 189
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v3, Lcom/tencent/feedback/b/a$b;->a:J

    .line 190
    const-string v2, ""

    iput-object v2, v3, Lcom/tencent/feedback/b/a$b;->f:Ljava/lang/String;

    .line 191
    sub-long v7, v9, v7

    iput-wide v7, v3, Lcom/tencent/feedback/b/a$b;->b:J

    .line 192
    sub-long v7, v11, v9

    iput-wide v7, v3, Lcom/tencent/feedback/b/a$b;->c:J

    .line 193
    sub-long v7, v13, v11

    iput-wide v7, v3, Lcom/tencent/feedback/b/a$b;->d:J

    .line 194
    sub-long v7, v15, v13

    iput-wide v7, v3, Lcom/tencent/feedback/b/a$b;->e:J

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dns "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v3, Lcom/tencent/feedback/b/a$b;->a:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connetionElapse "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v3, Lcom/tencent/feedback/b/a$b;->b:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestElapse "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v3, Lcom/tencent/feedback/b/a$b;->c:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitElapse "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v3, Lcom/tencent/feedback/b/a$b;->d:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readResponeElapse "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v3, Lcom/tencent/feedback/b/a$b;->e:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    if-eqz v4, :cond_7

    .line 207
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    .line 214
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 220
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    :goto_6
    move-object v2, v3

    .line 223
    goto/16 :goto_0

    .line 164
    :cond_a
    :try_start_3
    new-instance v7, Lcom/tencent/feedback/b/a$a;

    invoke-direct {v7}, Lcom/tencent/feedback/b/a$a;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ctwap"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v8, "search ctwap"

    invoke-static {v8}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    const-string v8, "10.0.0.200"

    iput-object v8, v7, Lcom/tencent/feedback/b/a$a;->a:Ljava/lang/String;

    const/16 v8, 0x50

    iput v8, v7, Lcom/tencent/feedback/b/a$a;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 201
    :catch_0
    move-exception v2

    .line 202
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    if-eqz v4, :cond_b

    .line 207
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 212
    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    .line 214
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 219
    :cond_c
    :goto_8
    if-eqz v6, :cond_9

    .line 220
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 164
    :cond_d
    :try_start_7
    const-string v10, "cmwap"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v8, "search cmwap"

    invoke-static {v8}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    const-string v8, "10.0.0.172"

    iput-object v8, v7, Lcom/tencent/feedback/b/a$a;->a:Ljava/lang/String;

    const/16 v8, 0x50

    iput v8, v7, Lcom/tencent/feedback/b/a$a;->b:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 205
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_e

    .line 207
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 212
    :cond_e
    :goto_9
    if-eqz v5, :cond_f

    .line 214
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 219
    :cond_f
    :goto_a
    if-eqz v6, :cond_10

    .line 220
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw v2

    .line 164
    :cond_11
    :try_start_a
    const-string v10, "uniwap"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "search uniwap"

    invoke-static {v8}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    const-string v8, "10.0.0.172"

    iput-object v8, v7, Lcom/tencent/feedback/b/a$a;->a:Ljava/lang/String;

    const/16 v8, 0x50

    iput v8, v7, Lcom/tencent/feedback/b/a$a;->b:I

    goto/16 :goto_1

    :cond_12
    iget-object v8, v7, Lcom/tencent/feedback/b/a$a;->a:Ljava/lang/String;

    iget v7, v7, Lcom/tencent/feedback/b/a$a;->b:I

    :cond_13
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apn "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " find proxy ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    new-instance v7, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v7, v8, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v9, v7}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    move-object v6, v2

    goto/16 :goto_3

    .line 208
    :catch_1
    move-exception v2

    .line 209
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 215
    :catch_2
    move-exception v2

    .line 216
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 208
    :catch_3
    move-exception v2

    .line 209
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 215
    :catch_4
    move-exception v2

    .line 216
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 208
    :catch_5
    move-exception v3

    .line 209
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 215
    :catch_6
    move-exception v3

    .line 216
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a
.end method


# virtual methods
.method public a(I[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/feedback/b/a;->b(I[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "onSpeedMonitorSource process error!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected b(I[B)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "OnSpeedMonitorReceivedImp.onSpeedMonitorSource() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 44
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v0, Lstrategy/SpeedMonitorSource;

    invoke-direct {v0}, Lstrategy/SpeedMonitorSource;-><init>()V

    .line 48
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p2}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 49
    invoke-virtual {v0, v1}, Lstrategy/SpeedMonitorSource;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 51
    invoke-virtual {v0}, Lstrategy/SpeedMonitorSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 53
    const-string v1, "deleted old test!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    const-wide/16 v2, -0x1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/feedback/common/f$c;->a(Landroid/content/Context;JJ)I

    move-result v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 56
    const-string v1, "add new speed test!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lstrategy/SpeedMonitorSource;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Lstrategy/SpeedMonitorSource;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    if-eqz v1, :cond_3

    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstrategy/IpSource;

    .line 64
    new-instance v3, Lcom/tencent/feedback/b/b;

    invoke-direct {v3}, Lcom/tencent/feedback/b/b;-><init>()V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lstrategy/IpSource;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lstrategy/IpSource;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/feedback/b/b;->b(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/feedback/b/b;->b(J)V

    .line 67
    const-string v0, "IP"

    invoke-virtual {v3, v0}, Lcom/tencent/feedback/b/b;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/feedback/common/f$c;->a(Landroid/content/Context;Lcom/tencent/feedback/b/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add a new ip fail! "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/feedback/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_3
    if-eqz v2, :cond_5

    .line 79
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    new-instance v2, Lcom/tencent/feedback/b/b;

    invoke-direct {v2}, Lcom/tencent/feedback/b/b;-><init>()V

    .line 84
    invoke-virtual {v2, v0}, Lcom/tencent/feedback/b/b;->b(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/feedback/b/b;->b(J)V

    .line 88
    const-string v0, "PG"

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/b/b;->a(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/feedback/common/f$c;->a(Landroid/content/Context;Lcom/tencent/feedback/b/b;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add a new dns fail! "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/feedback/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_5
    const-string v0, "add finish!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 100
    const-string v0, "####get upStrategy in speed response!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v1

    .line 107
    monitor-enter v1

    .line 109
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isSpeedMonitorServerOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isSpeedMonitorUserOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 110
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    if-eqz v0, :cond_6

    .line 115
    const-string v0, "start to cs!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/f$c;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/tencent/feedback/b/c;

    iget-object v2, p0, Lcom/tencent/feedback/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/tencent/feedback/b/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/tencent/feedback/b/c;->run()V

    .line 122
    :cond_6
    const-string v0, "OnSpeedMonitorReceivedImp.onSpeedMonitorSource() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
