.class public final LQQPIM/DownSoftInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_downnettype:I

.field static cache_reportnettype:I

.field static cache_softkey:LQQPIM/SoftKey;


# instance fields
.field public categoryid:I

.field public downnetname:Ljava/lang/String;

.field public downnettype:I

.field public errorcode:I

.field public errormsg:Ljava/lang/String;

.field public filesize:I

.field public hostaddress:Ljava/lang/String;

.field public isvalid:I

.field public nAvgSpeed:I

.field public nDownSize:I

.field public nDownType:B

.field public nFileId:I

.field public nMaxSpeed:I

.field public nProductId:I

.field public nRetryTimes:I

.field public nSoftId:I

.field public nSuccess:B

.field public nUsedTime:I

.field public pos:I

.field public reportnetname:Ljava/lang/String;

.field public reportnettype:I

.field public rssi:I

.field public sdcardstatus:I

.field public softkey:LQQPIM/SoftKey;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/DownSoftInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/DownSoftInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iput v1, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iput v1, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iput-byte v1, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iput v1, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iput v1, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iput v1, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iput v1, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iput v1, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iput-byte v1, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    iput v1, p0, LQQPIM/DownSoftInfo;->categoryid:I

    iput v1, p0, LQQPIM/DownSoftInfo;->pos:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    iput v1, p0, LQQPIM/DownSoftInfo;->errorcode:I

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v0}, LQQPIM/ConnectType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->downnettype:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v0}, LQQPIM/ConnectType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    iput v2, p0, LQQPIM/DownSoftInfo;->rssi:I

    iput v2, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    iput v1, p0, LQQPIM/DownSoftInfo;->filesize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    iput v2, p0, LQQPIM/DownSoftInfo;->isvalid:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNProductId(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNSoftId(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNFileId(I)V

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNSuccess(B)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNDownSize(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNUsedTime(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNMaxSpeed(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNAvgSpeed(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNRetryTimes(I)V

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setNDownType(B)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setSoftkey(LQQPIM/SoftKey;)V

    iget v0, p0, LQQPIM/DownSoftInfo;->categoryid:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setCategoryid(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->pos:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setPos(I)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setUrl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DownSoftInfo;->errorcode:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setErrorcode(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->downnettype:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setDownnettype(I)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setDownnetname(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setReportnettype(I)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setReportnetname(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setErrormsg(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DownSoftInfo;->rssi:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setRssi(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setSdcardstatus(I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->filesize:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setFilesize(I)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setHostaddress(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DownSoftInfo;->isvalid:I

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setIsvalid(I)V

    return-void
.end method

.method public constructor <init>(IIIBIIIIIBLQQPIM/SoftKey;IILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nFileId:I

    const/4 v1, 0x0

    iput-byte v1, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    const/4 v1, 0x0

    iput-byte v1, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->categoryid:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->pos:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->errorcode:I

    sget-object v1, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v1}, LQQPIM/ConnectType;->value()I

    move-result v1

    iput v1, p0, LQQPIM/DownSoftInfo;->downnettype:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    sget-object v1, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v1}, LQQPIM/ConnectType;->value()I

    move-result v1

    iput v1, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, LQQPIM/DownSoftInfo;->rssi:I

    const/4 v1, -0x1

    iput v1, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/DownSoftInfo;->filesize:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, LQQPIM/DownSoftInfo;->isvalid:I

    invoke-virtual {p0, p1}, LQQPIM/DownSoftInfo;->setNProductId(I)V

    invoke-virtual {p0, p2}, LQQPIM/DownSoftInfo;->setNSoftId(I)V

    invoke-virtual {p0, p3}, LQQPIM/DownSoftInfo;->setNFileId(I)V

    invoke-virtual {p0, p4}, LQQPIM/DownSoftInfo;->setNSuccess(B)V

    invoke-virtual {p0, p5}, LQQPIM/DownSoftInfo;->setNDownSize(I)V

    invoke-virtual {p0, p6}, LQQPIM/DownSoftInfo;->setNUsedTime(I)V

    invoke-virtual {p0, p7}, LQQPIM/DownSoftInfo;->setNMaxSpeed(I)V

    invoke-virtual {p0, p8}, LQQPIM/DownSoftInfo;->setNAvgSpeed(I)V

    invoke-virtual {p0, p9}, LQQPIM/DownSoftInfo;->setNRetryTimes(I)V

    invoke-virtual {p0, p10}, LQQPIM/DownSoftInfo;->setNDownType(B)V

    invoke-virtual {p0, p11}, LQQPIM/DownSoftInfo;->setSoftkey(LQQPIM/SoftKey;)V

    invoke-virtual {p0, p12}, LQQPIM/DownSoftInfo;->setCategoryid(I)V

    invoke-virtual {p0, p13}, LQQPIM/DownSoftInfo;->setPos(I)V

    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setUrl(Ljava/lang/String;)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setErrorcode(I)V

    move/from16 v0, p16

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setDownnettype(I)V

    move-object/from16 v0, p17

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setDownnetname(Ljava/lang/String;)V

    move/from16 v0, p18

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setReportnettype(I)V

    move-object/from16 v0, p19

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setReportnetname(Ljava/lang/String;)V

    move-object/from16 v0, p20

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setErrormsg(Ljava/lang/String;)V

    move/from16 v0, p21

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setRssi(I)V

    move/from16 v0, p22

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setSdcardstatus(I)V

    move/from16 v0, p23

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setFilesize(I)V

    move-object/from16 v0, p24

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setHostaddress(Ljava/lang/String;)V

    move/from16 v0, p25

    invoke-virtual {p0, v0}, LQQPIM/DownSoftInfo;->setIsvalid(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DownSoftInfo"

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

    sget-boolean v1, LQQPIM/DownSoftInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    const-string v2, "nProductId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    const-string v2, "nSoftId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->nFileId:I

    const-string v2, "nFileId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    const-string v2, "nSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    const-string v2, "nDownSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    const-string v2, "nUsedTime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    const-string v2, "nMaxSpeed"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    const-string v2, "nAvgSpeed"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    const-string v2, "nRetryTimes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const-string v2, "nDownType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->categoryid:I

    const-string v2, "categoryid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->pos:I

    const-string v2, "pos"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->errorcode:I

    const-string v2, "errorcode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->downnettype:I

    const-string v2, "downnettype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    const-string v2, "downnetname"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    const-string v2, "reportnettype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    const-string v2, "reportnetname"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    const-string v2, "errormsg"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->rssi:I

    const-string v2, "rssi"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    const-string v2, "sdcardstatus"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->filesize:I

    const-string v2, "filesize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    const-string v2, "hostaddress"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownSoftInfo;->isvalid:I

    const-string v2, "isvalid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, LQQPIM/DownSoftInfo;

    iget v1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nProductId:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nSoftId:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nFileId:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iget-byte v2, p1, LQQPIM/DownSoftInfo;->nSuccess:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nDownSize:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nUsedTime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iget v2, p1, LQQPIM/DownSoftInfo;->nRetryTimes:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, LQQPIM/DownSoftInfo;->nDownType:B

    iget-byte v2, p1, LQQPIM/DownSoftInfo;->nDownType:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    iget-object v2, p1, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->categoryid:I

    iget v2, p1, LQQPIM/DownSoftInfo;->categoryid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->pos:I

    iget v2, p1, LQQPIM/DownSoftInfo;->pos:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->errorcode:I

    iget v2, p1, LQQPIM/DownSoftInfo;->errorcode:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->downnettype:I

    iget v2, p1, LQQPIM/DownSoftInfo;->downnettype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    iget v2, p1, LQQPIM/DownSoftInfo;->reportnettype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->rssi:I

    iget v2, p1, LQQPIM/DownSoftInfo;->rssi:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    iget v2, p1, LQQPIM/DownSoftInfo;->sdcardstatus:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->filesize:I

    iget v2, p1, LQQPIM/DownSoftInfo;->filesize:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownSoftInfo;->isvalid:I

    iget v2, p1, LQQPIM/DownSoftInfo;->isvalid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DownSoftInfo"

    return-object v0
.end method

.method public final getCategoryid()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->categoryid:I

    return v0
.end method

.method public final getDownnetname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownnettype()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->downnettype:I

    return v0
.end method

.method public final getErrorcode()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->errorcode:I

    return v0
.end method

.method public final getErrormsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilesize()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->filesize:I

    return v0
.end method

.method public final getHostaddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsvalid()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->isvalid:I

    return v0
.end method

.method public final getNAvgSpeed()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    return v0
.end method

.method public final getNDownSize()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    return v0
.end method

.method public final getNDownType()B
    .locals 1

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    return v0
.end method

.method public final getNFileId()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    return v0
.end method

.method public final getNMaxSpeed()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    return v0
.end method

.method public final getNProductId()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    return v0
.end method

.method public final getNRetryTimes()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    return v0
.end method

.method public final getNSoftId()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    return v0
.end method

.method public final getNSuccess()B
    .locals 1

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    return v0
.end method

.method public final getNUsedTime()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    return v0
.end method

.method public final getPos()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->pos:I

    return v0
.end method

.method public final getReportnetname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportnettype()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    return v0
.end method

.method public final getRssi()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->rssi:I

    return v0
.end method

.method public final getSdcardstatus()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    return v0
.end method

.method public final getSoftkey()LQQPIM/SoftKey;
    .locals 1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    sget-object v0, LQQPIM/DownSoftInfo;->cache_softkey:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/DownSoftInfo;->cache_softkey:LQQPIM/SoftKey;

    :cond_0
    sget-object v0, LQQPIM/DownSoftInfo;->cache_softkey:LQQPIM/SoftKey;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    iget v0, p0, LQQPIM/DownSoftInfo;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->categoryid:I

    iget v0, p0, LQQPIM/DownSoftInfo;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->pos:I

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    iget v0, p0, LQQPIM/DownSoftInfo;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->errorcode:I

    iget v0, p0, LQQPIM/DownSoftInfo;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->downnettype:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    iget v0, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    iget v0, p0, LQQPIM/DownSoftInfo;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->rssi:I

    iget v0, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    iget v0, p0, LQQPIM/DownSoftInfo;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->filesize:I

    const/16 v0, 0x17

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    iget v0, p0, LQQPIM/DownSoftInfo;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->isvalid:I

    return-void
.end method

.method public final setCategoryid(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->categoryid:I

    return-void
.end method

.method public final setDownnetname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    return-void
.end method

.method public final setDownnettype(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->downnettype:I

    return-void
.end method

.method public final setErrorcode(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->errorcode:I

    return-void
.end method

.method public final setErrormsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    return-void
.end method

.method public final setFilesize(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->filesize:I

    return-void
.end method

.method public final setHostaddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    return-void
.end method

.method public final setIsvalid(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->isvalid:I

    return-void
.end method

.method public final setNAvgSpeed(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    return-void
.end method

.method public final setNDownSize(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    return-void
.end method

.method public final setNDownType(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/DownSoftInfo;->nDownType:B

    return-void
.end method

.method public final setNFileId(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nFileId:I

    return-void
.end method

.method public final setNMaxSpeed(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    return-void
.end method

.method public final setNProductId(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    return-void
.end method

.method public final setNRetryTimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    return-void
.end method

.method public final setNSoftId(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    return-void
.end method

.method public final setNSuccess(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    return-void
.end method

.method public final setNUsedTime(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    return-void
.end method

.method public final setPos(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->pos:I

    return-void
.end method

.method public final setReportnetname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    return-void
.end method

.method public final setReportnettype(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    return-void
.end method

.method public final setRssi(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->rssi:I

    return-void
.end method

.method public final setSdcardstatus(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    return-void
.end method

.method public final setSoftkey(LQQPIM/SoftKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LQQPIM/DownSoftInfo;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/DownSoftInfo;->url:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, LQQPIM/DownSoftInfo;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->downnetname:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/DownSoftInfo;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/DownSoftInfo;->reportnetname:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/DownSoftInfo;->errormsg:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, LQQPIM/DownSoftInfo;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/DownSoftInfo;->hostaddress:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget v0, p0, LQQPIM/DownSoftInfo;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
