.class public final LLBSAPIProtocol/RspGetPoiList;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_stUsrLoc:LLBSAPIProtocol/GPS;

.field static cache_vPoiList:Ljava/util/ArrayList;


# instance fields
.field public iTotalNum:I

.field public stUsrLoc:LLBSAPIProtocol/GPS;

.field public vPoiList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/RspGetPoiList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/RspGetPoiList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    iput-object v1, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspGetPoiList;->setStUsrLoc(LLBSAPIProtocol/GPS;)V

    iget v0, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspGetPoiList;->setITotalNum(I)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspGetPoiList;->setVPoiList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(LLBSAPIProtocol/GPS;ILjava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    iput-object v1, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LLBSAPIProtocol/RspGetPoiList;->setStUsrLoc(LLBSAPIProtocol/GPS;)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/RspGetPoiList;->setITotalNum(I)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/RspGetPoiList;->setVPoiList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.RspGetPoiList"

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

    sget-boolean v1, LLBSAPIProtocol/RspGetPoiList;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    const-string v2, "stUsrLoc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    const-string v2, "iTotalNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    const-string v2, "vPoiList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/RspGetPoiList;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    iget v1, p1, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

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

    iget v0, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    return v0
.end method

.method public getStUsrLoc()LLBSAPIProtocol/GPS;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    return-object v0
.end method

.method public getVPoiList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LLBSAPIProtocol/RspGetPoiList;->cache_stUsrLoc:LLBSAPIProtocol/GPS;

    if-nez v0, :cond_0

    new-instance v0, LLBSAPIProtocol/GPS;

    invoke-direct {v0}, LLBSAPIProtocol/GPS;-><init>()V

    sput-object v0, LLBSAPIProtocol/RspGetPoiList;->cache_stUsrLoc:LLBSAPIProtocol/GPS;

    :cond_0
    sget-object v0, LLBSAPIProtocol/RspGetPoiList;->cache_stUsrLoc:LLBSAPIProtocol/GPS;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/GPS;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspGetPoiList;->setStUsrLoc(LLBSAPIProtocol/GPS;)V

    iget v0, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspGetPoiList;->setITotalNum(I)V

    sget-object v0, LLBSAPIProtocol/RspGetPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/RspGetPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/PoiInfo;

    invoke-direct {v0}, LLBSAPIProtocol/PoiInfo;-><init>()V

    sget-object v1, LLBSAPIProtocol/RspGetPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LLBSAPIProtocol/RspGetPoiList;->cache_vPoiList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/RspGetPoiList;->setVPoiList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setITotalNum(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    return-void
.end method

.method public setStUsrLoc(LLBSAPIProtocol/GPS;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    return-void
.end method

.method public setVPoiList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->stUsrLoc:LLBSAPIProtocol/GPS;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LLBSAPIProtocol/RspGetPoiList;->iTotalNum:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPoiList;->vPoiList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    return-void
.end method
