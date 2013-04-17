.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;


# instance fields
.field private mCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p6}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->initView(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;
    .locals 0

    sput-object p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    return-object p0
.end method

.method private initView(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->setFocusableInTouchMode(Z)V

    const v1, 0x7f0800b4

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v3, 0x7f080020

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mCheckBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;

    invoke-direct {v0, p0, p5, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static showDialog(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    move v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;-><init>(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ColorEggShareView;

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
