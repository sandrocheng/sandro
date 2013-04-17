.class public abstract Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MenuAdapter"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createView(ILandroid/view/View;IZ)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;-><init>()V

    const v0, 0x7f08001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;->mTitleText:Landroid/widget/TextView;

    const v0, 0x7f080095

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->disable:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->access$200(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    if-eqz p4, :cond_0

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;->mIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->mMenuBody:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
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

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;->mDataList:Ljava/util/List;

    return-void
.end method
