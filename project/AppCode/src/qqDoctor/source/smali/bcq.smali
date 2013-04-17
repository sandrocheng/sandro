.class public final Lbcq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V
    .locals 0

    iput-object p1, p0, Lbcq;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbcq;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->loadDataList()V

    iget-object v0, p0, Lbcq;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->d(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
