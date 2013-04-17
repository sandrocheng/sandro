.class public Lcom/tencent/powermanager/uilib/SwitchButtonView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v6, 0x7f02015f

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->c:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->d:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->f:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->g:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->i:Landroid/view/View$OnClickListener;

    sget-object v0, La$a;->SwitchButtonView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->b:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->e:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setFocusable(Z)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setGravity(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->a:Landroid/content/Context;

    const v1, 0x7f03002f

    invoke-static {v0, v1, v2}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->addView(Landroid/view/View;)V

    const v0, 0x7f08009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->c:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f08009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->d:Landroid/widget/ImageView;

    const v0, 0x7f0800a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->g:Landroid/widget/TextView;

    const v0, 0x7f0800a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->f:Landroid/widget/TextView;

    iget v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v6}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setNameText(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const v0, 0x7f02015e

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020160

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->i:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setIconBg(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/SwitchButtonView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
