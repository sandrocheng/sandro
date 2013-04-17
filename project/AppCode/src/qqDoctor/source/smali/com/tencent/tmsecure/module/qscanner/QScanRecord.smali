.class public final Lcom/tencent/tmsecure/module/qscanner/QScanRecord;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

.field private static synthetic b:Z


# instance fields
.field public id:J

.field public result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->setId(J)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->setResult(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->setState(I)V

    return-void
.end method

.method public constructor <init>(JLcom/tencent/tmsecure/module/qscanner/QScanResult;I)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->setId(J)V

    invoke-virtual {p0, p3}, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->setResult(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)V

    invoke-virtual {p0, p4}, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->setState(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QScanRecord"

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

    sget-boolean v1, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->b:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-wide v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.QScanRecord"

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    return-wide v0
.end method

.method public final getResult()Lcom/tencent/tmsecure/module/qscanner/QScanResult;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    sget-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->a:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->a:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->a:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    return-void
.end method

.method public final setResult(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-wide v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->id:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->result:Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScanRecord;->state:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
