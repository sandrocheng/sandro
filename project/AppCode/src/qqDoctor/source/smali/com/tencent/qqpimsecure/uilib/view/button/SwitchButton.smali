.class public Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButton_Icon:Landroid/widget/ImageView;

.field private mButton_Text:Landroid/widget/TextView;

.field private mIconRid_Close:I

.field private mIconRid_Open:I

.field private mIsOpen:Z

.field private mMainView:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->initView(Landroid/content/Context;)V

    sget-object v0, Ldp;->SwitchButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mButton_Text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mMainView:Landroid/view/View;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mButton_Text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mMainView:Landroid/view/View;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mButton_Icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->addView(Landroid/view/View;)V

    invoke-super {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIsOpen:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIsOpen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mButton_Text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setIconRid(II)V
    .locals 1

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIconRid_Open:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIconRid_Close:I

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIsOpen:Z

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->setIsOpen(Z)V

    return-void
.end method

.method public setIsOpen(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIsOpen:Z

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mButton_Icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIconRid_Open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mButton_Icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mIconRid_Close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SwitchButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
