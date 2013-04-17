.class public final LLBSAPIProtocol/DeviceData;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_eDeviceType:I

.field static cache_stCurMeasure:LLBSAPIProtocol/Measure;

.field static cache_vMeasures:Ljava/util/ArrayList;


# instance fields
.field public eDeviceType:I

.field public stCurMeasure:LLBSAPIProtocol/Measure;

.field public strAppUA:Ljava/lang/String;

.field public strImei:Ljava/lang/String;

.field public vMeasures:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/DeviceData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/DeviceData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setStCurMeasure(LLBSAPIProtocol/Measure;)V

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setVMeasures(Ljava/util/ArrayList;)V

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setStrAppUA(Ljava/lang/String;)V

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setStrImei(Ljava/lang/String;)V

    iget v0, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setEDeviceType(I)V

    return-void
.end method

.method public constructor <init>(LLBSAPIProtocol/Measure;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    invoke-virtual {p0, p1}, LLBSAPIProtocol/DeviceData;->setStCurMeasure(LLBSAPIProtocol/Measure;)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/DeviceData;->setVMeasures(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/DeviceData;->setStrAppUA(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LLBSAPIProtocol/DeviceData;->setStrImei(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LLBSAPIProtocol/DeviceData;->setEDeviceType(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.DeviceData"

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

    sget-boolean v1, LLBSAPIProtocol/DeviceData;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    const-string v2, "stCurMeasure"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    const-string v2, "vMeasures"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    const-string v2, "strAppUA"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    const-string v2, "strImei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    const-string v2, "eDeviceType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/DeviceData;

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    iget-object v1, p1, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    iget v1, p1, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEDeviceType()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    return v0
.end method

.method public getStCurMeasure()LLBSAPIProtocol/Measure;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    return-object v0
.end method

.method public getStrAppUA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    return-object v0
.end method

.method public getStrImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    return-object v0
.end method

.method public getVMeasures()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LLBSAPIProtocol/DeviceData;->cache_stCurMeasure:LLBSAPIProtocol/Measure;

    if-nez v0, :cond_0

    new-instance v0, LLBSAPIProtocol/Measure;

    invoke-direct {v0}, LLBSAPIProtocol/Measure;-><init>()V

    sput-object v0, LLBSAPIProtocol/DeviceData;->cache_stCurMeasure:LLBSAPIProtocol/Measure;

    :cond_0
    sget-object v0, LLBSAPIProtocol/DeviceData;->cache_stCurMeasure:LLBSAPIProtocol/Measure;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/Measure;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setStCurMeasure(LLBSAPIProtocol/Measure;)V

    sget-object v0, LLBSAPIProtocol/DeviceData;->cache_vMeasures:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/DeviceData;->cache_vMeasures:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/Measure;

    invoke-direct {v0}, LLBSAPIProtocol/Measure;-><init>()V

    sget-object v1, LLBSAPIProtocol/DeviceData;->cache_vMeasures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LLBSAPIProtocol/DeviceData;->cache_vMeasures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setVMeasures(Ljava/util/ArrayList;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setStrAppUA(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setStrImei(Ljava/lang/String;)V

    iget v0, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/DeviceData;->setEDeviceType(I)V

    return-void
.end method

.method public setEDeviceType(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    return-void
.end method

.method public setStCurMeasure(LLBSAPIProtocol/Measure;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    return-void
.end method

.method public setStrAppUA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    return-void
.end method

.method public setStrImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    return-void
.end method

.method public setVMeasures(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->stCurMeasure:LLBSAPIProtocol/Measure;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->vMeasures:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strAppUA:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/DeviceData;->strImei:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LLBSAPIProtocol/DeviceData;->eDeviceType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
