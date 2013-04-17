.class public final Luo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;
.implements Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

.field private C:Landroid/content/BroadcastReceiver;

.field private D:Lit;

.field private E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Runnable;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private f:Lho;

.field private g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

.field private h:Lkd;

.field private i:Landroid/view/WindowManager;

.field private j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/ImageView;

.field private t:Z

.field private u:I

.field private v:I

.field private w:Lkk;

.field private x:Lcom/tencent/tmsecure/module/plugin/PluginManager;

.field private y:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private z:Laaj;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;Laaj;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Luo;->c:Landroid/os/Handler;

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->h()I

    move-result v0

    sget v2, Lqx$a;->q:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Luo;->d:Z

    iput-boolean v1, p0, Luo;->t:Z

    iput v3, p0, Luo;->u:I

    iput v3, p0, Luo;->v:I

    new-instance v0, Lup;

    invoke-direct {v0, p0}, Lup;-><init>(Luo;)V

    iput-object v0, p0, Luo;->A:Landroid/os/Handler;

    new-instance v0, Lus;

    invoke-direct {v0, p0}, Lus;-><init>(Luo;)V

    iput-object v0, p0, Luo;->B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    new-instance v0, Luu;

    invoke-direct {v0, p0}, Luu;-><init>(Luo;)V

    iput-object v0, p0, Luo;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Luo;->a:Landroid/content/Context;

    iput-object p1, p0, Luo;->y:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iput-object p2, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Luo;->f:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    iput-object v0, p0, Luo;->g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    iput-object p3, p0, Luo;->z:Laaj;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luo;->D:Lit;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Luo;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;
    .locals 1

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    return-object v0
.end method

.method static synthetic a(Luo;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Lcom/tencent/tmsecure/common/BaseServiceConnection;
    .locals 0

    iput-object p1, p0, Luo;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    return-object p1
.end method

.method static synthetic b(Luo;)Z
    .locals 1

    iget-boolean v0, p0, Luo;->d:Z

    return v0
.end method

.method static synthetic c(Luo;)V
    .locals 0

    invoke-direct {p0}, Luo;->h()V

    return-void
.end method

.method static synthetic d(Luo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Luo;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Luo;)V
    .locals 3

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b01df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Luo;)V
    .locals 14

    const/4 v13, 0x2

    const-wide v11, 0x3fd3333333333333L

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    new-instance v2, Lft$a;

    invoke-direct {v2}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->b(Lft$a;)V

    invoke-static {v2}, Lft;->a(Lft$a;)V

    iget-wide v3, v0, Lft$a;->a:J

    long-to-double v3, v3

    iget-wide v5, v2, Lft$a;->a:J

    long-to-double v5, v5

    add-double/2addr v3, v5

    iget-wide v5, v0, Lft$a;->b:J

    long-to-double v5, v5

    iget-wide v7, v2, Lft$a;->b:J

    long-to-double v7, v7

    add-double/2addr v5, v7

    div-double v2, v3, v5

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    cmpg-double v2, v2, v11

    if-gez v2, :cond_1

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b01de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, v9, v10}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b01dd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->a:Landroid/content/SharedPreferences;

    const-string v1, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v2

    invoke-virtual {v2}, Lnp;->f()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3, v3}, Lxb;->a(ZZ)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic g(Luo;)V
    .locals 3

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b01e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0}, Lho;->G()I

    move-result v0

    new-instance v2, Ljp;

    const-string v3, "smslog"

    const-string v4, "mms_pdu"

    const-string v5, "mms_parts"

    invoke-direct {v2, v3, v4, v5}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljp;->e()I

    move-result v2

    iget-object v3, p0, Luo;->f:Lho;

    invoke-virtual {v3}, Lho;->f()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b0213

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    if-nez v0, :cond_5

    if-nez v2, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Luo;->f:Lho;

    invoke-virtual {v3}, Lho;->M()I

    move-result v3

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Luo;->f:Lho;

    invoke-virtual {v3, v2}, Lho;->g(I)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v12, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v0, p0, Luo;->f:Lho;

    new-instance v6, Ljp;

    const-string v7, "smslog"

    const-string v8, "mms_pdu"

    const-string v9, "mms_parts"

    invoke-direct {v6, v7, v8, v9}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3, v4, v5}, Ljp;->a(JJ)I

    move-result v6

    invoke-virtual {v0, v6}, Lho;->e(I)V

    iget-object v0, p0, Luo;->f:Lho;

    new-instance v6, Lhi;

    invoke-direct {v6, v10}, Lhi;-><init>(I)V

    invoke-virtual {v6, v2, v3, v4, v5}, Lhi;->a(JJ)I

    move-result v2

    invoke-virtual {v0, v2}, Lho;->f(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0}, Lho;->K()I

    move-result v0

    iget-object v2, p0, Luo;->f:Lho;

    invoke-virtual {v2}, Lho;->L()I

    move-result v2

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0}, Lho;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_2
    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b058d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\uff1a"

    const-string v3, ":"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    if-eq v3, v2, :cond_2

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0, v2}, Lho;->g(I)V

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0, v10}, Lho;->e(I)V

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0, v10}, Lho;->f(I)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b027c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b027d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b027e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b027f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b01e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    if-nez v0, :cond_6

    if-lez v2, :cond_6

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b01e6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<font color=\"#FF0000\">"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</font>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-lez v0, :cond_7

    if-nez v2, :cond_7

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b01e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<font color=\"#FF0000\">"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</font>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b01e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<font color=\"#FF0000\">"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</font>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "<font color=\"#FF0000\">"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic h(Luo;)V
    .locals 7

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v0

    iget-object v0, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v4, "last_time_of_whole_scan"

    const-wide/16 v5, -0x1

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->aB()Z

    move-result v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const v0, 0x7f0b01e2

    :goto_0
    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0b01e3

    goto :goto_0
