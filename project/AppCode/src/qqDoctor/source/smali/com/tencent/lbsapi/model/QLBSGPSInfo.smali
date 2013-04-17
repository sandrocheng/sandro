.class public Lcom/tencent/lbsapi/model/QLBSGPSInfo;
.super Ljava/lang/Object;


# static fields
.field public static final GPS_MARS:I = 0x1

.field public static final GPS_WGS84:I = 0x0

.field public static final GPS_WGS_REAL:I = 0x2


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x35a4e900

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->a:I

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->b:I

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->d:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const v0, 0x35a4e900

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->a:I

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->b:I

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->d:I

    invoke-virtual {p0, p1}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->setLat(I)V

    invoke-virtual {p0, p2}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->setLon(I)V

    invoke-virtual {p0, p3}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->setAlt(I)V

    invoke-virtual {p0, p4}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->setType(I)V

    return-void
.end method


# virtual methods
.method public getAlt()D
    .locals 4

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->c:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLat()D
    .locals 4

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->a:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLon()D
    .locals 4

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->b:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->d:I

    return v0
.end method

.method public setAlt(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->c:I

    return-void
.end method

.method public setLat(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->a:I

    return-void
.end method

.method public setLon(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->b:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->d:I

    return-void
.end method
