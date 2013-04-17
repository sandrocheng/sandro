.class public final LQQPIM/SmsReport;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_ucAction:I

.field static cache_ucContentType:I

.field static cache_vecHitRule:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/RuleTypeID;",
            ">;"
        }
    .end annotation
.end field

.field static cache_vecUserAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UserActionTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public comment:Ljava/lang/String;

.field public matchTime:I

.field public product:I

.field public sender:Ljava/lang/String;

.field public sms:Ljava/lang/String;

.field public smsType:I

.field public ucAction:I

.field public ucActionReason:I

.field public ucContentType:I

.field public ucMinusMark:I

.field public vecHitRule:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/RuleTypeID;",
            ">;"
        }
    .end annotation
.end field

.field public vecUserAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UserActionTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SmsReport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SmsReport;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    iput v1, p0, LQQPIM/SmsReport;->matchTime:I

    iput v1, p0, LQQPIM/SmsReport;->ucAction:I

    iput v1, p0, LQQPIM/SmsReport;->ucActionReason:I

    iput v1, p0, LQQPIM/SmsReport;->ucContentType:I

    iput-object v2, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SmsReport;->ucMinusMark:I

    iput-object v2, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    iput v1, p0, LQQPIM/SmsReport;->smsType:I

    iput v1, p0, LQQPIM/SmsReport;->product:I

    iget-object v0, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setSender(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setSms(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SmsReport;->matchTime:I

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setMatchTime(I)V

    iget v0, p0, LQQPIM/SmsReport;->ucAction:I

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setUcAction(I)V

    iget v0, p0, LQQPIM/SmsReport;->ucActionReason:I

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setUcActionReason(I)V

    iget v0, p0, LQQPIM/SmsReport;->ucContentType:I

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setUcContentType(I)V

    iget-object v0, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setVecHitRule(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SmsReport;->ucMinusMark:I

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setUcMinusMark(I)V

    iget-object v0, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setVecUserAction(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setComment(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SmsReport;->smsType:I

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setSmsType(I)V

    iget v0, p0, LQQPIM/SmsReport;->product:I

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setProduct(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;ILjava/util/ArrayList;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/RuleTypeID;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UserActionTime;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    iput v1, p0, LQQPIM/SmsReport;->matchTime:I

    iput v1, p0, LQQPIM/SmsReport;->ucAction:I

    iput v1, p0, LQQPIM/SmsReport;->ucActionReason:I

    iput v1, p0, LQQPIM/SmsReport;->ucContentType:I

    iput-object v2, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SmsReport;->ucMinusMark:I

    iput-object v2, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    iput v1, p0, LQQPIM/SmsReport;->smsType:I

    iput v1, p0, LQQPIM/SmsReport;->product:I

    invoke-virtual {p0, p1}, LQQPIM/SmsReport;->setSender(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/SmsReport;->setSms(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/SmsReport;->setMatchTime(I)V

    invoke-virtual {p0, p4}, LQQPIM/SmsReport;->setUcAction(I)V

    invoke-virtual {p0, p5}, LQQPIM/SmsReport;->setUcActionReason(I)V

    invoke-virtual {p0, p6}, LQQPIM/SmsReport;->setUcContentType(I)V

    invoke-virtual {p0, p7}, LQQPIM/SmsReport;->setVecHitRule(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p8}, LQQPIM/SmsReport;->setUcMinusMark(I)V

    invoke-virtual {p0, p9}, LQQPIM/SmsReport;->setVecUserAction(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p10}, LQQPIM/SmsReport;->setComment(Ljava/lang/String;)V

    invoke-virtual {p0, p11}, LQQPIM/SmsReport;->setSmsType(I)V

    invoke-virtual {p0, p12}, LQQPIM/SmsReport;->setProduct(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SmsReport"

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

    sget-boolean v1, LQQPIM/SmsReport;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    const-string v2, "sender"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SmsReport;->matchTime:I

    const-string v2, "matchTime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SmsReport;->ucAction:I

    const-string v2, "ucAction"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SmsReport;->ucActionReason:I

    const-string v2, "ucActionReason"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SmsReport;->ucContentType:I

    const-string v2, "ucContentType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    const-string v2, "vecHitRule"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SmsReport;->ucMinusMark:I

    const-string v2, "ucMinusMark"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    const-string v2, "vecUserAction"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SmsReport;->smsType:I

    const-string v2, "smsType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SmsReport;->product:I

    const-string v2, "product"

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
    check-cast p1, LQQPIM/SmsReport;

    iget-object v1, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SmsReport;->matchTime:I

    iget v2, p1, LQQPIM/SmsReport;->matchTime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SmsReport;->ucAction:I

    iget v2, p1, LQQPIM/SmsReport;->ucAction:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SmsReport;->ucActionReason:I

    iget v2, p1, LQQPIM/SmsReport;->ucActionReason:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SmsReport;->ucContentType:I

    iget v2, p1, LQQPIM/SmsReport;->ucContentType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SmsReport;->ucMinusMark:I

    iget v2, p1, LQQPIM/SmsReport;->ucMinusMark:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SmsReport;->smsType:I

    iget v2, p1, LQQPIM/SmsReport;->smsType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SmsReport;->product:I

    iget v2, p1, LQQPIM/SmsReport;->product:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SmsReport"

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatchTime()I
    .locals 1

    iget v0, p0, LQQPIM/SmsReport;->matchTime:I

    return v0
.end method

.method public final getProduct()I
    .locals 1

    iget v0, p0, LQQPIM/SmsReport;->product:I

    return v0
.end method

.method public final getSender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public final getSms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmsType()I
    .locals 1

    iget v0, p0, LQQPIM/SmsReport;->smsType:I

    return v0
.end method

.method public final getUcAction()I
    .locals 1

    iget v0, p0, LQQPIM/SmsReport;->ucAction:I

    return v0
.end method

.method public final getUcActionReason()I
    .locals 1

    iget v0, p0, LQQPIM/SmsReport;->ucActionReason:I

    return v0
.end method

.method public final getUcContentType()I
    .locals 1

    iget v0, p0, LQQPIM/SmsReport;->ucContentType:I

    return v0
.end method

.method public final getUcMinusMark()I
    .locals 1

    iget v0, p0, LQQPIM/SmsReport;->ucMinusMark:I

    return v0
.end method

.method public final getVecHitRule()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/RuleTypeID;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVecUserAction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UserActionTime;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

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

    invoke-virtual {p1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    iget v0, p0, LQQPIM/SmsReport;->matchTime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SmsReport;->matchTime:I

    iget v0, p0, LQQPIM/SmsReport;->ucAction:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SmsReport;->ucAction:I

    iget v0, p0, LQQPIM/SmsReport;->ucActionReason:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SmsReport;->ucActionReason:I

    iget v0, p0, LQQPIM/SmsReport;->ucContentType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SmsReport;->ucContentType:I

    sget-object v0, LQQPIM/SmsReport;->cache_vecHitRule:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SmsReport;->cache_vecHitRule:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/RuleTypeID;

    invoke-direct {v0}, LQQPIM/RuleTypeID;-><init>()V

    sget-object v1, LQQPIM/SmsReport;->cache_vecHitRule:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/SmsReport;->cache_vecHitRule:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setVecHitRule(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SmsReport;->ucMinusMark:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setUcMinusMark(I)V

    sget-object v0, LQQPIM/SmsReport;->cache_vecUserAction:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SmsReport;->cache_vecUserAction:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/UserActionTime;

    invoke-direct {v0}, LQQPIM/UserActionTime;-><init>()V

    sget-object v1, LQQPIM/SmsReport;->cache_vecUserAction:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/SmsReport;->cache_vecUserAction:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setVecUserAction(Ljava/util/ArrayList;)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setComment(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SmsReport;->smsType:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setSmsType(I)V

    iget v0, p0, LQQPIM/SmsReport;->product:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SmsReport;->setProduct(I)V

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setMatchTime(I)V
    .locals 0

    iput p1, p0, LQQPIM/SmsReport;->matchTime:I

    return-void
.end method

.method public final setProduct(I)V
    .locals 0

    iput p1, p0, LQQPIM/SmsReport;->product:I

    return-void
.end method

.method public final setSender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    return-void
.end method

.method public final setSms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    return-void
.end method

.method public final setSmsType(I)V
    .locals 0

    iput p1, p0, LQQPIM/SmsReport;->smsType:I

    return-void
.end method

.method public final setUcAction(I)V
    .locals 0

    iput p1, p0, LQQPIM/SmsReport;->ucAction:I

    return-void
.end method

.method public final setUcActionReason(I)V
    .locals 0

    iput p1, p0, LQQPIM/SmsReport;->ucActionReason:I

    return-void
.end method

.method public final setUcContentType(I)V
    .locals 0

    iput p1, p0, LQQPIM/SmsReport;->ucContentType:I

    return-void
.end method

.method public final setUcMinusMark(I)V
    .locals 0

    iput p1, p0, LQQPIM/SmsReport;->ucMinusMark:I

    return-void
.end method

.method public final setVecHitRule(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/RuleTypeID;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVecUserAction(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UserActionTime;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SmsReport;->sender:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SmsReport;->sms:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/SmsReport;->matchTime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SmsReport;->ucAction:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SmsReport;->ucActionReason:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SmsReport;->ucContentType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SmsReport;->vecHitRule:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget v0, p0, LQQPIM/SmsReport;->ucMinusMark:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SmsReport;->vecUserAction:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SmsReport;->comment:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget v0, p0, LQQPIM/SmsReport;->smsType:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SmsReport;->product:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
