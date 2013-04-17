.class public final LQQPIM/UploadInfo;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public pos:J

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/UploadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/UploadInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/UploadInfo;->size:I

    iget-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    invoke-virtual {p0, v0, v1}, LQQPIM/UploadInfo;->setPos(J)V

    iget v0, p0, LQQPIM/UploadInfo;->size:I

    invoke-virtual {p0, v0}, LQQPIM/UploadInfo;->setSize(I)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/UploadInfo;->size:I

    invoke-virtual {p0, p1, p2}, LQQPIM/UploadInfo;->setPos(J)V

    invoke-virtual {p0, p3}, LQQPIM/UploadInfo;->setSize(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.UploadInfo"

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

    sget-boolean v1, LQQPIM/UploadInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-wide v1, p0, LQQPIM/UploadInfo;->pos:J

    const-string v3, "pos"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UploadInfo;->size:I

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, LQQPIM/UploadInfo;

    iget-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    iget-wide v2, p1, LQQPIM/UploadInfo;->pos:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/UploadInfo;->size:I

    iget v1, p1, LQQPIM/UploadInfo;->size:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.UploadInfo"

    return-object v0
.end method

.method public final getPos()J
    .locals 2

    iget-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    return-wide v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, LQQPIM/UploadInfo;->size:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    iget-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    iget v0, p0, LQQPIM/UploadInfo;->size:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UploadInfo;->size:I

    return-void
.end method

.method public final setPos(J)V
    .locals 0

    iput-wide p1, p0, LQQPIM/UploadInfo;->pos:J

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, LQQPIM/UploadInfo;->size:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-wide v0, p0, LQQPIM/UploadInfo;->pos:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget v0, p0, LQQPIM/UploadInfo;->size:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
