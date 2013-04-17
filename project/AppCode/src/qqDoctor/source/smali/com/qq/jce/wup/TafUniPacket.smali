.class public Lcom/qq/jce/wup/TafUniPacket;
.super Lcom/qq/jce/wup/UniPacket;
.source "TafUniPacket.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    .line 17
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 18
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-byte v2, v0, Lcom/qq/taf/RequestPacket;->cPacketType:B

    .line 19
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput v2, v0, Lcom/qq/taf/RequestPacket;->iMessageType:I

    .line 20
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput v2, v0, Lcom/qq/taf/RequestPacket;->iTimeout:I

    .line 21
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    new-array v1, v2, [B

    iput-object v1, v0, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    .line 22
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/qq/taf/RequestPacket;->context:Ljava/util/Map;

    .line 23
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public getTafBuffer()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    return-object v0
.end method

.method public getTafContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->context:Ljava/util/Map;

    return-object v0
.end method

.method public getTafMessageType()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v0, v0, Lcom/qq/taf/RequestPacket;->iMessageType:I

    return v0
.end method

.method public getTafPacketType()B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-byte v0, v0, Lcom/qq/taf/RequestPacket;->cPacketType:B

    return v0
.end method

.method public getTafResultCode()I
    .locals 4

    .prologue
    .line 129
    iget-object v2, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    const-string v3, "STATUS_RESULT_CODE"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, rcode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, result:I
    :goto_0
    return v1

    .line 130
    .end local v1           #result:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTafResultDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    iget-object v2, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v2, v2, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    const-string v3, "STATUS_RESULT_DESC"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, rdesc:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 140
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 139
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getTafStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-object v0, v0, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    return-object v0
.end method

.method public getTafTimeout()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget v0, v0, Lcom/qq/taf/RequestPacket;->iTimeout:I

    return v0
.end method

.method public getTafVersion()S
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iget-short v0, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    return v0
.end method

.method public setTafBuffer([B)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->sBuffer:[B

    .line 60
    return-void
.end method

.method public setTafContext(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, context:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->context:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public setTafMessageType(I)V
    .locals 1
    .parameter "messageType"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput p1, v0, Lcom/qq/taf/RequestPacket;->iMessageType:I

    .line 46
    return-void
.end method

.method public setTafPacketType(B)V
    .locals 1
    .parameter "packetType"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-byte p1, v0, Lcom/qq/taf/RequestPacket;->cPacketType:B

    .line 39
    return-void
.end method

.method public setTafStatus(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-object p1, v0, Lcom/qq/taf/RequestPacket;->status:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public setTafTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput p1, v0, Lcom/qq/taf/RequestPacket;->iTimeout:I

    .line 53
    return-void
.end method

.method public setTafVersion(S)V
    .locals 1
    .parameter "version"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qq/jce/wup/TafUniPacket;->_package:Lcom/qq/taf/RequestPacket;

    iput-short p1, v0, Lcom/qq/taf/RequestPacket;->iVersion:S

    .line 31
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/qq/jce/wup/TafUniPacket;->useVersion3()V

    .line 32
    :cond_0
    return-void
.end method
