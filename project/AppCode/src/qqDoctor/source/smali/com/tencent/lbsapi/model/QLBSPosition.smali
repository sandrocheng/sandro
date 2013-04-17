.class public Lcom/tencent/lbsapi/model/QLBSPosition;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->h:I

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getGps()Lcom/tencent/lbsapi/model/QLBSGPSInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    return-object v0
.end method

.method public getPremises()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->h:I

    return v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->b:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->c:Ljava/lang/String;

    return-void
.end method

.method public setGps(Lcom/tencent/lbsapi/model/QLBSGPSInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->g:Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    return-void
.end method

.method public setPremises(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->f:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->a:Ljava/lang/String;

    return-void
.end method

.method public setRange(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->h:I

    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->e:Ljava/lang/String;

    return-void
.end method

.method public setTown(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSPosition;->d:Ljava/lang/String;

    return-void
.end method
