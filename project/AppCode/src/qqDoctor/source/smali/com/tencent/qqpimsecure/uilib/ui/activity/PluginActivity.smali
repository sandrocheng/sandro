.class public Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# static fields
.field public static final PLUGIN_IS_STATR_VIEW:Ljava/lang/String; = "plugin_is_statr"

.field public static final PLUGIN_KEY:Ljava/lang/String; = "plugin_key"

.field public static final PLUGIN_VIEW_INDEX:Ljava/lang/String; = "plugin_view_index"


# instance fields
.field private mPluginManager:Lcom/tencent/tmsecure/module/plugin/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method

.method public static startPluginMainViews(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "plugin_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "plugin_is_statr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPluginView(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 2

    const-class v0, Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "plugin_is_statr"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 4

    const-class v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;->mPluginManager:Lcom/tencent/tmsecure/module/plugin/PluginManager;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "plugin_is_statr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "plugin_key"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;->mPluginManager:Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/plugin/PluginManager;->getPluginEntityByKey(I)Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginInterface:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/tencent/tmsecure/module/plugin/IPluginInterface;->getStartViewElement(Landroid/app/Activity;)Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->getPresentContruct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const v1, 0x7f0b09b4

    invoke-static {p0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->convertToIntent(Landroid/os/Bundle;)Lcom/tencent/tmsecure/module/plugin/PluginIntent;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mPlugin:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    iget v0, v0, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mToViewIndex:I

    invoke-interface {v1, v0, p0}, Lcom/tencent/tmsecure/module/plugin/IPluginInterface;->getViewElement(ILandroid/app/Activity;)Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->getPresentContruct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    goto :goto_0
.end method
