.class public final Lcom/keniu/security/sync/y;
.super Ljava/lang/Object;
.source "XMLUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = null

.field private static final c:I = 0x0

.field private static final d:Ljava/lang/String; = "MessageHistory"

.field private static final e:Ljava/lang/String; = "ContactHistory"

.field private static final f:Ljava/lang/String; = "HistoryRecord"

.field private static final g:Ljava/lang/String; = "FileName"

.field private static final h:Ljava/lang/String; = "FileSize"

.field private static final i:Ljava/lang/String; = "CreateTime"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mosecurity/Backup/contactHistory.cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/y;->a:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mosecurity/Backup/messageHistory.cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/sync/y;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/util/List;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    if-nez p0, :cond_0

    sget-object v3, Lcom/keniu/security/sync/y;->a:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "HistoryRecord"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move v3, v4

    .line 64
    :goto_1
    if-ge v3, v2, :cond_1

    .line 65
    new-instance v4, Lcom/keniu/security/sync/HistoryRecord;

    invoke-direct {v4}, Lcom/keniu/security/sync/HistoryRecord;-><init>()V

    .line 66
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 67
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/keniu/security/sync/HistoryRecord;->a(Ljava/lang/String;)V

    .line 68
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/keniu/security/sync/HistoryRecord;->c(Ljava/lang/String;)V

    .line 69
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keniu/security/sync/HistoryRecord;->b(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    :cond_0
    sget-object v3, Lcom/keniu/security/sync/y;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 75
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/List;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 23
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v5

    .line 48
    :goto_0
    return v0

    .line 25
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 27
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 28
    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    const-string v2, ""

    if-nez p1, :cond_2

    const-string v3, "ContactHistory"

    :goto_1
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/HistoryRecord;

    .line 31
    const-string v3, ""

    const-string v4, "HistoryRecord"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    const-string v3, ""

    const-string v4, "FileName"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    invoke-virtual {p0}, Lcom/keniu/security/sync/HistoryRecord;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    const-string v3, ""

    const-string v4, "FileName"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    const-string v3, ""

    const-string v4, "FileSize"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    invoke-virtual {p0}, Lcom/keniu/security/sync/HistoryRecord;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    const-string v3, ""

    const-string v4, "FileSize"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    const-string v3, ""

    const-string v4, "CreateTime"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    invoke-virtual {p0}, Lcom/keniu/security/sync/HistoryRecord;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    const-string v3, ""

    const-string v4, "CreateTime"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    const-string v3, ""

    const-string v4, "HistoryRecord"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_0

    .line 29
    :cond_2
    const-string v3, "MessageHistory"

    goto :goto_1

    .line 43
    :cond_3
    const-string v2, ""

    if-nez p1, :cond_4

    const-string v3, "ContactHistory"

    :goto_3
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 46
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_5

    sget-object v1, Lcom/keniu/security/sync/y;->a:Ljava/lang/String;

    :goto_4
    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 43
    :cond_4
    const-string v3, "MessageHistory"

    goto :goto_3

    .line 46
    :cond_5
    sget-object v1, Lcom/keniu/security/sync/y;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public static b(I)Z
    .locals 2
    .parameter

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    if-nez p0, :cond_0

    sget-object v1, Lcom/keniu/security/sync/y;->a:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lcom/keniu/security/sync/y;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Ljava/util/List;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/keniu/security/sync/y;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/keniu/security/sync/y;->a(Ljava/util/List;I)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-static {p0}, Lcom/keniu/security/sync/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    if-nez p0, :cond_0

    sget-object v1, Lcom/keniu/security/sync/y;->a:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 84
    :goto_1
    return v0

    .line 83
    :cond_0
    sget-object v1, Lcom/keniu/security/sync/y;->b:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
