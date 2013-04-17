.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;,
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;
    }
.end annotation


# static fields
.field public static final SWITCH_DESK_ASSIS_WINDOW:Ljava/lang/String; = "switch_desk_assis_window"

.field public static ZOOM_IN_SIDE_LEFT:I

.field public static ZOOM_IN_SIDE_RIGHT:I

.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;


# instance fields
.field protected final GRAVITY_HORIZONTAL:I

.field protected final GRAVITY_VERTICAL:I

.field private final MSG_GET_RAM_USAGE:I

.field private final MSG_INIT_DESK_VIEW:I

.field private final MSG_RESET_MIN_DESK_VIEW:I

.field private final MSG_SHOW_WHITE_LIST_DIALOG:I

.field private mAlphaCanvas:Landroid/widget/ImageView;

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppCallBack:Labv$b;

.field private mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

.field private mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

.field protected mGravity:I

.field private mIsOnDeskNow:Z

.field private mIsOnQQSecure:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMemchangeCallback:Lvh$a;

.field private mMemoryLoaderService:Lvh;

.field private mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

.field private mOnGetMemoryDelayListener:Lvh$b;

.field private mOptomoizeStarted:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProcessServer:Lzo;

.field private mRocketCleanerCallback:Lzk$b;

.field private mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

.field private mRunningProcessCleaner:Lzk;

.field private mRunningProcessServer:Lzo;

.field private mScreenEventReceicer:Landroid/content/BroadcastReceiver;

.field private mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

.field private mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

