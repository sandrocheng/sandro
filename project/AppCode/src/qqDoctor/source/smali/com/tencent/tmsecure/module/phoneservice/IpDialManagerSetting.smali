.class public final Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

.field private d:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

.field private e:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->e:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:I

    iput v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:I

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setProvinceCity(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->e:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->e:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V

    :cond_1
    return-void
.end method

.method public final getExcludedAreaList()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;-><init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;)V

    return-object v0
.end method

.method public final getExcludedPhoneNumberList()Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->e:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;-><init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V

    return-object v0
.end method

.method public final getIpDialMode()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:I

    return v0
.end method

.method public final getIpHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPhoneLocation()Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;
    .locals 2

    new-instance v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V

    return-object v0
.end method

.method public final setExcludedAreaList(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->d:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCityList;)V

    return-void
.end method

.method public final setExcludedPhoneNumberList(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->e:Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V

    return-void
.end method

.method public final setIpDialMode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->b:I

    return-void
.end method

.method public final setIpHeader(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setLocalPhoneLocation(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->c:Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->setProvinceCity(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V

    return-void
.end method
