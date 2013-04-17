.class public Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;
.super Ljava/lang/Object;


# instance fields
.field public expand:LQQPIM/AndroidSimpleInfoExpand;

.field public softSimpleInfo:LQQPIM/SoftSimpleInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpand()LQQPIM/AndroidSimpleInfoExpand;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->expand:LQQPIM/AndroidSimpleInfoExpand;

    return-object v0
.end method

.method public getSoftSimpleInfo()LQQPIM/SoftSimpleInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    return-object v0
.end method

.method public setExpand(LQQPIM/AndroidSimpleInfoExpand;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->expand:LQQPIM/AndroidSimpleInfoExpand;

    return-void
.end method

.method public setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    return-void
.end method
