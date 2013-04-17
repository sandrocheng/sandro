.class public final LQQPIM/LogSetInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public islogcat:Z

.field public islogfile:Z

.field public loglevel:S

.field public uploadtype:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/LogSetInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/LogSetInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-boolean v1, p0, LQQPIM/LogSetInfo;->islogcat:Z

    iput-boolean v1, p0, LQQPIM/LogSetInfo;->islogfile:Z

    iput-short v0, p0, LQQPIM/LogSetInfo;->loglevel:S

    iput v0, p0, LQQPIM/LogSetInfo;->uploadtype:I

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogcat:Z

    invoke-virtual {p0, v0}, LQQPIM/LogSetInfo;->setIslogcat(Z)V

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogfile:Z

    invoke-virtual {p0, v0}, LQQPIM/LogSetInfo;->setIslogfile(Z)V

    iget-short v0, p0, LQQPIM/LogSetInfo;->loglevel:S

    invoke-virtual {p0, v0}, LQQPIM/LogSetInfo;->setLoglevel(S)V

    iget v0, p0, LQQPIM/LogSetInfo;->uploadtype:I

    invoke-virtual {p0, v0}, LQQPIM/LogSetInfo;->setUploadtype(I)V

    return-void
.end method

.method public constructor <init>(ZZSI)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-boolean v1, p0, LQQPIM/LogSetInfo;->islogcat:Z

    iput-boolean v1, p0, LQQPIM/LogSetInfo;->islogfile:Z

    iput-short v0, p0, LQQPIM/LogSetInfo;->loglevel:S

    iput v0, p0, LQQPIM/LogSetInfo;->uploadtype:I

    invoke-virtual {p0, p1}, LQQPIM/LogSetInfo;->setIslogcat(Z)V

    invoke-virtual {p0, p2}, LQQPIM/LogSetInfo;->setIslogfile(Z)V

    invoke-virtual {p0, p3}, LQQPIM/LogSetInfo;->setLoglevel(S)V

    invoke-virtual {p0, p4}, LQQPIM/LogSetInfo;->setUploadtype(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.LogSetInfo"

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

    sget-boolean v1, LQQPIM/LogSetInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-boolean v1, p0, LQQPIM/LogSetInfo;->islogcat:Z

    const-string v2, "islogcat"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/LogSetInfo;->islogfile:Z

    const-string v2, "islogfile"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LQQPIM/LogSetInfo;->loglevel:S

    const-string v2, "loglevel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/LogSetInfo;->uploadtype:I

    const-string v2, "uploadtype"

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
    check-cast p1, LQQPIM/LogSetInfo;

    iget-boolean v1, p0, LQQPIM/LogSetInfo;->islogcat:Z

    iget-boolean v2, p1, LQQPIM/LogSetInfo;->islogcat:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/LogSetInfo;->islogfile:Z

    iget-boolean v2, p1, LQQPIM/LogSetInfo;->islogfile:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, LQQPIM/LogSetInfo;->loglevel:S

    iget-short v2, p1, LQQPIM/LogSetInfo;->loglevel:S

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/LogSetInfo;->uploadtype:I

    iget v2, p1, LQQPIM/LogSetInfo;->uploadtype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.LogSetInfo"

    return-object v0
.end method

.method public final getIslogcat()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogcat:Z

    return v0
.end method

.method public final getIslogfile()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogfile:Z

    return v0
.end method

.method public final getLoglevel()S
    .locals 1

    iget-short v0, p0, LQQPIM/LogSetInfo;->loglevel:S

    return v0
.end method

.method public final getUploadtype()I
    .locals 1

    iget v0, p0, LQQPIM/LogSetInfo;->uploadtype:I

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
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogcat:Z

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/LogSetInfo;->islogcat:Z

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogfile:Z

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/LogSetInfo;->islogfile:Z

    iget-short v0, p0, LQQPIM/LogSetInfo;->loglevel:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/LogSetInfo;->loglevel:S

    iget v0, p0, LQQPIM/LogSetInfo;->uploadtype:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/LogSetInfo;->uploadtype:I

    return-void
.end method

.method public final setIslogcat(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/LogSetInfo;->islogcat:Z

    return-void
.end method

.method public final setIslogfile(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/LogSetInfo;->islogfile:Z

    return-void
.end method

.method public final setLoglevel(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/LogSetInfo;->loglevel:S

    return-void
.end method

.method public final setUploadtype(I)V
    .locals 0

    iput p1, p0, LQQPIM/LogSetInfo;->uploadtype:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogcat:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-boolean v0, p0, LQQPIM/LogSetInfo;->islogfile:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-short v0, p0, LQQPIM/LogSetInfo;->loglevel:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LQQPIM/LogSetInfo;->uploadtype:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
