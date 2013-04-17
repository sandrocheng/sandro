.class public final Lbhv;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lbhv;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbhv;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final getTabDataMap()Ljava/util/LinkedHashMap;
    .locals 11
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

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v2, p0, Lbhv;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0a3f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lbhy;

    iget-object v4, p0, Lbhv;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lbhy;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-virtual {v10, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v5, 0x1

    iget-object v0, p0, Lbhv;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0a3b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v0, Lbhx;

    iget-object v1, p0, Lbhv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lbhx;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-virtual {v10, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v10
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onCreate()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onResume()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbhw;

    invoke-direct {v1, p0}, Lbhw;-><init>(Lbhv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final onTabClick(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 1

    invoke-virtual {p0}, Lbhv;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getLoadingTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onTabClick(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    goto :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    const v0, 0x7f0b0a38

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
