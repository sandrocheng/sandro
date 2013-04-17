.class public final Lbcr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V
    .locals 0

    iput-object p1, p0, Lbcr;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbcr;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->e(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Ljf;

    move-result-object v0

    const-string v1, "DELETE FROM permission_log"

    iget-object v2, v0, Ljf;->a:Lhs;

    invoke-virtual {v2, v1}, Lhs;->b(Ljava/lang/String;)V

    iget-object v0, v0, Ljf;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    return-void
.end method
