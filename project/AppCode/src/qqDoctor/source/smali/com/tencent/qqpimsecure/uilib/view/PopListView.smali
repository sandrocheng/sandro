.class public Lcom/tencent/qqpimsecure/uilib/view/PopListView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mPopAnchorView:Landroid/view/View;

.field private mPopBgId:I

.field private mPopOffsetX:I

.field private mPopOffsetY:I

.field private mPopView:Landroid/view/View;

.field private mPopWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->setOrientation(I)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030137

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    const v1, 0x7f0803bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mListView:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42fc

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f020273

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopBgId:I

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopOffsetX:I

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopOffsetY:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/PopListView$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/PopListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/PopListView$2;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/PopListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/PopListView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private composePopWindow()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopBgId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismissPopList()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopAnchorView:Landroid/view/View;

    return-void
.end method

.method public setOnItemClickedListner(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setPopOffset(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopOffsetX:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopOffsetY:I

    return-void
.end method

.method public showPopList()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopBgId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4110

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopOffsetX:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopOffsetX:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_0
    return-void
.end method
