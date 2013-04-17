.class public final LQQPIM/stAntiTheftResult;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public latitude:D

.field public longitude:D

.field public result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/stAntiTheftResult;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/stAntiTheftResult;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stAntiTheftResult;->result:I

    iput-wide v1, p0, LQQPIM/stAntiTheftResult;->longitude:D

    iput-wide v1, p0, LQQPIM/stAntiTheftResult;->latitude:D

    iget v0, p0, LQQPIM/stAntiTheftResult;->result:I

    invoke-virtual {p0, v0}, LQQPIM/stAntiTheftResult;->setResult(I)V

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->longitude:D

    invoke-virtual {p0, v0, v1}, LQQPIM/stAntiTheftResult;->setLongitude(D)V

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->latitude:D

    invoke-virtual {p0, v0, v1}, LQQPIM/stAntiTheftResult;->setLatitude(D)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stAntiTheftResult;->result:I

    iput-wide v1, p0, LQQPIM/stAntiTheftResult;->longitude:D

    iput-wide v1, p0, LQQPIM/stAntiTheftResult;->latitude:D

    invoke-virtual {p0, p1}, LQQPIM/stAntiTheftResult;->setResult(I)V

    invoke-virtual {p0, p2, p3}, LQQPIM/stAntiTheftResult;->setLongitude(D)V

    invoke-virtual {p0, p4, p5}, LQQPIM/stAntiTheftResult;->setLatitude(D)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stAntiTheftResult"

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

    sget-boolean v1, LQQPIM/stAntiTheftResult;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/stAntiTheftResult;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LQQPIM/stAntiTheftResult;->longitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LQQPIM/stAntiTheftResult;->latitude:D

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
    check-cast p1, LQQPIM/stAntiTheftResult;

    iget v1, p0, LQQPIM/stAntiTheftResult;->result:I

    iget v2, p1, LQQPIM/stAntiTheftResult;->result:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, LQQPIM/stAntiTheftResult;->longitude:D

    iget-wide v3, p1, LQQPIM/stAntiTheftResult;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, LQQPIM/stAntiTheftResult;->latitude:D

    iget-wide v3, p1, LQQPIM/stAntiTheftResult;->latitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stAntiTheftResult"

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->longitude:D

    return-wide v0
.end method

.method public final getResult()I
    .locals 1

    iget v0, p0, LQQPIM/stAntiTheftResult;->result:I

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, LQQPIM/stAntiTheftResult;->result:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/stAntiTheftResult;->result:I

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->longitude:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/stAntiTheftResult;->longitude:D

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->latitude:D

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/stAntiTheftResult;->latitude:D

    return-void
.end method

.method public final setLatitude(D)V
    .locals 0

    iput-wide p1, p0, LQQPIM/stAntiTheftResult;->latitude:D

    return-void
.end method

.method public final setLongitude(D)V
    .locals 0

    iput-wide p1, p0, LQQPIM/stAntiTheftResult;->longitude:D

    return-void
.end method

.method public final setResult(I)V
    .locals 0

    iput p1, p0, LQQPIM/stAntiTheftResult;->result:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget v0, p0, LQQPIM/stAntiTheftResult;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->longitude:D

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    iget-wide v0, p0, LQQPIM/stAntiTheftResult;->latitude:D

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    return-void
.end method
