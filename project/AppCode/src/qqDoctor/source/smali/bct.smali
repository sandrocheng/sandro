.class final Lbct;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbcs;


# direct methods
.method constructor <init>(Lbcs;)V
    .locals 0

    iput-object p1, p0, Lbct;->a:Lbcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lbct;->a:Lbcs;

    iget-object v0, v0, Lbcs;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-static {v0, p1}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->a(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lbct;->a:Lbcs;

    iget-object v0, v0, Lbcs;->a:Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;->g(Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    :cond_0
    return-void
.end method
