.class public Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;
.super Lcom/tencent/tmsecure/common/BaseEntity;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/common/BaseEntity;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public mRetialForMonth:J

.field public mStartDate:Ljava/util/Date;

.field public mTotalForMonth:J

.field public mUsedForDay:J

.field public mUsedForMonth:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mRetialForMonth:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->compareTo(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)I

    move-result v0

    return v0
.end method
