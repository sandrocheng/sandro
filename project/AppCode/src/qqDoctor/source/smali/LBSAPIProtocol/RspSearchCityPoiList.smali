.class public final LLBSAPIProtocol/RspSearchCityPoiList;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_vPoiList:Ljava/util/ArrayList;


# instance fields
.field public iTotalNum:I

.field public vPoiList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/RspSearchCityPoiList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/RspSearchCityPoiList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    const/4 v0, 0x0

    iput-object v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    iget v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspSearchCityPoiList;->setITotalNum(I)V

    iget-object v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspSearchCityPoiList;->setVPoiList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    const/4 v0, 0x0

    iput-object v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LLBSAPIProtocol/RspSearchCityPoiList;->setITotalNum(I)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/RspSearchCityPoiList;->setVPoiList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.RspSearchCityPoiList"

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

    sget-boolean v1, LLBSAPIProtocol/RspSearchCityPoiList;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    const-string v2, "iTotalNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    const-string v2, "vPoiList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/RspSearchCityPoiList;

    iget v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    iget v1, p1, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

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

.method public getITotalNum()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    return v0
.end method

.method public getVPoiList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspSearchCityPoiList;->setITotalNum(I)V

    sget-object v0, LLBSAPIProtocol/RspSearchCityPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/RspSearchCityPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/PoiInfo;

    invoke-direct {v0}, LLBSAPIProtocol/PoiInfo;-><init>()V

    sget-object v1, LLBSAPIProtocol/RspSearchCityPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LLBSAPIProtocol/RspSearchCityPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspSearchCityPoiList;->setVPoiList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setITotalNum(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    return-void
.end method

.method public setVPoiList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->iTotalNum:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/RspSearchCityPoiList;->vPoiList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    return-void
.end method
