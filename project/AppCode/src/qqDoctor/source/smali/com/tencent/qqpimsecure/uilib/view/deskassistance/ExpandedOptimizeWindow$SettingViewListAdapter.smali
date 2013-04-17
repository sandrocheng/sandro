.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingViewListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
