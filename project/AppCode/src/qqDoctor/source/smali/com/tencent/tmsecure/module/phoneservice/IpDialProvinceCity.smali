.class public final Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p2, ""

    goto :goto_1
.end method


# virtual methods
.method public final getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setProvince(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setProvinceCity(Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialProvinceCity;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method
