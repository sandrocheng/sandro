.class public final LQQPIM/stOpLogList;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public cmd:S

.field public latitude:D

.field public longitude:D

.field public phone:Ljava/lang/String;

.field public reqtime:I

.field public result:S

.field public resulttime:I

.field public ulkey:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/stOpLogList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/stOpLogList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/stOpLogList;->ulkey:J

    iput-short v2, p0, LQQPIM/stOpLogList;->cmd:S

    iput v2, p0, LQQPIM/stOpLogList;->reqtime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    const/4 v0, -0x1

    iput-short v0, p0, LQQPIM/stOpLogList;->result:S

    iput v2, p0, LQQPIM/stOpLogList;->resulttime:I

    iput-wide v3, p0, LQQPIM/stOpLogList;->longitude:D

    iput-wide v3, p0, LQQPIM/stOpLogList;->latitude:D

    iget-wide v0, p0, LQQPIM/stOpLogList;->ulkey:J

    invoke-virtual {p0, v0, v1}, LQQPIM/stOpLogList;->setUlkey(J)V

    iget-short v0, p0, LQQPIM/stOpLogList;->cmd:S

    invoke-virtual {p0, v0}, LQQPIM/stOpLogList;->setCmd(S)V

    iget v0, p0, LQQPIM/stOpLogList;->reqtime:I

    invoke-virtual {p0, v0}, LQQPIM/stOpLogList;->setReqtime(I)V

    iget-object v0, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stOpLogList;->setPhone(Ljava/lang/String;)V

    iget-short v0, p0, LQQPIM/stOpLogList;->result:S

    invoke-virtual {p0, v0}, LQQPIM/stOpLogList;->setResult(S)V

    iget v0, p0, LQQPIM/stOpLogList;->resulttime:I

    invoke-virtual {p0, v0}, LQQPIM/stOpLogList;->setResulttime(I)V

    iget-wide v0, p0, LQQPIM/stOpLogList;->longitude:D

    invoke-virtual {p0, v0, v1}, LQQPIM/stOpLogList;->setLongitude(D)V

    iget-wide v0, p0, LQQPIM/stOpLogList;->latitude:D

    invoke-virtual {p0, v0, v1}, LQQPIM/stOpLogList;->setLatitude(D)V

    return-void
.end method

