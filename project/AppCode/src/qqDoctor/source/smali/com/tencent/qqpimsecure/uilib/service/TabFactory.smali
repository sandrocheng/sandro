.class public Lcom/tencent/qqpimsecure/uilib/service/TabFactory;
.super Ljava/lang/Object;


# static fields
.field public static final TAB_APK_MANAGER:I = 0x1

.field public static final TAB_BENCHMARK_DOWNLOAD:I = 0x2f

.field public static final TAB_BOOT_OPTIMIZE:I = 0x10

.field public static final TAB_CHANGE_PSW:I = 0x22

.field public static final TAB_CHANGE_SECURITY_QUESTION:I = 0x23

.field public static final TAB_CHARGEBACK_SCAN:I = 0x2a

.field public static final TAB_DATA_CLEAR:I = 0x11

.field public static final TAB_DEEP_CLEAN:I = 0x2e

.field public static final TAB_DELETE_DATA:I = 0x12

.field public static final TAB_ENCRY_AUDIO:I = 0x26

.field public static final TAB_ENCRY_DOC:I = 0x27

.field public static final TAB_ENCRY_OTHER:I = 0x28

.field public static final TAB_ENCRY_PIC:I = 0x24

.field public static final TAB_ENCRY_VIDEO:I = 0x25

.field public static final TAB_FAR_CONTROL:I = 0x13

.field public static final TAB_FILE_SAFE:I = 0x21

.field public static final TAB_FILTER_MANAGER:I = 0x17

.field public static final TAB_FIND_PASSWORD:I = 0x15

.field public static final TAB_IPCALL:I = 0xd

.field public static final TAB_LIST_COMMONT_TOOLS:I = 0x4

.field public static final TAB_LIST_FILESAVE_MAIN:I = 0x9

.field public static final TAB_LIST_FILESAVE_SET:I = 0xa

.field public static final TAB_LIST_MAIN_PAGE:I = 0x8

.field public static final TAB_LIST_MARKET:I = 0x1

.field public static final TAB_LIST_NETWORK_NAMAGER:I = 0x3

.field public static final TAB_LIST_PERMISSION:I = 0x2

.field public static final TAB_LIST_PICKPROOF:I = 0x7

.field public static final TAB_LIST_SOFTWARE_CENTER:I = 0x0

.field public static final TAB_LIST_SYSTEM_OPTIMIZE:I = 0x5

.field public static final TAB_LIST_VIRUS_MANAGER:I = 0x6

.field public static final TAB_LOCATION_QUERY:I = 0xb

.field public static final TAB_MONITOR_SOFTWARE:I = 0x7

.field public static final TAB_NECESSARY_SOFTWARE:I = 0x4

.field public static final TAB_NETWORK_MANAGER:I = 0x16

.field public static final TAB_NOTIFICATION_ADBLOCK:I = 0x2d

.field public static final TAB_NUMBER_QUERY:I = 0xc

.field public static final TAB_PASSWORD_VERIFY:I = 0x1f

.field public static final TAB_PHONE_OPTIMIZE:I = 0x18

.field public static final TAB_PHONE_STATE_MARKET:I = 0x1c

.field public static final TAB_PHONE_STATE_MY_SOFTWARE:I = 0x1b

.field public static final TAB_PHONE_STATE_PEMISSION_MONITOR:I = 0x1d

.field public static final TAB_PHONE_STATE_SYSTEM_SETTING:I = 0x1e

.field public static final TAB_PHONE_STATE_VIRUS_SCAN:I = 0x1a

.field public static final TAB_PHONE_TOKEN:I = 0x29

.field public static final TAB_PICKPROOF:I = 0x2c

.field public static final TAB_POSITION_PHONE:I = 0x14

.field public static final TAB_POWER_MANAGER:I = 0x19

.field public static final TAB_PRIVACY_LOCK:I = 0x30

.field public static final TAB_PRIVATE_SPACE:I = 0x8

.field public static final TAB_PUSH_SUPPLIER:I = 0x3ea

.field public static final TAB_PUSH_WANDOUJIA:I = 0x3e9

.field public static final TAB_SCREENSHOT:I = 0xe

.field public static final TAB_SOFTWARE_DAIRY:I = 0x3

