.class public Lcom/tencent/lbsapi/model/QLBSPoiInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIII)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->a:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->b:I

    iput-object v3, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->e:J

    iput v2, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->f:I

    iput-object v3, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    iput v2, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->h:I

    iput v2, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->i:I

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->b:I

    iput-object p3, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->e:J

    iput p7, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->f:I

    iput p8, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->h:I

    iput p9, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->i:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->h:I

    return v0
.end method

.method public getDistrictCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->f:I

    return v0
.end method

.method public getHotValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->i:I

    return v0
.end method

.method public getMarsGps()Lcom/tencent/lbsapi/model/QLBSGPSInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiId()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->e:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->b:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->h:I

    return-void
.end method

.method public setDistrictCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->f:I

    return-void
.end method

.method public setHotValue(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->i:I

    return-void
.end method

.method public setMarsGps(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setPoiID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->e:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->b:I

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->c:Ljava/lang/String;

    return-void
.end method
