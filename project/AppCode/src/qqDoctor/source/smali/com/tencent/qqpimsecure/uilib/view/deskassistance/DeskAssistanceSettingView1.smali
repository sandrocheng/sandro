.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mMainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mConfigDao:Lho;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->initView()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->setSwitchState()V

    return-void
.end method

.method private setIsNetWorkOpen()V
    .locals 2

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void
.end method

.method private setIsRingOpen()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIsTrafficSuspendedOpen()V
    .locals 2

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Lit;->m()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void
.end method

.method private setIsWifiOpen()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void
.end method

.method private setSwitchState()V
    .locals 2

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Lit;->m()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->setIsRingOpen()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    const v2, -0x666667

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mMainLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mMainLayout:Landroid/view/View;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mMainLayout:Landroid/view/View;

    const v1, 0x7f080100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mMainLayout:Landroid/view/View;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mMainLayout:Landroid/view/View;

    const v1, 0x7f080101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f020079

    const v2, 0x7f020078

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f02007b

    const v2, 0x7f02007a

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f02007d

    const v2, 0x7f02007c

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f020082

    const v2, 0x7f020083

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v1, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    new-instance v2, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Liu;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnTrafficSuspended:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0941

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3}, Lit;->e(Z)V

    if-eqz v3, :cond_3

    sget-wide v2, Lfs;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x6637

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "switch_suspession_window"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    move-object v0, v1

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4220

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v0, v2, v3}, Lha;->a(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0942

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-wide v2, Lfs;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x6636

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v1, :cond_8

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnNetWork:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->isOpen()Z

    move-result v2

    const/16 v3, 0x9

    if-lt v1, v3, :cond_7

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v1, 0x7f0b093d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x6638

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v1, 0x7f0b093e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lfs;->a(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v1, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnWifi:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v1, 0x7f0b093b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x6639

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v1, 0x7f0b093c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v1, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6697

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mBtnSound:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_5
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v1, 0x7f0b093f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0940

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method
