.class final Lazt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lazj;


# direct methods
.method constructor <init>(Lazj;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lazt;->b:Lazj;

    iput-object p2, p0, Lazt;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lazt;->b:Lazj;

    invoke-static {v0}, Lazj;->n(Lazj;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->clearAllLogs()V

    iget-object v0, p0, Lazt;->b:Lazj;

    invoke-static {v0}, Lazj;->o(Lazj;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->clearAllLogs()V

    iget-object v0, p0, Lazt;->b:Lazj;

    invoke-static {v0}, Lazj;->k(Lazj;)Lcom/tencent/tmsecure/module/network/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    iget-object v0, p0, Lazt;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
