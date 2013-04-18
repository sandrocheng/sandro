.class public final Lcom/ijinshan/software/recommand/p;
.super Ljava/lang/Object;
.source "SoftwareRecommand_JSON.java"


# static fields
.field private static a:Landroid/content/pm/PackageManager;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "360\u624b\u673a\u536b\u58eb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u77ed\u4fe1\u62e6\u622a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6765\u7535\u62e6\u622a"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5783\u573e\u77ed\u4fe1\u8fc7\u6ee4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6728\u9a6c\u67e5\u6740"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5b89\u5168"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u624b\u673a\u6740\u6bd2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6d41\u91cf\u76d1\u63a7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6d41\u91cf\u7edf\u8ba1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u8f6f\u4ef6\u7ba1\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8fdb\u7a0b\u7ba1\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u7cfb\u7edf\u6e05\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u7535\u8bdd\u672c\u5907\u4efd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u7535\u8bdd\u9632\u706b\u5899"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u624b\u673a\u9632\u76d7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "IP\u62e8\u53f7"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u5f52\u5c5e\u5730\u67e5\u8be2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5feb\u901f\u62e8\u53f7"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u901a\u8baf\u5f55\u5907\u4efd"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "QQ\u624b\u673a\u7ba1\u5bb6"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "QQ\u5b89\u5168\u52a9\u624b"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5b89\u5168\u7ba1\u5bb6"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5b89\u5168\u5927\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u5b89\u5168\u4e13\u5bb6"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u4f18\u5316"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u7f51\u79e6\u6740\u6bd2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u7f51\u79e6\u624b\u673a\u536b\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u7f51\u79e6\u901a\u8baf\u7ba1\u5bb6"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u7f51\u79e6"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u4fe1\u5b89\u6613"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u6765\u7535\u901a"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u53cb\u5f55\u901a\u8baf\u5f55"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "QQ\u540c\u6b65\u52a9\u624b"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "LBE\u9690\u79c1\u536b\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "LBE\u624b\u673a\u5b89\u5168\u5927\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "LBE"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "LBE\u5b89\u5168\u5927\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "360\u5b9d\u76d2"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "360\u536b\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "360\u5b89\u5168"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "360\u6d4f\u89c8\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "360"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ijinshan/software/recommand/p;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 110
    sput-object p0, Lcom/ijinshan/software/recommand/p;->a:Landroid/content/pm/PackageManager;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 113
    invoke-static {p1}, Lcom/ijinshan/software/recommand/p;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    if-nez v1, :cond_1

    move-object v0, v7

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    :try_start_0
    const-string v2, "promoters"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 121
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 122
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 125
    :try_start_1
    const-string v5, "app_package_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ijinshan/software/recommand/p;->b(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 130
    :goto_2
    if-nez v5, :cond_2

    :try_start_2
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ijinshan/software/recommand/p;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    new-instance v5, Lcom/ijinshan/software/recommand/q;

    invoke-direct {v5}, Lcom/ijinshan/software/recommand/q;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 134
    :try_start_3
    const-string v6, "app_version_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 144
    :goto_3
    :try_start_4
    const-string v6, "app_version_code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 150
    :goto_4
    :try_start_5
    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->e:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 156
    :goto_5
    :try_start_6
    const-string v6, "down_url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->f:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 165
    :goto_6
    :try_start_7
    const-string v6, "icon"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->a:Ljava/lang/String;

    .line 166
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->b:Ljava/lang/String;

    .line 167
    const-string v6, "ad_words"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/ijinshan/software/recommand/q;->g:Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 121
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :catch_0
    move-exception v5

    move-object v5, v7

    goto :goto_2

    :catch_1
    move-exception v6

    .line 137
    :try_start_8
    const-string v6, "app_version_code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->c:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 139
    :catch_2
    move-exception v6

    const/4 v6, 0x0

    :try_start_9
    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->c:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 171
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 146
    :catch_4
    move-exception v6

    const/4 v6, 0x0

    :try_start_a
    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->d:Ljava/lang/String;

    goto :goto_4

    .line 152
    :catch_5
    move-exception v6

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->e:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    :catch_6
    move-exception v6

    .line 159
    :try_start_b
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->f:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_6

    .line 161
    :catch_7
    move-exception v6

    const/4 v6, 0x0

    :try_start_c
    iput-object v6, v5, Lcom/ijinshan/software/recommand/q;->f:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 26
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 32
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    move-object v0, v4

    .line 67
    :goto_2
    return-object v0

    .line 37
    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_2

    .line 48
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 53
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    :goto_3
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 62
    :catch_2
    move-exception v0

    move-object v0, v4

    goto :goto_2

    .line 54
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 56
    :goto_4
    throw v1

    .line 54
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_1
    move-object v0, v4

    .line 67
    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 84
    :try_start_0
    sget-object v0, Lcom/ijinshan/software/recommand/p;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 97
    sget-object v0, Lcom/ijinshan/software/recommand/p;->b:[Ljava/lang/String;

    array-length v0, v0

    move v1, v3

    .line 98
    :goto_0
    if-ge v1, v0, :cond_2

    .line 99
    sget-object v2, Lcom/ijinshan/software/recommand/p;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ijinshan/software/recommand/p;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ijinshan/software/recommand/p;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x1

    .line 105
    :goto_1
    return v0

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 105
    goto :goto_1
.end method