.field public static final TAB_SOFTWARE_GATEGORY:I = 0x5

.field public static final TAB_SOFTWARE_MOVE:I = 0x2

.field public static final TAB_SOFTWARE_SEARCH:I = 0x6

.field public static final TAB_SOFTWARE_UNINSTALL:I = 0x0

.field public static final TAB_SOFTWARE_UPDATE:I = 0xa

.field public static final TAB_STYLE_NORMAL:I = 0x0

.field public static final TAB_STYLE_NO_BACKGROUND:I = 0x1

.field public static final TAB_SYNC_ASSISTANTS:I = 0x2b

.field public static final TAB_TASK_MANAGER:I = 0xf

.field public static final TAB_VIRUS_FULL_SCAN:I = 0x2d

.field public static final TAB_VIRUS_KILL_ROOT:I = 0x2f

.field public static final TAB_VIRUS_MANAGER:I = 0x31

.field public static final TAB_VIRUS_UPDATE_DATA:I = 0x2e

.field public static final TAB_WAP_SORT:I = 0x9

.field private static isHD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->h()I

    move-result v0

    sget v1, Lqx$a;->q:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->isHD:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCommonToolsTabList(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    const v10, 0x7f0201c4

    const v2, 0x7f0201bf

    const/16 v9, 0x2f

    const/16 v1, 0x2d

    const/16 v8, 0xe

    invoke-static {}, Lho;->a()Lho;

    move-result-object v6

    invoke-static {}, Lgw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v3, 0x2c

    const v4, 0x7f0201e4

    const v5, 0x7f0b07a9

    const-string v7, ""

    invoke-direct {v0, v3, v4, v5, v7}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v3, 0x7f0b0a2d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lgw;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lgw;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v3, 0x2b

    const v4, 0x7f0201e9

    const v5, 0x7f0b032b

    const-string v7, ""

    invoke-direct {v0, v3, v4, v5, v7}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v3, 0x7f0b0a2c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6}, Lho;->dl()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const v3, 0x7f0b0297

    const v4, 0x7f0b0a2f

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0201d9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIIILandroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lho;->dQ()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const v3, 0x7f0b0ba7

    const v4, 0x7f0b0ba8

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move v1, v9

    move v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIIILandroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    if-ge v0, v8, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const v1, 0x7f0201e3

    const v2, 0x7f0b086e

    const-string v3, ""

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b00a2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x29

    const v2, 0x7f0201ed

    const v3, 0x7f0b0296

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b0a2e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x2a

    const v2, 0x7f0201e7

    const v3, 0x7f0b0295

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b0a2b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0xb

    const v2, 0x7f0201dd

    const v3, 0x7f0b007e

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b00a5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0xd

    const v2, 0x7f0201cc

    const v3, 0x7f0b008f

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b00a3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x3ea

    const v2, 0x7f0201c9

    const v3, 0x7f0b03a1

    const v4, 0x7f0b03a2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x3e9

    const v2, 0x7f0201ee

    const v3, 0x7f0b039c

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b039d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0xc

    const v2, 0x7f0201c7

    const v3, 0x7f0b0758

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b00aa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const v3, 0x7f0b0297

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const v1, 0x7f0b0a2f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const v1, 0x7f0b0ba7

    const v2, 0x7f0b0ba8

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIII)V

    goto/16 :goto_1
.end method

