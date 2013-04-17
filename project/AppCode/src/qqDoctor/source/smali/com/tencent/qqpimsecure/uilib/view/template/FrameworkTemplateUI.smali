.class public Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
.super Ljava/lang/Object;


# static fields
.field public static final BACK_BUTTON_STYLE_INVISIBLE:B = 0x0t

.field public static final BACK_BUTTON_STYLE_TO_MAIN:B = 0x1t

.field public static final BACK_BUTTON_STYLE_TO_PRE:B = 0x2t

.field public static final INFO_BAR_STYLE_INVISIBLE:B = 0x30t

.field public static final INFO_BAR_STYLE_MEMORY:B = 0x33t

.field public static final INFO_BAR_STYLE_MIDDLE_TEXT:B = 0x36t

.field public static final INFO_BAR_STYLE_NULL:B = 0x31t

.field public static final INFO_BAR_STYLE_RAM:B = 0x34t

.field public static final INFO_BAR_STYLE_TEXT:B = 0x32t

.field public static final OPTION_BUTTON_STYLE_DESCRIPT:B = 0x14t

.field public static final OPTION_BUTTON_STYLE_INVISIBLE:B = 0x10t

.field public static final OPTION_BUTTON_STYLE_NAME_LIST:B = 0x15t

.field public static final OPTION_BUTTON_STYLE_SEARCH:B = 0x13t

.field public static final OPTION_BUTTON_STYLE_SETTING:B = 0x12t

.field public static final TITLE_BAR_STYLE_NULL:B = 0x35t

.field public static final TITLE_STYLE_TAB:B = 0x22t

.field public static final TITLE_STYLE_TEXT:B = 0x21t


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private mBackButton:Landroid/widget/TextView;

.field private mBackClickListener:Landroid/view/View$OnClickListener;

.field private mDescriptTextView:Landroid/widget/TextView;

.field private mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

.field private mFrameworkLayout:Landroid/view/View;

.field private mInfoBarLayout:Landroid/widget/LinearLayout;

.field private mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

.field private mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

.field private mMainFrame:Landroid/widget/FrameLayout;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mOptionButton:Landroid/view/View;

.field private mOptionButtonImg:Landroid/widget/ImageView;

.field mOptionButtonPopModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionClickListener:Landroid/view/View$OnClickListener;

.field private mOptionNotifyImg:Landroid/widget/ImageView;

.field private mOptionPopListener:Landroid/view/View$OnClickListener;

.field private mPopListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

.field private mPopOptionMenuCallback:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<*>;"
        }
    .end annotation
.end field

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field private mTipsView:Landroid/view/View;

.field private mTitleBarLayout:Landroid/widget/RelativeLayout;

.field private mTitleBarStyle:I

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarStyle:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionPopListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$4;-><init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI$5;-><init>(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabClickListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopOptionMenuCallback:Ldv;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionNotifyImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    const v1, 0x7f080139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    const v1, 0x7f08013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f08013e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mDescriptTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->initInfoBarView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)Lcom/tencent/qqpimsecure/uilib/view/PopListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;Lcom/tencent/qqpimsecure/uilib/view/PopListView;)Lcom/tencent/qqpimsecure/uilib/view/PopListView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    return-object p1
.end method

