.class public final Lbdq;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lbdq;->a:I

    invoke-virtual {p0}, Lbdq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "root_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbdq;->a:I

    return-void
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

    iget-object v2, p0, Lbdq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0276

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lbdr;

    iget-object v4, p0, Lbdq;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lbdr;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-virtual {v10, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lbdq;->a:I

    if-nez v0, :cond_0

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v5, 0x1

    iget-object v0, p0, Lbdq;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08b4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;

    iget-object v1, p0, Lbdq;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/tencent/qqpimsecure/view/permission/MonitorLogListView;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-virtual {v10, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v10
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onCreate()V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbdq;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionMonitorSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lbdq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    const v0, 0x7f0b0276

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget v0, p0, Lbdq;->a:I

    if-nez v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    :cond_0
    return-void
.end method
