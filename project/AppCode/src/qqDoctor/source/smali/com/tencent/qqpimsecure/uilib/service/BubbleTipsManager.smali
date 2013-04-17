.class public Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$MyTimeTask;,
        Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;
    }
.end annotation


# static fields
.field public static final BubbleType_CountTopButton:B = 0x2t

.field public static final BubbleType_LongPressed:B = 0x3t

.field public static final BubbleType_Other:B = 0x5t

.field public static final BubbleType_Setting:B = 0x4t

.field public static final BubbleType_TopButton:B = 0x1t

.field public static final Direction_Down_Bubble:B = 0x2t

.field public static final Direction_Frame_Bubble:B = 0x3t

.field public static final Direction_Up_Bubble:B = 0x1t


# instance fields
.field private final BUBBLE_DATA:Ljava/lang/String;

.field private final BUBBLE_DATA_PRE:Ljava/lang/String;

.field private final DAEDPARENT_KEY_LIST:Ljava/lang/String;

.field private final LONGPRESSED_TIMES:Ljava/lang/String;

.field private final POP_SHOW_TIME:I

.field private final TOPBUTTON_TIMES:Ljava/lang/String;

.field private anchorView:Landroid/view/View;

.field private bubbleModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleOffX:I

.field private bubbleOffY:I

.field private bubbleTextView:Landroid/widget/TextView;

.field private bubbleView:Landroid/view/View;

.field private countTopButtonTimes:I

.field private deadParentKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final groupStr:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private isShowDone:Z

.field private longPressedTimes:I

.field private mContext:Landroid/content/Context;

.field private pop:Landroid/widget/PopupWindow;

.field private popShowTime:I

.field private final popupViewHeight:I

.field private final popupWidth:I

.field private secondCount:I

.field private setting:Landroid/content/SharedPreferences;

.field private settingTimes:I

.field private final subStr:Ljava/lang/String;

.field public timer:Ljava/util/Timer;

.field private topButtonTimes:I

.field private final totalBubbleTypeTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->totalBubbleTypeTimes:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->popupWidth:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->popupViewHeight:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->popShowTime:I

    const-string v0, "bubble_data_pre"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->BUBBLE_DATA_PRE:Ljava/lang/String;

    const-string v0, "bubble_data"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->BUBBLE_DATA:Ljava/lang/String;

    const-string v0, "top_button_times"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->TOPBUTTON_TIMES:Ljava/lang/String;

    const-string v0, "long_pressed_times"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->LONGPRESSED_TIMES:Ljava/lang/String;

    const-string v0, "dead_parent_key_list"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->DAEDPARENT_KEY_LIST:Ljava/lang/String;

    const-string v0, ","

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->groupStr:Ljava/lang/String;

    const-string v0, "&"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->subStr:Ljava/lang/String;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->handler:Landroid/os/Handler;

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->POP_SHOW_TIME:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    const-string v1, "bubble_data_pre"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setting:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->initBubbleData()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isShowDone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isShowDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I

    return p1
.end method

