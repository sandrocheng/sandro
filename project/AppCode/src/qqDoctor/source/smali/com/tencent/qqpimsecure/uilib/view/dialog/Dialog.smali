.class public Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
.super Landroid/app/Dialog;


# instance fields
.field protected bodyLayout:Landroid/widget/LinearLayout;

.field private buttonNum:I

.field protected buttonViewGroup:Landroid/widget/LinearLayout;

.field protected contentView:Landroid/view/View;

.field protected insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

.field private isNegativeButtonON:Z

.field private isNeutralButtonON:Z

.field private isSositiveButtonON:Z

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected messageView:Landroid/widget/TextView;

.field protected mscreenBackKey:Z

.field protected negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field protected neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field protected outsideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

.field protected positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field protected space_bar:Landroid/widget/ImageView;

.field protected titleIcon:Landroid/widget/ImageView;

.field protected titleLayout:Landroid/widget/LinearLayout;

.field protected titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const v0, 0x7f0c001a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mscreenBackKey:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isSositiveButtonON:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNegativeButtonON:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNeutralButtonON:Z

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isSositiveButtonON:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNegativeButtonON:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNeutralButtonON:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleIcon:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleText:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->space_bar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->outsideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    const v0, 0x7f02027f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public addProgressDialog()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->outsideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isSositiveButtonON:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNegativeButtonON:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNeutralButtonON:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getBodyParentLayout()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getButton(I)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mscreenBackKey:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->outsideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    return-void
.end method

.method public resetDialog()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isSositiveButtonON:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNegativeButtonON:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNeutralButtonON:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    return-void
.end method

.method public setButtonEnable(IZ)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setCancelable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x5f

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContextViewPaddingNeed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->contentView:Landroid/view/View;

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f020279

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f02027a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 5

    const/16 v4, 0x11

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public setMessageWithLink(Ljava/lang/CharSequence;)V
    .locals 5

    const/16 v4, 0x11

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->messageView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->bodyLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    int-to-float v2, p1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNegativeButtonON:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->space_bar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNeutralButton(ILandroid/view/View$OnClickListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNeutralButtonON:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->space_bar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isSositiveButtonON:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->space_bar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setScreenBackKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mscreenBackKey:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleText:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitlevisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->buttonNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isSositiveButtonON:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->positiveButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->insideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->outsideLoading:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNegativeButtonON:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->negativeButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isNeutralButtonON:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->neutralButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
