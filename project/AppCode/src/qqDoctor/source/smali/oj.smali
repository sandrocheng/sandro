.class final Loj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IMarketManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
        "<",
        "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
        "LQQPIM/AnalyseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:LQQPIM/FeatureKey;

.field private synthetic b:LQQPIM/DownSoftInfo;


# direct methods
.method constructor <init>(LQQPIM/FeatureKey;LQQPIM/DownSoftInfo;)V
    .locals 0

    iput-object p1, p0, Loj;->a:LQQPIM/FeatureKey;

    iput-object p2, p0, Loj;->b:LQQPIM/DownSoftInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    iget-object v1, p0, Loj;->a:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SoftKey;->setUid(Ljava/lang/String;)V

    iget-object v1, p0, Loj;->a:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getUniCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SoftKey;->setSoftname(Ljava/lang/String;)V

    iget-object v1, p0, Loj;->a:LQQPIM/FeatureKey;

    invoke-virtual {v1}, LQQPIM/FeatureKey;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SoftKey;->setVersion(Ljava/lang/String;)V

    iget-object v1, p0, Loj;->b:LQQPIM/DownSoftInfo;

    invoke-virtual {v1, v0}, LQQPIM/DownSoftInfo;->setSoftkey(LQQPIM/SoftKey;)V

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Loj;->b:LQQPIM/DownSoftInfo;

    iget v2, v0, LQQPIM/SoftInfo;->iProductID:I

    iput v2, v1, LQQPIM/DownSoftInfo;->nProductId:I

    iget-object v1, p0, Loj;->b:LQQPIM/DownSoftInfo;

    iget v2, v0, LQQPIM/SoftInfo;->iSoftID:I

    iput v2, v1, LQQPIM/DownSoftInfo;->nSoftId:I

    iget-object v1, p0, Loj;->b:LQQPIM/DownSoftInfo;

    iget v2, v0, LQQPIM/SoftInfo;->iFileID:I

    iput v2, v1, LQQPIM/DownSoftInfo;->nFileId:I

    iget-object v1, p0, Loj;->b:LQQPIM/DownSoftInfo;

    iget-object v0, v0, LQQPIM/SoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-virtual {v1, v0}, LQQPIM/DownSoftInfo;->setSoftkey(LQQPIM/SoftKey;)V

    :cond_0
    return-void
.end method
