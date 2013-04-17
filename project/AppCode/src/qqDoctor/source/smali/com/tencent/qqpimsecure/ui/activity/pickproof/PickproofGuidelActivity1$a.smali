.class public final Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:[I

.field private b:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const v0, 0x7f0300a2

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->a:[I

    iput-boolean p2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->c:Z

    return-void

    nop

    :array_0
    .array-data 0x4
        0x70t 0x2t 0x2t 0x7ft
        0x72t 0x2t 0x2t 0x7ft
        0x71t 0x2t 0x2t 0x7ft
        0x6ft 0x2t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b07dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onCreate()V
    .locals 12

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v10, -0x2

    const/4 v9, -0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080202

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-direct {v4, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->a:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->a:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v5, v7}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->a:[I

    array-length v4, v4

    invoke-direct {v0, v2, v4, v11}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->b:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->b:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, v11}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setPointType(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->b:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setCurrentFourceIndex(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->b:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onNextCanvas(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->b:Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlidePoint;->setCurrentFourceIndex(I)V

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x670f

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lft;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity1$a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b083f

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b085c

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b08a1

    new-instance v2, Lahk;

    invoke-direct {v2, v0}, Lahk;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSlideStart()V
    .locals 0

    return-void
.end method

.method public final onSlideStop()V
    .locals 0

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b07a9

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
