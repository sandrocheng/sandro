.class public final LQQPIM/CloudCheck;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_handleAdvice:I

.field static cache_safeType:I


# instance fields
.field public advice:Ljava/lang/String;

.field public descritpion:Ljava/lang/String;

.field public handleAdvice:I

.field public handleUrl:Ljava/lang/String;

.field public safeType:I

.field public short_desc:Ljava/lang/String;

.field public virusDescTimestamp:I

.field public virusID:I

.field public virusName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/CloudCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/CloudCheck;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/CloudCheck;->safeType:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    iput v1, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    iput v1, p0, LQQPIM/CloudCheck;->handleAdvice:I

    iput v1, p0, LQQPIM/CloudCheck;->virusID:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    iget v0, p0, LQQPIM/CloudCheck;->safeType:I

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setSafeType(I)V

    iget-object v0, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setVirusName(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setDescritpion(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setVirusDescTimestamp(I)V

    iget-object v0, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setShort_desc(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setAdvice(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/CloudCheck;->handleAdvice:I

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setHandleAdvice(I)V

    iget v0, p0, LQQPIM/CloudCheck;->virusID:I

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setVirusID(I)V

    iget-object v0, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CloudCheck;->setHandleUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/CloudCheck;->safeType:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    iput v1, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    iput v1, p0, LQQPIM/CloudCheck;->handleAdvice:I

    iput v1, p0, LQQPIM/CloudCheck;->virusID:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/CloudCheck;->setSafeType(I)V

    invoke-virtual {p0, p2}, LQQPIM/CloudCheck;->setVirusName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/CloudCheck;->setDescritpion(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/CloudCheck;->setVirusDescTimestamp(I)V

    invoke-virtual {p0, p5}, LQQPIM/CloudCheck;->setShort_desc(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/CloudCheck;->setAdvice(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/CloudCheck;->setHandleAdvice(I)V

    invoke-virtual {p0, p8}, LQQPIM/CloudCheck;->setVirusID(I)V

    invoke-virtual {p0, p9}, LQQPIM/CloudCheck;->setHandleUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CloudCheck"

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

    sget-boolean v1, LQQPIM/CloudCheck;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/CloudCheck;->safeType:I

    const-string v2, "safeType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    const-string v2, "virusName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    const-string v2, "descritpion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    const-string v2, "virusDescTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    const-string v2, "short_desc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    const-string v2, "advice"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudCheck;->handleAdvice:I

    const-string v2, "handleAdvice"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudCheck;->virusID:I

    const-string v2, "virusID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    const-string v2, "handleUrl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/CloudCheck;

    iget v1, p0, LQQPIM/CloudCheck;->safeType:I

    iget v2, p1, LQQPIM/CloudCheck;->safeType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    iget v2, p1, LQQPIM/CloudCheck;->virusDescTimestamp:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudCheck;->handleAdvice:I

    iget v2, p1, LQQPIM/CloudCheck;->handleAdvice:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudCheck;->virusID:I

    iget v2, p1, LQQPIM/CloudCheck;->virusID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CloudCheck"

    return-object v0
.end method

.method public final getAdvice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescritpion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    return-object v0
.end method

.method public final getHandleAdvice()I
    .locals 1

    iget v0, p0, LQQPIM/CloudCheck;->handleAdvice:I

    return v0
.end method

.method public final getHandleUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSafeType()I
    .locals 1

    iget v0, p0, LQQPIM/CloudCheck;->safeType:I

    return v0
.end method

.method public final getShort_desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getVirusDescTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    return v0
.end method

.method public final getVirusID()I
    .locals 1

    iget v0, p0, LQQPIM/CloudCheck;->virusID:I

    return v0
.end method

.method public final getVirusName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

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

    iget v0, p0, LQQPIM/CloudCheck;->safeType:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/CloudCheck;->safeType:I

    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    iget v0, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    iget v0, p0, LQQPIM/CloudCheck;->handleAdvice:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/CloudCheck;->handleAdvice:I

    iget v0, p0, LQQPIM/CloudCheck;->virusID:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/CloudCheck;->virusID:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    return-void
.end method

.method public final setAdvice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    return-void
.end method

.method public final setDescritpion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    return-void
.end method

.method public final setHandleAdvice(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudCheck;->handleAdvice:I

    return-void
.end method

.method public final setHandleUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    return-void
.end method

.method public final setSafeType(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudCheck;->safeType:I

    return-void
.end method

.method public final setShort_desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    return-void
.end method

.method public final setVirusDescTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    return-void
.end method

.method public final setVirusID(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudCheck;->virusID:I

    return-void
.end method

.method public final setVirusName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/CloudCheck;->safeType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/CloudCheck;->descritpion:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/CloudCheck;->virusDescTimestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/CloudCheck;->advice:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, LQQPIM/CloudCheck;->handleAdvice:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/CloudCheck;->virusID:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method
