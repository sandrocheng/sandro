.class public final LQQPIM/RegResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_header:LQQPIM/RespHeader;


# instance fields
.field public accessNum:Ljava/lang/String;

.field public header:LQQPIM/RespHeader;

.field public regMethod:B

.field public verifyCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/RegResp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/RegResp;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    const/4 v0, 0x0

    iput-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    invoke-virtual {p0, v0}, LQQPIM/RegResp;->setHeader(LQQPIM/RespHeader;)V

    iget-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    invoke-virtual {p0, v0}, LQQPIM/RegResp;->setRegMethod(B)V

    iget-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/RegResp;->setAccessNum(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/RegResp;->setVerifyCode(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LQQPIM/RespHeader;BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    const/4 v0, 0x0

    iput-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/RegResp;->setHeader(LQQPIM/RespHeader;)V

    invoke-virtual {p0, p2}, LQQPIM/RegResp;->setRegMethod(B)V

    invoke-virtual {p0, p3}, LQQPIM/RegResp;->setAccessNum(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/RegResp;->setVerifyCode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.RegResp"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/RegResp;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    const-string v2, "header"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LQQPIM/RegResp;->regMethod:B

    const-string v2, "regMethod"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    const-string v2, "accessNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    const-string v2, "verifyCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/RegResp;

    iget-object v0, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    iget-object v1, p1, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    iget-byte v1, p1, LQQPIM/RegResp;->regMethod:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.RegResp"

    return-object v0
.end method

.method public final getAccessNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeader()LQQPIM/RespHeader;
    .locals 1

    iget-object v0, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    return-object v0
.end method

.method public final getRegMethod()B
    .locals 1

    iget-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    return v0
.end method

.method public final getVerifyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, LQQPIM/RegResp;->cache_header:LQQPIM/RespHeader;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/RespHeader;

    invoke-direct {v0}, LQQPIM/RespHeader;-><init>()V

    sput-object v0, LQQPIM/RegResp;->cache_header:LQQPIM/RespHeader;

    :cond_0
    sget-object v0, LQQPIM/RegResp;->cache_header:LQQPIM/RespHeader;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/RespHeader;

    iput-object v0, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    iget-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    return-void
.end method

.method public final setAccessNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    return-void
.end method

.method public final setHeader(LQQPIM/RespHeader;)V
    .locals 0

    iput-object p1, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    return-void
.end method

.method public final setRegMethod(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/RegResp;->regMethod:B

    return-void
.end method

.method public final setVerifyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/RegResp;->header:LQQPIM/RespHeader;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-byte v0, p0, LQQPIM/RegResp;->regMethod:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/RegResp;->accessNum:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/RegResp;->verifyCode:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
