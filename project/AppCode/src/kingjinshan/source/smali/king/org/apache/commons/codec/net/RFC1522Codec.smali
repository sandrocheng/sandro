.class abstract Lking/org/apache/commons/codec/net/RFC1522Codec;
.super Ljava/lang/Object;
.source "RFC1522Codec.java"


# static fields
.field protected static final POSTFIX:Ljava/lang/String; = "?="

.field protected static final PREFIX:Ljava/lang/String; = "=?"

.field protected static final SEP:C = '?'


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x3f

    const/4 v2, 0x2

    .line 117
    if-nez p1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "?="

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :cond_1
    new-instance v0, Lking/org/apache/commons/codec/DecoderException;

    const-string v1, "RFC 1522 violation: malformed encoded content"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    .line 124
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 126
    if-ne v1, v0, :cond_3

    .line 127
    new-instance v0, Lking/org/apache/commons/codec/DecoderException;

    const-string v1, "RFC 1522 violation: charset token not found"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_3
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    new-instance v0, Lking/org/apache/commons/codec/DecoderException;

    const-string v1, "RFC 1522 violation: charset not specified"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 135
    if-ne v3, v0, :cond_5

    .line 136
    new-instance v0, Lking/org/apache/commons/codec/DecoderException;

    const-string v1, "RFC 1522 violation: encoding token not found"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_5
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lking/org/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 140
    new-instance v1, Lking/org/apache/commons/codec/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This codec cannot decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " encoded content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lking/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_6
    add-int/lit8 v0, v3, 0x1

    .line 144
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 145
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lking/org/apache/commons/codec/net/RFC1522Codec;->doDecoding([B)[B

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected abstract doDecoding([B)[B
.end method

.method protected abstract doEncoding([B)[B
.end method

.method protected encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x3f

    .line 86
    if-nez p1, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {p0}, Lking/org/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lking/org/apache/commons/codec/net/RFC1522Codec;->doEncoding([B)[B

    move-result-object v1

    .line 96
    invoke-static {v1}, Lking/org/apache/commons/codec/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getEncoding()Ljava/lang/String;
.end method
