.class public Lcom/qq/jce/wup/UniPacket;
.super Lcom/qq/jce/wup/UniAttribute;


# static fields
.field static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field static c:Ljava/util/HashMap;
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


# instance fields
.field protected a:Lpuw/e;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    sput-object v0, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    new-instance v0, Lpuw/e;

    invoke-direct {v0}, Lpuw/e;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/jce/wup/UniPacket;->j:I

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    const/4 v1, 0x2

    iput-short v1, v0, Lpuw/e;->a:S

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    new-instance v0, Lpuw/e;

    invoke-direct {v0}, Lpuw/e;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/jce/wup/UniPacket;->j:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->useVersion3()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    const/4 v1, 0x2

    iput-short v1, v0, Lpuw/e;->a:S

    goto :goto_0
.end method


# virtual methods
.method public createOldRespEncode()[B
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    new-instance v1, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-short v2, v2, Lpuw/e;->a:S

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-byte v2, v2, Lpuw/e;->b:B

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget v2, v2, Lpuw/e;->d:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v2, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget v2, v2, Lpuw/e;->c:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v2, p0, Lcom/qq/jce/wup/UniPacket;->j:I

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v0, v0, Lpuw/e;->j:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    invoke-virtual {v1}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public createResponse()Lcom/qq/jce/wup/UniPacket;
    .locals 2

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getServantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qq/jce/wup/UniPacket;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    return-object v0
.end method

.method public decode([B)V
    .locals 4

    const/4 v1, 0x4

    array-length v0, p1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decode package must include size head"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-short v0, v0, Lpuw/e;->a:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v1, v1, Lpuw/e;->g:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    sget-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->d:Ljava/util/HashMap;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v1, v1, Lpuw/e;->g:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    sget-object v1, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->g:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decodeVersion2([B)V
    .locals 4

    const/4 v1, 0x4

    array-length v0, p1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decode package must include size head"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v1, v1, Lpuw/e;->g:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    sget-object v1, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->c:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->g:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decodeVersion3([B)V
    .locals 4

    const/4 v1, 0x4

    array-length v0, p1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decode package must include size head"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([BI)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v1, v1, Lpuw/e;->g:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    sget-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/qq/jce/wup/UniPacket;->b:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/jce/wup/UniPacket;->d:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    invoke-virtual {v0, p1, p2}, Lpuw/e;->display(Ljava/lang/StringBuilder;I)V

    return-void
.end method

.method public encode()[B
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-short v0, v0, Lpuw/e;->a:S

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v0, v0, Lpuw/e;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "servantName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v0, v0, Lpuw/e;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "funcName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v0, v0, Lpuw/e;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    const-string v1, ""

    iput-object v1, v0, Lpuw/e;->e:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v0, v0, Lpuw/e;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    const-string v1, ""

    iput-object v1, v0, Lpuw/e;->f:Ljava/lang/String;

    :cond_3
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-short v1, v1, Lpuw/e;->a:S

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    :goto_0
    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, v1, Lpuw/e;->g:[B

    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/qq/jce/wup/UniPacket;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/qq/jce/wup/UniPacket;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v0, v0, Lpuw/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOldRespIret()I
    .locals 1

    iget v0, p0, Lcom/qq/jce/wup/UniPacket;->j:I

    return v0
.end method

.method public getRequestId()I
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget v0, v0, Lpuw/e;->d:I

    return v0
.end method

.method public getServantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iget-object v0, v0, Lpuw/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    invoke-virtual {v0, p1}, Lpuw/e;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    return-void
.end method

.method public setFuncName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iput-object p1, v0, Lpuw/e;->f:Ljava/lang/String;

    return-void
.end method

.method public setOldRespIret(I)V
    .locals 0

    iput p1, p0, Lcom/qq/jce/wup/UniPacket;->j:I

    return-void
.end method

.method public setRequestId(I)V
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iput p1, v0, Lpuw/e;->d:I

    return-void
.end method

.method public setServantName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    iput-object p1, v0, Lpuw/e;->e:Ljava/lang/String;

    return-void
.end method

.method public useVersion3()V
    .locals 2

    invoke-super {p0}, Lcom/qq/jce/wup/UniAttribute;->useVersion3()V

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    const/4 v1, 0x3

    iput-short v1, v0, Lpuw/e;->a:S

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/jce/wup/UniPacket;->a:Lpuw/e;

    invoke-virtual {v0, p1}, Lpuw/e;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    return-void
.end method
