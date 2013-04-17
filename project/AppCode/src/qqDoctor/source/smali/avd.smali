.class final Lavd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lky;

.field private synthetic c:Lauu;


# direct methods
.method constructor <init>(Lauu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;Lky;)V
    .locals 0

    iput-object p1, p0, Lavd;->c:Lauu;

    iput-object p2, p0, Lavd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iput-object p3, p0, Lavd;->b:Lky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lavd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lavd;->c:Lauu;

    invoke-static {v1}, Lauu;->q(Lauu;)Ljb;

    move-result-object v1

    iget-object v2, p0, Lavd;->b:Lky;

    invoke-virtual {v1, v2}, Ljb;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v1, p0, Lavd;->c:Lauu;

    invoke-static {v1}, Lauu;->q(Lauu;)Ljb;

    move-result-object v1

    iget-object v2, p0, Lavd;->b:Lky;

    iget-object v2, v2, Lky;->phonenum:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2, v0}, Ljb;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lavd;->c:Lauu;

    iget-object v1, p0, Lavd;->b:Lky;

    invoke-static {v0, v1}, Lauu;->a(Lauu;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v0, p0, Lavd;->c:Lauu;

    invoke-static {v0}, Lauu;->r(Lauu;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b064c

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lavd;->c:Lauu;

    invoke-static {v0}, Lauu;->s(Lauu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lavd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    return-void
.end method
