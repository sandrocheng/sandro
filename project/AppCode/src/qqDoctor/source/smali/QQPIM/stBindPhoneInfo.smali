.class public final LQQPIM/stBindPhoneInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public bindtime:I

.field public changephone:Ljava/lang/String;

.field public changesim:S

.field public chsimtime:I

.field public imei:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public phonenum:Ljava/lang/String;

.field public status:S

.field public subplatform:S

.field public ua:Ljava/lang/String;

.field public uin:J

.field public urgentphone:Ljava/lang/String;

.field public useragent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/stBindPhoneInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/stBindPhoneInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    iput-short v2, p0, LQQPIM/stBindPhoneInfo;->status:S

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/stBindPhoneInfo;->uin:J

    iput-short v2, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    iput v2, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    iput-short v2, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    iput v2, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setImei(Ljava/lang/String;)V

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->status:S

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setStatus(S)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setPhonenum(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setMemo(Ljava/lang/String;)V

    iget-wide v0, p0, LQQPIM/stBindPhoneInfo;->uin:J

    invoke-virtual {p0, v0, v1}, LQQPIM/stBindPhoneInfo;->setUin(J)V

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setChangesim(S)V

    iget v0, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setChsimtime(I)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setChangephone(Ljava/lang/String;)V

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setSubplatform(S)V

    iget v0, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setBindtime(I)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setUa(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setUseragent(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setUrgentphone(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;JSILjava/lang/String;SILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v1, ""

    iput-object v1, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, LQQPIM/stBindPhoneInfo;->status:S

    const-string v1, ""

    iput-object v1, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LQQPIM/stBindPhoneInfo;->uin:J

    const/4 v1, 0x0

    iput-short v1, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/stBindPhoneInfo;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/stBindPhoneInfo;->setStatus(S)V

    invoke-virtual {p0, p3}, LQQPIM/stBindPhoneInfo;->setPhonenum(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/stBindPhoneInfo;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p0, p5, p6}, LQQPIM/stBindPhoneInfo;->setUin(J)V

    invoke-virtual {p0, p7}, LQQPIM/stBindPhoneInfo;->setChangesim(S)V

    invoke-virtual {p0, p8}, LQQPIM/stBindPhoneInfo;->setChsimtime(I)V

    invoke-virtual {p0, p9}, LQQPIM/stBindPhoneInfo;->setChangephone(Ljava/lang/String;)V

    invoke-virtual {p0, p10}, LQQPIM/stBindPhoneInfo;->setSubplatform(S)V

    invoke-virtual {p0, p11}, LQQPIM/stBindPhoneInfo;->setBindtime(I)V

    invoke-virtual {p0, p12}, LQQPIM/stBindPhoneInfo;->setUa(Ljava/lang/String;)V

    move-object/from16 v0, p13

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setUseragent(Ljava/lang/String;)V

    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/stBindPhoneInfo;->setUrgentphone(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stBindPhoneInfo"

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

    sget-boolean v1, LQQPIM/stBindPhoneInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/stBindPhoneInfo;->status:S

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    const-string v2, "phonenum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    const-string v2, "memo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LQQPIM/stBindPhoneInfo;->uin:J

    const-string v3, "uin"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    const-string v2, "changesim"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    const-string v2, "chsimtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    const-string v2, "changephone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    const-string v2, "subplatform"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    const-string v2, "bindtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    const-string v2, "ua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    const-string v2, "useragent"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    const-string v2, "urgentphone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/stBindPhoneInfo;

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/stBindPhoneInfo;->status:S

    iget-short v2, p1, LQQPIM/stBindPhoneInfo;->status:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, LQQPIM/stBindPhoneInfo;->uin:J

    iget-wide v3, p1, LQQPIM/stBindPhoneInfo;->uin:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    iget-short v2, p1, LQQPIM/stBindPhoneInfo;->changesim:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    iget v2, p1, LQQPIM/stBindPhoneInfo;->chsimtime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    iget-short v2, p1, LQQPIM/stBindPhoneInfo;->subplatform:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    iget v2, p1, LQQPIM/stBindPhoneInfo;->bindtime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stBindPhoneInfo"

    return-object v0
.end method

.method public final getBindtime()I
    .locals 1

    iget v0, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    return v0
.end method

.method public final getChangephone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    return-object v0
.end method

.method public final getChangesim()S
    .locals 1

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    return v0
.end method

.method public final getChsimtime()I
    .locals 1

    iget v0, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    return v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhonenum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()S
    .locals 1

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->status:S

    return v0
.end method

.method public final getSubplatform()S
    .locals 1

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    return v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public final getUin()J
    .locals 2

    iget-wide v0, p0, LQQPIM/stBindPhoneInfo;->uin:J

    return-wide v0
.end method

.method public final getUrgentphone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseragent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

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

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->status:S

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/stBindPhoneInfo;->status:S

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    iget-wide v0, p0, LQQPIM/stBindPhoneInfo;->uin:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/stBindPhoneInfo;->uin:J

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    iget v0, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    iget v0, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    return-void
.end method

.method public final setBindtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    return-void
.end method

.method public final setChangephone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    return-void
.end method

.method public final setChangesim(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    return-void
.end method

.method public final setChsimtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    return-void
.end method

.method public final setPhonenum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/stBindPhoneInfo;->status:S

    return-void
.end method

.method public final setSubplatform(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    return-void
.end method

.method public final setUa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    return-void
.end method

.method public final setUin(J)V
    .locals 0

    iput-wide p1, p0, LQQPIM/stBindPhoneInfo;->uin:J

    return-void
.end method

.method public final setUrgentphone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    return-void
.end method

.method public final setUseragent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->status:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->phonenum:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->memo:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-wide v0, p0, LQQPIM/stBindPhoneInfo;->uin:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->changesim:S

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LQQPIM/stBindPhoneInfo;->chsimtime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->changephone:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-short v0, p0, LQQPIM/stBindPhoneInfo;->subplatform:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LQQPIM/stBindPhoneInfo;->bindtime:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->ua:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->useragent:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/stBindPhoneInfo;->urgentphone:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method
