.class public final Lbxl;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field public a:Lbtl;

.field public b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

.field public c:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method private b()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;
    .locals 8

    new-instance v1, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>()V

    iget-object v0, p0, Lbxl;->a:Lbtl;

    const-string v2, "ip_dial_setting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lbxl;->a()V

    return-object v1

    :cond_1
    shl-int/lit8 v5, v0, 0x1

    :try_start_1
    aget-char v6, v4, v5

    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v4, v5

    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-byte v5, v5

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SETTING Dial Mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SETTING Ip Head: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SETTING Local Phone:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SETTING Excluded Area: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedAreaList()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->listToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SETTING Excluded Phone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getExcludedPhoneNumberList()Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->listToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lbtl;

    const-string v1, "IpDialProperty"

    invoke-direct {v0, v1}, Lbtl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbxl;->a:Lbtl;

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iput-object v0, p0, Lbxl;->c:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>()V

    iput-object v0, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    iget-object v0, p0, Lbxl;->b:Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    invoke-direct {p0}, Lbxl;->b()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    return-void
.end method
