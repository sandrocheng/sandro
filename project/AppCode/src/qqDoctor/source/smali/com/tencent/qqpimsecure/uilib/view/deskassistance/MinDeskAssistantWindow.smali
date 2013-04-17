.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
.super Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;,
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_MOVING:I = 0x0

.field public static final BEGIN_COLOR_EGG:I = 0x1

.field public static final BEGIN_UFO:I = 0x4

.field public static final CHANGE_COLOR_EGG_BG:I = 0x8

.field public static final COLOR_EGG_ANIM_FINISH:I = 0x11

.field public static final COLOR_EGG_NOTHING:I = 0x0

.field public static final COLOR_EGG_SHOW_LEFT_SATELITE:I = 0x1

.field public static final COLOR_EGG_SHOW_UFO:I = 0x2

.field public static final FADE_UFO:I = 0x6

.field public static final FINISH_COLOR_EGG:I = 0x2

.field public static final FINISH_UFO:I = 0x5

.field public static final RESET_ALL:I = 0x10

.field public static final RESET_COLOR_EGG_BG:I = 0x9

.field public static final SET_ALL_GONE:I = 0xf

.field public static final SHOW_ACTIVITY_INTRO_DIALOG:I = 0xd

.field public static final SHOW_LOTTERY_DIALOG:I = 0xe

.field public static final SHOW_WEIBO_SHARE_DIALOG:I = 0xc

.field private static mConfirmListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

.field public static mFireRocketTime:J

.field public static mIsFireRocketAnimation:Z

.field public static mIsFireRocketToast:Z


# instance fields
.field private final RESET_MOON_COLOR_EGG_BG:I

.field private final ROCKET_FINISH:I

.field private final SET_ALL_COLOR_EGG_GONE:I

.field private final SET_MOON_COLOR_EGG_BG:I

.field private deskRect:Landroid/graphics/Rect;

.field private isConfirming:Z

.field private isFlying:Z

.field private isUping:Z

.field private mColorEggManager:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

.field private mColorEggView:Landroid/widget/LinearLayout;

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mHasAddToWindow:Z

.field private mIsReadyToShow:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

.field private mMainLayout:Landroid/view/View;

.field private mRamText:Landroid/widget/TextView;

.field private mReachRamWarning:Z

.field private mRocketBG:Landroid/widget/ImageView;

.field private mRocketLayout:Landroid/widget/FrameLayout;

.field private mRocketRunning:Z

.field private mSataliteDrawable:Landroid/graphics/drawable/Drawable;

.field private mUFO:Landroid/widget/ImageView;

.field private mUfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

.field private mhandler:Landroid/os/Handler;

.field private rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private rocketDelay:I

.field private rocketImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const v5, 0x7f080233

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->ROCKET_FINISH:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isUping:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isFlying:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->SET_ALL_COLOR_EGG_GONE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->SET_MOON_COLOR_EGG_BG:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->RESET_MOON_COLOR_EGG_BG:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mReachRamWarning:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketRunning:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketDelay:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isConfirming:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v0, 0x7f0300e1

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v2, 0x7f0802d1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->addView(Landroid/view/View;)V

    const v0, 0x7f0300c3

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketBG:Landroid/widget/ImageView;

    const v0, 0x7f030055

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mSataliteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUfoDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;-><init>(Landroid/view/WindowManager;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggManager:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUFO:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggManager:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Lho;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketRunning(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketDelay:I

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mUfoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mSataliteDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfirmListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;
    .locals 0

    sput-object p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfirmListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isConfirming:Z

    return v0
.end method

.method static synthetic access$902(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isConfirming:Z

    return p1
.end method

.method private intiParams()V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_0
    return-void
.end method

.method private isReachRamWarningStage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mReachRamWarning:Z

    return v0
.end method

.method private isRocketStyle()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->dA()Lho$a;

    move-result-object v0

    sget-object v1, Lho$a;->b:Lho$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rocketVisible(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketBG:Landroid/widget/ImageView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->startLayoutAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private declared-synchronized setRocketRunning(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateRamWindowStat(I)V
    .locals 4

    const/high16 v3, 0x4218

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMoving:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method private updateRocketMovingStyle()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateRocketStage(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMoving:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isReachRamWarningStage()Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected ActionDown()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->ActionDown()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onStandUp()V

    :cond_0
    return-void
.end method

.method protected ActionMove()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->ActionMove()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onMove()V

    :cond_0
    return-void
.end method

.method protected ActionUp()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->ActionUp()Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onPutDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeViewSide(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMoving:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isRocketStyle()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->updateRamWindowStat(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->updateRocketStage(I)V

    goto :goto_0
.end method

.method public dealWithInter()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->dealWithInterrupt()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setColorEggGone()V

    return-void
.end method

.method protected getAnimationYOffset()I
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMoving:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFactWidth()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinDeskAssiHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMyParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getRocketDelay()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketDelay:I

    return v0
.end method

.method public getVibrate()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    return-object v0
.end method

.method public getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->intiParams()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMoving:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mDoingAnim:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gtz v0, :cond_2

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mViewSideWithScreen:I

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mSideMoveTo:I

    :goto_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mViewSideWithScreen:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->changeViewSide(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMoving:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;

    invoke-virtual {v1}, Lho;->cy()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;

    invoke-virtual {v1}, Lho;->cB()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mViewSideWithScreen:I

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mSideMoveTo:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isRocketRunning()Z

    goto :goto_2
.end method

.method public declared-synchronized hasAddToWindow()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mHasAddToWindow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initView()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->intiParams()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mMainLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {}, Lvh;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRamUsageText(I)V

    return-void
.end method

.method public declared-synchronized isFlying()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isFlying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInWhirlPool(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->deskRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketVisible(Z)V

    return v0
.end method

.method public isReadyToShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsReadyToShow:Z

    return v0
.end method

.method public declared-synchronized isRocketRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRocketRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isUping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isUping:Z

    return v0
.end method

.method public ondestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public rocketAlive(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->playVibrate(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    goto :goto_0
.end method

.method public saveLocation(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;

    invoke-virtual {v0, p1}, Lho;->B(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;

    invoke-virtual {v0, p2}, Lho;->D(I)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mViewSideWithScreen:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->changeViewSide(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;->onAnimationDone()V

    :cond_0
    return-void
.end method

.method public setColorEggGone()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized setFlying(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isFlying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHasAddToWindow(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mHasAddToWindow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsReadyToShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsReadyToShow:Z

    return-void
.end method

.method public setRamUsageText(I)V
    .locals 4

    invoke-static {p1}, Lvh;->a(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mReachRamWarning:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mReachRamWarning:Z

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mViewSideWithScreen:I

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->changeViewSide(I)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mRamText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setRocketDelay(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketDelay:I

    return-void
.end method

.method public setRocketMoveListener(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;

    return-void
.end method

.method public setUp()V
    .locals 8

    const-wide/high16 v6, 0x3fe0

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mFireRocketTime:J

    sput-boolean v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsFireRocketToast:Z

    sput-boolean v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mIsFireRocketAnimation:Z

    invoke-direct {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketRunning(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mVibreate:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->playVibrate(I)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketAlive(Z)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-double v2, v0

    mul-double/2addr v2, v6

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getWidth()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->getHeight()I

    move-result v2

    neg-int v2, v2

    shl-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startColorEggAnimation(IJZ)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggManager:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->startColorEggAnimation(IJZ)V

    return-void
.end method
