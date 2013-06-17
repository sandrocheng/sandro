.class public Lcom/antivirus/core/d/a/f;
.super Lcom/avg/toolkit/b/g;


# instance fields
.field public a:Z

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:I

.field private n:Lcom/avg/toolkit/UID/a;

.field private o:Z

.field private p:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/antivirus/core/d/a/f;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/antivirus/core/d/a/f;->c:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/antivirus/core/d/a/f;->d:I

    const-string v0, "droid.cloud.avg.com"

    iput-object v0, p0, Lcom/antivirus/core/d/a/f;->e:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Lcom/antivirus/core/d/a/f;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/antivirus/core/d/a/f;->k:I

    const v0, 0xc350

    iput v0, p0, Lcom/antivirus/core/d/a/f;->l:I

    iput v1, p0, Lcom/antivirus/core/d/a/f;->m:I

    iput-boolean v1, p0, Lcom/antivirus/core/d/a/f;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/d/a/f;->p:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/core/d/a/f;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/antivirus/core/d/a/f;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/antivirus/core/d/a/f;->c:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/antivirus/core/d/a/f;->d:I

    const-string v0, "droid.cloud.avg.com"

    iput-object v0, p0, Lcom/antivirus/core/d/a/f;->e:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Lcom/antivirus/core/d/a/f;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/antivirus/core/d/a/f;->k:I

    const v0, 0xc350

    iput v0, p0, Lcom/antivirus/core/d/a/f;->l:I

    iput v1, p0, Lcom/antivirus/core/d/a/f;->m:I

    iput-boolean v1, p0, Lcom/antivirus/core/d/a/f;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/d/a/f;->p:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/core/d/a/f;->a:Z

    iput-boolean p1, p0, Lcom/antivirus/core/d/a/f;->o:Z

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dex="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/f;

    iget-object v1, v1, Lcom/antivirus/core/scanners/f;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&man="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/f;

    iget-object v1, v1, Lcom/antivirus/core/scanners/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&base="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&sig="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/f;

    iget-object v1, v1, Lcom/antivirus/core/scanners/f;->c:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&loc="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/f;

    iget-object v1, v1, Lcom/antivirus/core/scanners/f;->d:Lcom/antivirus/core/scanners/g;

    invoke-virtual {v1}, Lcom/antivirus/core/scanners/g;->a()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&cat="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/f;

    iget-object v1, v1, Lcom/antivirus/core/scanners/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&drywet="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/f;

    iget-object v0, v0, Lcom/antivirus/core/scanners/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    return-object v2
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/d/a/f;->p:Ljava/util/List;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/antivirus/core/d/a/f;->a:Z

    if-eqz v0, :cond_5

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "dex"

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "fp tag in response doesn\'t contain dex attribute"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_3
    const-string v2, "man"

    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "fp tag in response doesn\'t contain man attribute"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/StringReader;->close()V

    :cond_3
    throw v0

    :cond_4
    :try_start_4
    iget-object v9, p0, Lcom/antivirus/core/d/a/f;->p:Ljava/util/List;

    new-instance v0, Lcom/antivirus/core/scanners/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/antivirus/core/scanners/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/StringReader;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->q()I

    move-result v1

    invoke-virtual {v0}, Lcom/antivirus/core/b;->s()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/antivirus/core/d/a/f;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 20

    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/antivirus/core/d/a/f;->n:Lcom/avg/toolkit/UID/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/avg/toolkit/UID/a;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/avg/toolkit/UID/a;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/antivirus/core/d/a/f;->n:Lcom/avg/toolkit/UID/a;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/antivirus/core/d/a/f;->n:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    :try_start_1
    const-string v8, "http://droid.cloud.avg.com/detections.aspx"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/antivirus/core/d/a/f;->n:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, La/a/a/a/b/a;->e([B)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    const/16 v5, 0x20

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/antivirus/core/d/a/f;->h:Lcom/avg/toolkit/e/a;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/antivirus/core/d/a/f;->h:Lcom/avg/toolkit/e/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    move v7, v1

    :goto_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_3
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    if-le v2, v5, :cond_3

    const-class v2, Landroid/os/Build;

    const-string v5, "MANUFACTURER"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v1

    :cond_3
    :goto_4
    :try_start_3
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/avg/toolkit/e/g;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/avg/toolkit/e/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/avg/toolkit/e/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x4

    if-le v2, v5, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_4
    const-string v1, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    move-object v5, v2

    :goto_5
    :try_start_5
    const-string v2, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    move-object v6, v1

    :goto_6
    :try_start_7
    const-string v1, "UTF-8"

    invoke-static {v5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v14

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v1, v5, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v1

    move-object v5, v1

    :goto_7
    :try_start_9
    invoke-static {}, Lcom/avg/toolkit/a/a;->a()Lcom/avg/toolkit/a/c;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/avg/toolkit/a/c;->a()I

    move-result v1

    move v2, v1

    :goto_8
    const/4 v1, 0x0

    check-cast v1, Ljava/util/Locale;

    const-string v15, "ver=%d&hmid=%s&hwid=%s&uuid=%s&type=%s&manufacturer=%s&os=%s&carrier=%s&lic=%d&pid=%d&pv=%s.%s&country=%s&dc=%s&%s"

    const/16 v16, 0xf

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v11, v16, v17

    const/4 v11, 0x2

    aput-object v10, v16, v11

    const/4 v10, 0x3

    aput-object v9, v16, v10

    const/4 v9, 0x4

    aput-object v12, v16, v9

    const/4 v9, 0x5

    aput-object v13, v16, v9

    const/4 v9, 0x6

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v10, v16, v9

    const/4 v9, 0x7

    aput-object v14, v16, v9

    const/16 v9, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v16, v9

    const/16 v7, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v16, v7

    const/16 v2, 0xa

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v16, v2

    const/16 v2, 0xb

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v16, v2

    const/16 v2, 0xc

    aput-object v6, v16, v2

    const/16 v2, 0xd

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v16, v2

    const/16 v2, 0xe

    aput-object p3, v16, v2

    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "d5544fG==*%877hT--==HHSYlWeeY89904444=="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, La/a/a/a/b/a;->f([B)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "Cache-Control"

    const-string v6, "no-cache"

    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Pragma"

    const-string v6, "no-cache"

    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Host"

    const-string v6, "droid.cloud.avg.com"

    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "&Z="

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_9

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move v1, v2

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x3

    goto/16 :goto_1

    :cond_7
    :try_start_b
    const-string v1, ""

    goto/16 :goto_3

    :catch_0
    move-exception v5

    invoke-static {v5}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v5, v2

    goto/16 :goto_5

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v6, v2

    goto/16 :goto_6

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-object v5, v2

    goto/16 :goto_7

    :cond_8
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_8

    :cond_9
    const/4 v6, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/antivirus/core/d/a/f;->a:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/antivirus/core/d/a/f;->o:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/antivirus/core/d/a/f;->p:Ljava/util/List;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x400

    :try_start_d
    new-array v2, v2, [C

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_9
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/antivirus/core/d/a/f;->a:Z

    if-eqz v5, :cond_c

    invoke-virtual {v4, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_c

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v5}, Ljava/io/Writer;->write([CII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v2

    move-object/from16 v19, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object/from16 v1, v19

    :goto_a
    if-eqz v3, :cond_a

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    :cond_b
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :catch_3
    move-exception v1

    move-object v2, v1

    move v1, v6

    :goto_b
    :try_start_11
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :cond_c
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v5, 0x0

    :try_start_14
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    const/4 v2, 0x0

    :try_start_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/antivirus/core/d/a/f;->a:Z

    if-eqz v3, :cond_d

    const-string v3, "\\s+"

    const/4 v7, 0x2

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "d5544fG==*%877hT--==HHSYlWeeY89904444=="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, La/a/a/a/b/a;->f([B)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    aget-object v1, v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/antivirus/core/d/a/f;->a(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :cond_d
    if-eqz v4, :cond_e

    :try_start_16
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    :cond_f
    :goto_c
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :goto_d
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v1

    :catchall_2
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_d

    :catchall_3
    move-exception v1

    move-object v4, v5

    goto :goto_d

    :catch_4
    move-exception v1

    move-object v2, v1

    move v1, v3

    goto/16 :goto_b

    :catch_5
    move-exception v2

    move-object v4, v1

    move v1, v3

    goto/16 :goto_b

    :catch_6
    move-exception v2

    move-object v4, v1

    move v1, v6

    goto/16 :goto_b

    :catch_7
    move-exception v1

    move-object v2, v1

    move-object v4, v5

    move v1, v6

    goto/16 :goto_b

    :catchall_4
    move-exception v2

    move-object v3, v5

    move-object/from16 v19, v4

    move-object v4, v1

    move-object v1, v2

    move-object/from16 v2, v19

    goto/16 :goto_a

    :catchall_5
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_a

    :catchall_6
    move-exception v2

    move-object/from16 v19, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object/from16 v1, v19

    goto/16 :goto_a

    :catchall_7
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_a

    :catchall_8
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_a

    :catch_8
    move-exception v2

    goto/16 :goto_4

    :cond_12
    move-object v5, v1

    goto :goto_c

    :cond_13
    move v7, v1

    goto/16 :goto_2
.end method

.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/antivirus/core/b;->q()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/core/b;->s()I

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

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "basenames"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "detection_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    instance-of v1, v0, Ljava/util/TreeMap;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/antivirus/core/scanners/f;

    if-nez v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v5

    if-eq v1, v5, :cond_7

    :cond_6
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/f;

    iget-object v6, v1, Lcom/antivirus/core/scanners/f;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v1, Lcom/antivirus/core/scanners/f;->a:Ljava/lang/String;

    const-string v7, "[0-9a-fA-F]{40}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, v1, Lcom/antivirus/core/scanners/f;->b:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v1, v1, Lcom/antivirus/core/scanners/f;->b:Ljava/lang/String;

    const-string v6, "[0-9a-fA-F]{40}"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_a
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    move v0, v2

    goto/16 :goto_0

    :cond_b
    :try_start_0
    invoke-static {v4, v0}, Lcom/antivirus/core/d/a/f;->a(Ljava/util/List;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lcom/antivirus/core/b;

    invoke-direct {v6, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/antivirus/core/b;->t()I

    move-result v0

    invoke-virtual {v6}, Lcom/antivirus/core/b;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/antivirus/core/b;->r()Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/2addr v1, v9

    const v9, 0xc350

    if-le v1, v9, :cond_c

    if-nez v0, :cond_f

    move v0, v3

    :goto_2
    invoke-virtual {v6, v0}, Lcom/antivirus/core/b;->d(I)V

    if-nez v0, :cond_10

    const-string v1, ""

    invoke-virtual {v6, v1}, Lcom/antivirus/core/b;->j(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/antivirus/core/b;->b(I)V

    :cond_c
    :goto_3
    if-nez v0, :cond_11

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/antivirus/core/b;->j(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/antivirus/core/b;->q()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/antivirus/core/b;->b(I)V

    :goto_4
    move v0, v3

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_f
    move v0, v2

    goto :goto_2

    :cond_10
    const-string v1, ""

    invoke-virtual {v6, v1}, Lcom/antivirus/core/b;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/antivirus/core/b;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v0, v2

    goto/16 :goto_0

    :cond_11
    :try_start_1
    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/antivirus/core/b;->k(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/antivirus/core/b;->s()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/antivirus/core/b;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/antivirus/core/d/a/f;->c(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/antivirus/core/d/a/f;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/antivirus/core/d/a/f;->m:I

    iget v2, p0, Lcom/antivirus/core/d/a/f;->m:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    :cond_2
    iput v0, p0, Lcom/antivirus/core/d/a/f;->m:I

    new-instance v2, Lcom/antivirus/core/b;

    invoke-direct {v2, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/antivirus/core/b;->j(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/antivirus/core/b;->b(I)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/antivirus/core/b;->k(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/antivirus/core/b;->c(I)V

    move v0, v1

    goto :goto_0
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x7d6

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/core/d/a/f;->p:Ljava/util/List;

    return-object v0
.end method
