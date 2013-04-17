.class public Lcom/tencent/powermanager/uilib/TabButtonView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x7f050002

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->b:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->c:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->d:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->e:Landroid/widget/LinearLayout;

    iput-boolean v3, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->h:Z

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    sget-object v0, La$a;->TabButtonView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->i:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->h:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->f:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->g:I

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/TabButtonView;->setGravity(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030030

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->d:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/TabButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f02013f

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/TabButtonView;->setBackgroundResource(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 3

    const v2, 0x7f050002

    iput-boolean p1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->h:Z

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/TabButtonView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
