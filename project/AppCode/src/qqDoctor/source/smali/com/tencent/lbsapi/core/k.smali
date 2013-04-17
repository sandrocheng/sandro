.class Lcom/tencent/lbsapi/core/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/lbsapi/QLBSNotification;

.field final synthetic b:Lcom/tencent/lbsapi/core/i;


# direct methods
.method constructor <init>(Lcom/tencent/lbsapi/core/i;Lcom/tencent/lbsapi/QLBSNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/core/k;->b:Lcom/tencent/lbsapi/core/i;

    iput-object p2, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ErrorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ErrorInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v4, v1, v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onResponseError(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RspGetPosition"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "requestId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, LLBSAPIProtocol/RspGetPosition;

    invoke-direct {v3}, LLBSAPIProtocol/RspGetPosition;-><init>()V

    new-instance v4, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v4, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, LLBSAPIProtocol/RspGetPosition;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v1, Lcom/tencent/lbsapi/model/QLBSPosition;

    invoke-direct {v1}, Lcom/tencent/lbsapi/model/QLBSPosition;-><init>()V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStrProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setProvince(Ljava/lang/String;)V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStrCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setCity(Ljava/lang/String;)V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStrDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStrTown()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setTown(Ljava/lang/String;)V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStrRoad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setRoad(Ljava/lang/String;)V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStrPremises()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setPremises(Ljava/lang/String;)V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getIRange()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setRange(I)V

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v4

    invoke-virtual {v4}, LLBSAPIProtocol/GPS;->getILat()I

    move-result v4

    const v5, 0x35a4e900

    if-eq v4, v5, :cond_1

    new-instance v4, Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v5

    invoke-virtual {v5}, LLBSAPIProtocol/GPS;->getILat()I

    move-result v5

    invoke-virtual {v3}, LLBSAPIProtocol/RspGetPosition;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v3

    invoke-virtual {v3}, LLBSAPIProtocol/GPS;->getILon()I

    move-result v3

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;-><init>(IIII)V

    invoke-virtual {v1, v4}, Lcom/tencent/lbsapi/model/QLBSPosition;->setGps(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V

    :cond_1
    iget-object v3, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v3, v2, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onResponseGetPosition(ILcom/tencent/lbsapi/model/QLBSPosition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, -0x2

    const-string v4, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-interface {v2, v1, v3, v4}, Lcom/tencent/lbsapi/QLBSNotification;->onResponseError(IILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RspGetPoiList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "requestId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v2, LLBSAPIProtocol/RspGetPoiList;

    invoke-direct {v2}, LLBSAPIProtocol/RspGetPoiList;-><init>()V

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, LLBSAPIProtocol/RspGetPoiList;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v13, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;

    invoke-direct {v13}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;-><init>()V

    invoke-virtual {v2}, LLBSAPIProtocol/RspGetPoiList;->getITotalNum()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->setTotalNum(I)V

    invoke-virtual {v2}, LLBSAPIProtocol/RspGetPoiList;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v1

    invoke-virtual {v1}, LLBSAPIProtocol/GPS;->getILat()I

    move-result v1

    const v3, 0x35a4e900

    if-eq v1, v3, :cond_2

    new-instance v1, Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    invoke-virtual {v2}, LLBSAPIProtocol/RspGetPoiList;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v3

    invoke-virtual {v3}, LLBSAPIProtocol/GPS;->getILat()I

    move-result v3

    invoke-virtual {v2}, LLBSAPIProtocol/RspGetPoiList;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v4

    invoke-virtual {v4}, LLBSAPIProtocol/GPS;->getILon()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;-><init>(IIII)V

    invoke-virtual {v13, v1}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->setGpsInfo(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V

    :cond_2
    invoke-virtual {v2}, LLBSAPIProtocol/RspGetPoiList;->getVPoiList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, LLBSAPIProtocol/RspGetPoiList;->getVPoiList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LLBSAPIProtocol/PoiInfo;

    move-object v11, v0

    new-instance v1, Lcom/tencent/lbsapi/model/QLBSPoiInfo;

    iget-object v2, v11, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    iget v3, v11, LLBSAPIProtocol/PoiInfo;->iType:I

    iget-object v4, v11, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    iget-object v5, v11, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getLId()J

    move-result-wide v6

    iget v8, v11, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    iget v9, v11, LLBSAPIProtocol/PoiInfo;->iDistance:I

    iget v10, v11, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    invoke-direct/range {v1 .. v10}, Lcom/tencent/lbsapi/model/QLBSPoiInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIII)V

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getILat()I

    move-result v2

    const v3, 0x35a4e900

    if-eq v2, v3, :cond_3

    new-instance v2, Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getILat()I

    move-result v3

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getILon()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->setMarsGps(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V

    :cond_3
    invoke-virtual {v13}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->getPoiList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, -0x2

    const-string v4, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-interface {v2, v1, v3, v4}, Lcom/tencent/lbsapi/QLBSNotification;->onResponseError(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v1, v12, v13}, Lcom/tencent/lbsapi/QLBSNotification;->onResponseGetNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RspSearchNearPoiList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "requestId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    new-instance v2, LLBSAPIProtocol/RspSearchNearPoiList;

    invoke-direct {v2}, LLBSAPIProtocol/RspSearchNearPoiList;-><init>()V

    new-instance v3, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v3, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, LLBSAPIProtocol/RspSearchNearPoiList;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    new-instance v13, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;

    invoke-direct {v13}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;-><init>()V

    invoke-virtual {v2}, LLBSAPIProtocol/RspSearchNearPoiList;->getITotalNum()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->setTotalNum(I)V

    invoke-virtual {v2}, LLBSAPIProtocol/RspSearchNearPoiList;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v1

    invoke-virtual {v1}, LLBSAPIProtocol/GPS;->getILat()I

    move-result v1

    const v3, 0x35a4e900

    if-eq v1, v3, :cond_5

    new-instance v1, Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    invoke-virtual {v2}, LLBSAPIProtocol/RspSearchNearPoiList;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v3

    invoke-virtual {v3}, LLBSAPIProtocol/GPS;->getILat()I

    move-result v3

    invoke-virtual {v2}, LLBSAPIProtocol/RspSearchNearPoiList;->getStUsrLoc()LLBSAPIProtocol/GPS;

    move-result-object v4

    invoke-virtual {v4}, LLBSAPIProtocol/GPS;->getILon()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;-><init>(IIII)V

    invoke-virtual {v13, v1}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->setGpsInfo(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V

    :cond_5
    invoke-virtual {v2}, LLBSAPIProtocol/RspSearchNearPoiList;->getVPoiList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, LLBSAPIProtocol/RspSearchNearPoiList;->getVPoiList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LLBSAPIProtocol/PoiInfo;

    move-object v11, v0

    new-instance v1, Lcom/tencent/lbsapi/model/QLBSPoiInfo;

    iget-object v2, v11, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    iget v3, v11, LLBSAPIProtocol/PoiInfo;->iType:I

    iget-object v4, v11, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    iget-object v5, v11, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getLId()J

    move-result-wide v6

    iget v8, v11, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    iget v9, v11, LLBSAPIProtocol/PoiInfo;->iDistance:I

    iget v10, v11, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    invoke-direct/range {v1 .. v10}, Lcom/tencent/lbsapi/model/QLBSPoiInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIII)V

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getILat()I

    move-result v2

    const v3, 0x35a4e900

    if-eq v2, v3, :cond_6

    new-instance v2, Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getILat()I

    move-result v3

    invoke-virtual {v11}, LLBSAPIProtocol/PoiInfo;->getILon()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/tencent/lbsapi/model/QLBSPoiInfo;->setMarsGps(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V

    :cond_6
    invoke-virtual {v13}, Lcom/tencent/lbsapi/model/QLBSPoiInfoBatch;->getPoiList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, -0x2

    const-string v4, "wup\u56de\u5305\u89e3\u6790\u5f02\u5e38"

    invoke-interface {v2, v1, v3, v4}, Lcom/tencent/lbsapi/QLBSNotification;->onResponseError(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    iget-object v1, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/k;->a:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v1, v12, v13}, Lcom/tencent/lbsapi/QLBSNotification;->onResponseSearchNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
