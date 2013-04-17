.class final Lbsm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;


# instance fields
.field private synthetic a:Lbsl;


# direct methods
.method constructor <init>(Lbsl;)V
    .locals 0

    iput-object p1, p0, Lbsm;->a:Lbsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWifiApproveCheckFinished(ZZ)V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsm;->a:Lbsl;

    iget-object v1, v1, Lbsl;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsm;->a:Lbsl;

    iget-object v1, v1, Lbsl;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    sget-object v1, Lcom/tencent/tmsecure/utils/WifiUtil;->sRedirectLocation:Ljava/lang/String;

    iget-object v2, p0, Lbsm;->a:Lbsl;

    iget-object v2, v2, Lbsl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lov;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lov;->a(I)V

    goto :goto_0
.end method
