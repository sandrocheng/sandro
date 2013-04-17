.class Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;
.super Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instantiateItem arg1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->setCreated(Z)V

    :cond_0
    check-cast p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method
