.class public Lcom/tencent/feedback/common/f$d;
.super Ljava/lang/Object;
.source "RecordBeanParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0xc

    iput v0, p0, Lcom/tencent/feedback/common/f$d;->a:I

    .line 56
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/tencent/feedback/common/f$d;->b:J

    .line 57
    return-void
.end method

.method public static a(Lcom/tencent/feedback/a/a;)Lcom/tencent/feedback/c/i;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 174
    :goto_0
    return-object v0

    .line 125
    :cond_1
    new-instance v2, Lcom/tencent/feedback/c/i;

    invoke-direct {v2}, Lcom/tencent/feedback/c/i;-><init>()V

    .line 126
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/feedback/c/i;->a(J)V

    .line 127
    invoke-virtual {p0}, Lcom/tencent/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/c/i;->b(Ljava/lang/String;)V

    .line 128
    const-string v3, "UA"

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/c/i;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/tencent/feedback/a/a;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/feedback/c/i;->b(J)V

    .line 131
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string v4, "rdmuid"

    const-string v5, "unknown"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v4, "apn"

    const-string v5, "unknown"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v4, "srcip"

    const-string v5, "unknown"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v4, "isok"

    const-string v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v4, "timescounted"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/feedback/a/a;->e()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v4, "starttime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "rqd_upload_nowifi_consumed"

    invoke-virtual {v2}, Lcom/tencent/feedback/c/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "rqd_upload_wifi_consumed"

    invoke-virtual {v2}, Lcom/tencent/feedback/c/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v4

    .line 147
    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the values in RQD Count Consumed is not format length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 150
    goto/16 :goto_0

    .line 153
    :cond_3
    const-string v1, "elapse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v4, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "upconsumed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x1

    aget-wide v5, v4, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_4
    invoke-virtual {v2, v3}, Lcom/tencent/feedback/c/i;->a(Ljava/util/Map;)V

    move-object v0, v2

    .line 174
    goto/16 :goto_0

    .line 159
    :cond_5
    const-string v1, "elapse"

    const-string v4, "0"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "size"

    const-string v4, "0"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v1

    .line 163
    if-eqz v1, :cond_4

    .line 165
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_4

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Lcom/tencent/feedback/c/i;)Lspeedmonitor/IpMonitor;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_0

    const-string v0, "IP"

    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 49
    :goto_0
    return-object v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->e()Ljava/util/Map;

    move-result-object v3

    .line 24
    if-nez v3, :cond_2

    move-object v0, v1

    .line 25
    goto :goto_0

    .line 31
    :cond_2
    :try_start_0
    new-instance v2, Lspeedmonitor/IpMonitor;

    invoke-direct {v2}, Lspeedmonitor/IpMonitor;-><init>()V

    .line 32
    const-string v0, "apn"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lspeedmonitor/IpMonitor;->a(Ljava/lang/String;)V

    .line 33
    const-string v0, "elapse"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lspeedmonitor/IpMonitor;->a(J)V

    .line 34
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Lspeedmonitor/IpMonitor;->c(Ljava/lang/String;)V

    .line 37
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lspeedmonitor/IpMonitor;->a(I)V

    .line 39
    const-string v0, "srcip"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lspeedmonitor/IpMonitor;->b(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lspeedmonitor/IpMonitor;->b(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 42
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 49
    goto :goto_0
.end method

.method public static b(Lcom/tencent/feedback/c/i;)Lspeedmonitor/a;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_0

    const-string v0, "PG"

    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->e()Ljava/util/Map;

    move-result-object v3

    .line 58
    if-nez v3, :cond_2

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 64
    :cond_2
    :try_start_0
    new-instance v2, Lspeedmonitor/a;

    invoke-direct {v2}, Lspeedmonitor/a;-><init>()V

    .line 65
    const-string v0, "apn"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lspeedmonitor/a;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lspeedmonitor/a;->c(Ljava/lang/String;)V

    .line 67
    const-string v0, "dnsserver"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lspeedmonitor/a;->e(Ljava/lang/String;)V

    .line 68
    const-string v0, "dnstime"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lspeedmonitor/a;->a(J)V

    .line 69
    const-string v0, "requestsendtime"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lspeedmonitor/a;->c(J)V

    .line 70
    const-string v0, "netwaittime"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lspeedmonitor/a;->d(J)V

    .line 71
    const-string v0, "responserecvreadtime"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lspeedmonitor/a;->e(J)V

    .line 72
    const-string v0, "srcip"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lspeedmonitor/a;->b(Ljava/lang/String;)V

    .line 73
    const-string v0, "targetip"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lspeedmonitor/a;->d(Ljava/lang/String;)V

    .line 74
    const-string v0, "tcptime"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lspeedmonitor/a;->b(J)V

    .line 75
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lspeedmonitor/a;->f(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 76
    goto/16 :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 83
    goto/16 :goto_0
.end method

.method public static c(Lcom/tencent/feedback/c/i;)Leventrecord/EventRecord;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 89
    if-eqz p0, :cond_0

    const-string v0, "UA"

    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->e()Ljava/util/Map;

    move-result-object v3

    .line 92
    if-nez v3, :cond_2

    move-object v0, v1

    .line 93
    goto :goto_0

    .line 97
    :cond_2
    :try_start_0
    new-instance v2, Leventrecord/EventRecord;

    invoke-direct {v2}, Leventrecord/EventRecord;-><init>()V

    .line 98
    const-string v0, "apn"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Leventrecord/EventRecord;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Leventrecord/EventRecord;->c(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/tencent/feedback/c/i;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Leventrecord/EventRecord;->c(J)V

    .line 101
    const-string v0, "srcip"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Leventrecord/EventRecord;->b(Ljava/lang/String;)V

    .line 102
    const-string v0, "elapse"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Leventrecord/EventRecord;->b(J)V

    .line 103
    const-string v0, "isok"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Leventrecord/EventRecord;->a(Z)V

    .line 104
    const-string v0, "size"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Leventrecord/EventRecord;->a(J)V

    .line 105
    const-string v0, "apn"

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "srcip"

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v3}, Lcom/tencent/feedback/common/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Leventrecord/EventRecord;->d(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new event record:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Leventrecord/EventRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 110
    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 117
    goto/16 :goto_0
.end method
