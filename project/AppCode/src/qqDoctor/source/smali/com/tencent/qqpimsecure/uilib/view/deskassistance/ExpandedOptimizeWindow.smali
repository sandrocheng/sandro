.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;,
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;
    }
.end annotation


# instance fields
.field private final MSG_RESET_UI:I

.field private final MSG_SimulationEvent:I

.field private mCanReleaseRamSize:J

.field private mCleanerCallback:Lzk$b;

.field private mContext:Landroid/content/Context;

.field private mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

.field private mHandler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

.field private mMFrameWindowObserver:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;

.field private mMainView:Landroid/view/View;

.field private mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

.field private mOnGetMemoryDelayListener:Lvh$b;

.field private mOptimiseBar:Landroid/widget/LinearLayout;

.field private mOptimizeFinish:Z

.field private mOptimizeResultText:Landroid/widget/TextView;

.field private mPreOptimizeCalFinish:Z

.field private mRamText:Landroid/widget/TextView;

.field private mRunnAppButton:Landroid/view/View;

.field private mRunnAppLable:Landroid/widget/TextView;

.field private mRunnAppMore:Landroid/widget/ImageView;

.field private mRunnAppText:Landroid/widget/TextView;

.field private mRunningProcessCleaner:Lzk;

.field private mRunningProcessServer:Lzo;

.field private mSetting1Dot:Landroid/widget/ImageView;

.field private mSetting2Dot:Landroid/widget/ImageView;

.field private mSettingView1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;

.field private mSettingView2:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;

.field private mSettingViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingViewListAdapter:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;

.field private mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private mStopSimulationSettingViewMove:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->MSG_RESET_UI:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->MSG_SimulationEvent:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewListAdapter:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeFinish:Z

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mCleanerCallback:Lzk$b;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOnGetMemoryDelayListener:Lvh$b;

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStopSimulationSettingViewMove:Z

    iput-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mHandler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMFrameWindowObserver:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03005b

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppButton:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRamText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRamText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppLable:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppMore:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeResultText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunningProcessServer:Lzo;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimiseBar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimiseBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800d9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0800ec

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->setSpacing(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewListAdapter:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSetting1Dot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    const v2, 0x7f0800ee

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSetting2Dot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->resetUi()V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->requestFocus()Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->initSlideViewList()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->setSelection(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->setSelected(Z)V

    invoke-static {}, Lvh;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->updateOptimizeWindowRamUsage(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->updateRunningAppText()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mCanReleaseRamSize:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mCanReleaseRamSize:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStopSimulationSettingViewMove:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mHandler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeFinish:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMFrameWindowObserver:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeResultText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    return-object v0
.end method

.method private changeRunnAppButton(Z)V
    .locals 2

    const v1, -0xfb8135

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppLable:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppMore:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppText:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppLable:Landroid/widget/TextView;

    const v1, -0xaeaeaf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppMore:Landroid/widget/ImageView;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private initSlideViewList()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingView1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingView1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingView2:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingView2:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingViewListAdapter:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$SettingViewListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setRamUsageProgress()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeFinish:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lvh;->g()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->setProgressWithAnim(I)V

    :cond_0
    return-void
.end method

.method private simulationSettingViewMove()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mHandler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mHandler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStopSimulationSettingViewMove:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$3;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startOptimize()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0929

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeFinish:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mHandler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    invoke-direct {v0, p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mHandler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunningProcessCleaner:Lzk;

    if-nez v0, :cond_1

    new-instance v0, Lzk;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mCleanerCallback:Lzk$b;

    invoke-direct {v0, v1, v2}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunningProcessCleaner:Lzk;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunningProcessCleaner:Lzk;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lzn;

    invoke-direct {v2, v0}, Lzn;-><init>(Lzk;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->setProgressWithAnim(ILcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;)V

    return-void
.end method


# virtual methods
.method public notifyWindowShowing(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOnGetMemoryDelayListener:Lvh$b;

    invoke-virtual {v0, v1}, Lvh;->a(Lvh$b;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dg()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->setSelection(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStopSimulationSettingViewMove:Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->simulationSettingViewMove()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStopSimulationSettingViewMove:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->startOptimize()V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v2, 0x7f020092

    const v1, 0x7f020091

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingView1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView1;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSetting1Dot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSetting2Dot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66f9

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSettingView2:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSetting1Dot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mSetting2Dot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppButton:Landroid/view/View;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMFrameWindowObserver:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMFrameWindowObserver:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$MFrameWindowObserver;->switchToTaskManagerView()V

    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->changeRunnAppButton(Z)V

    :cond_1
    :goto_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66fa

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :goto_2
    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->changeRunnAppButton(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->changeRunnAppButton(Z)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public resetUi()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mStartOptimizeBtn:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeResultText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mPreOptimizeCalFinish:Z

    invoke-direct {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->changeRunnAppButton(Z)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeFinish:Z

    if-ne v0, v3, :cond_0

    invoke-static {}, Lvh;->g()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->setProgressWithAnim(I)V

    :cond_0
    return-void
.end method

.method public updateOptimizeWindowRamUsage(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mOptimizeFinish:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRamText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mMiniProgressBarView:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->setProgressWithAnim(I)V

    invoke-static {p1}, Lvh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRamText:Landroid/widget/TextView;

    const v1, -0xc8de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRamText:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public updateRunningAppText()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunningProcessServer:Lzo;

    invoke-virtual {v0}, Lzo;->g()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppText:Landroid/widget/TextView;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mRunnAppText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0675

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
