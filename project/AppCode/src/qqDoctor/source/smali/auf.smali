.class final Lauf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Latz;


# direct methods
.method constructor <init>(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lauf;->b:Latz;

    iput-object p2, p0, Lauf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

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

    iget-object v0, p0, Lauf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lauf;->b:Latz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Latz;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lauf;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    return-void

    :cond_1
    iget v1, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lauf;->b:Latz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Latz;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lauf;->b:Latz;

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v0}, Latz;->a(I)V

    goto :goto_0
.end method
