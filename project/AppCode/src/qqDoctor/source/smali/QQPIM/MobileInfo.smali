.class public final LQQPIM/MobileInfo;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_phone_type:I


# instance fields
.field public account:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public loginkey:Ljava/lang/String;

.field public phone_type:I

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/MobileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/MobileInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/MobileInfo;->phone_type:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/MobileInfo;->setImei(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/MobileInfo;->phone_type:I

    invoke-virtual {p0, v0}, LQQPIM/MobileInfo;->setPhone_type(I)V

    iget-object v0, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/MobileInfo;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/MobileInfo;->setAccount(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/MobileInfo;->setLoginkey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/MobileInfo;->phone_type:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/MobileInfo;->setImei(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/MobileInfo;->setPhone_type(I)V

    invoke-virtual {p0, p3}, LQQPIM/MobileInfo;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/MobileInfo;->setAccount(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/MobileInfo;->setLoginkey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MobileInfo"

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

    sget-boolean v1, LQQPIM/MobileInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/MobileInfo;->phone_type:I

    const-string v2, "phone_type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    const-string v2, "loginkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/MobileInfo;

    iget-object v0, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/MobileInfo;->phone_type:I

    iget v1, p1, LQQPIM/MobileInfo;->phone_type:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoginkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone_type()I
    .locals 1

    iget v0, p0, LQQPIM/MobileInfo;->phone_type:I

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    iget v0, p0, LQQPIM/MobileInfo;->phone_type:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MobileInfo;->phone_type:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    return-void
.end method

.method public final setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setLoginkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    return-void
.end method

.method public final setPhone_type(I)V
    .locals 0

    iput p1, p0, LQQPIM/MobileInfo;->phone_type:I

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/MobileInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/MobileInfo;->phone_type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/MobileInfo;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/MobileInfo;->account:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/MobileInfo;->loginkey:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method