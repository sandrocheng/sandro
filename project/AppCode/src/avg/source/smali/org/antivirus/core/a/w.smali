.class public final Lorg/antivirus/core/a/w;
.super Lorg/antivirus/core/a/v;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    const-string v0, "droid.cloud.avg.com"

    iput-object v0, p0, Lorg/antivirus/core/a/w;->a:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lorg/antivirus/core/a/w;->b:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/antivirus/core/a/w;->c:I

    const v0, 0xc350

    iput v0, p0, Lorg/antivirus/core/a/w;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/core/a/w;->e:I

    return-void
.end method

.method private c(Landroid/content/Context;)I
    .locals 18

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "http://droid.cloud.avg.com/detections.aspx"

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lorg/antivirus/core/telephony/TelephonyInfo;->getUniqueId(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/a/b/a;->b([B)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/core/a/w;->h:Lorg/antivirus/core/b/a;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/core/a/w;->h:Lorg/antivirus/core/b/a;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    move v5, v1

    :goto_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_2
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const-class v3, Landroid/os/Build;

    const-string v4, "MANUFACTURER"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    :cond_0
    :goto_3
    :try_start_2
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lorg/antivirus/core/b/g;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_1
    const-string v1, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v3, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    move-object v4, v3

    :goto_4
    :try_start_4
    const-string v3, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    :goto_5
    :try_start_6
    const-string v3, "UTF-8"

    invoke-static {v4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v4}, Lorg/antivirus/core/EngineSettings;->getSecurityThreatsCount1()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v12}, Lorg/antivirus/core/EngineSettings;->getSecurityThreatsCount2()I

    move-result v12

    add-int/2addr v4, v12

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v13}, Lorg/antivirus/core/EngineSettings;->getSecurityThreats1()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v13}, Lorg/antivirus/core/EngineSettings;->getSecurityThreats2()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    const/16 v14, 0x26

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    const-string v14, "hmid=%s&hwid=%s&uuid=%s&type=%s&manufacturer=%s&os=%s&carrier=%s&lic=%d&pid=%d&pv=%s.%s&country=%s&dc=%s&%s"

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/4 v9, 0x1

    aput-object v8, v15, v9

    const/4 v8, 0x2

    aput-object v7, v15, v8

    const/4 v7, 0x3

    aput-object v10, v15, v7

    const/4 v7, 0x4

    aput-object v11, v15, v7

    const/4 v7, 0x5

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v8, v15, v7

    const/4 v7, 0x6

    aput-object v3, v15, v7

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v3

    const/16 v3, 0x8

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v3

    const/16 v3, 0x9

    const-string v5, "3.0.3"

    aput-object v5, v15, v3

    const/16 v3, 0xa

    const-string v5, "174757"

    aput-object v5, v15, v3

    const/16 v3, 0xb

    aput-object v1, v15, v3

    const/16 v1, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v1

    const/16 v1, 0xd

    aput-object v12, v15, v1

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "d5544fG==*%877hT--==HHSYlWeeY89904444=="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/a/b/a;->c([B)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Cache-Control"

    const-string v5, "no-cache"

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Pragma"

    const-string v5, "no-cache"

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Host"

    const-string v5, "droid.cloud.avg.com"

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v3, "&Z="

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const/16 v1, 0xc8

    if-eq v2, v1, :cond_6

    const/4 v1, 0x2

    :goto_6
    return v1

    :cond_3
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_4
    :try_start_8
    const-string v1, ""

    goto/16 :goto_2

    :catch_0
    move-exception v4

    invoke-static {v4}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v4, v3

    goto/16 :goto_4

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v3

    goto/16 :goto_5

    :catch_2
    move-exception v1

    :goto_7
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    :catch_3
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    goto :goto_7

    :catch_4
    move-exception v3

    goto/16 :goto_3

    :cond_7
    move v5, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getSecurityThreatsCount1()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getSecurityThreatsCount2()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/antivirus/core/a/w;->c(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/antivirus/core/a/w;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/antivirus/core/a/w;->e:I

    iget v2, p0, Lorg/antivirus/core/a/w;->e:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    :cond_2
    iput v0, p0, Lorg/antivirus/core/a/w;->e:I

    iget-object v2, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/antivirus/core/EngineSettings;->setSecurityThreats1(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2, v0}, Lorg/antivirus/core/EngineSettings;->setSecurityThreatsCount1(I)V

    iget-object v2, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/antivirus/core/EngineSettings;->setSecurityThreats2(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v2, v0}, Lorg/antivirus/core/EngineSettings;->setSecurityThreatsCount2(I)V

    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "basenames"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v1, "detection_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v6, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    move v0, v3

    :goto_0
    return v0

    :cond_1
    instance-of v1, v0, Ljava/util/TreeMap;

    if-nez v1, :cond_2

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    move v0, v3

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/antivirus/core/scanners/e;

    if-nez v1, :cond_5

    :cond_4
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    move v0, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-eq v1, v2, :cond_7

    :cond_6
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    move v0, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/core/scanners/e;

    iget-object v5, v1, Lorg/antivirus/core/scanners/e;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lorg/antivirus/core/scanners/e;->a:Ljava/lang/String;

    const-string v7, "[0-9a-fA-F]{40}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    iget-object v5, v1, Lorg/antivirus/core/scanners/e;->b:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v1, v1, Lorg/antivirus/core/scanners/e;->b:Ljava/lang/String;

    const-string v5, "[0-9a-fA-F]{40}"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_a
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    move v0, v3

    goto/16 :goto_0

    :cond_b
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v3

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_c

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "dex="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antivirus/core/scanners/e;

    iget-object v2, v2, Lorg/antivirus/core/scanners/e;->a:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "&man="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antivirus/core/scanners/e;

    iget-object v2, v2, Lorg/antivirus/core/scanners/e;->b:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "&base="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "&sig="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antivirus/core/scanners/e;

    iget-object v2, v2, Lorg/antivirus/core/scanners/e;->c:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&loc="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antivirus/core/scanners/e;

    iget-object v2, v2, Lorg/antivirus/core/scanners/e;->d:Lorg/antivirus/core/scanners/f;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/f;->a()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "&cat="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/core/scanners/e;

    iget-object v1, v1, Lorg/antivirus/core/scanners/e;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getSecurityThreatsCurrentLog()I

    move-result v0

    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getSecurityThreats1()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getSecurityThreats2()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v1, v8

    const v8, 0xc350

    if-le v1, v8, :cond_d

    if-nez v0, :cond_10

    move v0, v4

    :goto_3
    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setSecurityThreatsCurrentLog(I)V

    if-nez v0, :cond_11

    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    const-string v8, ""

    invoke-virtual {v1, v8}, Lorg/antivirus/core/EngineSettings;->setSecurityThreats1(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/antivirus/core/EngineSettings;->setSecurityThreatsCount1(I)V

    :cond_d
    :goto_4
    if-nez v0, :cond_12

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v0, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setSecurityThreats1(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getSecurityThreatsCount1()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setSecurityThreatsCount1(I)V

    :goto_5
    move v0, v4

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_10
    move v0, v3

    goto :goto_3

    :cond_11
    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    const-string v8, ""

    invoke-virtual {v1, v8}, Lorg/antivirus/core/EngineSettings;->setSecurityThreats2(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/antivirus/core/EngineSettings;->setSecurityThreatsCount2(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v0, v3

    goto/16 :goto_0

    :cond_12
    :try_start_1
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v0, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setSecurityThreats2(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    iget-object v1, p0, Lorg/antivirus/core/a/w;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getSecurityThreatsCount2()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setSecurityThreatsCount2(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x429

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
