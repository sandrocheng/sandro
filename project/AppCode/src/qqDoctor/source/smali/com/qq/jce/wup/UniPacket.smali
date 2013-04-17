.class public Lcom/qq/jce/wup/UniPacket;
.super Lcom/qq/jce/wup/UniAttribute;
.source "UniPacket.java"


# static fields
.field public static final UniPacketHeadSize:I = 0x4

.field static cache__tempdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field static newCache__tempdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field protected _package:Lcom/qq/taf/RequestPacket;

.field private oldRespIret:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    .line 84
    sput-object v0, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 14
    new-instance v0, Lcom/qq/taf/RequestPacket;

    invoke-direct {v0}, Lcom/qq/taf/RequestPacket;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 19
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 20
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "useVersion3"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 14
    new-instance v0, Lcom/qq/taf/RequestPacket;

    invoke-direct {v0}, Lcom/qq/taf/RequestPacket;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->useVersion3()V

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    goto :goto_0
.end method


# virtual methods
.method public createOldRespEncode()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 268
    .local v0, _os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 270
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 271
    .local v1, oldSBuffer:[B
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    .end local v0           #_os:Lcom/qq/taf/jce/JceOutputStream;
    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 272
    .restart local v0       #_os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v2, v2, Lcom/qq/taf/RequestPacket;->iVersion:S

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 274
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-byte v2, v2, Lcom/qq/taf/RequestPacket;->cPacketType:B

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 275
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v2, v2, Lcom/qq/taf/RequestPacket;->iRequestId:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 276
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v2, v2, Lcom/qq/taf/RequestPacket;->iMessageType:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 277
    iget v2, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 278
    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 279
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 280
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    return-object v2
.end method

.method public createResponse()Lcom/qq/jce/wup/UniPacket;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 252
    .local v0, packet:Lcom/qq/jce/wup/UniPacket;
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    .line 253
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getServantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    .line 256
    return-object v0
.end method

.method public decode([B)V
    .locals 6
    .parameter "buffer"

    .prologue
    const/4 v4, 0x4

    .line 144
    array-length v3, p1

    if-ge v3, v4, :cond_0

    .line 145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "decode package must include size head"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v3, 0x4

    invoke-direct {v0, p1, v3}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 150
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 152
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v3, v3, Lcom/qq/taf/RequestPacket;->iVersion:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 153
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v3, v3, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 154
    .restart local v0       #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 155
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 156
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    .line 157
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    const-string v4, ""

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    .line 177
    :goto_0
    return-void

    .line 161
    :cond_2
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v3, v3, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 162
    .restart local v0       #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 163
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    .line 165
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    const-string v4, ""

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v2           #h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_3
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/qq/jce/wup/UniPacket;->cachedClassName:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public decodeVersion2([B)V
    .locals 6
    .parameter "buffer"

    .prologue
    const/4 v4, 0x4

    .line 117
    array-length v3, p1

    if-ge v3, v4, :cond_0

    .line 118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "decode package must include size head"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v3, 0x4

    invoke-direct {v0, p1, v3}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 123
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 125
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v3, v3, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v3}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 126
    .restart local v0       #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v3, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 127
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 128
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    const-string v4, ""

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v2           #h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    :cond_1
    sget-object v3, Lcom/qq/jce/wup/UniPacket;->cache__tempdata:Ljava/util/HashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    .line 134
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/qq/jce/wup/UniPacket;->cachedClassName:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 135
    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public decodeVersion3([B)V
    .locals 5
    .parameter "buffer"

    .prologue
    const/4 v3, 0x4

    .line 91
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decode package must include size head"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    .line 97
    .local v0, _is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 99
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 100
    .restart local v0       #_is:Lcom/qq/taf/jce/JceInputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 101
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 102
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    .line 103
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    const-string v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    sget-object v2, Lcom/qq/jce/wup/UniPacket;->newCache__tempdata:Ljava/util/HashMap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 107
    .end local v0           #_is:Lcom/qq/taf/jce/JceInputStream;
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter "_os"
    .parameter "_level"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1, p2}, Lcom/qq/taf/RequestPacket;->display(Ljava/lang/StringBuilder;I)V

    .line 243
    return-void
.end method

.method public encode()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 50
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    if-ne v4, v7, :cond_1

    .line 51
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "servantName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_0
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "funcName can not is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 59
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const-string v5, ""

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    .line 61
    :cond_2
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v4, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 62
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const-string v5, ""

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 65
    :cond_3
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v6}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 66
    .local v0, _os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v4, v4, Lcom/qq/taf/RequestPacket;->iVersion:S

    if-ne v4, v7, :cond_4

    .line 68
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 72
    :goto_0
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    iput-object v5, v4, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    .line 73
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    .end local v0           #_os:Lcom/qq/taf/jce/JceOutputStream;
    invoke-direct {v0, v6}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 74
    .restart local v0       #_os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 76
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 77
    .local v1, bodys:[B
    array-length v3, v1

    .line 78
    .local v3, size:I
    add-int/lit8 v4, v3, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 79
    .local v2, buf:Ljava/nio/ByteBuffer;
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 80
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 70
    .end local v1           #bodys:[B
    .end local v2           #buf:Ljava/nio/ByteBuffer;
    .end local v3           #size:I
    :cond_4
    iget-object v4, p0, Lcom/qq/jce/wup/UniPacket;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    return-object v0
.end method

.method public getOldRespIret()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v0, v0, Lcom/qq/taf/RequestPacket;->iRequestId:I

    return v0
.end method

.method public getServantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, t:Ljava/lang/Object;,"TT;"
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put name can not startwith . , now is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 1
    .parameter "_is"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1}, Lcom/qq/taf/RequestPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 239
    return-void
.end method

.method public setFuncName(Ljava/lang/String;)V
    .locals 1
    .parameter "sFuncName"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->sFuncName:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setOldRespIret(I)V
    .locals 0
    .parameter "oldRespIret"

    .prologue
    .line 296
    iput p1, p0, Lcom/qq/jce/wup/UniPacket;->oldRespIret:I

    .line 297
    return-void
.end method

.method public setRequestId(I)V
    .locals 1
    .parameter "iRequestId"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput p1, v0, Lcom/qq/taf/RequestPacket;->iRequestId:I

    .line 231
    return-void
.end method

.method public setServantName(Ljava/lang/String;)V
    .locals 1
    .parameter "servantName"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->sServantName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public useVersion3()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/qq/jce/wup/UniAttribute;->useVersion3()V

    .line 43
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 44
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 1
    .parameter "_os"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->_package:Lcom/qq/taf/RequestPacket;

    invoke-virtual {v0, p1}, Lcom/qq/taf/RequestPacket;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 235
    return-void
.end method
