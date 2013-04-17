.class public Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUI;


# static fields
.field public static final TEMPLATE_TYPE_LOADING_IMAGE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

.field private mLoadingView:Landroid/view/View;

.field private mOutsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

.field private mTemplateType:I

.field private mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mViewMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initView()V
    .locals 4

    const/4 v2, -0x2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->isHaveInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mViewMap:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mViewMap:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mOutsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mOutsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mInsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mInsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private isHaveInit(I)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method public getViewByTemplateType(I)Landroid/view/View;
    .locals 1

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->initView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->initView()V

    return-void
.end method

.method public setTemplateType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->initView()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mInsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mOutsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    return-void
.end method

.method public startLoading()V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mInsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->startRotationAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mOutsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->startRotationAnimation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public stopLoading()V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mTemplateType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mInsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->stopRotationAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->mOutsideView:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->stopRotationAnimation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
