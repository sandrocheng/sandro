.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtnGps:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

.field private mConfigDao:Lho;

.field private mContext:Landroid/content/Context;

.field private mLastAudioSetting:I

.field private mMainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mLastAudioSetting:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mConfigDao:Lho;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->initView()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->setSwitchState()V

    goto :goto_0
.end method

.method private setGpsState()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnGps:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void
.end method

.method private setOfflineState()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setRotation()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setSwitchState()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->setVibrState()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->setGpsState()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setVibrState()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    goto :goto_0
.end method


# virtual methods
.method public initView()V
    .locals 3

    const v2, -0x666667

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    const v1, 0x7f080105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnGps:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnGps:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mMainLayout:Landroid/view/View;

    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setButtonTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f02007e

    const v2, 0x7f02007f

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f020086

    const v2, 0x7f020087

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnGps:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f020080

    const v2, 0x7f020081

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    const v1, 0x7f020084

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIconRid(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnGps:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnOffline:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->isOpen()Z

    move-result v3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0943

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x66f5

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

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
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0944

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v3, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnVibrModel:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->isOpen()Z

    move-result v3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0945

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x66f6

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0946

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnGps:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v3, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x66f7

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mBtnRotation:Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->isOpen()Z

    move-result v0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_8

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0947

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x66f8

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceSettingView2;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0948

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
