.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;
.super Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;


# instance fields
.field private mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

.field private mBottomDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field private mHandler:Landroid/os/Handler;

.field private mNeedInvidate:Z

.field private mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

.field private mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mNeedInvidate:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    return-object v0
.end method

.method private getNineBoxModelById(I)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getModelById(I)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getModelById(I)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private initToolBox()V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->INOUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/ExpoInterpolator;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setPositionListener(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setPositionListener(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;)V

    return-void
.end method


# virtual methods
.method public getBottomAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    return-object v0
.end method

.method public getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getPaddingBottomHeight()I
    .locals 1

    invoke-static {}, Lgw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lgw;->d:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getTopAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    return-object v0
.end method

.method public getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onFinishInflate()V

    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    const v0, 0x7f080183

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->initToolBox()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mNeedInvidate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mBottomAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mTopAdapter:Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mNeedInvidate:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onLayout(ZIIII)V

    return-void
.end method

.method public setNineBoxHot([I)V
    .locals 5

    const/4 v1, 0x0

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getNineBoxModelById(I)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->setHot(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setNineBoxNew([I)V
    .locals 5

    const/4 v1, 0x0

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getNineBoxModelById(I)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->setNew(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setNineBoxNumber(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getNineBoxModelById(I)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->setNumber(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