.method private enableTabTitle()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private enableTextTitle()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initInfoBarView(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setBackTextAuto(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sget-object v2, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setOptionButtonStyleInvisible()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mDescriptTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mDescriptTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public UpdateInfoBarMemoryAndRam()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->doRefresh(Landroid/content/Context;)V

    return-void
.end method

.method public attachTemplateFramework(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    :cond_0
    return-void
.end method

.method public clearParent(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createEmptyTemplateUI(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    iget v1, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mEmptyTemplateType:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setTemplateType(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    iget v1, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mEmptyTemplateType:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setTemplateType(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->reset()V

    goto :goto_0
.end method

.method public createLoadingTemplateUI(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public detachTemplateFramework(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    :cond_0
    return-void
.end method

.method public getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    return-object v0
.end method

.method public getLoadingTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    return-object v0
.end method

.method public getMainViewTop()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTabLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 2

    iget-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->createEmptyTemplateUI(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    :cond_0
    :goto_0
    iget-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->createLoadingTemplateUI(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mEmptyTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mLoadingTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->dismissPopList()V

    :cond_1
    return-void
.end method

.method public popOptionMenu(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonPopModelList:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/PopListAdapter;

    invoke-direct {v1, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/PopListAdapter;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->setOnItemClickedListner(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonPopModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/PopListAdapter;->addTabModel(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->showPopList()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mAttachFramework:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onShowPopOptionMenu()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopOptionMenuCallback:Ldv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopOptionMenuCallback:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeExistedTipsView()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTipsView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTipsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTipsView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public resetTemplateUI()V
    .locals 3

    const v2, 0x7f090090

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    const v1, 0x7f020107

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonTextColor(Landroid/content/Context;I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleStyle(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonEnable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    const v1, 0x7f020102

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    const v1, 0x7f090027

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopListView:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->dismissPopList()V

    :cond_0
    return-void
.end method

.method public setBackButtonBackground(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public setBackButtonStyle(B)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBackButtonTextColor(Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setBackGroundColor(Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackText(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setBackText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDescriptionTextView(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mDescriptTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mDescriptTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mDescriptTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonPopModelList:Ljava/util/List;

    return-void
.end method

.method public setInfoBarRamAndProcessCount(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setPhoneRam(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setProcessNum(I)V

    return-void
.end method

.method public setInfoBarStyle(B)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setShadowVisible(Z)V

    return-void

    :cond_1
    const/16 v0, 0x30

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->changeInfoBarType(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->changeInfoBarType(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->UpdateInfoBarMemoryAndRam()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->changeInfoBarType(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->changeInfoBarType(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setInfoBarWithCustomView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->changeInfoBarType(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setInfoBarWithoutShadow()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setShadowVisible(Z)V

    return-void
.end method

.method public setMainView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOptionButtonEnable(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonImg:Landroid/widget/ImageView;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonImg:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public setOptionButtonPopStyle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonImg:Landroid/widget/ImageView;

    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionPopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonPopModelList:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionNotifyImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOptionButtonStyle(B)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionNotifyImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyleInvisible()V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020111

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020110

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f02010f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    goto :goto_0

    :pswitch_5
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setDescriptionTextView(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setOptionButtonWithImageResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButton:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionButtonPopModelList:Ljava/util/List;

    return-void
.end method

.method public setOptionNotifyImg(I)V
    .locals 2

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionNotifyImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionNotifyImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mOptionNotifyImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setPopOptionMenuCallback(Ldv;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mPopOptionMenuCallback:Ldv;

    return-void
.end method

.method public setTipsView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->clearParent(Landroid/view/View;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTipsView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mMainFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTitleBar(B)V
    .locals 2

    const/16 v0, 0x35

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleBarBackground(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setTitleBarLayoutPadding()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40a0

    const/high16 v3, 0x3f00

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setTitleStyle(I)V
    .locals 1

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarStyle:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleBarStyle:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->enableTabTitle()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->enableTextTitle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTitleTabViews(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-static {v4, v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->createTabView(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/model/TabModel;II)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTitleTextColor(Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleTextData(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackTextAuto(Ljava/lang/String;)V

    return-void
.end method

.method public setTitleTextData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackTextAuto(Ljava/lang/String;)V

    return-void
.end method

.method public updateFocusTitleTab(Ljava/util/Set;Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v7

    if-ne v0, v7, :cond_3

    if-nez v4, :cond_2

    const v0, 0x7f02033b

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->setTabStyle(Landroid/content/Context;Landroid/view/View;Z)V

    :cond_0
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const v0, 0x7f02033e

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const v0, 0x7f02033a

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v6, v2}, Lcom/tencent/qqpimsecure/uilib/service/TabFactory;->setTabStyle(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_3

    :cond_4
    const v0, 0x7f02033d

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public updateInfoBarText(I)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setCommonText(I)V

    return-void
.end method

.method public updateInfoBarText(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setCommonText(Ljava/lang/String;)V

    return-void
.end method

.method public updateInfoBarTextWithMiddleStyle(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mInfoBarView:Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/InfoBarView;->setCommonText(Ljava/lang/String;)V

    return-void
.end method

.method public view()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->mFrameworkLayout:Landroid/view/View;

    return-object v0
.end method
