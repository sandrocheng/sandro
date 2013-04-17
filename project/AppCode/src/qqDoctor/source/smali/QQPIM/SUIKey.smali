.class public final LQQPIM/SUIKey;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_type:I


# instance fields
.field public channelid:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public isbuildin:I

.field public lang:S

.field public lc:Ljava/lang/String;

.field public machineconf:Ljava/lang/String;

.field public machineuid:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public osversion:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public sdk:Ljava/lang/String;

.field public subplatform:I

.field public type:I

.field public uuid:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SUIKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SUIKey;->$assertionsDisabled:Z

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

    iput-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    sget-object v0, LQQPIM/EPhoneType;->MPT_NONE:LQQPIM/EPhoneType;

    invoke-virtual {v0}, LQQPIM/EPhoneType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/SUIKey;->type:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    iput v1, p0, LQQPIM/SUIKey;->subplatform:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    iput v1, p0, LQQPIM/SUIKey;->isbuildin:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    iput-short v1, p0, LQQPIM/SUIKey;->lang:S

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setName(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setQq(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setIp(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SUIKey;->type:I

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setType(I)V

    iget-object v0, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setOsversion(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setMachineuid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setMachineconf(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setPhone(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SUIKey;->subplatform:I

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setSubplatform(I)V

    iget-object v0, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setChannelid(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SUIKey;->isbuildin:I

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setIsbuildin(I)V

    iget-object v0, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setUuid(Ljava/lang/String;)V

    iget-short v0, p0, LQQPIM/SUIKey;->lang:S

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setLang(S)V

    iget-object v0, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setSdk(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;SLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    sget-object v1, LQQPIM/EPhoneType;->MPT_NONE:LQQPIM/EPhoneType;

    invoke-virtual {v1}, LQQPIM/EPhoneType;->value()I

    move-result v1

    iput v1, p0, LQQPIM/SUIKey;->type:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SUIKey;->subplatform:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SUIKey;->isbuildin:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, LQQPIM/SUIKey;->lang:S

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/SUIKey;->setLc(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/SUIKey;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/SUIKey;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/SUIKey;->setImsi(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/SUIKey;->setQq(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/SUIKey;->setIp(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, LQQPIM/SUIKey;->setType(I)V

    invoke-virtual {p0, p9}, LQQPIM/SUIKey;->setOsversion(Ljava/lang/String;)V

    invoke-virtual {p0, p10}, LQQPIM/SUIKey;->setMachineuid(Ljava/lang/String;)V

    invoke-virtual {p0, p11}, LQQPIM/SUIKey;->setMachineconf(Ljava/lang/String;)V

    invoke-virtual {p0, p12}, LQQPIM/SUIKey;->setPhone(Ljava/lang/String;)V

    invoke-virtual {p0, p13}, LQQPIM/SUIKey;->setSubplatform(I)V

    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setChannelid(Ljava/lang/String;)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setIsbuildin(I)V

    move-object/from16 v0, p16

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setUuid(Ljava/lang/String;)V

    move/from16 v0, p17

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setLang(S)V

    move-object/from16 v0, p18

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setGuid(Ljava/lang/String;)V

    move-object/from16 v0, p19

    invoke-virtual {p0, v0}, LQQPIM/SUIKey;->setSdk(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SUIKey"

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

    sget-boolean v1, LQQPIM/SUIKey;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const-string v2, "lc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    const-string v2, "ip"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SUIKey;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    const-string v2, "osversion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    const-string v2, "machineuid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    const-string v2, "machineconf"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SUIKey;->subplatform:I

    const-string v2, "subplatform"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    const-string v2, "channelid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SUIKey;->isbuildin:I

    const-string v2, "isbuildin"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/SUIKey;->lang:S

    const-string v2, "lang"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/SUIKey;

    iget-object v1, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SUIKey;->type:I

    iget v2, p1, LQQPIM/SUIKey;->type:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SUIKey;->subplatform:I

    iget v2, p1, LQQPIM/SUIKey;->subplatform:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SUIKey;->isbuildin:I

    iget v2, p1, LQQPIM/SUIKey;->isbuildin:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/SUIKey;->lang:S

    iget-short v2, p1, LQQPIM/SUIKey;->lang:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SUIKey"

    return-object v0
.end method

.method public final getChannelid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    return-object v0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsbuildin()I
    .locals 1

    iget v0, p0, LQQPIM/SUIKey;->isbuildin:I

    return v0
.end method

.method public final getLang()S
    .locals 1

    iget-short v0, p0, LQQPIM/SUIKey;->lang:S

    return v0
.end method

.method public final getLc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    return-object v0
.end method

.method public final getMachineconf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    return-object v0
.end method

.method public final getMachineuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsversion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getQq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubplatform()I
    .locals 1

    iget v0, p0, LQQPIM/SUIKey;->subplatform:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, LQQPIM/SUIKey;->type:I

    return v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

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

    iput-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    iget v0, p0, LQQPIM/SUIKey;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SUIKey;->type:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    iget v0, p0, LQQPIM/SUIKey;->subplatform:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SUIKey;->subplatform:I

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    iget v0, p0, LQQPIM/SUIKey;->isbuildin:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SUIKey;->isbuildin:I

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    iget-short v0, p0, LQQPIM/SUIKey;->lang:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/SUIKey;->lang:S

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    return-void
.end method

.method public final setChannelid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    return-void
.end method

.method public final setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setIsbuildin(I)V
    .locals 0

    iput p1, p0, LQQPIM/SUIKey;->isbuildin:I

    return-void
.end method

.method public final setLang(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/SUIKey;->lang:S

    return-void
.end method

.method public final setLc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    return-void
.end method

.method public final setMachineconf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    return-void
.end method

.method public final setMachineuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOsversion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setQq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    return-void
.end method

.method public final setSdk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    return-void
.end method

.method public final setSubplatform(I)V
    .locals 0

    iput p1, p0, LQQPIM/SUIKey;->subplatform:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, LQQPIM/SUIKey;->type:I

    return-void
.end method

.method public final setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SUIKey;->qq:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SUIKey;->ip:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/SUIKey;->type:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SUIKey;->osversion:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/SUIKey;->machineuid:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/SUIKey;->machineconf:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/SUIKey;->phone:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/SUIKey;->subplatform:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LQQPIM/SUIKey;->channelid:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_6
    iget v0, p0, LQQPIM/SUIKey;->isbuildin:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, LQQPIM/SUIKey;->uuid:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_7
    iget-short v0, p0, LQQPIM/SUIKey;->lang:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, LQQPIM/SUIKey;->guid:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, LQQPIM/SUIKey;->sdk:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method
