.class public abstract Lcom/tencent/qqpimsecure/uilib/view/BaseView;
.super Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;
    }
.end annotation


# static fields
.field public static final MSG_CLEAR_ALL:I = -0x3

.field public static final MSG_FINISH_LOAD_DATA:I = -0x2

.field public static final MSG_LOAD_DATA:I = -0x1

.field public static final mActivityTitleStack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoTestUtil:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

.field protected mBatchNext:Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;

.field private mEnableAutoTest:Z

.field private mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

.field protected mHandler:Landroid/os/Handler;

.field private mImageLoaderService:Lsl;

.field private mMainView:Landroid/view/View;

.field private mOperatingBar:Landroid/view/View;

.field private mOperatingModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

.field private mThread:Ljava/lang/Thread;

.field private mUIConfigModel:Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;

.field private mViewDestroy:Z

.field private mViewResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewResId:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mEnableAutoTest:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewDestroy:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewResId:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mEnableAutoTest:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewDestroy:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewDestroy:Z

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    return-object v0
.end method

.method private convertToMenuModel(Landroid/view/Menu;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;-><init>()V

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->setId(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->setTitle(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->setDisable(Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private createMainViewWithOperatingBar(Landroid/view/View;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->createOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingModelList:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingModelList:Ljava/util/List;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/BaseView$2;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->createOperatingBarView(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingBar:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingBar:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method private getButtonViewStyleByOperatingModel(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getOperatingBarButtonWeight(I)F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method private initMainView()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewResId:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getCustomView()Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->createMainViewWithOperatingBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mMainView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private initTabMenuView()V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;

    invoke-direct {v3, p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    return-void
.end method

.method private startAutoTest()V
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mEnableAutoTest:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mAutoTestUtil:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mAutoTestUtil:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->startAnalysis(Ljava/lang/String;JLjava/lang/Runtime;)V

    goto :goto_0
.end method


# virtual methods
.method protected createOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createOperatingBarView(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080155

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getButtonViewStyleByOperatingModel(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)I

    move-result v5

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-direct {v6, p1, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setId(I)V

    invoke-virtual {v6, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getNumber()I

    move-result v7

    if-lez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getNumber()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getTextSize()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getTextSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setTextSize(F)V

    :cond_1
    invoke-virtual {v6, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->isEnable()Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getVisible()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getButtonIconid()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setPrifixImageIcon(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v5}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getOperatingBarButtonWeight(I)F

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    return-object v3
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishActivity()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewDestroy:Z

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameworkHeight()I
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41c8

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getMainViewTop()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageLoaderService()Lsl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mImageLoaderService:Lsl;

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public getMainViewOperatingBar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingBar:Landroid/view/View;

    return-object v0
.end method

.method public getNotificationHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lgw;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public getOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingModelList:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->view()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideEmptyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initFrameworkTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mMainView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setMainView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mUIConfigModel:Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    return-void
.end method

.method public loadDataList()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mBatchNext:Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mBatchNext:Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;->netxToDo()V

    :cond_0
    return-void
.end method

.method public onBackClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onCreate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewDestroy:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mUIConfigModel:Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mUIConfigModel:Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->startAutoTest()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->initMainView()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mUIConfigModel:Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lsl;

    invoke-direct {v0}, Lsl;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mImageLoaderService:Lsl;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewDestroy:Z

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mEnableAutoTest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mAutoTestUtil:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->stopAnalysis()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mImageLoaderService:Lsl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mImageLoaderService:Lsl;

    invoke-virtual {v0}, Lsl;->e()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->dismiss()V

    :cond_2
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onDestroy()V

    return-void
.end method

.method public onHandlerMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public onLoadDataStart()V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;

    invoke-direct {v3, p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->dismiss()V

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->convertToMenuModel(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->setDataList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->getBodyAdapter()Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->getBodyAdapter()Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->update()V

    return v4

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mTabMenuView:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->view()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 0

    return-void
.end method

.method public onOptionClick(I)V
    .locals 0

    return-void
.end method

.method protected onSDCardMounted()V
    .locals 0

    return-void
.end method

.method public onSDCardUnmounted()V
    .locals 0

    return-void
.end method

.method public onShowPopOptionMenu()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onStart()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->initFrameworkTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    :cond_0
    return-void
.end method

.method public onTabClick(Lcom/tencent/qqpimsecure/uilib/model/TabModel;)V
    .locals 0

    return-void
.end method

.method public refreshListData()V
    .locals 0

    return-void
.end method

.method public refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingBar:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mOperatingBar:Landroid/view/View;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getNumber()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getButtonViewStyleByOperatingModel(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->getButtonType()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getVisible()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->isCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setCheckBoxState(Z)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getButtonIconid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setPrifixImageIcon(I)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->isAction()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->startRunning()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->stopRunning()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public resetContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setBackText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackText(I)V

    :cond_0
    return-void
.end method

.method public setBackText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBatchNext(Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mBatchNext:Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;

    return-void
.end method

.method public setEmptyImage(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setImageResource(I)V

    goto :goto_0
.end method

.method public setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->setEmptyText(Ljava/lang/String;)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFrameworkTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->detachTemplateFramework(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->attachTemplateFramework(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    :cond_1
    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mFrameworkTemplateUI:Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    return-void
.end method

.method public startLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->hideEmptyView()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getLoadingTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->startLoading()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getLoadingTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/LoadingTemplateUI;->stopLoading()V

    goto :goto_0
.end method

.method protected abstract subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
.end method