.method public constructor <init>(JSILjava/lang/String;SIDD)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/stOpLogList;->ulkey:J

    const/4 v0, 0x0

    iput-short v0, p0, LQQPIM/stOpLogList;->cmd:S

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stOpLogList;->reqtime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    const/4 v0, -0x1

    iput-short v0, p0, LQQPIM/stOpLogList;->result:S

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stOpLogList;->resulttime:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/stOpLogList;->longitude:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/stOpLogList;->latitude:D

    invoke-virtual {p0, p1, p2}, LQQPIM/stOpLogList;->setUlkey(J)V

    invoke-virtual {p0, p3}, LQQPIM/stOpLogList;->setCmd(S)V

    invoke-virtual {p0, p4}, LQQPIM/stOpLogList;->setReqtime(I)V

    invoke-virtual {p0, p5}, LQQPIM/stOpLogList;->setPhone(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/stOpLogList;->setResult(S)V

    invoke-virtual {p0, p7}, LQQPIM/stOpLogList;->setResulttime(I)V

    invoke-virtual {p0, p8, p9}, LQQPIM/stOpLogList;->setLongitude(D)V

    invoke-virtual {p0, p10, p11}, LQQPIM/stOpLogList;->setLatitude(D)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stOpLogList"

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

    sget-boolean v1, LQQPIM/stOpLogList;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-wide v1, p0, LQQPIM/stOpLogList;->ulkey:J

    const-string v3, "ulkey"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/stOpLogList;->cmd:S

    const-string v2, "cmd"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/stOpLogList;->reqtime:I

    const-string v2, "reqtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/stOpLogList;->result:S

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/stOpLogList;->resulttime:I

    const-string v2, "resulttime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LQQPIM/stOpLogList;->longitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LQQPIM/stOpLogList;->latitude:D

    const-string v3, "latitude"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, LQQPIM/stOpLogList;

    iget-wide v1, p0, LQQPIM/stOpLogList;->ulkey:J

    iget-wide v3, p1, LQQPIM/stOpLogList;->ulkey:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/stOpLogList;->cmd:S

    iget-short v2, p1, LQQPIM/stOpLogList;->cmd:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/stOpLogList;->reqtime:I

    iget v2, p1, LQQPIM/stOpLogList;->reqtime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/stOpLogList;->result:S

    iget-short v2, p1, LQQPIM/stOpLogList;->result:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/stOpLogList;->resulttime:I

    iget v2, p1, LQQPIM/stOpLogList;->resulttime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, LQQPIM/stOpLogList;->longitude:D

    iget-wide v3, p1, LQQPIM/stOpLogList;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, LQQPIM/stOpLogList;->latitude:D

    iget-wide v3, p1, LQQPIM/stOpLogList;->latitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stOpLogList"

    return-object v0
.end method

.method public final getCmd()S
    .locals 1

    iget-short v0, p0, LQQPIM/stOpLogList;->cmd:S

    return v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, LQQPIM/stOpLogList;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, LQQPIM/stOpLogList;->longitude:D

    return-wide v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getReqtime()I
    .locals 1

    iget v0, p0, LQQPIM/stOpLogList;->reqtime:I

    return v0
.end method

.method public final getResult()S
    .locals 1

    iget-short v0, p0, LQQPIM/stOpLogList;->result:S

    return v0
.end method

.method public final getResulttime()I
    .locals 1

    iget v0, p0, LQQPIM/stOpLogList;->resulttime:I

    return v0
.end method

.method public final getUlkey()J
    .locals 2

    iget-wide v0, p0, LQQPIM/stOpLogList;->ulkey:J

    return-wide v0
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

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v0, p0, LQQPIM/stOpLogList;->ulkey:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/stOpLogList;->ulkey:J

    iget-short v0, p0, LQQPIM/stOpLogList;->cmd:S

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/stOpLogList;->cmd:S

    iget v0, p0, LQQPIM/stOpLogList;->reqtime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/stOpLogList;->reqtime:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    iget-short v0, p0, LQQPIM/stOpLogList;->result:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/stOpLogList;->result:S

    iget v0, p0, LQQPIM/stOpLogList;->resulttime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/stOpLogList;->resulttime:I

    iget-wide v0, p0, LQQPIM/stOpLogList;->longitude:D

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/stOpLogList;->longitude:D

    iget-wide v0, p0, LQQPIM/stOpLogList;->latitude:D

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/stOpLogList;->latitude:D

    return-void
.end method

.method public final setCmd(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/stOpLogList;->cmd:S

    return-void
.end method

.method public final setLatitude(D)V
    .locals 0

    iput-wide p1, p0, LQQPIM/stOpLogList;->latitude:D

    return-void
.end method

.method public final setLongitude(D)V
    .locals 0

    iput-wide p1, p0, LQQPIM/stOpLogList;->longitude:D

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setReqtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/stOpLogList;->reqtime:I

    return-void
.end method

.method public final setResult(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/stOpLogList;->result:S

    return-void
.end method

.method public final setResulttime(I)V
    .locals 0

    iput p1, p0, LQQPIM/stOpLogList;->resulttime:I

    return-void
.end method

.method public final setUlkey(J)V
    .locals 0

    iput-wide p1, p0, LQQPIM/stOpLogList;->ulkey:J

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-wide v0, p0, LQQPIM/stOpLogList;->ulkey:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget-short v0, p0, LQQPIM/stOpLogList;->cmd:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LQQPIM/stOpLogList;->reqtime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/stOpLogList;->phone:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-short v0, p0, LQQPIM/stOpLogList;->result:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LQQPIM/stOpLogList;->resulttime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-wide v0, p0, LQQPIM/stOpLogList;->longitude:D

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    iget-wide v0, p0, LQQPIM/stOpLogList;->latitude:D

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    return-void
.end method
