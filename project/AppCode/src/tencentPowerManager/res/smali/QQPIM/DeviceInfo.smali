.class public final LQQPIM/DeviceInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public androidid:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public lguid:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public netfile:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public sdkversion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/DeviceInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/DeviceInfo;->sdkversion:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setMac(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setIccid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setAndroidid(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DeviceInfo;->sdkversion:I

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setSdkversion(I)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setModel(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setProduct(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setNetfile(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DeviceInfo;->setLguid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    sget-boolean v1, LQQPIM/DeviceInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    const-string v2, "mac"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    const-string v2, "iccid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    const-string v2, "androidid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DeviceInfo;->sdkversion:I

    const-string v2, "sdkversion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    const-string v2, "product"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    const-string v2, "netfile"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    const-string v2, "lguid"

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
    check-cast p1, LQQPIM/DeviceInfo;

    iget-object v1, p0, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DeviceInfo;->sdkversion:I

    iget v2, p1, LQQPIM/DeviceInfo;->sdkversion:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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

    iput-object v0, p0, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    iget v0, p0, LQQPIM/DeviceInfo;->sdkversion:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DeviceInfo;->sdkversion:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    return-void
.end method

.method public final setAndroidid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    return-void
.end method

.method public final setIccid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setLguid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    return-void
.end method

.method public final setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public final setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public final setNetfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    return-void
.end method

.method public final setProduct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    return-void
.end method

.method public final setSdkversion(I)V
    .locals 0

    iput p1, p0, LQQPIM/DeviceInfo;->sdkversion:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/DeviceInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/DeviceInfo;->imsi:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/DeviceInfo;->mac:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/DeviceInfo;->iccid:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/DeviceInfo;->androidid:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, LQQPIM/DeviceInfo;->sdkversion:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/DeviceInfo;->model:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/DeviceInfo;->product:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LQQPIM/DeviceInfo;->netfile:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, LQQPIM/DeviceInfo;->lguid:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
