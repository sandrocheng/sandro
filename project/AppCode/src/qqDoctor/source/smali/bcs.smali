.class public final Lbcs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)V
    .locals 0

    iput-object p1, p0, Lbcs;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbcs;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->f(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbct;

    invoke-direct {v1, p0}, Lbct;-><init>(Lbcs;)V

    invoke-static {v0, v1}, Lxi;->a(Landroid/content/Context;Lxi$a;)V

    return-void
.end method
