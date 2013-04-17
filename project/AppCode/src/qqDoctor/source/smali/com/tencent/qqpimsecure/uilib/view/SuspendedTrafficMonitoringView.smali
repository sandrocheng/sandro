.class public Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final MSG_COUNT_DOWN_FOR_TOUCH:I = 0x2

.field private static final MSG_REFRESH_GPRS_INFO:I = 0x0

.field private static final MSG_REFRESH_NO_NETWORK_INFO:I = 0x3

.field private static final MSG_REFRESH_WIFI_INFO:I = 0x1


# instance fields
.field private final FLOW_LEVEL_0:I

.field private final FLOW_LEVEL_1:I

.field private final FLOW_LEVEL_2:I

.field private GPRSTotalafter:J

.field private GPRSTotalbefore:J

.field private final GPRS_LOGO:I

.field GPRSintervalDerifference:J

.field private final NONE:I

.field private final QQPIM_LOGO:I

.field private TAG:Ljava/lang/String;

.field private WIFITotalafter:J

.field private WIFITotalbefore:J

.field private final WIFI_LOGO:I

.field WIFIintervalDerifference:J

.field private flowLevel:I

.field private isChangingLogo:Z

.field isMoved:Z

.field private isShow:Z

.field private mCloseView:Landroid/widget/ImageView;

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mFlowWindowBar:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mINetworkMonitor:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

.field private mINetworkMonitorWifi:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

.field private mLean:Landroid/widget/RelativeLayout;

.field private mLeft:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mNetworkManager:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field private mPreTimeGPRS:J

.field private mPreTimeWIFI:J

.field private mPreTop:I

.field private mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

.field private mScreenX:F

.field private mScreenY:F

.field private mShowingLogoType:I

.field private mTextView:Landroid/widget/TextView;

.field private mTop:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mobileChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

.field private netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

.field private wifiChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SuspendedTrafficMonitoringView"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->TAG:Ljava/lang/String;

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLeft:I

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTop:I

    iput-wide v6, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalbefore:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalafter:J

    iput-wide v6, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalbefore:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalafter:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeGPRS:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeWIFI:J

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->flowLevel:I

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->FLOW_LEVEL_0:I

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->FLOW_LEVEL_1:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->FLOW_LEVEL_2:I

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFI_LOGO:I

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRS_LOGO:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->QQPIM_LOGO:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->NONE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z

    iput-wide v6, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFIintervalDerifference:J

    iput-wide v6, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSintervalDerifference:J

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isShow:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mobileChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->wifiChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isMoved:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLean:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLean:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLean:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mFlowWindowBar:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLean:Landroid/widget/RelativeLayout;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLean:Landroid/widget/RelativeLayout;

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLean:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mConfigDao:Lho;

    iput v8, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenY:F

    iput v8, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenX:F

    iput v8, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchY:F

    iput v8, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchX:F

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mNetworkManager:Lcom/tencent/tmsecure/module/network/NetworkManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mNetworkManager:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mINetworkMonitor:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mNetworkManager:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mINetworkMonitorWifi:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchSlop:I

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->setEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->initPos()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->getUsedForMonth()J

    move-result-wide v1

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->getTotalForMonth()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->getUsedForMonth()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->fillGPRSPercent(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLean:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->startOutAnimation(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->fillGPRSPercent(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalafter:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalafter:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeWIFI:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeWIFI:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalbefore:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalbefore:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isShow:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isShow:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mFlowWindowBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->startInAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I

    return v0
.end method

.method static synthetic access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalafter:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalafter:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeGPRS:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeGPRS:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalbefore:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalbefore:J

    return-wide p1
.end method

.method private changedLogo(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->startOutAnimation(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private fillGPRSPercent(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v4, 0x3f80

    new-instance v3, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Liu;->getTotalForMonth()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    move v3, v0

    :goto_0
    cmpl-float v5, v3, v0

    if-nez v5, :cond_3

    move v0, v1

    :goto_1
    const v5, 0x3f666666

    cmpg-float v5, v3, v5

    if-gez v5, :cond_6

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->flowLevel:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setGreenLevel()V

    :cond_0
    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->flowLevel:I

    :goto_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setProgress(I)V

    return-void

    :cond_1
    iget-wide v5, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iget-wide v5, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    long-to-float v3, v5

    iget-wide v5, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    long-to-float v5, v5

    div-float/2addr v3, v5

    goto :goto_0

    :cond_3
    const v5, 0x3ca3d70a

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    cmpg-float v0, v3, v4

    if-gez v0, :cond_5

    const/high16 v0, 0x42c8

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_1

    :cond_5
    cmpl-float v0, v3, v4

    if-ltz v0, :cond_a

    const/16 v0, 0x64

    goto :goto_1

    :cond_6
    cmpg-float v1, v3, v4

    if-gez v1, :cond_8

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->flowLevel:I

    if-eq v1, v9, :cond_7

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setYellowLevel()V

    :cond_7
    iput v9, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->flowLevel:I

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->flowLevel:I

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setRedLevel()V

    :cond_9
    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->flowLevel:I

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method private initPos()V
    .locals 3

    const v2, 0xffff

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->aa()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->showLocation(Z)V

    :goto_0
    return-void

    :cond_0
    and-int v1, v0, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenX:F

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenY:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->showLocation(Z)V

    goto :goto_0
.end method

.method private saveLocation()Z
    .locals 4

    const v3, 0xffff

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLeft:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTop:I

    if-gez v2, :cond_0

    move v2, v1

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    and-int/2addr v2, v3

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mConfigDao:Lho;

    invoke-virtual {v2}, Lho;->aa()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mConfigDao:Lho;

    invoke-virtual {v3, v0}, Lho;->n(I)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchY:F

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchX:F

    if-ne v2, v0, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showLocation(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenX:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLeft:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenY:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTop:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLeft:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTop:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-boolean v0, Lve;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lft;->d(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLeft:I

    sget-object v0, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTop:I

    goto :goto_0
.end method

.method private startInAnimation(Landroid/widget/ImageView;)V
    .locals 9

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/high16 v1, 0x3f80

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    move v2, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x23f

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$6;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startOutAnimation(Landroid/widget/ImageView;I)V
    .locals 9

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/high16 v1, 0x3f80

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v4, 0x0

    move v2, v1

    move v3, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x23f

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public addCallBack()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mINetworkMonitor:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mobileChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mINetworkMonitorWifi:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->wifiChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenY:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenY:F

    int-to-float v1, v1

    sub-float v1, v2, v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mScreenY:F

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isMoved:Z

    return v0

    :pswitch_0
    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isMoved:Z

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchY:F

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->showLocation(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchSlop:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTouchSlop:I

    if-gt v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isMoved:Z

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isMoved:Z

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->showLocation(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->saveLocation()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeCallBack()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mINetworkMonitor:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mobileChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mINetworkMonitorWifi:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->wifiChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mobileChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->wifiChangeCallBack:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    return-void
.end method
