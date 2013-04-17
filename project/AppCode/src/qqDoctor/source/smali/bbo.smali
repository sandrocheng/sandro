.class public final Lbbo;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;


# instance fields
.field private a:Lbax;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbbo;->a:Lbax;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbax;->setReloadData(Z)V

    return-void
.end method

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

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isSupportTrafficState()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v2, p0, Lbbo;->mContext:Landroid/content/Context;

    const v4, 0x7f0b01a2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lbbk;

    iget-object v4, p0, Lbbo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lbbk;-><init>(Landroid/content/Context;Lbbo;)V

    invoke-virtual {v10, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v5, 0x1

    iget-object v0, p0, Lbbo;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01a3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v0, Lbax;

    iget-object v1, p0, Lbbo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v11}, Lbax;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Z)V

    invoke-virtual {v10, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lbax;

    iput-object v0, p0, Lbbo;->a:Lbax;

    return-object v10
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    return-void
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onCreate()V

    iget-object v0, p0, Lbbo;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lbbo;->setDefaultTab(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onResume()V

    return-void
.end method

.method public final onTabClick(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onTabClick(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    iput v0, p0, Lbbo;->b:I

    iget v0, p0, Lbbo;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6650

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    const v0, 0x7f0b01a1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    return-void
.end method
