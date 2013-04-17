.class public final LQQPIM/MissionItem;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public isextra:B

.field public missionid:I

.field public name:Ljava/lang/String;

.field public points:I

.field public state:B

.field public time:I

.field public times:I

.field public tlast:I

.field public usetimes:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/MissionItem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/MissionItem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/MissionItem;->missionid:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    iput v1, p0, LQQPIM/MissionItem;->points:I

    iput-byte v1, p0, LQQPIM/MissionItem;->state:B

    iput v1, p0, LQQPIM/MissionItem;->times:I

    iput-byte v1, p0, LQQPIM/MissionItem;->isextra:B

    iput v1, p0, LQQPIM/MissionItem;->time:I

    iput v1, p0, LQQPIM/MissionItem;->tlast:I

    iput v1, p0, LQQPIM/MissionItem;->usetimes:I

    const/4 v0, 0x1

    iput v0, p0, LQQPIM/MissionItem;->version:I

    iget v0, p0, LQQPIM/MissionItem;->missionid:I

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setMissionid(I)V

    iget-object v0, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setName(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/MissionItem;->points:I

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setPoints(I)V

    iget-byte v0, p0, LQQPIM/MissionItem;->state:B

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setState(B)V

    iget v0, p0, LQQPIM/MissionItem;->times:I

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setTimes(I)V

    iget-byte v0, p0, LQQPIM/MissionItem;->isextra:B

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setIsextra(B)V

    iget v0, p0, LQQPIM/MissionItem;->time:I

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setTime(I)V

    iget v0, p0, LQQPIM/MissionItem;->tlast:I

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setTlast(I)V

    iget v0, p0, LQQPIM/MissionItem;->usetimes:I

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setUsetimes(I)V

    iget v0, p0, LQQPIM/MissionItem;->version:I

    invoke-virtual {p0, v0}, LQQPIM/MissionItem;->setVersion(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IBIBIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/MissionItem;->missionid:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    iput v1, p0, LQQPIM/MissionItem;->points:I

    iput-byte v1, p0, LQQPIM/MissionItem;->state:B

    iput v1, p0, LQQPIM/MissionItem;->times:I

    iput-byte v1, p0, LQQPIM/MissionItem;->isextra:B

    iput v1, p0, LQQPIM/MissionItem;->time:I

    iput v1, p0, LQQPIM/MissionItem;->tlast:I

    iput v1, p0, LQQPIM/MissionItem;->usetimes:I

    const/4 v0, 0x1

    iput v0, p0, LQQPIM/MissionItem;->version:I

    invoke-virtual {p0, p1}, LQQPIM/MissionItem;->setMissionid(I)V

    invoke-virtual {p0, p2}, LQQPIM/MissionItem;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/MissionItem;->setPoints(I)V

    invoke-virtual {p0, p4}, LQQPIM/MissionItem;->setState(B)V

    invoke-virtual {p0, p5}, LQQPIM/MissionItem;->setTimes(I)V

    invoke-virtual {p0, p6}, LQQPIM/MissionItem;->setIsextra(B)V

    invoke-virtual {p0, p7}, LQQPIM/MissionItem;->setTime(I)V

    invoke-virtual {p0, p8}, LQQPIM/MissionItem;->setTlast(I)V

    invoke-virtual {p0, p9}, LQQPIM/MissionItem;->setUsetimes(I)V

    invoke-virtual {p0, p10}, LQQPIM/MissionItem;->setVersion(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MissionItem"

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

    sget-boolean v1, LQQPIM/MissionItem;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/MissionItem;->missionid:I

    const-string v2, "missionid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MissionItem;->points:I

    const-string v2, "points"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LQQPIM/MissionItem;->state:B

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MissionItem;->times:I

    const-string v2, "times"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LQQPIM/MissionItem;->isextra:B

    const-string v2, "isextra"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MissionItem;->time:I

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MissionItem;->tlast:I

    const-string v2, "tlast"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MissionItem;->usetimes:I

    const-string v2, "usetimes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MissionItem;->version:I

    const-string v2, "version"

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
    check-cast p1, LQQPIM/MissionItem;

    iget v1, p0, LQQPIM/MissionItem;->missionid:I

    iget v2, p1, LQQPIM/MissionItem;->missionid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/MissionItem;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MissionItem;->points:I

    iget v2, p1, LQQPIM/MissionItem;->points:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, LQQPIM/MissionItem;->state:B

    iget-byte v2, p1, LQQPIM/MissionItem;->state:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MissionItem;->times:I

    iget v2, p1, LQQPIM/MissionItem;->times:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, LQQPIM/MissionItem;->isextra:B

    iget-byte v2, p1, LQQPIM/MissionItem;->isextra:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MissionItem;->time:I

    iget v2, p1, LQQPIM/MissionItem;->time:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MissionItem;->tlast:I

    iget v2, p1, LQQPIM/MissionItem;->tlast:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MissionItem;->usetimes:I

    iget v2, p1, LQQPIM/MissionItem;->usetimes:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/MissionItem;->version:I

    iget v2, p1, LQQPIM/MissionItem;->version:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MissionItem"

    return-object v0
.end method

.method public final getIsextra()B
    .locals 1

    iget-byte v0, p0, LQQPIM/MissionItem;->isextra:B

    return v0
.end method

.method public final getMissionid()I
    .locals 1

    iget v0, p0, LQQPIM/MissionItem;->missionid:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPoints()I
    .locals 1

    iget v0, p0, LQQPIM/MissionItem;->points:I

    return v0
.end method

.method public final getState()B
    .locals 1

    iget-byte v0, p0, LQQPIM/MissionItem;->state:B

    return v0
.end method

.method public final getTime()I
    .locals 1

    iget v0, p0, LQQPIM/MissionItem;->time:I

    return v0
.end method

.method public final getTimes()I
    .locals 1

    iget v0, p0, LQQPIM/MissionItem;->times:I

    return v0
.end method

.method public final getTlast()I
    .locals 1

    iget v0, p0, LQQPIM/MissionItem;->tlast:I

    return v0
.end method

.method public final getUsetimes()I
    .locals 1

    iget v0, p0, LQQPIM/MissionItem;->usetimes:I

    return v0
.end method

.method public final getVersion()I
    .locals 1

    iget v0, p0, LQQPIM/MissionItem;->version:I

    return v0
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/MissionItem;->missionid:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MissionItem;->missionid:I

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    iget v0, p0, LQQPIM/MissionItem;->points:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MissionItem;->points:I

    iget-byte v0, p0, LQQPIM/MissionItem;->state:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/MissionItem;->state:B

    iget v0, p0, LQQPIM/MissionItem;->times:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MissionItem;->times:I

    iget-byte v0, p0, LQQPIM/MissionItem;->isextra:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/MissionItem;->isextra:B

    iget v0, p0, LQQPIM/MissionItem;->time:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MissionItem;->time:I

    iget v0, p0, LQQPIM/MissionItem;->tlast:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MissionItem;->tlast:I

    iget v0, p0, LQQPIM/MissionItem;->usetimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MissionItem;->usetimes:I

    iget v0, p0, LQQPIM/MissionItem;->version:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MissionItem;->version:I

    return-void
.end method

.method public final setIsextra(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/MissionItem;->isextra:B

    return-void
.end method

.method public final setMissionid(I)V
    .locals 0

    iput p1, p0, LQQPIM/MissionItem;->missionid:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPoints(I)V
    .locals 0

    iput p1, p0, LQQPIM/MissionItem;->points:I

    return-void
.end method

.method public final setState(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/MissionItem;->state:B

    return-void
.end method

.method public final setTime(I)V
    .locals 0

    iput p1, p0, LQQPIM/MissionItem;->time:I

    return-void
.end method

.method public final setTimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/MissionItem;->times:I

    return-void
.end method

.method public final setTlast(I)V
    .locals 0

    iput p1, p0, LQQPIM/MissionItem;->tlast:I

    return-void
.end method

.method public final setUsetimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/MissionItem;->usetimes:I

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, LQQPIM/MissionItem;->version:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/MissionItem;->missionid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/MissionItem;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/MissionItem;->points:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-byte v0, p0, LQQPIM/MissionItem;->state:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget v0, p0, LQQPIM/MissionItem;->times:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-byte v0, p0, LQQPIM/MissionItem;->isextra:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget v0, p0, LQQPIM/MissionItem;->time:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/MissionItem;->tlast:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/MissionItem;->usetimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/MissionItem;->version:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
