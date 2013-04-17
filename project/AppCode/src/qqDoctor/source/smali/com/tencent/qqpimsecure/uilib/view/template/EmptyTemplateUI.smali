.class public Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUI;


# static fields
.field public static final TEMPLATE_TYPE_CENTER_IMAGE:I = 0x1

.field public static final TEMPLATE_TYPE_CENTER_TEXT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

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

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mViewMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getLayoutResId()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f030067

    goto :goto_0

    :pswitch_1
    const v0, 0x7f030066

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initView()V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->isHaveInit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mViewMap:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getLayoutResId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mViewMap:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isHaveInit(I)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mViewMap:Ljava/util/Map;

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
.method public getCenterImage()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getViewByTemplateType(I)Landroid/view/View;
    .locals 1

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->initView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->initView()V

    return-void
.end method

.method public reset()V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTemplateType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mTemplateType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
