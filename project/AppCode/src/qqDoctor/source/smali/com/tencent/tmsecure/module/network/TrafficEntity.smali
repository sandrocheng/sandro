.class public final Lcom/tencent/tmsecure/module/network/TrafficEntity;
.super Ljava/lang/Object;


# instance fields
.field public mLastDownValue:J

.field public mLastUpValue:J

.field public mMobileDownValue:J

.field public mMobileUpValue:J

.field public mPkg:Ljava/lang/String;

.field public mWIFIDownValue:J

.field public mWIFIUpValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/TrafficEntity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[,:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    :cond_0
    return-object v0
.end method

.method public static toString(Lcom/tencent/tmsecure/module/network/TrafficEntity;)Ljava/lang/String;
    .locals 5

    const-string v0, "%s,%s,%s,%s,%s,%s,%s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
