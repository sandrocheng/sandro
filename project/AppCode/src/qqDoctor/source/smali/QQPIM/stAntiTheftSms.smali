.class public final LQQPIM/stAntiTheftSms;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public cmd:I

.field public imei:Ljava/lang/String;

.field public phonenum:Ljava/lang/String;

.field public uin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/stAntiTheftSms;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/stAntiTheftSms;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stAntiTheftSms;->cmd:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/stAntiTheftSms;->uin:J

    iget v0, p0, LQQPIM/stAntiTheftSms;->cmd:I

    invoke-virtual {p0, v0}, LQQPIM/stAntiTheftSms;->setCmd(I)V

    iget-object v0, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stAntiTheftSms;->setPhonenum(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stAntiTheftSms;->setImei(Ljava/lang/String;)V

    iget-wide v0, p0, LQQPIM/stAntiTheftSms;->uin:J

    invoke-virtual {p0, v0, v1}, LQQPIM/stAntiTheftSms;->setUin(J)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stAntiTheftSms;->cmd:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/stAntiTheftSms;->uin:J

    invoke-virtual {p0, p1}, LQQPIM/stAntiTheftSms;->setCmd(I)V

    invoke-virtual {p0, p2}, LQQPIM/stAntiTheftSms;->setPhonenum(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/stAntiTheftSms;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, LQQPIM/stAntiTheftSms;->setUin(J)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stAntiTheftSms"

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

    sget-boolean v1, LQQPIM/stAntiTheftSms;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/stAntiTheftSms;->cmd:I

    const-string v2, "cmd"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    const-string v2, "phonenum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LQQPIM/stAntiTheftSms;->uin:J

    const-string v3, "uin"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/stAntiTheftSms;

    iget v1, p0, LQQPIM/stAntiTheftSms;->cmd:I

    iget v2, p1, LQQPIM/stAntiTheftSms;->cmd:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, LQQPIM/stAntiTheftSms;->uin:J

    iget-wide v3, p1, LQQPIM/stAntiTheftSms;->uin:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stAntiTheftSms"

    return-object v0
.end method

.method public final getCmd()I
    .locals 1

    iget v0, p0, LQQPIM/stAntiTheftSms;->cmd:I

    return v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhonenum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    return-object v0
.end method

.method public final getUin()J
    .locals 2

    iget-wide v0, p0, LQQPIM/stAntiTheftSms;->uin:J

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

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p0, LQQPIM/stAntiTheftSms;->cmd:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/stAntiTheftSms;->cmd:I

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    iget-wide v0, p0, LQQPIM/stAntiTheftSms;->uin:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/stAntiTheftSms;->uin:J

    return-void
.end method

.method public final setCmd(I)V
    .locals 0

    iput p1, p0, LQQPIM/stAntiTheftSms;->cmd:I

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setPhonenum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    return-void
.end method

.method public final setUin(J)V
    .locals 0

    iput-wide p1, p0, LQQPIM/stAntiTheftSms;->uin:J

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget v0, p0, LQQPIM/stAntiTheftSms;->cmd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/stAntiTheftSms;->phonenum:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/stAntiTheftSms;->imei:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-wide v0, p0, LQQPIM/stAntiTheftSms;->uin:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    return-void
.end method