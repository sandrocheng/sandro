.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p6}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;
    .locals 0

    sput-object p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

    return-object p0
.end method

.method private initView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->setFocusableInTouchMode(Z)V

    const v1, 0x7f0800b4

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v2, 0x7f0800b6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz p2, :cond_0

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 7

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggIntroView;

    sget-object v2, Lkg;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
