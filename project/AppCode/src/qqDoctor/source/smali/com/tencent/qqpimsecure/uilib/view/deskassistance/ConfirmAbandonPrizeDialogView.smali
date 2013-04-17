.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

.field private static mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;


# instance fields
.field private mEntity:Llx;

.field private mKillCount:I

.field private mRam:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Llx;IJ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mEntity:Llx;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mEntity:Llx;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mKillCount:I

    iput-wide p4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mRam:J

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)Llx;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mEntity:Llx;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mKillCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mRam:J

    return-wide v0
.end method

.method static synthetic access$300()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    return-object v0
.end method

.method static synthetic access$400()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;
    .locals 0

    sput-object p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->addView(Landroid/view/View;)V

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static showDialog(Llx;IJLcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;)V
    .locals 6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;-><init>(Landroid/content/Context;Llx;IJ)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    sput-object p4, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$onConfirmGetPrizeListener;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ConfirmAbandonPrizeDialogView;

    sget-object v2, Lkg;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
