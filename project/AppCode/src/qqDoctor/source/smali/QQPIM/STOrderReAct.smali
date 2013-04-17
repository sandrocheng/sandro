.class public final LQQPIM/STOrderReAct;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public strCity:Ljava/lang/String;

.field public strProvince:Ljava/lang/String;

.field public strSms:Ljava/lang/String;

.field public strTaocan:Ljava/lang/String;

.field public strVersion:Ljava/lang/String;

.field public strsimtype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/STOrderReAct;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/STOrderReAct;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STOrderReAct;->setStrVersion(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STOrderReAct;->setStrProvince(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STOrderReAct;->setStrCity(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STOrderReAct;->setStrsimtype(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STOrderReAct;->setStrTaocan(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STOrderReAct;->setStrSms(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/STOrderReAct;->setStrVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/STOrderReAct;->setStrProvince(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/STOrderReAct;->setStrCity(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/STOrderReAct;->setStrsimtype(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/STOrderReAct;->setStrTaocan(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/STOrderReAct;->setStrSms(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STOrderReAct"

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

    sget-boolean v1, LQQPIM/STOrderReAct;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    const-string v2, "strVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    const-string v2, "strProvince"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    const-string v2, "strCity"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    const-string v2, "strsimtype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    const-string v2, "strTaocan"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    const-string v2, "strSms"

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
    check-cast p1, LQQPIM/STOrderReAct;

    iget-object v1, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STOrderReAct"

    return-object v0
.end method

.method public final getStrCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrSms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrTaocan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrsimtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

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
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    return-void
.end method

.method public final setStrCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    return-void
.end method

.method public final setStrProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    return-void
.end method

.method public final setStrSms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    return-void
.end method

.method public final setStrTaocan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    return-void
.end method

.method public final setStrVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    return-void
.end method

.method public final setStrsimtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/STOrderReAct;->strVersion:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/STOrderReAct;->strProvince:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/STOrderReAct;->strCity:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/STOrderReAct;->strsimtype:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/STOrderReAct;->strTaocan:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/STOrderReAct;->strSms:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method
