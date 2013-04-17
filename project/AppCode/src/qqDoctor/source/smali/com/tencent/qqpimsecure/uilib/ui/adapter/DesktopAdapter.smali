.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;,
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;
    }
.end annotation


# static fields
.field public static final DATA_TYPE_BOTTOM_GRIDVIEW:I = 0x1

.field public static final DATA_TYPE_TOP_GRIDVIEW:I = 0x0

.field public static final FUNCTION_BATTERY_SAVE:I = 0x10

.field public static final FUNCTION_BOOT_OPTIMIZE:I = 0x1

.field public static final FUNCTION_CHARGEBACK_SCAN:I = 0x6

.field public static final FUNCTION_COMMON_UTILS:I = 0x11

.field public static final FUNCTION_DATA_CLEAR:I = 0x5

.field public static final FUNCTION_IP_CALL:I = 0xa

.field public static final FUNCTION_MARKET:I = 0x4

.field public static final FUNCTION_MY_SOFTWARE:I = 0x3

.field public static final FUNCTION_NUMBER_QUERY:I = 0x9

.field public static final FUNCTION_PACKAGE_MANAGER:I = 0x2

.field public static final FUNCTION_PHONE_TOKEN:I = 0x7

.field public static final FUNCTION_PICKPROOF:I = 0xf

.field public static final FUNCTION_PLUGIN_TYPE:I = 0x1e

.field public static final FUNCTION_PRIVATE_PROTECT:I = 0xb

.field public static final FUNCTION_SCREEN_SHOT:I = 0x12

.field public static final FUNCTION_SECURE_SPACE:I = 0x8

.field public static final FUNCTION_SYNC_ASSISTANTS:I = 0xd

.field public static final FUNCTION_SYSTEM_SETTING:I = 0xc

.field public static final FUNCTION_VIRUS_SCAN:I = 0x0

.field public static final FUNCTION_WAP_MONITOR:I = 0xe


# instance fields
.field private IconId:I

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDataType:I

.field private mDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field private mFocusPosition:I

.field private mPluginEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/plugin/PluginEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginManager:Lcom/tencent/tmsecure/module/plugin/PluginManager;

.field private mToolBoxDao:Lkk;

.field private secureSpaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mFocusPosition:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->secureSpaceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->IconId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginEntityList:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataType:I

    const-class v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginManager:Lcom/tencent/tmsecure/module/plugin/PluginManager;

    new-instance v0, Lkk;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lkk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mConfigDao:Lho;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->refreshDataList()V

    return-void
.end method

