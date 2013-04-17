.class public final Laty;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    iput p2, p0, Laty;->a:I

    return-void
.end method


# virtual methods
.method public final getTabDataMap()Ljava/util/LinkedHashMap;
    .locals 12
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

    const/4 v11, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iget v0, p0, Laty;->a:I

    if-eq v0, v7, :cond_0

    iget v0, p0, Laty;->a:I

    if-ne v0, v11, :cond_2

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v2, p0, Laty;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0753

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lams;

    iget-object v4, p0, Laty;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0, v7}, Lams;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    invoke-virtual {v10, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v0, p0, Laty;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0752

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v5, v6

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v0, Lams;

    iget-object v1, p0, Laty;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v11}, Lams;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    invoke-virtual {v10, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    iget v0, p0, Laty;->a:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    iget v0, p0, Laty;->a:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_3
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v2, p0, Laty;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0755

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lams;

    iget-object v4, p0, Laty;->mContext:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-direct {v2, v4, p0, v5}, Lams;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    invoke-virtual {v10, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v0, p0, Laty;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0754

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v5, v6

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v0, Lams;

    iget-object v1, p0, Laty;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-direct {v0, v1, p0, v2}, Lams;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    invoke-virtual {v10, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f0b028e

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    return-void
.end method
