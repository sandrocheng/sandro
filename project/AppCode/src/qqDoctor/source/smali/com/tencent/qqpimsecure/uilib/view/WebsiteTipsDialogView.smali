.class public Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;
    }
.end annotation


# instance fields
.field private mBtnBlockVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private mBtnKeepVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private mContext:Landroid/content/Context;

.field private mLevel:Ljava/lang/String;

.field private mListener:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

.field private mTvMessage:Landroid/widget/TextView;

.field private mTvMessage2:Landroid/widget/TextView;

.field private mTvMessage3:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mLevel:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mType:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 6

    const v5, 0x7f0b0b3f

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->setFocusableInTouchMode(Z)V

    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0b3e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvMessage:Landroid/widget/TextView;

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvMessage2:Landroid/widget/TextView;

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvMessage3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvMessage2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mLevel:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b45

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mType:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mBtnKeepVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mBtnBlockVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mBtnKeepVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mBtnBlockVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mTvMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mType:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mBtnKeepVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;->onAdd3MinDontRemindWebSite()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;->reVisitUrl()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x672c

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mBtnBlockVisit:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;->blockUrl()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x672d

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_1
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public showDialog()V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6717

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lkg;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
