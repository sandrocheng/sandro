.class public final Lcom/keniu/security/f/f;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final a:Ljava/lang/String; = "config"

.field public static final b:Ljava/lang/String; = "data"

.field public static final c:Ljava/lang/String; = "mosecurity.apk"

.field public static final d:Ljava/lang/String; = "antivirus.db"

.field public static final e:Ljava/lang/String; = "antivirus_lw.db"

.field public static final f:Ljava/lang/String; = "telnum2.locate"

.field public static final g:Ljava/lang/String; = "firewall_sys_rules.db"

.field public static final h:Ljava/lang/String; = "clearpath2.db"

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 47
    const-string v1, "telnum2.locate"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/keniu/security/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 69
    invoke-static {p1}, Lcom/keniu/security/f/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 270
    invoke-static {p0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 278
    :goto_0
    return-object v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v0, v1, :cond_1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 278
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-static {p0, p1}, Lcom/keniu/security/f/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 76
    .line 82
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v2

    if-nez v2, :cond_0

    .line 86
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :goto_0
    move v0, v7

    .line 145
    :goto_1
    return v0

    .line 89
    :cond_0
    :try_start_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipEntry;

    .line 90
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v1

    .line 93
    :try_start_4
    invoke-static {p2}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 94
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 95
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object v1, v3

    .line 98
    :goto_2
    const/16 v3, 0x1000

    :try_start_5
    new-array v3, v3, [B

    .line 101
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 105
    :goto_3
    :try_start_6
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 106
    if-lez v5, :cond_4

    .line 107
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 123
    :catch_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 127
    if-eqz v1, :cond_1

    .line 128
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 131
    :cond_1
    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_2
    if-eqz v3, :cond_3

    .line 136
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 139
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move v0, v7

    .line 143
    goto :goto_1

    .line 113
    :cond_4
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 115
    if-eqz v2, :cond_6

    .line 116
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v2, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    .line 118
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 131
    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :goto_5
    move v0, v7

    .line 143
    goto :goto_1

    .line 122
    :cond_6
    const/4 v2, 0x1

    .line 127
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 131
    if-eqz v1, :cond_7

    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move v0, v2

    .line 139
    goto/16 :goto_1

    .line 144
    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move v0, v7

    goto/16 :goto_1

    .line 126
    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    .line 127
    :goto_6
    if-eqz v1, :cond_8

    .line 128
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 131
    :cond_8
    if-eqz v2, :cond_9

    .line 132
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_9
    if-eqz v3, :cond_a

    .line 136
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 139
    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 143
    :goto_7
    throw v0

    :catch_3
    move-exception v1

    goto :goto_7

    .line 126
    :catchall_1
    move-exception v1

    move-object v2, v5

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_6

    :catchall_4
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_6

    .line 123
    :catch_4
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v2, v5

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_4

    :catch_6
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_4

    :catch_7
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_0

    :cond_b
    move-object v2, v5

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    const/4 v0, 0x0

    .line 157
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 159
    :try_start_2
    new-instance v3, Lcom/d/a/f;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/d/a/f;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 163
    :try_start_3
    invoke-static {p3}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 164
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 165
    new-instance v5, Ljava/security/DigestOutputStream;

    invoke-direct {v5, v1, v4}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v1, v5

    .line 168
    :goto_0
    :try_start_4
    new-instance v5, Lcom/d/a/c;

    invoke-direct {v5}, Lcom/d/a/c;-><init>()V

    invoke-virtual {v5, v3, v2, v1}, Lcom/d/a/c;->a(Lcom/d/a/g;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 170
    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/keniu/security/f/k;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v4

    if-nez v4, :cond_0

    move v0, v7

    .line 181
    :cond_0
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Lcom/d/a/f;->close()V

    .line 185
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 189
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 193
    if-nez v0, :cond_1

    .line 194
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 199
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v0, v7

    .line 176
    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    .line 181
    :goto_3
    if-eqz v1, :cond_3

    .line 182
    :try_start_6
    invoke-virtual {v1}, Lcom/d/a/f;->close()V

    .line 185
    :cond_3
    if-eqz v2, :cond_4

    .line 186
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 189
    :cond_4
    if-eqz v3, :cond_5

    .line 190
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 193
    :cond_5
    if-nez v0, :cond_1

    .line 194
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 198
    :catch_1
    move-exception v1

    goto :goto_2

    .line 180
    :catchall_0
    move-exception v1

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    .line 181
    :goto_4
    if-eqz v2, :cond_6

    .line 182
    :try_start_7
    invoke-virtual {v2}, Lcom/d/a/f;->close()V

    .line 185
    :cond_6
    if-eqz v3, :cond_7

    .line 186
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 189
    :cond_7
    if-eqz v4, :cond_8

    .line 190
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 193
    :cond_8
    if-nez v0, :cond_9

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 197
    :cond_9
    :goto_5
    throw v1

    :catch_2
    move-exception v0

    goto :goto_5

    .line 180
    :catchall_1
    move-exception v2

    move-object v3, v6

    move-object v4, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4

    :catchall_3
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_4

    :catchall_4
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v2, v6

    move-object v3, v1

    move-object v1, v6

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_3

    :catch_6
    move-exception v4

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_3

    .line 198
    :catch_7
    move-exception v1

    goto :goto_2

    :cond_a
    move-object v4, v6

    goto/16 :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 53
    const-string v1, "clearpath2.db"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 283
    .line 288
    const/4 v0, 0x0

    const/16 v1, 0x11

    :try_start_0
    invoke-static {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    :try_start_1
    const-string v1, "SELECT major, minor, build, subcnt FROM version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 294
    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 295
    const-string v2, "%d.%d.%d.%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 300
    :goto_0
    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_0
    if-eqz v0, :cond_5

    .line 305
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v2

    .line 308
    :goto_1
    return-object v0

    .line 300
    :catch_0
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    if-eqz v0, :cond_4

    .line 305
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v6

    goto :goto_1

    .line 300
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_2

    .line 301
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_2
    if-eqz v1, :cond_3

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0

    .line 300
    :catchall_1
    move-exception v1

    move-object v2, v6

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v2, v6

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const/4 v1, 0x3

    .line 213
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 218
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 222
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 59
    const-string v1, "firewall_sys_rules.db"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x4

    .line 313
    const/4 v0, 0x0

    .line 314
    const/4 v1, 0x0

    .line 316
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    const/4 v1, 0x4

    :try_start_1
    new-array v1, v1, [B

    .line 319
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 320
    if-lt v3, v4, :cond_0

    .line 321
    const-string v3, "%d.%d.%d.%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 326
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 333
    :cond_1
    :goto_0
    return-object v0

    .line 326
    :catch_0
    move-exception v2

    :goto_1
    if-eqz v1, :cond_1

    .line 328
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 330
    :catch_1
    move-exception v1

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 328
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 330
    :cond_2
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 326
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e()J
    .locals 5

    .prologue
    .line 236
    invoke-static {}, Lcom/keniu/security/f/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-wide/16 v0, 0x0

    .line 245
    :goto_0
    return-wide v0

    .line 240
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/keniu/security/f/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 243
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    .line 245
    mul-long v0, v3, v1

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/keniu/security/f/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static g()J
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 260
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 263
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 265
    mul-long/2addr v0, v2

    return-wide v0
.end method
