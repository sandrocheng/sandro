.class public final LQQPIM/SUserInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public buildno:I

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public productid:I

.field public qq:Ljava/lang/String;

.field public ruletime:I

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SUserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SUserInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    iput v1, p0, LQQPIM/SUserInfo;->buildno:I

    iput v1, p0, LQQPIM/SUserInfo;->productid:I

    iput v1, p0, LQQPIM/SUserInfo;->ruletime:I

    iget-object v0, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setQq(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setPhone(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setIp(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setVersion(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SUserInfo;->buildno:I

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setBuildno(I)V

    iget v0, p0, LQQPIM/SUserInfo;->productid:I

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setProductid(I)V

    iget v0, p0, LQQPIM/SUserInfo;->ruletime:I

    invoke-virtual {p0, v0}, LQQPIM/SUserInfo;->setRuletime(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    iput v1, p0, LQQPIM/SUserInfo;->buildno:I

    iput v1, p0, LQQPIM/SUserInfo;->productid:I

    iput v1, p0, LQQPIM/SUserInfo;->ruletime:I

    invoke-virtual {p0, p1}, LQQPIM/SUserInfo;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/SUserInfo;->setQq(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/SUserInfo;->setPhone(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/SUserInfo;->setIp(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/SUserInfo;->setLc(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/SUserInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/SUserInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, LQQPIM/SUserInfo;->setBuildno(I)V

    invoke-virtual {p0, p9}, LQQPIM/SUserInfo;->setProductid(I)V

    invoke-virtual {p0, p10}, LQQPIM/SUserInfo;->setRuletime(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SUserInfo"

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

    sget-boolean v1, LQQPIM/SUserInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    const-string v2, "ip"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    const-string v2, "lc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SUserInfo;->buildno:I

    const-string v2, "buildno"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SUserInfo;->productid:I

    const-string v2, "productid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SUserInfo;->ruletime:I

    const-string v2, "ruletime"

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
    check-cast p1, LQQPIM/SUserInfo;

    iget-object v1, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SUserInfo;->buildno:I

    iget v2, p1, LQQPIM/SUserInfo;->buildno:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SUserInfo;->productid:I

    iget v2, p1, LQQPIM/SUserInfo;->productid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SUserInfo;->ruletime:I

    iget v2, p1, LQQPIM/SUserInfo;->ruletime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SUserInfo"

    return-object v0
.end method

.method public final getBuildno()I
    .locals 1

    iget v0, p0, LQQPIM/SUserInfo;->buildno:I

    return v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getLc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductid()I
    .locals 1

    iget v0, p0, LQQPIM/SUserInfo;->productid:I

    return v0
.end method

.method public final getQq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public final getRuletime()I
    .locals 1

    iget v0, p0, LQQPIM/SUserInfo;->ruletime:I

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

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

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    iget v0, p0, LQQPIM/SUserInfo;->buildno:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SUserInfo;->buildno:I

    iget v0, p0, LQQPIM/SUserInfo;->productid:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SUserInfo;->productid:I

    iget v0, p0, LQQPIM/SUserInfo;->ruletime:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SUserInfo;->ruletime:I

    return-void
.end method

.method public final setBuildno(I)V
    .locals 0

    iput p1, p0, LQQPIM/SUserInfo;->buildno:I

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setLc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setProductid(I)V
    .locals 0

    iput p1, p0, LQQPIM/SUserInfo;->productid:I

    return-void
.end method

.method public final setQq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    return-void
.end method

.method public final setRuletime(I)V
    .locals 0

    iput p1, p0, LQQPIM/SUserInfo;->ruletime:I

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SUserInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SUserInfo;->qq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SUserInfo;->phone:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SUserInfo;->ip:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/SUserInfo;->lc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/SUserInfo;->imsi:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/SUserInfo;->version:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/SUserInfo;->buildno:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SUserInfo;->productid:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SUserInfo;->ruletime:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
