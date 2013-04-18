.class public Lking/org/apache/commons/codec/binary/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesIso8859_1(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 51
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-static {p1, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static getBytesUsAscii(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 67
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 83
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16Be(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 99
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16Le(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 115
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 131
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {p1, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static newStringIso8859_1([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 210
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUsAscii([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 225
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 240
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16Be([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 255
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16Le([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 270
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 285
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
