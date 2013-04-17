.class final Lbtg$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbtg;)V
    .locals 0

    invoke-direct {p0}, Lbtg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWifiApproveCheckFinished(ZZ)V
    .locals 2

    invoke-static {}, Lbtg;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbtg;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-static {p1}, Lbtg;->a(Z)V

    :goto_0
    invoke-static {p2}, Lbtg;->b(Z)V

    invoke-static {}, Lbtg;->j()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lbtg;->a(Z)V

    goto :goto_0
.end method
