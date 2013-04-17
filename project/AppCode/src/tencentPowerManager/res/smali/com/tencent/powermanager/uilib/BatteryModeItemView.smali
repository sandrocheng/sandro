.class public Lcom/tencent/powermanager/uilib/BatteryModeItemView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f030002

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080009

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->b:Landroid/widget/TextView;

    const v0, 0x7f080008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f08000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->d:Landroid/widget/TextView;

    const v0, 0x7f08000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->e:Landroid/widget/TextView;

    const v0, 0x7f08000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->f:Landroid/widget/ImageView;

    const v0, 0x7f08000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->g:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->h:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 5

    const v4, 0x7f050023

    const v3, 0x7f050022

    const/4 v1, 0x4

    const/16 v2, 0x8

    iput-boolean p1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->h:Z

    if-eqz p1, :cond_0

    const v0, 0x7f02012f

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f020131

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setSummaryText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnderLine(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
