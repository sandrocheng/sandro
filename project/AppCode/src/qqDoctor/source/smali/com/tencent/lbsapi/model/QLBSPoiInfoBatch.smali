.class public Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:Lcom/tencent/lbsapi/model/QLBSGPSInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->c:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    return-void
.end method


# virtual methods
.method public getGpsInfo()Lcom/tencent/lbsapi/model/QLBSGPSInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->c:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    return-object v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->a:Ljava/util/List;

    return-object v0
.end method

.method public getTotalNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->b:I

    return v0
.end method

.method public setGpsInfo(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->c:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->a:Ljava/util/List;

    return-void
.end method

.method public setTotalNum(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->b:I

    return-void
.end method
