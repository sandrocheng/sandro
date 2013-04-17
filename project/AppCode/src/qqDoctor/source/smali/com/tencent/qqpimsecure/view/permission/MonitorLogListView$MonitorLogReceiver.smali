.class public Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonitorLogReceiver"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView$MonitorLogReceiver;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->onResume()V

    return-void
.end method
