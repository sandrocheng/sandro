.class public final Lcom/tencent/tmsecure/module/qscanner/QScanReport;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic b:Z


# instance fields
.field public id:J

.field public records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanRecord;",
            ">;"
        }
    .end annotation
.end field

.field public riskFound:I

.field public tips:Ljava/lang/String;

.field public type:I

.field public virusCured:I

.field public virusFound:I

.field public waitDealing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setId(J)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setRecords(Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setType(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setVirusFound(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setVirusCured(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setWaitDealing(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setRiskFound(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setTips(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/ArrayList;IIIIILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanRecord;",
            ">;IIIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    iput v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setId(J)V

    invoke-virtual {p0, p3}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setRecords(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p4}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setType(I)V

    invoke-virtual {p0, p5}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setVirusFound(I)V

    invoke-virtual {p0, p6}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setVirusCured(I)V

    invoke-virtual {p0, p7}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setWaitDealing(I)V

    invoke-virtual {p0, p8}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setRiskFound(I)V

    invoke-virtual {p0, p9}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setTips(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QScanReport"

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

    sget-boolean v1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->b:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-wide v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    const-string v2, "records"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    const-string v2, "virusFound"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    const-string v2, "virusCured"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    const-string v2, "waitDealing"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    const-string v2, "riskFound"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    const-string v2, "tips"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QScanReport"

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    return-wide v0
.end method

.method public final getRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRiskFound()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    return v0
.end method

.method public final getTips()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    return v0
.end method

.method public final getVirusCured()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    return v0
.end method

.method public final getVirusFound()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    return v0
.end method

.method public final getWaitDealing()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    sget-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;-><init>()V

    sget-object v1, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setRecords(Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setType(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setVirusFound(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setVirusCured(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setWaitDealing(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setRiskFound(I)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->setTips(Ljava/lang/String;)V

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    return-void
.end method

.method public final setRecords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRiskFound(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    return-void
.end method

.method public final setTips(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    return-void
.end method

.method public final setVirusCured(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    return-void
.end method

.method public final setVirusFound(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    return-void
.end method

.method public final setWaitDealing(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->id:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->records:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusFound:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->virusCured:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->waitDealing:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->riskFound:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanReport;->tips:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
