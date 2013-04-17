.class public final Lawg;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

.field private b:Ljp;

.field private c:Lho;

.field private d:Lov;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lawh;

    invoke-direct {v0, p0}, Lawh;-><init>(Lawg;)V

    iput-object v0, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    new-instance v0, Lawi;

    invoke-direct {v0, p0}, Lawi;-><init>(Lawg;)V

    iput-object v0, p0, Lawg;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lawg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawg;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lawg;->b:Ljp;

    invoke-virtual {v1}, Ljp;->e()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lawg;->setTabMessage(II)V

    const/4 v0, 0x1

    iget-object v1, p0, Lawg;->c:Lho;

    invoke-virtual {v1}, Lho;->G()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lawg;->setTabMessage(II)V

    return-void
.end method

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

    iget-object v2, p0, Lawg;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0184

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lavu;

    iget-object v4, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lavu;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-virtual {v10, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v5, 0x1

    iget-object v0, p0, Lawg;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0183

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v0, Lauu;

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lauu;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-virtual {v10, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v10
.end method

.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lawg;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onBackClick()V

    return-void
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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onCreate()V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    iput-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lawg;->b:Ljp;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lawg;->c:Lho;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Lawg;->d:Lov;

    invoke-virtual {p0}, Lawg;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_from_notification"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x664b

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    iget-object v0, p0, Lawg;->b:Ljp;

    invoke-virtual {v0}, Ljp;->e()I

    move-result v0

    iget-object v1, p0, Lawg;->c:Lho;

    invoke-virtual {v1}, Lho;->G()I

    move-result v1

    invoke-virtual {p0}, Lawg;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tab_call"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Lawg;->setDefaultTab(I)V

    :goto_0
    iget-object v2, p0, Lawg;->d:Lov;

    invoke-virtual {v2, v4}, Lov;->a(Z)V

    if-gtz v0, :cond_1

    if-lez v1, :cond_2

    :cond_1
    iget-object v0, p0, Lawg;->d:Lov;

    invoke-virtual {v0, v4, v4, v4}, Lov;->a(ZZZ)V

    :cond_2
    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    :cond_3
    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_4
    if-nez v0, :cond_5

    if-lez v1, :cond_5

    invoke-virtual {p0, v5}, Lawg;->setDefaultTab(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lawg;->setDefaultTab(I)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lawg;->d:Lov;

    invoke-virtual {v0, v1, v1}, Lov;->a(ZZ)V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onDestroy()V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65ef

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/FilterSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/InterceptBlackWhiteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONTACT_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/InterceptBlackWhiteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CONTACT_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onPause()V

    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onResume()V

    const/4 v0, 0x0

    iget-object v1, p0, Lawg;->b:Ljp;

    invoke-virtual {v1}, Ljp;->e()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lawg;->setTabMessage(II)V

    const/4 v0, 0x1

    iget-object v1, p0, Lawg;->c:Lho;

    invoke-virtual {v1}, Lho;->G()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lawg;->setTabMessage(II)V

    :try_start_0
    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lawg;->a:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lawg;->f:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onStart()V

    iget-object v0, p0, Lawg;->d:Lov;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lov;->a(ZZ)V

    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lawg;->d:Lov;

    invoke-virtual {v0, v1, v1}, Lov;->a(ZZ)V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->onStop()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseTabView;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    const v0, 0x7f0b028e

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    iget-object v0, p0, Lawg;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lawg;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x2

    iget-object v3, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lawg;->mContext:Landroid/content/Context;

    const v6, 0x7f0b02a5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lawg;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020358

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lawg;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02a4

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lawg;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x4

    iget-object v3, p0, Lawg;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020308

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lawg;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0187

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lawg;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lawg;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonPopStyle(Ljava/util/List;)V

    return-void
.end method
