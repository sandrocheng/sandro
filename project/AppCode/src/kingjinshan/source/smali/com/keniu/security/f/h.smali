.class public final Lcom/keniu/security/f/h;
.super Ljava/lang/Object;
.source "IniResolver.java"


# static fields
.field private static final d:Ljava/lang/String; = "utf-8"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Collection;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/h;->b:Ljava/util/Collection;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/f/j;

    .line 272
    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/keniu/security/f/h;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/keniu/security/f/j;

    invoke-direct {v0}, Lcom/keniu/security/f/j;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    iget-object v1, v0, Lcom/keniu/security/f/j;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 282
    iget-object v1, v0, Lcom/keniu/security/f/j;->a:Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_1
    iget-object v0, v0, Lcom/keniu/security/f/j;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method private a(Ljava/io/File;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 161
    const/4 v0, 0x0

    .line 165
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, v2}, Lcom/keniu/security/f/h;->a(Ljava/io/Writer;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .line 205
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 174
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    if-eqz p2, :cond_1

    .line 178
    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 180
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    .line 182
    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 183
    iget-object v0, p0, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 184
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 185
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 188
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 189
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 190
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 194
    :goto_2
    if-eqz v0, :cond_2

    .line 202
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    move v0, v4

    .line 205
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 200
    :goto_4
    if-eqz v1, :cond_3

    .line 202
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 205
    :cond_3
    :goto_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 198
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private a(Ljava/io/Writer;)Z
    .locals 7
    .parameter

    .prologue
    .line 213
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 215
    iget-object v0, p0, Lcom/keniu/security/f/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 216
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 222
    iget-object v1, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/f/j;

    .line 223
    iget-object v1, v0, Lcom/keniu/security/f/j;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 224
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    iget-object v2, v0, Lcom/keniu/security/f/j;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_2
    return v0

    .line 233
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private b()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/keniu/security/f/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 306
    iget-object v0, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 307
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/f/j;

    .line 262
    if-eqz p0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/keniu/security/f/j;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/keniu/security/f/h;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/f/j;

    .line 296
    if-eqz p0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/keniu/security/f/j;->a:Ljava/util/Collection;

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/f/h;)Z
    .locals 2
    .parameter

    .prologue
    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/io/File;)Z
    .locals 3
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 70
    new-array v0, v0, [B

    .line 71
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 73
    invoke-virtual {p0, v0}, Lcom/keniu/security/f/h;->a([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    .line 81
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 87
    :cond_0
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_3
    if-eqz v1, :cond_1

    .line 85
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 87
    :cond_1
    :goto_4
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 81
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 77
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/io/Reader;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/h;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    const/4 v0, 0x0

    .line 100
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\\s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 132
    if-nez v0, :cond_3

    .line 134
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not found section name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :catch_0
    move-exception v0

    move v0, v7

    :goto_1
    return v0

    .line 118
    :sswitch_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_2

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid section name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v2, Lcom/keniu/security/f/j;

    invoke-direct {v2}, Lcom/keniu/security/f/j;-><init>()V

    .line 126
    iget-object v3, p0, Lcom/keniu/security/f/h;->b:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/keniu/security/f/h;->c:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 128
    goto :goto_0

    .line 137
    :cond_3
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 138
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 140
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid key-value format"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 144
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v3, v0, Lcom/keniu/security/f/j;->a:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v3, v0, Lcom/keniu/security/f/j;->b:Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 151
    goto :goto_1

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x3b -> :sswitch_0
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method public final a([B)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x23

    const/4 v6, 0x0

    .line 33
    .line 34
    :try_start_0
    array-length v0, p1

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    if-ne v1, v7, :cond_1

    .line 39
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 40
    const/16 v2, 0x23

    array-length v3, p1

    sub-int/2addr v3, v7

    invoke-virtual {v1, p1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 42
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x20

    const-string v5, "utf-8"

    invoke-direct {v2, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/keniu/security/f/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    .line 58
    :goto_0
    return v0

    .line 49
    :cond_0
    add-int/lit8 v1, v6, 0x23

    .line 50
    sub-int/2addr v0, v7

    .line 53
    :goto_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1, v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 54
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/h;->a(Ljava/io/Reader;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    :cond_1
    move v1, v6

    goto :goto_1
.end method
