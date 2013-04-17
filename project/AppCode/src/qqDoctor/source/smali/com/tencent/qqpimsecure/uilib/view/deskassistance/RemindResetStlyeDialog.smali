.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;


# instance fields
.field private mBtnEnterAndSet:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private mBtnNextTime:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private mContext:Landroid/content/Context;

.field private mTvMessage:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->setFocusableInTouchMode(Z)V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0b64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mTvMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mTvMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b6c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnEnterAndSet:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnEnterAndSet:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b6d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnNextTime:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnNextTime:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b6e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnEnterAndSet:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnNextTime:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static showDialog()V
    .locals 3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;

    sget-object v2, Lkg;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnEnterAndSet:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->changeToMaxDesk()V

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->getInstance()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->openSettingView()V

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6729

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mBtnNextTime:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x672a

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_1
    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/RemindResetStlyeDialog;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method
