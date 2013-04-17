.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isDeskFlowWindowOpen:Z

.field private mCallback:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mDeskFlowCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private mMainView:Landroid/view/View;

.field private mRocketSoundCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

.field private mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mCallback:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mMainView:Landroid/view/View;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->cv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->isDeskFlowWindowOpen:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mMainView:Landroid/view/View;

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mDeskFlowCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mDeskFlowCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->isDeskFlowWindowOpen:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mDeskFlowCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mMainView:Landroid/view/View;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mRocketSoundCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mRocketSoundCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    invoke-virtual {v1}, Lho;->cw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mRocketSoundCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mMainView:Landroid/view/View;

    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mMainView:Landroid/view/View;

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->dA()Lho$a;

    move-result-object v0

    sget-object v1, Lho$a;->a:Lho$a;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->setShowRamUsage()V

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    sget-object v1, Lho$a;->b:Lho$a;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->setShowRocket()V

    goto :goto_0
.end method

.method private setShowRamUsage()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private setShowRocket()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x6726

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mDeskFlowCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->isDeskFlowWindowOpen:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->isDeskFlowWindowOpen:Z

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->isDeskFlowWindowOpen:Z

    invoke-virtual {v0, v1}, Lho;->I(Z)V

    const/16 v0, 0x669c

    invoke-virtual {v2, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mCallback:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->isDeskFlowWindowOpen:Z

    invoke-interface {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;->deskAssistanceOnOffCallback(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->isDeskFlowWindowOpen:Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->dA()Lho$a;

    move-result-object v0

    sget-object v1, Lho$a;->b:Lho$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    sget-object v1, Lho$a;->b:Lho$a;

    invoke-virtual {v0, v1}, Lho;->a(Lho$a;)V

    const/16 v0, 0x669e

    invoke-virtual {v2, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mCallback:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;->settingStyleCallback()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnd;->a(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    invoke-virtual {v0}, Lho;->dA()Lho$a;

    move-result-object v0

    sget-object v1, Lho$a;->a:Lho$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowPercentStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mSetMinWindowRocketStyleImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    sget-object v1, Lho$a;->a:Lho$a;

    invoke-virtual {v0, v1}, Lho;->a(Lho$a;)V

    const/16 v0, 0x669d

    invoke-virtual {v2, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mCallback:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;->settingStyleCallback()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnd;->a(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mRocketSoundCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    invoke-virtual {v2}, Lho;->cw()Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedSettingWindow;->mConfigDao:Lho;

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {v3, v0}, Lho;->J(Z)V

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
