.class public Lking/org/apache/commons/codec/net/URLCodec;
.super Ljava/lang/Object;
.source "URLCodec.java"

# interfaces
.implements Lking/org/apache/commons/codec/BinaryDecoder;
.implements Lking/org/apache/commons/codec/BinaryEncoder;
.implements Lking/org/apache/commons/codec/StringDecoder;
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field protected static final ESCAPE_CHAR:B = 0x25t

.field static final RADIX:I = 0x10

.field protected static final WWW_FORM_URL:Ljava/util/BitSet;


# instance fields
.field protected charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 80
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 81
    sget-object v1, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 84
    sget-object v1, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 88
    sget-object v1, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 91
    :cond_2
    sget-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    sget-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 96
    sget-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/net/URLCodec;-><init>(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lking/org/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static final decodeUrl([B)[B
    .locals 4
    .parameter

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 171
    aget-byte v2, p0, v1

    .line 172
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    .line 173
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 170
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    :cond_1
    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    .line 176
    add-int/lit8 v1, v1, 0x1

    :try_start_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lking/org/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v2

    .line 177
    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v1

    invoke-static {v3}, Lking/org/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v3

    .line 178
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Lking/org/apache/commons/codec/DecoderException;

    const-string v2, "Invalid URL encoding: "

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 183
    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static final encodeUrl(Ljava/util/BitSet;[B)[B
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x10

    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    .line 130
    :cond_0
    if-nez p0, :cond_5

    .line 131
    sget-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 134
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 136
    aget-byte v3, p1, v2

    .line 137
    if-gez v3, :cond_1

    .line 138
    add-int/lit16 v3, v3, 0x100

    .line 140
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 142
    const/16 v3, 0x2b

    .line 144
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    :cond_3
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 148
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 149
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 153
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    goto :goto_1
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    .line 339
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 340
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/URLCodec;->decode([B)[B

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 342
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/URLCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_2
    new-instance v0, Lking/org/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be URL decoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lking/org/apache/commons/codec/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/net/URLCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Lking/org/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lking/org/apache/commons/codec/net/URLCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public decode([B)[B
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-static {p1}, Lking/org/apache/commons/codec/net/URLCodec;->decodeUrl([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    .line 313
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 314
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/URLCodec;->encode([B)[B

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 316
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_2
    new-instance v0, Lking/org/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be URL encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lking/org/apache/commons/codec/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Lking/org/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lking/org/apache/commons/codec/net/URLCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encode([B)[B
    .locals 1
    .parameter

    .prologue
    .line 198
    sget-object v0, Lking/org/apache/commons/codec/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lking/org/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lking/org/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lking/org/apache/commons/codec/net/URLCodec;->charset:Ljava/lang/String;

    return-object v0
.end method