.field private mhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->ZOOM_IN_SIDE_LEFT:I

    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->ZOOM_IN_SIDE_RIGHT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemchangeCallback:Lvh$a;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->MSG_GET_RAM_USAGE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->MSG_SHOW_WHITE_LIST_DIALOG:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->GRAVITY_VERTICAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->GRAVITY_HORIZONTAL:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->MSG_INIT_DESK_VIEW:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->MSG_RESET_MIN_DESK_VIEW:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketCleanerCallback:Lzk$b;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOnGetMemoryDelayListener:Lvh$b;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$4;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$4;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mhandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$5;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$5;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$6;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$6;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mScreenEventReceicer:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnDeskNow:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnQQSecure:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mCurrentAppCallBack:Labv$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mConfigDao:Lho;

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRunningProcessServer:Lzo;

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    new-instance v0, Lzk;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketCleanerCallback:Lzk$b;

    invoke-direct {v0, v1, v2}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRunningProcessCleaner:Lzk;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getCurrentGravity()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mGravity:I

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->cv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->registerCurrentApp()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mScreenEventReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getVibrate()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->playVibrate(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getVibrate()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->Stop()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;

    invoke-virtual {v0}, Lzo;->e()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRunningProcessCleaner:Lzk;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lzn;

    invoke-direct {v2, v0}, Lzn;-><init>(Lzk;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lho;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mConfigDao:Lho;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeMinDeskView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lzo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnDeskNow:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnDeskNow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnQQSecure:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnQQSecure:Z

    return p1
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lzo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRunningProcessServer:Lzo;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lvh;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->doNotInDeskAction()V

    return-void
.end method

.method static synthetic access$2500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getCurrentGravity()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->addMinDeskView()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->doResumeAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->doPhoneRingAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->initWhilePoolview()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getWhirlPoolViewRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->showUseRocketTipMsg()V

    return-void
.end method

.method private addMinDeskView()V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isUping()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->hasAddToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->isExpandedWindowShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->initView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v1, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getFactWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isShown()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    invoke-virtual {v1}, Lvh;->d()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemchangeCallback:Lvh$a;

    invoke-virtual {v0, v1}, Lvh;->a(Lvh$a;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOnGetMemoryDelayListener:Lvh$b;

    invoke-virtual {v0, v1}, Lvh;->a(Lvh$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setHasAddToWindow(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;->onAnimationDone()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private closeUseRocketTipMsg()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private deregisterCurrentApp()V
    .locals 2

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mCurrentAppCallBack:Labv$b;

    invoke-virtual {v0, v1}, Labv;->b(Labv$b;)V

    return-void
.end method

.method private doNotInDeskAction()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isRocketRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->stopAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeMinDeskView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->dealWithInter()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketDone()V

    :cond_2
    return-void
.end method

.method private doPhoneRingAction()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->stopAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeMinDeskView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->dealWithInter()V

    :cond_1
    return-void
.end method

.method private doResumeAction()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->stopAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeMinDeskView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->dealWithInter()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketDone()V

    :cond_2
    return-void
.end method

.method private getCurrentGravity()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    return-object v0
.end method

.method private getWhirlPoolViewRect()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->getParamXY()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private initWhilePoolview()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$7;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$7;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private isExpandedWindowShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->hasAddToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeMinDeskView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isUping()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->hasAddToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isRocketRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setHasAddToWindow(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->stopAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->ondestroy()V

    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getRocketDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemchangeCallback:Lvh$a;

    invoke-virtual {v0, v1}, Lvh;->b(Lvh$a;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    invoke-virtual {v0}, Lvh;->i()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMemoryLoaderService:Lvh;

    invoke-virtual {v0}, Lvh;->d()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketDelay(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;->onAnimationDone()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getVibrate()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->Stop()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setHasAddToWindow(Z)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private showUseRocketTipMsg()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->de()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;->initView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getWhirlPoolViewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistantTipWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;

    invoke-virtual {v4, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistantTipWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private startClean()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;

    invoke-virtual {v0}, Lzo;->e()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRunningProcessCleaner:Lzk;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lzn;

    invoke-direct {v2, v0}, Lzn;-><init>(Lzk;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startVibreate()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getVibrate()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->playVibrate(I)V

    return-void
.end method

.method private stopVibreate()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getVibrate()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->Stop()V

    return-void
.end method


# virtual methods
.method public changeToMaxDesk()V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->stopAnimation()V

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeMinDeskView()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    sget v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->ZOOM_IN_SIDE_RIGHT:I

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v1, v2, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->showAssistanceView(III)V

    return-void

    :cond_0
    sget v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->ZOOM_IN_SIDE_LEFT:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public checkAndShowDeskAssisSettingCloseTipMsg()V
    .locals 3

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cv()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0676

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public closeSuspendedWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeAssistanceView()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeMinDeskView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    :cond_0
    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mCurrentAppCallBack:Labv$b;

    invoke-virtual {v0, v1}, Labv;->b(Labv$b;)V

    return-void
.end method

.method public getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x408

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    if-eq p1, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRunningProcessServer:Lzo;

    invoke-virtual {v0}, Lzo;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->changeToMaxDesk()V

    goto :goto_0
.end method

.method public registerCurrentApp()V
    .locals 2

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mCurrentAppCallBack:Labv$b;

    invoke-virtual {v0, v1}, Labv;->a(Labv$b;)V

    return-void
.end method

.method public removeAssistanceView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->hasAddToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->setHasAddToWindow(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mAlphaCanvas:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mAlphaCanvas:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->checkAndShowDeskAssisSettingCloseTipMsg()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->cv()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mCurrentAppCallBack:Labv$b;

    invoke-virtual {v0, v1}, Labv;->b(Labv$b;)V

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnDeskNow:Z

    :cond_3
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->setHasAddToWindow(Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->setHasAddToWindow(Z)V

    goto :goto_0
.end method

.method public removeAssistanceViewAndAddMinDeskView()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeAssistanceView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->cv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->addMinDeskView()V

    :cond_0
    return-void
.end method

.method public showAssistanceView(III)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->getInstance(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mAlphaCanvas:Landroid/widget/ImageView;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mAlphaCanvas:Landroid/widget/ImageView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->showWindow(Landroid/view/WindowManager;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;->onAnimationDone()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public showSuspendedWindow()V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mRocketMoveListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketMoveListener(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;

    invoke-virtual {v0}, Lzo;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->addMinDeskView()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    invoke-direct {v0, p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->getInstance(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mDeskAssistanceExpandedWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$9;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$9;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->setCloseCallback(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$ICloseCallback;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mAlphaCanvas:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->registerCurrentApp()V

    return-void
.end method