.end method

.method private i()V
    .locals 9

    const v8, 0x7f0b07a0

    const/16 v7, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const-string v6, "com.tencent.powermanager"

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b079e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->b:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->a:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->a:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b079f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic i(Luo;)V
    .locals 0

    invoke-direct {p0}, Luo;->i()V

    return-void
.end method

.method static synthetic j(Luo;)Lcom/tencent/tmsecure/module/plugin/PluginManager;
    .locals 1

    iget-object v0, p0, Luo;->x:Lcom/tencent/tmsecure/module/plugin/PluginManager;

    return-object v0
.end method

.method private static j()[I
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljk;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Ljk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljk;->a()J

    move-result-wide v3

    invoke-static {}, Ljk;->b()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->dQ()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [I

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method static synthetic k(Luo;)Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;
    .locals 1

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    return-object v0
.end method

.method private k()V
    .locals 4

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v1, "com.tencent.powermanager"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v1, "com.tencent.powermanager"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/PowerManagerDownloadActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic l(Luo;)Lkk;
    .locals 1

    iget-object v0, p0, Luo;->w:Lkk;

    return-object v0
.end method

.method static synthetic m(Luo;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Luo;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Luo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Luo;)Lcom/tencent/tmsecure/common/BaseServiceConnection;
    .locals 1

    iget-object v0, p0, Luo;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    return-object v0
.end method

.method static synthetic p(Luo;)Lho;
    .locals 1

    iget-object v0, p0, Luo;->f:Lho;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Luo;->i()V

    return-void
.end method

.method public final a(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/high16 v5, 0x2400

    const/16 v4, 0x65c9

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v3

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/16 v0, 0x6600

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    invoke-direct {p0}, Luo;->g()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v3, v6}, Lnd;->a(I)V

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0}, Lho;->cL()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v0

    const v3, 0x728a058

    invoke-virtual {v0, v3}, Lqr;->a(I)V

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0}, Lho;->cN()Z

    move-result v0

    iget-object v3, p0, Luo;->f:Lho;

    invoke-virtual {v3}, Lho;->cQ()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v3, "com.tencent.qqphonebook"

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0}, Lho;->cQ()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Luo;->f:Lho;

    invoke-virtual {v2}, Lho;->cO()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Luo;->f:Lho;

    invoke-virtual {v3}, Lho;->cP()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v5, p0, Luo;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b0045

    new-instance v3, Lvb;

    invoke-direct {v3, p0, v4, v0}, Lvb;-><init>(Luo;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Luq;

    invoke-direct {v1, p0, v4}, Luq;-><init>(Luo;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v4, v0, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lur;

    invoke-direct {v0, p0}, Lur;-><init>(Luo;)V

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Luo;->f:Lho;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lho;->J(Ljava/lang/String;)V

    iget-object v0, p0, Luo;->f:Lho;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lho;->H(Ljava/lang/String;)V

    iget-object v0, p0, Luo;->f:Lho;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lho;->I(Ljava/lang/String;)V

    iget-object v0, p0, Luo;->f:Lho;

    invoke-virtual {v0}, Lho;->cM()V

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x6601

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/SystemOptimizeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0}, Luo;->k()V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v3, v4}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareCenterActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "where"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x65c7

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/MarketActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Lyj;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lyj;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyj;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SysSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {v3, v4}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_4
        0x1b -> :sswitch_5
        0x1c -> :sswitch_6
        0x1d -> :sswitch_7
        0x1e -> :sswitch_8
        0x31 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Luo;->a:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Lkk;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lkk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luo;->w:Lkk;

    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    iput-object v0, p0, Luo;->h:Lkd;

    const-class v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    iput-object v0, p0, Luo;->x:Lcom/tencent/tmsecure/module/plugin/PluginManager;

    const v0, 0x7f080181

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    iput-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    const v0, 0x7f080177

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Luo;->s:Landroid/widget/ImageView;

    const v0, 0x7f080178

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Luo;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f080184

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Luo;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f08017a

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luo;->l:Landroid/view/View;

    const v0, 0x7f08017e

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Luo;->m:Landroid/widget/ImageView;

    const v0, 0x7f08017d

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Luo;->n:Landroid/widget/ImageView;

    const v0, 0x7f08017f

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Luo;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f08017c

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Luo;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f080179

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    iput-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Luo;->i:Landroid/view/WindowManager;

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setOnPanelListener(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;)V

    iget-boolean v0, p0, Luo;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Luo;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-static {}, Luo;->j()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setNineBoxNew([I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setNineBoxHot([I)V

    new-instance v0, Lux;

    invoke-direct {v0, p0}, Lux;-><init>(Luo;)V

    invoke-virtual {v0}, Lux;->start()V

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Luo;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Luy;

    invoke-direct {v1, p0}, Luy;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Luo;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    iget-object v1, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setBottomGridView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V

    iget-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    iget-object v1, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setTopGridView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V

    iget-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setCurrentGridView(I)V

    iget-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    iget-object v1, p0, Luo;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setAnimLayout(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 15

    const v3, 0x7f0b0326

    const/4 v14, 0x2

    const v13, 0x7f0b0253

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    invoke-static {}, Lvh;->g()I

    move-result v2

    invoke-virtual {v0}, Lzo;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Luo;->d:Z

    if-eqz v0, :cond_b

    new-array v0, v14, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v11

    const-string v2, ""

    aput-object v2, v0, v12

    new-instance v2, Liz;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liz;-><init>(Landroid/content/Context;)V

    new-instance v3, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v3, v3, Liy;->a:Landroid/content/SharedPreferences;

    const-string v4, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v5

    invoke-virtual {v5}, Lnp;->f()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b024e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    :cond_1
    :goto_1
    array-length v2, v0

    if-lt v2, v14, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    const/4 v1, 0x3

    iget-object v2, p0, Luo;->h:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "update_app_count"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setNineBoxNumber(II)V

    iget-boolean v0, p0, Luo;->d:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Luo;->h()V

    :cond_3
    iget-object v0, p0, Luo;->e:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v1

    iget-object v2, v1, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v3, "ever_whole_scan"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b0259

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Luo;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    new-instance v0, Luv;

    invoke-direct {v0, p0}, Luv;-><init>(Luo;)V

    iput-object v0, p0, Luo;->b:Ljava/lang/Runnable;

    :cond_5
    iget-object v0, p0, Luo;->c:Landroid/os/Handler;

    iget-object v1, p0, Luo;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->b()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lop;->c()V

    :cond_6
    :try_start_0
    iget-object v0, p0, Luo;->g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Luo;->B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Luo;->g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Luo;->B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Luo;->g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Luo;->B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->a(Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.tencent.qqpimsecure.function_info_refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    iget-object v2, p0, Luo;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_7
    invoke-static {v2}, Lvh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<font color=\"#FF0000\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%</font>,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b0327

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x32

    if-le v2, v0, :cond_9

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b0328

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const v3, 0x7f0b0958

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v12, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v11

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Liz;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Luo;->a:Landroid/content/Context;

    const v5, 0x7f0b0257

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    invoke-static {v4, v5}, La;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    goto/16 :goto_1

    :cond_b
    new-array v0, v14, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v11

    const-string v2, ""

    aput-object v2, v0, v12

    new-instance v2, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liu;-><init>(Landroid/content/Context;)V

    new-instance v3, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v3, v3, Liy;->a:Landroid/content/SharedPreferences;

    const-string v4, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v5

    invoke-virtual {v5}, Lnp;->f()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->f()Z

    move-result v3

    invoke-virtual {v2}, Lit;->e()Z

    move-result v2

    if-nez v3, :cond_c

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\"#FF0000\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b0255

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\"#FF0000\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b0256

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    goto/16 :goto_1

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\"#FF0000\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b024e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\"#FF0000\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b024f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Luo;->D:Lit;

    invoke-virtual {v2}, Lit;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v2

    iget-object v3, p0, Luo;->D:Lit;

    invoke-virtual {v3}, Lit;->getTotalForMonth()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=\"#FF0000\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    iget-wide v6, v2, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\"#FF0000\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b0254

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    goto/16 :goto_1

    :cond_e
    iget-object v5, p0, Luo;->D:Lit;

    invoke-virtual {v5}, Lit;->getUsedForMonth()J

    move-result-wide v5

    long-to-double v7, v5

    const-wide/high16 v9, 0x4059

    mul-double/2addr v7, v9

    long-to-double v9, v3

    div-double/2addr v7, v9

    double-to-float v7, v7

    const/high16 v8, 0x42b4

    cmpg-float v8, v7, v8

    if-gez v8, :cond_f

    iget-object v7, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    iget-wide v9, v2, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v9, v10}, La;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v7, 0x7f0b0251

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v12, [Ljava/lang/Object;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, La;->c(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v11

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    goto/16 :goto_1

    :cond_f
    const/high16 v8, 0x42b4

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_10

    const/high16 v8, 0x42c8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_10

    iget-object v7, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    iget-wide v9, v2, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v9, v10}, La;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v7, 0x7f0b0251

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v12, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<font color=\"#FF0000\">"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, La;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v11

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    goto/16 :goto_1

    :cond_10
    const/high16 v8, 0x42c8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget-object v7, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    iget-wide v9, v2, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v9, v10}, La;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const v7, 0x7f0b0252

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v12, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<font color=\"#FF0000\">"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v5, v3

    invoke-static {v3, v4}, La;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v11

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, v1, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v4, "last_time_of_whole_scan"

    const-wide/16 v5, -0x1

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v1, v2, v4

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    const-wide/16 v3, 0x7

    cmp-long v3, v1, v3

    if-lez v3, :cond_12

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b025b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_12
    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const v2, 0x7f0b025a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public final b(I)Z
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v5

    :sswitch_1
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/ShareActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SysSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Laai;->a()Laai;

    move-result-object v0

    invoke-virtual {v0}, Laai;->c()V

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->finish()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b0520

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v3, 0x15

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Luo;->d:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Luo;->a:Landroid/content/Context;

    const v4, 0x7f0b0521

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v3, 0x16

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Lva;

    invoke-direct {v1, p0, v0}, Lva;-><init>(Luo;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0b0430

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Lss;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lss;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lss;->c()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-virtual {v0}, Lho;->m()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6627

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;-><init>()V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->setId(I)V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/HelpActivity;->a(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const-string v1, "http://misc.3g.qq.com/g/s?aid=gqindex&g_f=7279"

    invoke-static {v0, v1}, Lmx;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "http://ti.3g.qq.com/g/s?aid=h&u=qqsecure"

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    check-cast v1, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->getTaskId()I

    move-result v1

    invoke-static {v0, v2, v1}, Lds;->a(Landroid/app/Activity;Ljava/lang/String;I)I

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    const-string v2, "http://msm.qq.com"

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    check-cast v1, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->getTaskId()I

    move-result v1

    invoke-static {v0, v2, v1}, Lds;->a(Landroid/app/Activity;Ljava/lang/String;I)I

    goto/16 :goto_0

    :sswitch_a
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v2, "com.qq.AppService"

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.qq.AppService"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/QQPhoneManagerDownloadActivtity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x2 -> :sswitch_5
        0x14 -> :sswitch_3
        0x20 -> :sswitch_1
        0x31 -> :sswitch_0
        0x32 -> :sswitch_2
        0x39 -> :sswitch_8
        0x41 -> :sswitch_9
        0x4f -> :sswitch_a
        0x63 -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Luo;->c:Landroid/os/Handler;

    iget-object v1, p0, Luo;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Luo;->g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Luo;->B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Luo;->g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "outing_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Luo;->B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Luo;->g:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Luo;->B:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onDesktopActionUp()V

    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->b(Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;)V

    iget-object v0, p0, Luo;->C:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    iget-object v1, p0, Luo;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onDesktopActionUp()V

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lof;

    iget-object v1, p0, Luo;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    iput-object v2, p0, Luo;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {}, Lof;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lof;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    :cond_0
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onDesktopActionUp()V

    :cond_1
    :goto_0
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setOnPanelListener(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;)V

    iput-object v2, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    :cond_4
    iput-object v2, p0, Luo;->a:Landroid/content/Context;

    return-void

    :cond_5
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onDesktopActionUp()V

    goto :goto_0
.end method

.method public final e()Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;
    .locals 1

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    return-object v0
.end method

.method public final f()V
    .locals 6

    const-string v0, "http://pt.3g.qq.com/i/308/"

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v5

    const-string v2, "pversion"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cversion"

    invoke-static {v4}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "hotfix"

    invoke-static {v4}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5}, Lqx;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lqx;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/tencent/tccsync/LoginUtil;->makeQQPimSecureAndroidFeekBackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "extra_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onBeforePanelClosed(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V
    .locals 0

    return-void
.end method

.method public final onBeforePanelOpened(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V
    .locals 2

    iget-object v0, p0, Luo;->s:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Luo;->s:Landroid/widget/ImageView;

    new-instance v1, Luz;

    invoke-direct {v1, p0}, Luz;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setOpen(ZZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x6604

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SystemOptimizeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "where"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SystemOptimizeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "where"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x6608

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/IPCallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x65c7

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/MarketActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, v2}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_6
    const/16 v0, 0x6609

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/NumberQueryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x65c9

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x6605

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "where"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v0, 0x6606

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Lyj;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v6}, Lyj;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    iget-object v0, p0, Luo;->z:Laaj;

    invoke-static {}, Laai;->a()Laai;

    move-result-object v1

    invoke-virtual {v1}, Laai;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Laaj;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/SecureSpaceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Laaj;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    new-instance v1, Lyj;

    iget-object v0, v0, Laaj;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lyj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5, v6}, Lyj;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x6603

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x6600

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    invoke-direct {p0}, Luo;->g()V

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x660a

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Lxn;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lxn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lxn;->a()V

    goto/16 :goto_1

    :pswitch_e
    const/16 v0, 0x6602

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    invoke-direct {p0}, Luo;->k()V

    goto/16 :goto_1

    :pswitch_f
    const/16 v0, 0x660c

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    iget-object v0, p0, Luo;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luo;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/commontools/CommonToolsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_10
    const/16 v0, 0x660b

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Luo;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v2, v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getPluginKey()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;->startPluginMainViews(I)V

    const/16 v0, 0x660d

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v5, 0x1

    iget-boolean v0, p0, Luo;->t:Z

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    const v1, 0x7f080182

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setCurrentGridView(I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    iget-object v1, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getImageResId()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getTextResId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->createSelectedView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Luo;->v:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Luo;->y:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getNotificationHeight()I

    move-result v1

    iget-object v2, p0, Luo;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Luo;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Luo;->v:I

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Luo;->v:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Luo;->i:Landroid/view/WindowManager;

    iget-object v4, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v4, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->startDragMode(I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setCurrentGridView(I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    iget-object v1, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getImageResId()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getTextResId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->createSelectedView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Luo;->u:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Luo;->y:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getNotificationHeight()I

    move-result v1

    iget-object v2, p0, Luo;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Luo;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->getOffsetY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Luo;->u:I

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Luo;->u:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Luo;->i:Landroid/view/WindowManager;

    iget-object v4, p0, Luo;->j:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v4, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->startDragMode(I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public final onPanelClosed(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Luo;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->s:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iput-boolean v2, p0, Luo;->t:Z

    return-void
.end method

.method public final onPanelOpened(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Luo;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->w:Lkk;

    iget-object v0, v0, Lkk;->a:Landroid/content/SharedPreferences;

    const-string v1, "open_nine_box_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, v3, :cond_0

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-static {}, Luo;->j()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setNineBoxNew([I)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setNineBoxHot([I)V

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Luo;->w:Lkk;

    iget-object v0, v0, Lkk;->a:Landroid/content/SharedPreferences;

    const-string v1, "open_nine_box_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, v3, :cond_1

    iget-object v1, p0, Luo;->w:Lkk;

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lkk;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "open_nine_box_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getBottomDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getTopDesktopView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Luo;->t:Z

    return-void

    :cond_1
    iget-object v0, p0, Luo;->q:Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
