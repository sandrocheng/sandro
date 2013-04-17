.class public final LQQPIM/CloudFeature;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public hashKey:J

.field public isRom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/CloudFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/CloudFeature;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/CloudFeature;->hashKey:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LQQPIM/CloudFeature;->isRom:Z

    iget-wide v0, p0, LQQPIM/CloudFeature;->hashKey:J

    invoke-virtual {p0, v0, v1}, LQQPIM/CloudFeature;->setHashKey(J)V

    iget-boolean v0, p0, LQQPIM/CloudFeature;->isRom:Z

    invoke-virtual {p0, v0}, LQQPIM/CloudFeature;->setIsRom(Z)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQQPIM/CloudFeature;->hashKey:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LQQPIM/CloudFeature;->isRom:Z

    invoke-virtual {p0, p1, p2}, LQQPIM/CloudFeature;->setHashKey(J)V

    invoke-virtual {p0, p3}, LQQPIM/CloudFeature;->setIsRom(Z)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CloudFeature"

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

    sget-boolean v1, LQQPIM/CloudFeature;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-wide v1, p0, LQQPIM/CloudFeature;->hashKey:J

    const-string v3, "hashKey"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/CloudFeature;->isRom:Z

    const-string v2, "isRom"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/CloudFeature;

    iget-wide v1, p0, LQQPIM/CloudFeature;->hashKey:J

    iget-wide v3, p1, LQQPIM/CloudFeature;->hashKey:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/CloudFeature;->isRom:Z

    iget-boolean v2, p1, LQQPIM/CloudFeature;->isRom:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CloudFeature"

    return-object v0
.end method

.method public final getHashKey()J
    .locals 2

    iget-wide v0, p0, LQQPIM/CloudFeature;->hashKey:J

    return-wide v0
.end method

.method public final getIsRom()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/CloudFeature;->isRom:Z

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-wide v0, p0, LQQPIM/CloudFeature;->hashKey:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, LQQPIM/CloudFeature;->hashKey:J

    iget-boolean v0, p0, LQQPIM/CloudFeature;->isRom:Z

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/CloudFeature;->isRom:Z

    return-void
.end method

.method public final setHashKey(J)V
    .locals 0

    iput-wide p1, p0, LQQPIM/CloudFeature;->hashKey:J

    return-void
.end method

.method public final setIsRom(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/CloudFeature;->isRom:Z

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-wide v0, p0, LQQPIM/CloudFeature;->hashKey:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget-boolean v0, p0, LQQPIM/CloudFeature;->isRom:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    return-void
.end method
