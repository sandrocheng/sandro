.class public abstract Lbft;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field protected g:Ljava/lang/String;

.field private h:Landroid/widget/ImageView;

.field private i:Lho;

.field private j:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "module_file_safe"

    aput-object v2, v0, v1

    sput-object v0, Lbft;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030001

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lbfv;

    invoke-direct {v0, p0}, Lbfv;-><init>(Lbft;)V

    iput-object v0, p0, Lbft;->j:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    new-instance v0, Lbfx;

    invoke-direct {v0, p0}, Lbfx;-><init>(Lbft;)V

    iput-object v0, p0, Lbft;->k:Ljava/lang/Runnable;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbft;->i:Lho;

    invoke-virtual {p0}, Lbft;->a()V

    return-void
.end method

.method static synthetic a(Lbft;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbft;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lbft;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lbft;)V
    .locals 4

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbft;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbft;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Lbft;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbft;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbft;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbft;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lbft;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbft;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public abstract d()V
.end method

.method public onBackClick()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public onCreate()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f03004e

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lbft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iput-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v3, p0, Lbft;->j:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setOnPatternListener(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;)V

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setFooterView(Landroid/view/View;)V

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lbft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbft;->h:Landroid/widget/ImageView;

    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lbft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbft;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lbft;->i:Lho;

    invoke-virtual {v0}, Lho;->cn()Z

    move-result v0

    iget-object v1, p0, Lbft;->i:Lho;

    invoke-virtual {v1}, Lho;->cm()Z

    move-result v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setTactileFeedbackEnabled(Z)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setInStealthMode(Z)V

    :cond_1
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lbft;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbft;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lbft;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lbft;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b00

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbft;->c:Landroid/widget/TextView;

    iget-boolean v0, p0, Lbft;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b0b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbft;->c:Landroid/widget/TextView;

    new-instance v1, Lbfu;

    invoke-direct {v1, p0}, Lbfu;-><init>(Lbft;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b9b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onHandlerMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lbft;->b()V

    iget-object v0, p0, Lbft;->h:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionClick(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lbft;->d:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a()V

    return-void
.end method

.method public subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v2, 0x7f090006

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0ad9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    const v1, 0x7f0200b6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    const v1, 0x7f020335

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonTextColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lbft;->mContext:Landroid/content/Context;

    const v1, 0x7f090014

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    return-void
.end method
