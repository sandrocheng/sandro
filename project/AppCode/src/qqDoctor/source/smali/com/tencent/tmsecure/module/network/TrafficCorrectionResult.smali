.class public final Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;
.super Ljava/lang/Object;


# static fields
.field public static final INVALID_TRAFFIC_DATA:I = -0x1


# instance fields
.field public mLeftTrafficInKb:I

.field public mUsedTrafficInKb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mUsedTrafficInKb:I

    iput v0, p0, Lcom/tencent/tmsecure/module/network/TrafficCorrectionResult;->mLeftTrafficInKb:I

    return-void
.end method
