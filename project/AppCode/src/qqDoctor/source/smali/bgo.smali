.class public final Lbgo;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

.field b:Lyj;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lho;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Intent;

.field private i:I

.field private j:Z

.field private k:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03013b

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lbgq;

    invoke-direct {v0, p0}, Lbgq;-><init>(Lbgo;)V

    iput-object v0, p0, Lbgo;->k:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    new-instance v0, Lbgs;

    invoke-direct {v0, p0}, Lbgs;-><init>(Lbgo;)V

    iput-object v0, p0, Lbgo;->l:Ljava/lang/Runnable;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbgo;->f:Lho;

    new-instance v0, Lyj;

    invoke-direct {v0, p1}, Lyj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbgo;->b:Lyj;

    return-void
.end method

.method static synthetic a(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbgo;)I
    .locals 1

    iget v0, p0, Lbgo;->i:I

    return v0
.end method

.method static synthetic c(Lbgo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbgo;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbgo;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbgo;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lbgo;)Lho;
    .locals 1

    iget-object v0, p0, Lbgo;->f:Lho;

    return-object v0
.end method

.method static synthetic g(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lbgo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbgo;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lbgo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbgo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lbgo;)V
    .locals 2

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a()V

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    new-instance v1, Lbgr;

    invoke-direct {v1, p0}, Lbgr;-><init>(Lbgo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic n(Lbgo;)V
    .locals 4

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgo;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgo;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic o(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lbgo;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbgo;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lbgo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lbgo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbgo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    iget v0, p0, Lbgo;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbgo;->b:Lyj;

    invoke-virtual {v0}, Lyj;->a()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300b4

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0300b3

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lbgo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iput-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v5, p0, Lbgo;->k:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setOnPatternListener(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;)V

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setFooterView(Landroid/view/View;)V

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lbgo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgo;->c:Landroid/widget/ImageView;

    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lbgo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbgo;->e:Landroid/widget/TextView;

    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lbgo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbgo;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lbgo;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lbgo;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b00

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgo;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lbgo;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b0b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgo;->f:Lho;

    invoke-virtual {v0}, Lho;->cn()Z

    move-result v0

    iget-object v3, p0, Lbgo;->f:Lho;

    invoke-virtual {v3}, Lho;->cm()Z

    move-result v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setTactileFeedbackEnabled(Z)V

    :cond_0
    if-eqz v3, :cond_1

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setInStealthMode(Z)V

    :cond_1
    iget-object v3, p0, Lbgo;->e:Landroid/widget/TextView;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->ci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbgo;->e:Landroid/widget/TextView;

    new-instance v2, Lbgp;

    invoke-direct {v2, p0}, Lbgp;-><init>(Lbgo;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v1, p0, Lbgo;->j:Z

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbgo;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lbgo;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b00

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgo;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lbgo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbgo;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a()V

    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    new-instance v1, Lbgr;

    invoke-direct {v1, p0}, Lbgr;-><init>(Lbgo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 3

    iget-boolean v0, p0, Lbgo;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgo;->j:Z

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    iget v1, p0, Lbgo;->i:I

    iget-object v2, p0, Lbgo;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La;->a(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lbgo;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-virtual {p0}, Lbgo;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lbgo;->h:Landroid/content/Intent;

    iget-object v0, p0, Lbgo;->h:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgo;->h:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbgo;->i:I

    iget v0, p0, Lbgo;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbgo;->h:Landroid/content/Intent;

    const-string v1, "PkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgo;->g:Ljava/lang/String;

    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lbgo;->setBackText(I)V

    :cond_0
    iget-object v0, p0, Lbgo;->a:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v2, 0x7f090006

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0ad9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    const v1, 0x7f0200b6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    const v1, 0x7f020335

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonTextColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lbgo;->mContext:Landroid/content/Context;

    const v1, 0x7f090014

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cH()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200b7

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    :goto_0
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    goto :goto_0
.end method
