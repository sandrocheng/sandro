.class public final LQQPIM/STSmsInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public bAuto:Z

.field public nCollocateNum:I

.field public nrework:I

.field public ntime:I

.field public ntrafficnum:I

.field public sender:Ljava/lang/String;

.field public sms:Ljava/lang/String;

.field public strHardInfo:Ljava/lang/String;

.field public strarea:Ljava/lang/String;

.field public strqueryorder:Ljava/lang/String;

.field public strsimtype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/STSmsInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/STSmsInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/STSmsInfo;->ntime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    iput v1, p0, LQQPIM/STSmsInfo;->nrework:I

    iput v1, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    iput v1, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/STSmsInfo;->bAuto:Z

    iget v0, p0, LQQPIM/STSmsInfo;->ntime:I

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setNtime(I)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setSender(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setSms(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setStrarea(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setStrsimtype(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setStrqueryorder(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STSmsInfo;->nrework:I

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setNrework(I)V

    iget v0, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setNtrafficnum(I)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setStrHardInfo(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setNCollocateNum(I)V

    iget-boolean v0, p0, LQQPIM/STSmsInfo;->bAuto:Z

    invoke-virtual {p0, v0}, LQQPIM/STSmsInfo;->setBAuto(Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/STSmsInfo;->ntime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    iput v1, p0, LQQPIM/STSmsInfo;->nrework:I

    iput v1, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    iput v1, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/STSmsInfo;->bAuto:Z

    invoke-virtual {p0, p1}, LQQPIM/STSmsInfo;->setNtime(I)V

    invoke-virtual {p0, p2}, LQQPIM/STSmsInfo;->setSender(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/STSmsInfo;->setSms(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/STSmsInfo;->setStrarea(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/STSmsInfo;->setStrsimtype(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/STSmsInfo;->setStrqueryorder(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/STSmsInfo;->setNrework(I)V

    invoke-virtual {p0, p8}, LQQPIM/STSmsInfo;->setNtrafficnum(I)V

    invoke-virtual {p0, p9}, LQQPIM/STSmsInfo;->setStrHardInfo(Ljava/lang/String;)V

    invoke-virtual {p0, p10}, LQQPIM/STSmsInfo;->setNCollocateNum(I)V

    invoke-virtual {p0, p11}, LQQPIM/STSmsInfo;->setBAuto(Z)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STSmsInfo"

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

    sget-boolean v1, LQQPIM/STSmsInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/STSmsInfo;->ntime:I

    const-string v2, "ntime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    const-string v2, "sender"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    const-string v2, "strarea"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    const-string v2, "strsimtype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    const-string v2, "strqueryorder"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STSmsInfo;->nrework:I

    const-string v2, "nrework"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    const-string v2, "ntrafficnum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    const-string v2, "strHardInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    const-string v2, "nCollocateNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/STSmsInfo;->bAuto:Z

    const-string v2, "bAuto"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/STSmsInfo;

    iget v1, p0, LQQPIM/STSmsInfo;->ntime:I

    iget v2, p1, LQQPIM/STSmsInfo;->ntime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STSmsInfo;->nrework:I

    iget v2, p1, LQQPIM/STSmsInfo;->nrework:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    iget v2, p1, LQQPIM/STSmsInfo;->ntrafficnum:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    iget v2, p1, LQQPIM/STSmsInfo;->nCollocateNum:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/STSmsInfo;->bAuto:Z

    iget-boolean v2, p1, LQQPIM/STSmsInfo;->bAuto:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STSmsInfo"

    return-object v0
.end method

.method public final getBAuto()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/STSmsInfo;->bAuto:Z

    return v0
.end method

.method public final getNCollocateNum()I
    .locals 1

    iget v0, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    return v0
.end method

.method public final getNrework()I
    .locals 1

    iget v0, p0, LQQPIM/STSmsInfo;->nrework:I

    return v0
.end method

.method public final getNtime()I
    .locals 1

    iget v0, p0, LQQPIM/STSmsInfo;->ntime:I

    return v0
.end method

.method public final getNtrafficnum()I
    .locals 1

    iget v0, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    return v0
.end method

.method public final getSender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public final getSms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrHardInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrarea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrqueryorder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrsimtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

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

    iget v0, p0, LQQPIM/STSmsInfo;->ntime:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STSmsInfo;->ntime:I

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    iget v0, p0, LQQPIM/STSmsInfo;->nrework:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STSmsInfo;->nrework:I

    iget v0, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    iget v0, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    iget-boolean v0, p0, LQQPIM/STSmsInfo;->bAuto:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/STSmsInfo;->bAuto:Z

    return-void
.end method

.method public final setBAuto(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/STSmsInfo;->bAuto:Z

    return-void
.end method

.method public final setNCollocateNum(I)V
    .locals 0

    iput p1, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    return-void
.end method

.method public final setNrework(I)V
    .locals 0

    iput p1, p0, LQQPIM/STSmsInfo;->nrework:I

    return-void
.end method

.method public final setNtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/STSmsInfo;->ntime:I

    return-void
.end method

.method public final setNtrafficnum(I)V
    .locals 0

    iput p1, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    return-void
.end method

.method public final setSender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    return-void
.end method

.method public final setSms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    return-void
.end method

.method public final setStrHardInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    return-void
.end method

.method public final setStrarea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    return-void
.end method

.method public final setStrqueryorder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    return-void
.end method

.method public final setStrsimtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/STSmsInfo;->ntime:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->sender:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->sms:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/STSmsInfo;->strarea:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/STSmsInfo;->strsimtype:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/STSmsInfo;->strqueryorder:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget v0, p0, LQQPIM/STSmsInfo;->nrework:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STSmsInfo;->ntrafficnum:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/STSmsInfo;->strHardInfo:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, LQQPIM/STSmsInfo;->nCollocateNum:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-boolean v0, p0, LQQPIM/STSmsInfo;->bAuto:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    return-void
.end method
