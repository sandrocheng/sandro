.class public abstract Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private isSlade:Z

.field private mCurTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

.field private mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

.field private mDefaultTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

.field private mFrameViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;",
            ">;"
        }
    .end annotation
.end field

.field mMiddleView:Landroid/widget/ImageView;

.field private mTabDataMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            "Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;",
            ">;"
        }
    .end annotation
.end field

.field private myAdapter:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;

.field private myViewPager:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getTabModelBySerialNumber(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->setCurrentTab(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    return-object v0
.end method

.method private dispatchOnDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onDestroy()V

    goto :goto_0
.end method

.method private getTabModelBySerialNumber(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private setCurrentTab(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onPause()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onStop()V

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->isCreated()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onCreate()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->setCreated(Z)V

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onStart()V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onResume()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateFocusTitleTab(Ljava/util/Set;Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    :cond_4
    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->isSlade:Z

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myViewPager:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setMainView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myViewPager:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getSerialNumber(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setMainView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    return-object v0
.end method

.method public getSerialNumber(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)I
    .locals 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public abstract getTabDataMap()Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            "Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;",
            ">;"
        }
    .end annotation
.end method

.method public isSlade()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->isSlade:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onContextItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getTabDataMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mDefaultTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->setIsSlade(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mFrameViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myViewPager:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myAdapter:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myViewPager:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myAdapter:Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$MyPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setAdapter(Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myViewPager:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setOnPageChangeListener(Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->dispatchOnDestroy()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void
.end method

.method public onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mDefaultTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mDefaultTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->setCurrentTab(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onStop()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    return-void
.end method

.method public onTabClick(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->setCurrentTab(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    return-void
.end method

.method public setDefaultTab(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v2

    if-ne p1, v2, :cond_0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mDefaultTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    :cond_1
    return-void
.end method

.method public setIsSlade(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->isSlade:Z

    return-void
.end method

.method public setTabMessage(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const v0, 0x7f0800a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800a5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTabViews(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mTabDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurTabModel:Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateFocusTitleTab(Ljava/util/Set;Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->isSlade:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->myViewPager:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setMainView(Landroid/view/View;)V

    :cond_1
    :goto_0
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleStyle(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->mCurrentView:Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setMainView(Landroid/view/View;)V

    goto :goto_0
.end method
