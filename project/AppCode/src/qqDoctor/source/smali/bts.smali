.class final Lbts;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/lbsapi/QLBSNotification;


# instance fields
.field private synthetic a:Lbtp;

.field private final synthetic b:Lbtp$a;


# direct methods
.method constructor <init>(Lbtp;Lbtp$a;)V
    .locals 0

    iput-object p1, p0, Lbts;->a:Lbtp;

    iput-object p2, p0, Lbts;->b:Lbtp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationNotification(I)V
    .locals 7

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lbts;->a:Lbtp;

    invoke-static {v0}, Lbtp;->c(Lbtp;)Lcom/tencent/lbsapi/QLBSService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eq p1, v2, :cond_2

    iget-object v0, p0, Lbts;->b:Lbtp$a;

    iget-boolean v0, v0, Lbtp$a;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbts;->b:Lbtp$a;

    iget-object v0, v0, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbts;->a:Lbtp;

    invoke-static {v1}, Lbtp;->b(Lbtp;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateFaild()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbts;->a:Lbtp;

    invoke-static {v2}, Lbtp;->a(Lbtp;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_1
    iget-object v0, p0, Lbts;->a:Lbtp;

    invoke-static {v0}, Lbtp;->d(Lbtp;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbts;->a:Lbtp;

    iget-object v1, p0, Lbts;->b:Lbtp$a;

    move-wide v5, v3

    invoke-static/range {v0 .. v6}, Lbtp;->a(Lbtp;Lbtp$a;SDD)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbts;->a:Lbtp;

    invoke-static {v0}, Lbtp;->c(Lbtp;)Lcom/tencent/lbsapi/QLBSService;

    move-result-object v0

    const/16 v1, 0x65

    iget-object v2, p0, Lbts;->a:Lbtp;

    invoke-static {v2}, Lbtp;->a(Lbtp;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/lbsapi/QLBSService;->requestGetCurrentPosition(ILjava/lang/String;I)Z

    goto :goto_0
.end method

.method public final onResponseError(IILjava/lang/String;)V
    .locals 7

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lbts;->b:Lbtp$a;

    iget-boolean v0, v0, Lbtp$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbts;->b:Lbtp$a;

    iget-object v0, v0, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbts;->a:Lbtp;

    invoke-static {v1}, Lbtp;->b(Lbtp;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateFaild()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbts;->a:Lbtp;

    invoke-static {v2}, Lbtp;->a(Lbtp;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lbts;->a:Lbtp;

    invoke-static {v0}, Lbtp;->d(Lbtp;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbts;->a:Lbtp;

    iget-object v1, p0, Lbts;->b:Lbtp$a;

    const/4 v2, 0x1

    move-wide v5, v3

    invoke-static/range {v0 .. v6}, Lbtp;->a(Lbtp;Lbtp$a;SDD)V

    goto :goto_0
.end method

.method public final onResponseGetNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    .locals 0

    return-void
.end method

.method public final onResponseGetPosition(ILcom/tencent/lbsapi/model/QLBSPosition;)V
    .locals 7

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getGps()Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->getLat()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getGps()Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->getLon()D

    move-result-wide v3

    iget-object v1, p0, Lbts;->b:Lbtp$a;

    iget-boolean v1, v1, Lbtp$a;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://msm.qq.com/1?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getDistrict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getRoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff08\u7eac\u5ea6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u7ecf\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbts;->b:Lbtp$a;

    iget-object v1, v1, Lbtp$a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbts;->a:Lbtp;

    invoke-static {v3}, Lbtp;->b(Lbtp;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateSuccess()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbts;->a:Lbtp;

    invoke-static {v2}, Lbtp;->a(Lbtp;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lbts;->a:Lbtp;

    invoke-static {v0}, Lbtp;->d(Lbtp;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbts;->a:Lbtp;

    iget-object v1, p0, Lbts;->b:Lbtp$a;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Lbtp;->a(Lbtp;Lbtp$a;SDD)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbts;->b:Lbtp$a;

    iget-boolean v0, v0, Lbtp$a;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbts;->b:Lbtp$a;

    iget-object v0, v0, Lbtp$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lbts;->a:Lbtp;

    invoke-static {v1}, Lbtp;->b(Lbtp;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateFaild()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbts;->a:Lbtp;

    invoke-static {v2}, Lbtp;->a(Lbtp;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbts;->a:Lbtp;

    iget-object v1, p0, Lbts;->b:Lbtp$a;

    const/4 v2, 0x1

    move-wide v5, v3

    invoke-static/range {v0 .. v6}, Lbtp;->a(Lbtp;Lbtp$a;SDD)V

    goto :goto_0
.end method

.method public final onResponseSearchNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    .locals 0

    return-void
.end method