.method static synthetic access$1008(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->popShowTime:I

    return v0
.end method

.method static synthetic access$1500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->dismissPOP()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;)Landroid/widget/PopupWindow;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getNextBubble(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isBubbleTypeOut(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffX:I

    return v0
.end method

.method static synthetic access$602(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffX:I

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I

    return v0
.end method

.method static synthetic access$702(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I

    return p1
.end method

.method static synthetic access$800(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->countBubbleType(B)V

    return-void
.end method

.method private countBubbleType(B)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleTipsManager countBubbleType topButtonTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->longPressedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->longPressedTimes:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private dismissPOP()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private getBubbleData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setting:Landroid/content/SharedPreferences;

    const-string v1, "bubble_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getBubbleDataListArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getBubbleDataListArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BubbleTipsManager getBubbleDataListArray bubbleDataStr "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    :goto_0
    if-eq v6, v4, :cond_0

    new-instance v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    invoke-direct {v7, p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "BubbleTipsManager getBubbleDataListArray subBubbleStr "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move-object v5, v3

    move v3, v1

    move v1, v2

    :goto_1
    if-eq v3, v4, :cond_6

    if-nez v1, :cond_2

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BubbleTipsManager getBubbleDataListArray parentKey "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "&"

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    if-ne v1, v8, :cond_3

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->lastIndex:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BubbleTipsManager getBubbleDataListArray lastIndex "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->lastIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_3
    rem-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_4

    iget-object v8, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BubbleTipsManager getBubbleDataListArray key "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v8, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BubbleTipsManager getBubbleDataListArray times "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v3, v4

    goto/16 :goto_1

    :cond_6
    iget-object v1, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "BubbleTipsManager getBubbleDataListArray size "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_7

    iget-object v5, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleDirectionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v7, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_8

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto/16 :goto_0

    :cond_8
    move v6, v4

    goto/16 :goto_0
.end method

.method private getBubbleDataStr(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->lastIndex:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v3

    :goto_2
    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_1
    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getMonthUsedStr "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDeadParentKeyKist()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setting:Landroid/content/SharedPreferences;

    const-string v2, "dead_parent_key_list"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getMonthUsedArray deadParentStr "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eq v0, v1, :cond_3

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getLongPressedTimes()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setting:Landroid/content/SharedPreferences;

    const-string v1, "long_pressed_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNextBubble(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;)Landroid/widget/PopupWindow;
    .locals 7

    const/4 v2, 0x0

    const v1, 0x7f020042

    const/4 v6, 0x2

    :cond_0
    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->lastIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    iget-object v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    :cond_1
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    iget v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isBubbleTypeOut(B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->lastIndex:I

    iget-object v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    iget-object v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    iget v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v6, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    iget v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v6, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->lastIndex:I

    iget-object v2, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    iget v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleDirectionList:Ljava/util/ArrayList;

    iget v2, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleViewList:Ljava/util/ArrayList;

    iget v3, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleTextView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleMessageList:Ljava/util/ArrayList;

    iget v2, p1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->saveBubbleData()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    goto :goto_0

    :pswitch_0
    const v0, 0x7f020043

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    const v0, 0x7f02015a

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopButtonTimes()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setting:Landroid/content/SharedPreferences;

    const-string v1, "top_button_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initBubbleData()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getTopButtonTimes()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleTipsManager getTopButtonTimes topButtonTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getLongPressedTimes()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->longPressedTimes:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleTipsManager getLongPressedTimes longPressedTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->longPressedTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getBubbleData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getDeadParentKeyKist()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    return-void
.end method

.method private isBubbleTypeOut(B)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2 BubbleTipsManager isBubbleTypeOut topButtonTimes "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    if-ge v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->longPressedTimes:I

    if-ge v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2 BubbleTipsManager isBubbleTypeOut countTopButtonTimes "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->countTopButtonTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->countTopButtonTimes:I

    if-ge v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2 BubbleTipsManager isBubbleTypeOut settingTimes "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->settingTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->settingTimes:I

    if-ge v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private saveBubbleData()V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->topButtonTimes:I

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setTopButtonTimes(I)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->longPressedTimes:I

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setLongPressedTimes(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "bubble_data"

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getBubbleDataStr(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->deadParentKeyList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->setDeadParentKeyKist(Ljava/util/ArrayList;)V

    return-void
.end method

.method private setBubbleData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bubble_data"

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getBubbleDataStr(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setDeadParentKeyKist(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dead_parent_key_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " setDeadParentKeyKist "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dead_parent_key_list"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setLongPressedTimes(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleTipsManager setLongPressedTimes longPressedTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "long_pressed_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setTopButtonTimes(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleTipsManager setTopButtonTimes topButtonTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "top_button_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private startDismissAnimation(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startShowAnimation(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public addByRule(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;BBIILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BubbleTipsManager tempBubbleModel.bubbleMessageList.size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleMessageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleDirectionList:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleDirectionList:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->saveBubbleData()V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    iput-object p1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleDirectionList:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTimesList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->saveBubbleData()V

    goto/16 :goto_2
.end method

.method public dismissPOPWithoutAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public showByRule(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BubbleTipsManager showByRule parentKey "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->popShowTime:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
