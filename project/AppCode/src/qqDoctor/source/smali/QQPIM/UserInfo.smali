.class public final LQQPIM/UserInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_ct:I

.field static cache_product:I

.field static cache_version:LQQPIM/ProductVersion;


# instance fields
.field public buildno:I

.field public channelid:Ljava/lang/String;

.field public ct:I

.field public guid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public isbuildin:I

.field public isroot:I

.field public lang:S

.field public lc:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public product:I

.field public qq:Ljava/lang/String;

.field public sdkversion:I

.field public ua:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public version:LQQPIM/ProductVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/UserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/UserInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v0}, LQQPIM/ConnectType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->ct:I

    sget-object v0, LQQPIM/EProduct;->EP_None:LQQPIM/EProduct;

    invoke-virtual {v0}, LQQPIM/EProduct;->value()I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->product:I

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    iput v1, p0, LQQPIM/UserInfo;->isbuildin:I

    iput v1, p0, LQQPIM/UserInfo;->isroot:I

    iput v1, p0, LQQPIM/UserInfo;->sdkversion:I

    iput v1, p0, LQQPIM/UserInfo;->buildno:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    iput-short v1, p0, LQQPIM/UserInfo;->lang:S

    iget-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setQq(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setPhone(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setIp(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setChannelid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setUa(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/UserInfo;->ct:I

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setCt(I)V

    iget v0, p0, LQQPIM/UserInfo;->product:I

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setProduct(I)V

    iget-object v0, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setVersion(LQQPIM/ProductVersion;)V

    iget-object v0, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setImsi(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/UserInfo;->isbuildin:I

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setIsbuildin(I)V

    iget v0, p0, LQQPIM/UserInfo;->isroot:I

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setIsroot(I)V

    iget v0, p0, LQQPIM/UserInfo;->sdkversion:I

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setSdkversion(I)V

    iget v0, p0, LQQPIM/UserInfo;->buildno:I

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setBuildno(I)V

    iget-object v0, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setUuid(Ljava/lang/String;)V

    iget-short v0, p0, LQQPIM/UserInfo;->lang:S

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setLang(S)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILQQPIM/ProductVersion;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;S)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    sget-object v1, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v1}, LQQPIM/ConnectType;->value()I

    move-result v1

    iput v1, p0, LQQPIM/UserInfo;->ct:I

    sget-object v1, LQQPIM/EProduct;->EP_None:LQQPIM/EProduct;

    invoke-virtual {v1}, LQQPIM/EProduct;->value()I

    move-result v1

    iput v1, p0, LQQPIM/UserInfo;->product:I

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/UserInfo;->isbuildin:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/UserInfo;->isroot:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/UserInfo;->sdkversion:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/UserInfo;->buildno:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, LQQPIM/UserInfo;->lang:S

    invoke-virtual {p0, p1}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/UserInfo;->setQq(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/UserInfo;->setPhone(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/UserInfo;->setIp(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/UserInfo;->setLc(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/UserInfo;->setChannelid(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/UserInfo;->setUa(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, LQQPIM/UserInfo;->setCt(I)V

    invoke-virtual {p0, p9}, LQQPIM/UserInfo;->setProduct(I)V

    invoke-virtual {p0, p10}, LQQPIM/UserInfo;->setVersion(LQQPIM/ProductVersion;)V

    invoke-virtual {p0, p11}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    invoke-virtual {p0, p12}, LQQPIM/UserInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {p0, p13}, LQQPIM/UserInfo;->setIsbuildin(I)V

    move/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setIsroot(I)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setSdkversion(I)V

    move/from16 v0, p16

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setBuildno(I)V

    move-object/from16 v0, p17

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setUuid(Ljava/lang/String;)V

    move/from16 v0, p18

    invoke-virtual {p0, v0}, LQQPIM/UserInfo;->setLang(S)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.UserInfo"

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

    sget-boolean v1, LQQPIM/UserInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const-string v2, "ip"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const-string v2, "lc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const-string v2, "channelid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    const-string v2, "ua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UserInfo;->ct:I

    const-string v2, "ct"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UserInfo;->product:I

    const-string v2, "product"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UserInfo;->isbuildin:I

    const-string v2, "isbuildin"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UserInfo;->isroot:I

    const-string v2, "isroot"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UserInfo;->sdkversion:I

    const-string v2, "sdkversion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UserInfo;->buildno:I

    const-string v2, "buildno"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/UserInfo;->lang:S

    const-string v2, "lang"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/UserInfo;

    iget-object v1, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/UserInfo;->ct:I

    iget v2, p1, LQQPIM/UserInfo;->ct:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/UserInfo;->product:I

    iget v2, p1, LQQPIM/UserInfo;->product:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    iget-object v2, p1, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/UserInfo;->isbuildin:I

    iget v2, p1, LQQPIM/UserInfo;->isbuildin:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/UserInfo;->isroot:I

    iget v2, p1, LQQPIM/UserInfo;->isroot:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/UserInfo;->sdkversion:I

    iget v2, p1, LQQPIM/UserInfo;->sdkversion:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/UserInfo;->buildno:I

    iget v2, p1, LQQPIM/UserInfo;->buildno:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/UserInfo;->lang:S

    iget-short v2, p1, LQQPIM/UserInfo;->lang:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.UserInfo"

    return-object v0
.end method

.method public final getBuildno()I
    .locals 1

    iget v0, p0, LQQPIM/UserInfo;->buildno:I

    return v0
.end method

.method public final getChannelid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    return-object v0
.end method

.method public final getCt()I
    .locals 1

    iget v0, p0, LQQPIM/UserInfo;->ct:I

    return v0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsbuildin()I
    .locals 1

    iget v0, p0, LQQPIM/UserInfo;->isbuildin:I

    return v0
.end method

.method public final getIsroot()I
    .locals 1

    iget v0, p0, LQQPIM/UserInfo;->isroot:I

    return v0
.end method

.method public final getLang()S
    .locals 1

    iget-short v0, p0, LQQPIM/UserInfo;->lang:S

    return v0
.end method

.method public final getLc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getProduct()I
    .locals 1

    iget v0, p0, LQQPIM/UserInfo;->product:I

    return v0
.end method

.method public final getQq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkversion()I
    .locals 1

    iget v0, p0, LQQPIM/UserInfo;->sdkversion:I

    return v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()LQQPIM/ProductVersion;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

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
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    iget v0, p0, LQQPIM/UserInfo;->ct:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->ct:I

    iget v0, p0, LQQPIM/UserInfo;->product:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->product:I

    sget-object v0, LQQPIM/UserInfo;->cache_version:LQQPIM/ProductVersion;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/ProductVersion;

    invoke-direct {v0}, LQQPIM/ProductVersion;-><init>()V

    sput-object v0, LQQPIM/UserInfo;->cache_version:LQQPIM/ProductVersion;

    :cond_0
    sget-object v0, LQQPIM/UserInfo;->cache_version:LQQPIM/ProductVersion;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/ProductVersion;

    iput-object v0, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    iget v0, p0, LQQPIM/UserInfo;->isbuildin:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->isbuildin:I

    iget v0, p0, LQQPIM/UserInfo;->isroot:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->isroot:I

    iget v0, p0, LQQPIM/UserInfo;->sdkversion:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->sdkversion:I

    iget v0, p0, LQQPIM/UserInfo;->buildno:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->buildno:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    iget-short v0, p0, LQQPIM/UserInfo;->lang:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/UserInfo;->lang:S

    return-void
.end method

.method public final setBuildno(I)V
    .locals 0

    iput p1, p0, LQQPIM/UserInfo;->buildno:I

    return-void
.end method

.method public final setChannelid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    return-void
.end method

.method public final setCt(I)V
    .locals 0

    iput p1, p0, LQQPIM/UserInfo;->ct:I

    return-void
.end method

.method public final setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setIsbuildin(I)V
    .locals 0

    iput p1, p0, LQQPIM/UserInfo;->isbuildin:I

    return-void
.end method

.method public final setIsroot(I)V
    .locals 0

    iput p1, p0, LQQPIM/UserInfo;->isroot:I

    return-void
.end method

.method public final setLang(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/UserInfo;->lang:S

    return-void
.end method

.method public final setLc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setProduct(I)V
    .locals 0

    iput p1, p0, LQQPIM/UserInfo;->product:I

    return-void
.end method

.method public final setQq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    return-void
.end method

.method public final setSdkversion(I)V
    .locals 0

    iput p1, p0, LQQPIM/UserInfo;->sdkversion:I

    return-void
.end method

.method public final setUa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    return-void
.end method

.method public final setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(LQQPIM/ProductVersion;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/UserInfo;->ct:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/UserInfo;->product:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    if-eqz v0, :cond_6

    iget-object v0, p0, LQQPIM/UserInfo;->version:LQQPIM/ProductVersion;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_6
    iget-object v0, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, LQQPIM/UserInfo;->guid:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, LQQPIM/UserInfo;->imsi:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_8
    iget v0, p0, LQQPIM/UserInfo;->isbuildin:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/UserInfo;->isroot:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/UserInfo;->sdkversion:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/UserInfo;->buildno:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, LQQPIM/UserInfo;->uuid:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_9
    iget-short v0, p0, LQQPIM/UserInfo;->lang:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    return-void
.end method
