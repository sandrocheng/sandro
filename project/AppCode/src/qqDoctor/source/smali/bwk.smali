.class final Lbwk;
.super Lbwl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwk$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Lbwn;)V
    .locals 1

    new-instance v0, Lbwk$a;

    invoke-direct {v0, p2}, Lbwk$a;-><init>(Lbwn;)V

    invoke-direct {p0, v0, p1}, Lbwl;-><init>(Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)V

    return-void
.end method
