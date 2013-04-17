.class public final Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;
.super Ljava/lang/Object;


# instance fields
.field public mBrandId:Ljava/lang/String;

.field public mCarryId:Ljava/lang/String;

.field public mCityId:Ljava/lang/String;

.field public mProvinceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    return-void
.end method
