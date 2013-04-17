.class public final Lanz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lcom/tencent/qqpimsecure/view/MainPageView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/MainPageView;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lanz;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    iput-object p2, p0, Lanz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

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

    iget-object v0, p0, Lanz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lanz;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->h(Lcom/tencent/qqpimsecure/view/MainPageView;)Lwq;

    move-result-object v1

    iget-object v2, p0, Lanz;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/view/MainPageView;->i(Lcom/tencent/qqpimsecure/view/MainPageView;)Ljava/util/List;

    move-result-object v2

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwq$a;

    invoke-virtual {v1, v0}, Lwq;->b(Lwq$a;)V

    :cond_0
    iget-object v0, p0, Lanz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    return-void
.end method
