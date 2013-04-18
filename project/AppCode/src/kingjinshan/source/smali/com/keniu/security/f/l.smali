.class public final Lcom/keniu/security/f/l;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SqlitePatcher.java"


# static fields
.field private static final h:Ljava/lang/String; = "diff"

.field private static final i:Ljava/lang/String; = "header"

.field private static final j:Ljava/lang/String; = "body"

.field private static final k:Ljava/lang/String; = "sql"

.field private static final l:Ljava/lang/String; = "delete"

.field private static final m:Ljava/lang/String; = "append"

.field private static final n:Ljava/lang/String; = "row"

.field private static final o:Ljava/lang/String; = "long"

.field private static final p:Ljava/lang/String; = "double"

.field private static final q:Ljava/lang/String; = "string"

.field private static final r:Ljava/lang/String; = "blob"

.field private static final s:Ljava/lang/String; = "null"

.field private static final t:Ljava/lang/String; = "version"

.field private static final u:Ljava/lang/String; = "type"

.field private static final v:Ljava/lang/String; = "version_source"

.field private static final w:Ljava/lang/String; = "version_target"

.field private static final x:Ljava/lang/String; = "statement"

.field private static final y:Ljava/lang/String; = "value"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/util/LinkedList;

.field private f:Lcom/keniu/security/f/o;

.field private g:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 245
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 119
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 121
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 130
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 126
    :catch_0
    move-exception v1

    :goto_2
    if-eqz v0, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 136
    :cond_0
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_4
    if-eqz v1, :cond_1

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 136
    :cond_1
    :goto_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 130
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 126
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/keniu/security/f/l;

    invoke-direct {v0}, Lcom/keniu/security/f/l;-><init>()V

    .line 23
    invoke-direct {v0, p0}, Lcom/keniu/security/f/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0, p1}, Lcom/keniu/security/f/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 144
    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 149
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :try_start_2
    iget-object v1, p0, Lcom/keniu/security/f/l;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 153
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 155
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/f/o;

    .line 156
    iget-object v2, p0, Lcom/keniu/security/f/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 160
    :try_start_3
    iget-object v3, p0, Lcom/keniu/security/f/o;->a:Ljava/lang/String;

    const-string v4, "sql"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 227
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move v0, v9

    .line 236
    :goto_2
    return v0

    .line 164
    :cond_2
    :try_start_6
    iget-object v3, p0, Lcom/keniu/security/f/o;->a:Ljava/lang/String;

    const-string v4, "delete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/keniu/security/f/o;->a:Ljava/lang/String;

    const-string v4, "append"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/keniu/security/f/o;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 170
    :goto_3
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    .line 174
    invoke-virtual {p0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move v5, v10

    .line 175
    :goto_4
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 177
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/f/n;

    .line 178
    iget-object v6, p0, Lcom/keniu/security/f/n;->a:Ljava/lang/String;

    const-string v7, "long"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/keniu/security/f/n;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v2, v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    move v5, v6

    goto :goto_4

    .line 182
    :cond_4
    iget-object v6, p0, Lcom/keniu/security/f/n;->a:Ljava/lang/String;

    const-string v7, "double"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 184
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/keniu/security/f/n;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v2, v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    move v5, v6

    goto :goto_4

    .line 186
    :cond_5
    iget-object v6, p0, Lcom/keniu/security/f/n;->a:Ljava/lang/String;

    const-string v7, "string"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 188
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/keniu/security/f/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    move v5, v6

    goto :goto_4

    .line 190
    :cond_6
    iget-object v6, p0, Lcom/keniu/security/f/n;->a:Ljava/lang/String;

    const-string v7, "blob"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 192
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/keniu/security/f/n;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/keniu/security/f/b;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    move v5, v6

    goto :goto_4

    .line 194
    :cond_7
    iget-object v6, p0, Lcom/keniu/security/f/n;->a:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 196
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v5, v6

    goto :goto_4

    .line 200
    :cond_8
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 222
    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 231
    if-eqz v0, :cond_9

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    move v0, v9

    goto/16 :goto_2

    .line 202
    :cond_a
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 204
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 214
    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1

    .line 209
    :cond_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 222
    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 231
    if-eqz v0, :cond_c

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    move v0, v9

    goto/16 :goto_2

    .line 216
    :cond_d
    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 222
    :try_start_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 231
    if-eqz v0, :cond_e

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    move v0, v10

    .line 236
    goto/16 :goto_2

    .line 231
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_f

    .line 233
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f
    throw v0

    .line 231
    :catchall_3
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_5

    .line 227
    :catch_1
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final endDocument()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 110
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public final startDocument()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "long"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "double"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "string"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "blob"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_0
    new-instance v0, Lcom/keniu/security/f/n;

    invoke-direct {v0}, Lcom/keniu/security/f/n;-><init>()V

    .line 43
    iput-object p2, v0, Lcom/keniu/security/f/n;->a:Ljava/lang/String;

    .line 44
    const-string v1, "value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/f/n;->b:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/keniu/security/f/l;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    new-instance v0, Lcom/keniu/security/f/n;

    invoke-direct {v0}, Lcom/keniu/security/f/n;-><init>()V

    .line 52
    iput-object p2, v0, Lcom/keniu/security/f/n;->a:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/keniu/security/f/l;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_3
    const-string v0, "row"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/l;->g:Ljava/util/LinkedList;

    .line 59
    iget-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    iget-object v0, v0, Lcom/keniu/security/f/o;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/keniu/security/f/l;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_4
    const-string v0, "delete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "append"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    :cond_5
    iput-object v1, p0, Lcom/keniu/security/f/l;->g:Ljava/util/LinkedList;

    .line 67
    new-instance v0, Lcom/keniu/security/f/o;

    invoke-direct {v0}, Lcom/keniu/security/f/o;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    .line 69
    iget-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    iput-object p2, v0, Lcom/keniu/security/f/o;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    const-string v1, "statement"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/f/o;->b:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/keniu/security/f/o;->c:Ljava/util/LinkedList;

    .line 73
    iget-object v0, p0, Lcom/keniu/security/f/l;->e:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_6
    const-string v0, "sql"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    iput-object v1, p0, Lcom/keniu/security/f/l;->g:Ljava/util/LinkedList;

    .line 78
    new-instance v0, Lcom/keniu/security/f/o;

    invoke-direct {v0}, Lcom/keniu/security/f/o;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    .line 80
    iget-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    iput-object p2, v0, Lcom/keniu/security/f/o;->a:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    const-string v1, "statement"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/f/o;->b:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/keniu/security/f/l;->e:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/keniu/security/f/l;->f:Lcom/keniu/security/f/o;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_7
    const-string v0, "body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/l;->e:Ljava/util/LinkedList;

    goto/16 :goto_0

    .line 89
    :cond_8
    const-string v0, "header"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    const-string v0, "version_source"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/l;->c:Ljava/lang/String;

    .line 92
    const-string v0, "version_target"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/l;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 94
    :cond_9
    const-string v0, "diff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "type"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/l;->a:Ljava/lang/String;

    .line 97
    const-string v0, "version"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/l;->b:Ljava/lang/String;

    goto/16 :goto_0
.end method
