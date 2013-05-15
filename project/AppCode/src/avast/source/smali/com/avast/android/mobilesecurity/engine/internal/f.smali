.class public Lcom/avast/android/mobilesecurity/engine/internal/f;
.super Ljava/lang/Object;
.source "HashManager.java"


# direct methods
.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/File;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/File;)[B

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0, p2}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/InputStream;)[B

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0, p2}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0, p2}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    if-nez p0, :cond_1

    .line 140
    const/4 p0, 0x0

    .line 146
    :cond_0
    return-object p0

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 272
    if-nez p0, :cond_1

    .line 273
    const/4 v1, 0x0

    .line 281
    :cond_0
    return-object v1

    .line 276
    :cond_1
    const-string v1, ""

    .line 277
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/File;)[B
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-object v0

    .line 225
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 227
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 231
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 232
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 235
    :catch_0
    move-exception v1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 237
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/InputStream;)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_0

    .line 204
    :goto_0
    return-object v0

    .line 191
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 193
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 196
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 197
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 201
    :catch_0
    move-exception v1

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 203
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/lang/String;)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0
.end method
