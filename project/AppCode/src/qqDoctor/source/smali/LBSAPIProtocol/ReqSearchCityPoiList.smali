.class public final LLBSAPIProtocol/ReqSearchCityPoiList;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_vMeasures:Ljava/util/ArrayList;

.field static cache_vTypes:Ljava/util/ArrayList;


# instance fields
.field public iBeginPos:I

.field public iCityCode:I

.field public iReqNum:I

.field public strAppUA:Ljava/lang/String;

.field public strImei:Ljava/lang/String;

.field public strKeyword:Ljava/lang/String;

.field public vMeasures:Ljava/util/ArrayList;

.field public vTypes:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/ReqSearchCityPoiList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/ReqSearchCityPoiList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    iput-object v2, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    iput v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    const/16 v0, 0xa

    iput v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    iput-object v2, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setICityCode(I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrKeyword(Ljava/lang/String;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setVTypes(Ljava/util/ArrayList;)V

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setIBeginPos(I)V

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setIReqNum(I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrAppUA(Ljava/lang/String;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrImei(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    iput-object v2, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    iput v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    const/16 v0, 0xa

    iput v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    iput-object v2, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    invoke-virtual {p0, p1}, LLBSAPIProtocol/ReqSearchCityPoiList;->setICityCode(I)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrKeyword(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/ReqSearchCityPoiList;->setVTypes(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p4}, LLBSAPIProtocol/ReqSearchCityPoiList;->setIBeginPos(I)V

    invoke-virtual {p0, p5}, LLBSAPIProtocol/ReqSearchCityPoiList;->setIReqNum(I)V

    invoke-virtual {p0, p6}, LLBSAPIProtocol/ReqSearchCityPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p7}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrAppUA(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrImei(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.ReqSearchCityPoiList"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
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

    sget-boolean v1, LLBSAPIProtocol/ReqSearchCityPoiList;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    const-string v2, "iCityCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    const-string v2, "strKeyword"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    const-string v2, "vTypes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    const-string v2, "iBeginPos"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    const-string v2, "iReqNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    const-string v2, "vMeasures"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    const-string v2, "strAppUA"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    const-string v2, "strImei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/ReqSearchCityPoiList;

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    iget v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    iget v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    iget v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

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

.method public getIBeginPos()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    return v0
.end method

.method public getICityCode()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    return v0
.end method

.method public getIReqNum()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    return v0
.end method

.method public getStrAppUA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    return-object v0
.end method

.method public getStrImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    return-object v0
.end method

.method public getStrKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getVMeasures()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVTypes()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setICityCode(I)V

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrKeyword(Ljava/lang/String;)V

    sget-object v0, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vTypes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vTypes:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setVTypes(Ljava/util/ArrayList;)V

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setIBeginPos(I)V

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setIReqNum(I)V

    sget-object v0, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/Measure;

    invoke-direct {v0}, LLBSAPIProtocol/Measure;-><init>()V

    sget-object v1, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LLBSAPIProtocol/ReqSearchCityPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrAppUA(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqSearchCityPoiList;->setStrImei(Ljava/lang/String;)V

    return-void
.end method

.method public setIBeginPos(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    return-void
.end method

.method public setICityCode(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    return-void
.end method

.method public setIReqNum(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    return-void
.end method

.method public setStrAppUA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    return-void
.end method

.method public setStrImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    return-void
.end method

.method public setStrKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    return-void
.end method

.method public setVMeasures(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    return-void
.end method

.method public setVTypes(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iCityCode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strKeyword:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vTypes:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iBeginPos:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->iReqNum:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->vMeasures:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strAppUA:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LLBSAPIProtocol/ReqSearchCityPoiList;->strImei:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
