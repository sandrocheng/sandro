.class Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setTabIndex(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setBodyAdapter(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;)V

    return-void
.end method
