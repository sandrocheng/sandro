.class public Lking/org/apache/commons/codec/net/QuotedPrintableCodec;
.super Ljava/lang/Object;
.source "QuotedPrintableCodec.java"

# interfaces
.implements Lking/org/apache/commons/codec/BinaryDecoder;
.implements Lking/org/apache/commons/codec/BinaryEncoder;
.implements Lking/org/apache/commons/codec/StringDecoder;
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field private static final ESCAPE_CHAR:B = 0x3dt

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet; = null

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# instance fields
.field private final charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 84
    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 85
    sget-object v1, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    const/16 v0, 0x3e

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 88
    sget-object v1, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_1
    sget-object v0, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 91
    sget-object v0, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 4
    .parameter

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 185
    aget-byte v2, p0, v1

    .line 186
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    .line 188
    add-int/lit8 v1, v1, 0x1

    :try_start_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lking/org/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v2

    .line 189
    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v1

    invoke-static {v3}, Lking/org/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v3

    .line 190
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    new-instance v1, Lking/org/apache/commons/codec/DecoderException;

    const-string v2, "Invalid quoted-printable encoding"

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 198
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static final encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x10

    .line 121
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 123
    and-int/lit8 v1, p0, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 124
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 125
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    return-void
.end method

.method public static final encodeQuotedPrintable(Ljava/util/BitSet;[B)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 146
    :cond_0
    if-nez p0, :cond_4

    .line 147
    sget-object v0, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 149
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 151
    aget-byte v3, p1, v2

    .line 152
    if-gez v3, :cond_1

    .line 153
    add-int/lit16 v3, v3, 0x100

    .line 155
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    :cond_2
    invoke-static {v3, v1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V

    goto :goto_3

    .line 161
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p0

    goto :goto_1
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    .line 352
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 353
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->decode([B)[B

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 355
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
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

    const-string v2, " cannot be quoted-printable decoded"

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
    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
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
    .line 282
    if-nez p1, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public decode([B)[B
    .locals 1
    .parameter

    .prologue
    .line 235
    invoke-static {p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 326
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 327
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 329
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
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

    const-string v2, " cannot be quoted-printable encoded"

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
    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
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
    .line 390
    if-nez p1, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encode([B)[B
    .locals 1
    .parameter

    .prologue
    .line 215
    sget-object v0, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    return-object v0
.end method