.method private static createFileSaveMainTabList(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x24

    const v2, 0x7f0201db

    const v3, 0x7f0b09c5

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x25

    const v2, 0x7f0201d1

    const v3, 0x7f0b09c6

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x28

    const v2, 0x7f0201ca

    const v3, 0x7f0b09c9

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createFileSaveSetTabList(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    const v4, 0x7f0201dd

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x22

    const v2, 0x7f0b09cc

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x23

    const v2, 0x7f0b0a00

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createMainPageTabList(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lgw;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lgw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lgw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x16

    const v2, 0x7f020119

    const v3, 0x7f0b02a0

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v0, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->isHD:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x17

    const v2, 0x7f020118

    const v3, 0x7f0b028e

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x18

    const v2, 0x7f020116

    const v3, 0x7f0b032a

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->isHD:Z

    if-eqz v1, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x1a

    const v2, 0x7f0201c0

    const v3, 0x7f0b02a6

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x1b

    const v2, 0x7f0201d2

    const v3, 0x7f0b0226

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x1c

    const v2, 0x7f0201e8

    const v3, 0x7f0b028f

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x1d

    const v2, 0x7f0201df

    const v3, 0x7f0b0276

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x1e

    const v2, 0x7f0201e5

    const v3, 0x7f0b0293

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setShowFooterLine(Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lgw;->d()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lgw;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x31

    const v2, 0x7f020117

    const v3, 0x7f0b0070

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setShowFooterLine(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setShowFooterLine(Z)V

    goto :goto_0
.end method

.method private static createNetworkManagerTabList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x9

    const v2, 0x7f0201d2

    const v3, 0x7f0b01a1

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createPermissionTabList(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bb()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbjo;->a:[I

    invoke-virtual {v0}, Lho;->bc()I

    move-result v0

    aget v0, v2, v0

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v3, 0x8

    const-string v4, ""

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x21

    const v2, 0x7f0201e2

    const v3, 0x7f0b09b5

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x30

    const v2, 0x7f0201d0

    const v3, 0x7f0b0a38

    const v4, 0x7f0b0a45

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x7

    const v2, 0x7f02013a

    const v3, 0x7f0b0276

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createPickproofTabList(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x12

    const v2, 0x7f020143

    const v3, 0x7f0b0821

    const v4, 0x7f0b082b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x13

    const v2, 0x7f020145

    const v3, 0x7f0b0822

    const v4, 0x7f0b082c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x14

    const v2, 0x7f020144

    const v3, 0x7f0b0823

    const v4, 0x7f0b082d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x15

    const v2, 0x7f020146

    const v3, 0x7f0b0824

    const v4, 0x7f0b082e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createSoftwareCenterTabList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->n()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0xa

    const v2, 0x7f0201d6

    const v3, 0x7f0b08c0

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x0

    const v2, 0x7f0201d5

    const v3, 0x7f0b08c1

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x1

    const v2, 0x7f0201d3

    const v3, 0x7f0b016e

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x2

    const v2, 0x7f0201d4

    const v3, 0x7f0b00b9

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createSystemOptimizeTabList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0xf

    const v2, 0x7f0201eb

    const v3, 0x7f0b0963

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x10

    const v2, 0x7f0201ec

    const v3, 0x7f0b02a1

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x11

    const v2, 0x7f0201c5

    const v3, 0x7f0b02a2

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v1, 0x2e

    const v2, 0x7f0201c8

    const v3, 0x7f0b02a3

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createTabListById(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createSoftwareCenterTabList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createPermissionTabList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createNetworkManagerTabList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    invoke-static {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createCommonToolsTabList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createSystemOptimizeTabList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createVirusManagerTabList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createPickproofTabList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :pswitch_8
    invoke-static {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createMainPageTabList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    invoke-static {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createFileSaveMainTabList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :pswitch_a
    invoke-static {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createFileSaveSetTabList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static createTabView(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/model/TabModel;II)Landroid/view/View;
    .locals 7

    const v4, 0x7f02033c

    const v3, 0x7f020339

    const/high16 v6, 0x4190

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0800a5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch p3, :pswitch_data_0

    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_1
    return-object v0

    :pswitch_0
    if-nez p2, :cond_0

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_2

    :pswitch_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static createVirusManagerTabList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    const v4, 0x7f0b02fb

    const v3, 0x7f0b02b4

    const v2, 0x7f0201cd

    const/16 v1, 0x2f

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v5, 0x2d

    const v6, 0x7f0201c1

    const v7, 0x7f0b02a9

    const v8, 0x7f0b02fa

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/16 v5, 0x2e

    const v6, 0x7f0201c2

    const v7, 0x7f0b02b1

    const v8, 0x7f0b016d

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Ljk;->a:I

    int-to-long v5, v0

    new-instance v0, Ljk;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Ljk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljk;->a()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIIILandroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IIII)V

    goto :goto_0
.end method

.method public static setTabStyle(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 5

    const v4, 0x7f09008f

    const v0, 0x7f0800a6

    const v3, 0x7f0800a5

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
