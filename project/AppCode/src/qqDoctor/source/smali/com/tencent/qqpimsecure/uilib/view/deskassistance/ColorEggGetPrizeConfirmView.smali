.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

.field private static mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentAppCallBack:Labv$b;

.field private mIsOnDeskNow:Z

.field mMainLayout:Landroid/widget/LinearLayout;

.field private mProcessServer:Lzo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mIsOnDeskNow:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mCurrentAppCallBack:Labv$b;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mContext:Landroid/content/Context;

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mProcessServer:Lzo;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->registerCurrentApp()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mIsOnDeskNow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mIsOnDeskNow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Lzo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mProcessServer:Lzo;

    return-object v0
.end method

.method static synthetic access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;
    .locals 0

    sput-object p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    return-object p0
.end method

.method static synthetic access$300()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;)V
    .locals 2

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mCurrentAppCallBack:Labv$b;

    invoke-virtual {v0, v1}, Labv;->b(Labv$b;)V

    return-void
.end method

.method private deregisterCurrentApp()V
    .locals 2

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mCurrentAppCallBack:Labv$b;

    invoke-virtual {v0, v1}, Labv;->b(Labv$b;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mMainLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mMainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$3;

    invoke-direct {v0, p0, p3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private registerCurrentApp()V
    .locals 2

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mCurrentAppCallBack:Labv$b;

    invoke-virtual {v0, v1}, Labv;->a(Labv$b;)V

    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)V
    .locals 3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    sput-object p2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggGetPrizeConfirmView;

    sget-object v2, Lkg;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
