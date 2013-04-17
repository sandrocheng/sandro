.class public final Lafs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;)V
    .locals 0

    iput-object p1, p0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Laft;

    invoke-direct {v1, p0, v0}, Laft;-><init>(Lafs;I)V

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/WifiUtil;->needWifiApprove(Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;)V

    return-void
.end method
