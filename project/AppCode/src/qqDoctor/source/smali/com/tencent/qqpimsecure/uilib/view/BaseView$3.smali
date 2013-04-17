.class Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->getBodyAdapter()Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z

    return-void
.end method
