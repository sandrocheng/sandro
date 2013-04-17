.class public Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;
.super Landroid/widget/PopupWindow;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;,
        Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;,
        Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;,
        Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;,
        Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;
    }
.end annotation


# instance fields
.field private final columnNum:I

.field private mBodyAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

.field private mBodyAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMenuBody:Landroid/widget/GridView;

.field private mMenuTab:Landroid/widget/GridView;

.field private mOnBodyItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTabAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;

.field private mTabDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->columnNum:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mOnBodyItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->initMenu()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->initMenuBody()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setBodyAdapter(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->columnNum:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mOnBodyItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->initMenu()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->initMenuTab()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->initMenuBody()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->getDataListFromMap()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setBodyAdapter(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    return-object v0
.end method

.method private getDataListFromMap()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabDataList:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapterMap:Ljava/util/Map;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v4, p0, v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initMenu()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setHeight(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setAnimationStyle(I)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$2;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private initMenuBody()V
    .locals 5

    const/16 v4, 0xa

    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initMenuTab()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getBodyAdapter()Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getTabAdapter()Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuTabAdapter;

    return-object v0
.end method

.method public getTabDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabDataList:Ljava/util/List;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mOnBodyItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->dismiss()V

    return-void
.end method

.method public setBodyAdapter(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mBodyAdapter:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mDataList:Ljava/util/List;

    return-void
.end method

.method public setTabDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mTabDataList:Ljava/util/List;

    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuTab:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method
