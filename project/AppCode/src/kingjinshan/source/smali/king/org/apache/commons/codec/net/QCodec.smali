.class public Lking/org/apache/commons/codec/net/QCodec;
.super Lking/org/apache/commons/codec/net/RFC1522Codec;
.source "QCodec.java"

# interfaces
.implements Lking/org/apache/commons/codec/StringDecoder;
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field private static final BLANK:B = 0x20t

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet; = null

.field private static final UNDERSCORE:B = 0x5ft


# instance fields
.field private final charset:Ljava/lang/String;

.field private encodeBlanks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 64
    sput-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 65
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 66
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 67
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 68
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 69
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 70
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 71
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 78
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 79
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 80
    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 81
    sget-object v1, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 84
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 86
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 87
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 88
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 89
    sget-object v1, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 95
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 96
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 97
    sget-object v1, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    :cond_2
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 101
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 102
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/net/QCodec;-><init>(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lking/org/apache/commons/codec/net/RFC1522Codec;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lking/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 128
    iput-object p1, p0, Lking/org/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    .line 284
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 285
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/QCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
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

    const-string v2, " cannot be decoded using Q codec"

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
    .line 234
    if-nez p1, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/QCodec;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Lking/org/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected doDecoding([B)[B
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x5f

    const/4 v2, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    move v0, v2

    .line 158
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 159
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    .line 160
    const/4 v0, 0x1

    .line 164
    :goto_2
    if-eqz v0, :cond_4

    .line 165
    array-length v0, p1

    new-array v0, v0, [B

    move v1, v2

    .line 166
    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 167
    aget-byte v2, p1, v1

    .line 168
    if-eq v2, v3, :cond_2

    .line 169
    aput-byte v2, v0, v1

    .line 166
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_2
    const/16 v2, 0x20

    aput-byte v2, v0, v1

    goto :goto_4

    .line 174
    :cond_3
    invoke-static {v0}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_4
    invoke-static {p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method protected doEncoding([B)[B
    .locals 4
    .parameter

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 149
    :cond_0
    return-object v0

    .line 141
    :cond_1
    sget-object v0, Lking/org/apache/commons/codec/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lking/org/apache/commons/codec/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v0

    .line 142
    iget-boolean v1, p0, Lking/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 144
    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 145
    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    .line 143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 258
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 259
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_1
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

    const-string v2, " cannot be encoded using Q codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lking/org/apache/commons/codec/net/QCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lking/org/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lking/org/apache/commons/codec/net/QCodec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lking/org/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lking/org/apache/commons/codec/net/QCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "Q"

    return-object v0
.end method

.method public isEncodeBlanks()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lking/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    return v0
.end method

.method public setEncodeBlanks(Z)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-boolean p1, p0, Lking/org/apache/commons/codec/net/QCodec;->encodeBlanks:Z

    .line 319
    return-void
.end method
