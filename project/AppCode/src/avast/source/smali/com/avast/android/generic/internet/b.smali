.class public abstract Lcom/avast/android/generic/internet/b;
.super Ljava/lang/Object;
.source "Http.java"


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static b:I

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/android/generic/internet/b;->a:Landroid/content/IntentFilter;

    .line 90
    sput v2, Lcom/avast/android/generic/internet/b;->b:I

    .line 91
    sput v2, Lcom/avast/android/generic/internet/b;->c:I

    .line 92
    sput-object v3, Lcom/avast/android/generic/internet/b;->d:Ljava/lang/String;

    .line 93
    sput-object v3, Lcom/avast/android/generic/internet/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    return-void
.end method

.method public static a(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 790
    invoke-static {p0, p1}, Lcom/avast/android/generic/internet/b;->c(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    .line 793
    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/String;Lcom/avast/a/a/a/a/m;Ljava/lang/String;)Lcom/avast/a/a/a/ak;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-static {}, Lcom/avast/a/a/a/s;->l()Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/a/a/a/t;->a(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/avast/a/a/a/t;->a(Lcom/avast/a/a/a/a/m;)Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/a/a/a/t;->b(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/a/a/t;->c()Lcom/avast/a/a/a/s;

    move-result-object v0

    .line 780
    invoke-static {p0, p4}, Lcom/avast/android/generic/internet/b;->c(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v1

    .line 783
    invoke-virtual {v1, v0}, Lcom/avast/a/a/a/ak;->a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/ae;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/avast/a/a/a/ak;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 802
    invoke-static {}, Lcom/avast/a/a/a/s;->l()Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/a/a/a/t;->a(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/avast/a/a/a/t;->a(Z)Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/a/a/a/t;->b(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    move-result-object v0

    sget-object v1, Lcom/avast/a/a/a/a/m;->a:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/t;->a(Lcom/avast/a/a/a/a/m;)Lcom/avast/a/a/a/t;

    move-result-object v0

    .line 808
    if-eqz p3, :cond_0

    .line 809
    invoke-virtual {v0, p3}, Lcom/avast/a/a/a/t;->c(Ljava/lang/String;)Lcom/avast/a/a/a/t;

    .line 811
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/avast/android/generic/internet/b;->c(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v1

    .line 814
    invoke-virtual {v0}, Lcom/avast/a/a/a/t;->c()Lcom/avast/a/a/a/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/a/a/a/ak;->a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/avast/a/a/a/c;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1048
    const-string v0, "AvastComms"

    const-string v1, "Starting connection check"

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 1052
    :try_start_0
    const-string v0, "com.avast.android.backup"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "https://ff-backup.avast.com"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/connectionCheck?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    const-string v1, "AvastComms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection check to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 1061
    invoke-static {}, Lcom/avast/a/a/a/v;->h()Lcom/avast/a/a/a/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/avast/a/a/a/w;->b(Ljava/lang/String;)Lcom/avast/a/a/a/w;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/avast/a/a/a/w;->a(Ljava/lang/String;)Lcom/avast/a/a/a/w;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/avast/a/a/a/w;->a(I)Lcom/avast/a/a/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/a/a/w;->c()Lcom/avast/a/a/a/v;

    move-result-object v1

    .line 1067
    invoke-virtual {v1}, Lcom/avast/a/a/a/v;->bo()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/avast/android/generic/internet/b;->a(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 1069
    const-string v1, "AvastComms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection check download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes of data succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 1071
    invoke-static {v0}, Lcom/avast/a/a/a/e;->a([B)Lcom/avast/a/a/a/e;

    move-result-object v0

    .line 1073
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1075
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->c()Lcom/avast/a/a/a/c;

    move-result-object v1

    sget-object v2, Lcom/avast/a/a/a/c;->a:Lcom/avast/a/a/a/c;

    if-eq v1, v2, :cond_1

    .line 1077
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->c()Lcom/avast/a/a/a/c;

    move-result-object v0

    .line 1099
    :goto_1
    return-object v0

    .line 1054
    :cond_0
    const-string v0, "https://ff-at.avast.com"

    goto/16 :goto_0

    .line 1080
    :cond_1
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1081
    sget-object v0, Lcom/avast/a/a/a/c;->m:Lcom/avast/a/a/a/c;

    goto :goto_1

    .line 1083
    :cond_2
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->i()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1084
    sget-object v0, Lcom/avast/a/a/a/c;->n:Lcom/avast/a/a/a/c;

    goto :goto_1

    .line 1086
    :cond_3
    const/4 v1, -0x1

    if-le p3, v1, :cond_4

    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1088
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->e()I

    move-result v0

    .line 1089
    invoke-static {p0, p3}, Lcom/avast/android/generic/util/aw;->a(Landroid/content/Context;I)Lcom/avast/android/generic/util/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/util/aw;->a()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1090
    sget-object v0, Lcom/avast/a/a/a/c;->l:Lcom/avast/a/a/a/c;

    goto :goto_1

    .line 1094
    :cond_4
    sget-object v0, Lcom/avast/a/a/a/c;->a:Lcom/avast/a/a/a/c;

    goto :goto_1

    .line 1099
    :cond_5
    sget-object v0, Lcom/avast/a/a/a/c;->k:Lcom/avast/a/a/a/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1102
    :catch_0
    move-exception v0

    .line 1104
    const-string v1, "AvastComms"

    const-string v2, "Download of connection check data IO Exception"

    invoke-static {v1, p0, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1106
    throw v0

    .line 1108
    :catch_1
    move-exception v0

    .line 1110
    const-string v1, "AvastComms"

    const-string v2, "Download of connection check data general exception"

    invoke-static {v1, p0, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1112
    throw v0
.end method

.method public static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 108
    :try_start_1
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Lcom/avast/android/generic/internet/b/a;

    invoke-direct {v1}, Lcom/avast/android/generic/internet/b/a;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :catch_0
    move-exception v1

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    check-cast v0, Ljava/net/HttpURLConnection;

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/avast/android/generic/util/af;->a([Ljava/net/HttpURLConnection;)V

    .line 117
    :cond_0
    throw v1

    .line 111
    :cond_1
    :try_start_2
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 112
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 1136
    sget v0, Lcom/avast/android/generic/internet/b;->c:I

    sput v0, Lcom/avast/android/generic/internet/b;->b:I

    .line 1137
    sget-object v0, Lcom/avast/android/generic/internet/b;->e:Ljava/lang/String;

    sput-object v0, Lcom/avast/android/generic/internet/b;->d:Ljava/lang/String;

    .line 1138
    return-void
.end method

.method protected static a(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 590
    if-nez p0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 595
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 582
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method protected static a(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 1
    .parameter

    .prologue
    .line 574
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lcom/avast/a/a/a/ak;J)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 946
    .line 948
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 949
    const-class v1, Lcom/avast/android/generic/ag;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 951
    const-string v2, "packageInstTime"

    invoke-virtual {v0, v2, p2, p3}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 953
    invoke-static {p0}, Lcom/avast/android/generic/util/z;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/avast/a/a/a/ak;->k(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move v2, v3

    .line 957
    :goto_0
    const-string v5, "c2dmri"

    invoke-virtual {v0, v5, p2, p3}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 959
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->F()Ljava/lang/String;

    move-result-object v2

    .line 960
    if-nez v2, :cond_0

    .line 961
    const-string v2, ""

    .line 963
    :cond_0
    invoke-virtual {p1, v2}, Lcom/avast/a/a/a/ak;->h(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move v2, v3

    .line 967
    :cond_1
    const-string v5, "accountSmsGateway"

    invoke-virtual {v1, v5, p2, p3}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 969
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v3

    .line 971
    :goto_1
    invoke-virtual {p1, v2}, Lcom/avast/a/a/a/ak;->a(Z)Lcom/avast/a/a/a/ak;

    .line 972
    if-eqz v2, :cond_2

    .line 974
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/avast/a/a/a/ak;->i(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    :cond_2
    move v2, v3

    .line 980
    :cond_3
    const-string v5, "encaccesscode"

    invoke-virtual {v1, v5, p2, p3}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 982
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->f()Ljava/lang/String;

    move-result-object v1

    .line 983
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/avast/android/generic/ae;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 985
    :cond_4
    invoke-virtual {p1, v4}, Lcom/avast/a/a/a/ak;->b(Z)Lcom/avast/a/a/a/ak;

    :goto_2
    move v2, v3

    .line 994
    :cond_5
    invoke-static {p0}, Lcom/avast/android/generic/f/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 996
    if-eqz v1, :cond_8

    .line 998
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->c()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "syncImeiCache"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 999
    if-eqz v5, :cond_6

    const-string v5, "syncImeiCache"

    invoke-virtual {v0, v5, p2, p3}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const-string v5, "syncImeiCache"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1002
    :cond_7
    invoke-virtual {p1, v1}, Lcom/avast/a/a/a/ak;->f(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    .line 1004
    const-string v2, "syncImeiCache"

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sub-long v1, p2, v7

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ae;->a(J)Z

    move v2, v3

    .line 1011
    :cond_8
    invoke-static {p0}, Lcom/avast/android/generic/f/b/a;->d(Landroid/content/Context;)I

    move-result v1

    .line 1012
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->c()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "syncMccCache"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 1013
    if-eqz v5, :cond_9

    const-string v5, "syncMccCache"

    invoke-virtual {v0, v5, p2, p3}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    if-lez v1, :cond_b

    const-string v5, "syncMccCache"

    invoke-virtual {v0, v5, v4}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;I)I

    move-result v5

    if-eq v1, v5, :cond_b

    .line 1016
    :cond_a
    invoke-virtual {p1, v1}, Lcom/avast/a/a/a/ak;->b(I)Lcom/avast/a/a/a/ak;

    .line 1018
    const-string v2, "syncMccCache"

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;I)V

    .line 1019
    sub-long v1, p2, v7

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ae;->a(J)Z

    move v2, v3

    .line 1024
    :cond_b
    invoke-static {p0}, Lcom/avast/android/generic/f/b/a;->e(Landroid/content/Context;)I

    move-result v1

    .line 1025
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->c()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "syncMocCache"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 1026
    if-eqz v5, :cond_c

    const-string v5, "syncMocCache"

    invoke-virtual {v0, v5, p2, p3}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    if-lez v1, :cond_e

    const-string v5, "syncMocCache"

    invoke-virtual {v0, v5, v4}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;I)I

    move-result v4

    if-eq v1, v4, :cond_e

    .line 1029
    :cond_d
    invoke-virtual {p1, v1}, Lcom/avast/a/a/a/ak;->c(I)Lcom/avast/a/a/a/ak;

    .line 1031
    const-string v2, "syncMocCache"

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;I)V

    .line 1032
    sub-long v1, p2, v7

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ae;->a(J)Z

    move v2, v3

    .line 1037
    :cond_e
    return v2

    :cond_f
    move v2, v4

    .line 969
    goto/16 :goto_1

    .line 988
    :cond_10
    invoke-virtual {p1, v3}, Lcom/avast/a/a/a/ak;->b(Z)Lcom/avast/a/a/a/ak;

    goto/16 :goto_2

    :cond_11
    move v2, v4

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/b;->a(Landroid/content/Context;Ljava/lang/String;[BLcom/avast/android/generic/internet/a;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[BLcom/avast/android/generic/internet/a;)[B
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    const/4 v3, 0x0

    .line 265
    const/4 v4, 0x0

    .line 266
    const/4 v2, 0x0

    .line 270
    :try_start_0
    invoke-static {v1}, Lcom/avast/android/generic/internet/b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 272
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 273
    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v5, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "Content-Length"

    move-object/from16 v0, p2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 280
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 282
    const/16 v1, 0x2710

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 283
    const/16 v1, 0x7530

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 285
    move-object/from16 v0, p2

    array-length v7, v0

    .line 286
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 288
    if-nez p3, :cond_1

    .line 290
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 291
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 323
    :goto_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 324
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_0

    const/16 v4, 0xcc

    if-ne v1, v4, :cond_6

    .line 326
    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 328
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 333
    :goto_1
    const/4 v6, 0x0

    array-length v8, v4

    invoke-virtual {v2, v4, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 334
    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 350
    :goto_2
    :try_start_3
    instance-of v5, v1, Lcom/avast/android/generic/util/ai;

    if-eqz v5, :cond_7

    .line 352
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    :catchall_0
    move-exception v1

    move-object v5, v4

    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 359
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 360
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/avast/android/generic/util/af;->a([Ljava/net/HttpURLConnection;)V

    .line 358
    throw v1

    .line 294
    :cond_1
    const/4 v6, 0x0

    .line 295
    const v4, 0xc800

    .line 296
    const/4 v1, 0x0

    .line 300
    :try_start_4
    const-string v8, ""

    int-to-long v9, v7

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v9, v10, v11}, Lcom/avast/android/generic/internet/a;->a(Ljava/lang/String;JI)V

    .line 302
    :goto_4
    if-ge v6, v7, :cond_3

    if-nez v1, :cond_3

    .line 304
    add-int v8, v6, v4

    if-lt v8, v7, :cond_2

    .line 306
    sub-int v4, v7, v6

    .line 307
    const/4 v1, 0x1

    .line 310
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 311
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 313
    add-int/2addr v6, v4

    .line 315
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v7

    .line 317
    const-string v9, ""

    int-to-long v10, v7

    int-to-double v12, v8

    const-wide v14, 0x3feccccccccccccdL

    mul-double/2addr v12, v14

    double-to-int v8, v12

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v10, v11, v8}, Lcom/avast/android/generic/internet/a;->a(Ljava/lang/String;JI)V

    goto :goto_4

    .line 358
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 320
    :cond_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    goto/16 :goto_0

    .line 337
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 339
    if-eqz p3, :cond_5

    .line 340
    const-string v4, ""

    int-to-long v6, v7

    const/16 v8, 0x64

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6, v7, v8}, Lcom/avast/android/generic/internet/a;->a(Ljava/lang/String;JI)V

    .line 342
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    .line 358
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 359
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 360
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/avast/android/generic/util/af;->a([Ljava/net/HttpURLConnection;)V

    .line 342
    return-object v1

    .line 345
    :cond_6
    :try_start_5
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 355
    :cond_7
    :try_start_6
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 358
    :catchall_2
    move-exception v1

    move-object v5, v3

    move-object v3, v4

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    move-object v3, v4

    goto/16 :goto_3

    .line 348
    :catch_1
    move-exception v1

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_2
.end method

.method public static b(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 820
    invoke-static {}, Lcom/avast/a/a/a/y;->d()Lcom/avast/a/a/a/z;

    move-result-object v0

    sget-object v1, Lcom/avast/a/a/a/aa;->a:Lcom/avast/a/a/a/aa;

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/z;->a(Lcom/avast/a/a/a/aa;)Lcom/avast/a/a/a/z;

    move-result-object v0

    .line 823
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/avast/android/generic/internet/b;->c(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v1

    .line 825
    invoke-virtual {v1, p1}, Lcom/avast/a/a/a/ak;->h(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    .line 827
    invoke-virtual {v0}, Lcom/avast/a/a/a/z;->c()Lcom/avast/a/a/a/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/a/a/a/ak;->a(Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x64

    const/4 v6, -0x1

    .line 873
    invoke-static {}, Lcom/avast/a/a/a/aj;->aj()Lcom/avast/a/a/a/ak;

    move-result-object v3

    .line 875
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 878
    invoke-virtual {v3, p1}, Lcom/avast/a/a/a/ak;->c(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    .line 893
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v0

    .line 895
    if-nez v0, :cond_0

    .line 896
    const-string v0, ""

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->O()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 900
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->O()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lcom/avast/android/generic/internet/b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 901
    if-eqz v2, :cond_1

    .line 902
    const-string v4, "level"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 904
    const-string v5, "scale"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 907
    if-eq v4, v6, :cond_1

    if-eq v2, v6, :cond_1

    .line 908
    int-to-float v4, v4

    int-to-float v2, v2

    div-float v2, v4, v2

    .line 909
    const/high16 v4, 0x42c8

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 911
    if-le v2, v1, :cond_5

    .line 916
    :goto_1
    sget v2, Lcom/avast/android/generic/internet/b;->b:I

    if-eq v1, v2, :cond_1

    .line 918
    sput v1, Lcom/avast/android/generic/internet/b;->c:I

    .line 919
    invoke-virtual {v3, v1}, Lcom/avast/a/a/a/ak;->d(I)Lcom/avast/a/a/a/ak;

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->O()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/f/b/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 926
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 928
    const-string v2, "AvastGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current local IP address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    sget-object v2, Lcom/avast/android/generic/internet/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 931
    sput-object v1, Lcom/avast/android/generic/internet/b;->e:Ljava/lang/String;

    .line 932
    invoke-virtual {v3, v1}, Lcom/avast/a/a/a/ak;->m(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    .line 936
    :cond_2
    const-string v1, "ANDROID"

    invoke-virtual {v3, v1}, Lcom/avast/a/a/a/ak;->a(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/a/a/a/ak;->d(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/a/a/a/ak;->e(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/ak;->g(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/ak;->a(I)Lcom/avast/a/a/a/ak;

    .line 942
    return-object v3

    .line 879
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 881
    invoke-virtual {v3, v0}, Lcom/avast/a/a/a/ak;->c(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    goto/16 :goto_0

    .line 884
    :cond_4
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcom/avast/a/a/a/ak;->c(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    goto/16 :goto_0

    .line 913
    :cond_5
    if-gez v2, :cond_6

    .line 914
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/a/a/a/ak;Lcom/avast/android/generic/internet/k;Z)Lcom/avast/a/a/a/h;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 476
    .line 482
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 483
    :try_start_1
    new-instance v2, Lb/a/a/a/a/h;

    sget-object v1, Lb/a/a/a/a/e;->b:Lb/a/a/a/a/e;

    invoke-direct {v2, v1}, Lb/a/a/a/a/h;-><init>(Lb/a/a/a/a/e;)V

    .line 485
    new-instance v4, Lb/a/a/a/a/a/b;

    invoke-virtual {p3}, Lcom/avast/a/a/a/ak;->c()Lcom/avast/a/a/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/a/a/aj;->bo()[B

    move-result-object v1

    const-string v5, "application/octet-stream"

    invoke-direct {v4, v1, v5}, Lb/a/a/a/a/a/b;-><init>([BLjava/lang/String;)V

    .line 487
    invoke-virtual {p4}, Lcom/avast/android/generic/internet/k;->b()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 489
    new-instance v1, Lb/a/a/a/a/a/e;

    invoke-virtual {p4}, Lcom/avast/android/generic/internet/k;->b()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p4}, Lcom/avast/android/generic/internet/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lb/a/a/a/a/a/e;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    :goto_0
    const-string v5, "metadata"

    invoke-virtual {v2, v5, v4}, Lb/a/a/a/a/h;->a(Ljava/lang/String;Lb/a/a/a/a/a/c;)V

    .line 496
    const-string v4, "file"

    invoke-virtual {v2, v4, v1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;Lb/a/a/a/a/a/c;)V

    .line 498
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 500
    const-string v1, "avast! Anti-Theft"

    invoke-static {v1}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 502
    :try_start_2
    invoke-virtual {v1}, Landroid/b/a/a;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 504
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_5

    .line 505
    const-string v4, "https"

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v4

    if-nez v4, :cond_0

    .line 506
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 511
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 513
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_1

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v2

    const/16 v5, 0xcc

    if-ne v2, v5, :cond_6

    .line 518
    :cond_1
    :try_start_4
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/avast/a/a/a/h;->a([B)Lcom/avast/a/a/a/h;

    move-result-object v2

    .line 520
    invoke-static {v3}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/client/methods/HttpPost;)V

    .line 521
    invoke-static {v4}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/HttpResponse;)V

    .line 523
    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {v1}, Landroid/b/a/a;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 529
    :cond_2
    return-object v2

    .line 490
    :cond_3
    :try_start_5
    invoke-virtual {p4}, Lcom/avast/android/generic/internet/k;->c()[B

    move-result-object v1

    if-eqz v1, :cond_9

    .line 492
    new-instance v1, Lb/a/a/a/a/a/b;

    invoke-virtual {p4}, Lcom/avast/android/generic/internet/k;->c()[B

    move-result-object v5

    invoke-virtual {p4}, Lcom/avast/android/generic/internet/k;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "binaryFile"

    invoke-direct {v1, v5, v6, v7}, Lb/a/a/a/a/a/b;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 557
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v8

    .line 559
    :goto_2
    invoke-static {v1}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/client/methods/HttpPost;)V

    .line 560
    invoke-static {v2}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/HttpResponse;)V

    .line 562
    if-eqz v3, :cond_4

    .line 564
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    .line 568
    :cond_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_5
    :try_start_6
    invoke-static {p1, v2}, Lcom/avast/android/generic/internet/c;->a(Landroid/content/Context;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 557
    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_2

    .line 530
    :catch_2
    move-exception v2

    .line 532
    :try_start_7
    invoke-static {v3}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/client/methods/HttpPost;)V

    .line 533
    invoke-static {v4}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/HttpResponse;)V

    .line 535
    if-eqz v1, :cond_8

    .line 537
    invoke-virtual {v1}, Landroid/b/a/a;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 541
    :goto_3
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 557
    :catch_3
    move-exception v1

    move-object v2, v4

    move-object v8, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    .line 545
    :cond_6
    :try_start_9
    invoke-static {v3}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/client/methods/HttpPost;)V

    .line 546
    invoke-static {v4}, Lcom/avast/android/generic/internet/b;->a(Lorg/apache/http/HttpResponse;)V

    .line 548
    if-eqz v1, :cond_7

    .line 550
    invoke-virtual {v1}, Landroid/b/a/a;->a()V

    move-object v1, v0

    .line 554
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP status "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 557
    :catch_4
    move-exception v0

    move-object v2, v4

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/a/a/a/ak;Z)Lcom/avast/a/a/a/h;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 202
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 209
    :try_start_0
    invoke-static {v0}, Lcom/avast/android/generic/internet/b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 211
    :try_start_1
    invoke-virtual {p3}, Lcom/avast/a/a/a/ak;->c()Lcom/avast/a/a/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/a/a/aj;->bo()[B

    move-result-object v0

    .line 213
    const-string v2, "POST"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 214
    const-string v2, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "Content-Length"

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 219
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 220
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 221
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 222
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 223
    const/16 v2, 0x2710

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 224
    const/16 v2, 0x7530

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 226
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 228
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 229
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 231
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 232
    const/16 v4, 0xc8

    if-eq v0, v4, :cond_0

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_1

    .line 234
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/avast/a/a/a/h;->a(Ljava/io/InputStream;)Lcom/avast/a/a/a/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 248
    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v2, v4, v8

    invoke-static {v4}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 249
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v8

    invoke-static {v2}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 250
    new-array v1, v7, [Ljava/net/HttpURLConnection;

    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/avast/android/generic/util/af;->a([Ljava/net/HttpURLConnection;)V

    .line 237
    return-object v0

    .line 240
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 243
    :catch_0
    move-exception v0

    .line 245
    :goto_0
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    :catchall_0
    move-exception v0

    :goto_1
    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v2, v4, v8

    invoke-static {v4}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 249
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v8

    invoke-static {v2}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 250
    new-array v1, v7, [Ljava/net/HttpURLConnection;

    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/avast/android/generic/util/af;->a([Ljava/net/HttpURLConnection;)V

    .line 248
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 243
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_0
.end method

.method protected abstract a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;I)Z
.end method

.method protected abstract a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;IJ)Z
.end method
