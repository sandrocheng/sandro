.class Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;


# instance fields
.field private mCurrent:I

.field private mDeltaX:F

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollDeltaX(F)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->mDeltaX:F

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageScrollStateChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getSerialNumber(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)I

    move-result v0

    if-ne p1, v5, :cond_2

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->mDeltaX:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->mCurrent:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->mDeltaX:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->mCurrent:I

    :cond_1
    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    return-void

    :cond_5
    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageScrolled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageSelected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->mCurrent:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;->mCurrent:I

    #calls: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getTabModelBySerialNumber(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v1

    #calls: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->setCurrentTab(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    return-void
.end method