.method private declared-synchronized addDataList(I)V
    .locals 7

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x0

    const v3, 0x7f0b02a6

    const v4, 0x7f0201c0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x3

    const v3, 0x7f0b0226

    const v4, 0x7f0201d2

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x4

    const v3, 0x7f0b028f

    const v4, 0x7f0201e8

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x5

    const v3, 0x7f0b02a2

    const v4, 0x7f0201eb

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x1

    const v3, 0x7f0b02a1

    const v4, 0x7f0201ec

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mConfigDao:Lho;

    invoke-virtual {v3}, Lho;->bb()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lbjo;->a:[I

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mConfigDao:Lho;

    invoke-virtual {v6}, Lho;->bc()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0xb

    const v3, 0x7f0b0299

    const v4, 0x7f0201df

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x2

    const v3, 0x7f0b016e

    const v4, 0x7f0201da

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x7

    const v3, 0x7f0b0296

    const v4, 0x7f0201ed

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/4 v2, 0x6

    const v3, 0x7f0b0295

    const v4, 0x7f0201e7

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0xa

    const v3, 0x7f0b008f

    const v4, 0x7f0201cc

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0x9

    const v3, 0x7f0b0758

    const v4, 0x7f0201c7

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0xd

    const v3, 0x7f0b032b

    const v4, 0x7f0201e9

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0xe

    const v3, 0x7f0b02a0

    const v4, 0x7f0201d7

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0xf

    const v3, 0x7f0b07a9

    const v4, 0x7f0201e4

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0x10

    const v3, 0x7f0b07a7

    const v4, 0x7f0201c3

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0x11

    const v3, 0x7f0b0298

    const v4, 0x7f0201c7

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v2, 0x12

    const v3, 0x7f0b086e

    const v4, 0x7f0201e3

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_6
        :pswitch_c
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private declared-synchronized addPlugin(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    monitor-enter p0

    const/16 v2, 0x1e

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginEntityList:Ljava/util/List;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginManager:Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/plugin/PluginManager;->getAllPlugins()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginEntityList:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginEntityList:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    iget-object v2, v2, Lkk;->a:Landroid/content/SharedPreferences;

    const-string v3, "plugin_mapping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_4

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :goto_2
    if-eq v2, v1, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->getKey()I

    move-result v4

    if-ne v4, v2, :cond_3

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->getKey()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->isPluginAdd(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginFilePath:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginName:Ljava/lang/String;

    invoke-direct {v6, p1, v1, v4, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPluginAdd(I)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getPluginKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getFocusPosition()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mFocusPosition:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getModelById(I)Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v4, 0xa

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;-><init>()V

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mItemLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionImage:Landroid/widget/ImageView;

    const v0, 0x7f08001c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionText:Landroid/widget/TextView;

    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionMessageText:Landroid/widget/TextView;

    const v0, 0x7f080093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mTempLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f080087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    const v0, 0x7f080094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mCenterLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080096

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mConfigDao:Lho;

    invoke-virtual {v2}, Lho;->bb()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->secureSpaceName:Ljava/lang/String;

    sget-object v2, Lbjo;->a:[I

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mConfigDao:Lho;

    invoke-virtual {v3}, Lho;->bc()I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->IconId:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->IconId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->setImageResId(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->secureSpaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->setTextResId(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getTextResId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getImageResId()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lgw;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lgw;->d:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v4, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getNumber()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getNumber()I

    move-result v2

    const/16 v3, 0x63

    if-le v2, v3, :cond_5

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionMessageText:Landroid/widget/TextView;

    const-string v3, "99+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionMessageText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->isNew()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    iget-object v2, v2, Lkk;->a:Landroid/content/SharedPreferences;

    const-string v3, "open_nine_box_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v8, :cond_7

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    const v3, 0x7f0201d8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedIndex()I

    move-result v2

    if-ne p1, v2, :cond_a

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_5
    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;

    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionMessageText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionMessageText:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionMessageText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->isHot()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    iget-object v2, v2, Lkk;->a:Landroid/content/SharedPreferences;

    const-string v3, "open_nine_box_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v8, :cond_8

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    const v3, 0x7f0201cb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v2

    if-ne v2, v7, :cond_9

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lis;->a(Landroid/content/Context;)Lis;

    move-result-object v2

    iget-object v2, v2, Lis;->b:Landroid/content/SharedPreferences;

    const-string v3, "has_not_see_wek"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    const v3, 0x7f0202b0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mFunctionNewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_a
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionHolder;->mTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public declared-synchronized notifyDataSetChanged()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public positionChange(II)V
    .locals 4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    invoke-virtual {v0, v2}, Lkk;->a(Ljava/util/List;)V

    :goto_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v2, 0x6667

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    invoke-virtual {v0, v2}, Lkk;->b(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized refreshDataList()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnp;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    const-string v0, ""

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v2

    invoke-virtual {v2}, Lnp;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    const-string v0, ""

    invoke-static {}, Lgw;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "0;11;3;4"

    :cond_2
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lkk;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lkk;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "tool_box_top_index"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v1, v1, Lkk;->a:Landroid/content/SharedPreferences;

    const-string v2, "tool_box_top_index"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkk;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->addDataList(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->addPlugin(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    invoke-static {}, Lgw;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "0;11;3;4"

    goto :goto_0

    :cond_5
    invoke-static {}, Lgw;->d()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lgw;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_6
    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "16;11;3;4"

    goto :goto_0

    :cond_8
    invoke-static {}, Lgw;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "0;11;3;14"

    goto :goto_0

    :cond_9
    invoke-static {}, Lgw;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "0;11;3;15"

    goto :goto_0

    :cond_a
    invoke-static {}, Lgw;->d()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lgw;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_b
    const-string v0, "16;11;3;15"

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mToolBoxDao:Lkk;

    invoke-virtual {v0}, Lkk;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->addDataList(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->addPlugin(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method public setFocusPosition(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mFocusPosition:I

    return-void
.end method

.method public setPluginEntityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/plugin/PluginEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->mPluginEntityList:Ljava/util/List;

    return-void
.end method
