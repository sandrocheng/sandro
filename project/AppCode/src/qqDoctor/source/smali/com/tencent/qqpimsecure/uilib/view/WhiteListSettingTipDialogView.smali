.class public Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;)Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;
    .locals 0

    sput-object p0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ee

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->addView(Landroid/view/View;)V

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static showDialog()V
    .locals 3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;

    sget-object v2, Lkg;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cK()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/WhiteListSettingTipDialogView;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method
