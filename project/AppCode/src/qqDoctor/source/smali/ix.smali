.class final Lix;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/lbsapi/QLBSNotification;


# instance fields
.field private synthetic a:Liv;


# direct methods
.method constructor <init>(Liv;)V
    .locals 0

    iput-object p1, p0, Lix;->a:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationNotification(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lix;->a:Liv;

    invoke-static {v0}, Liv;->d(Liv;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^^QLBS 1result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lix;->a:Liv;

    invoke-static {v0}, Liv;->e(Liv;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lix;->a:Liv;

    invoke-static {v0}, Liv;->a(Liv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lix;->a:Liv;

    invoke-static {v1}, Liv;->c(Liv;)Lcom/tencent/lbsapi/QLBSService;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/lbsapi/QLBSService;->requestGetCurrentPosition(ILjava/lang/String;I)Z

    goto :goto_0
.end method

.method public final onResponseError(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lix;->a:Liv;

    invoke-static {v0}, Liv;->d(Liv;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^^QLBS error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lix;->a:Liv;

    invoke-static {v0}, Liv;->e(Liv;)V

    return-void
.end method

.method public final onResponseGetNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    .locals 0

    return-void
.end method

.method public final onResponseGetPosition(ILcom/tencent/lbsapi/model/QLBSPosition;)V
    .locals 1

    iget-object v0, p0, Lix;->a:Liv;

    invoke-static {v0}, Liv;->e(Liv;)V

    iget-object v0, p0, Lix;->a:Liv;

    invoke-static {v0, p2}, Liv;->a(Liv;Lcom/tencent/lbsapi/model/QLBSPosition;)V

    return-void
.end method

.method public final onResponseSearchNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    .locals 0

    return-void
.end method
