.class public Lcom/tencent/powermanager/uilib/CpuStatusView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->e:Landroid/content/Context;

    sget-object v0, La$a;->CpuStatusView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->d:Z

    const v0, 0x7f030008

    invoke-static {p1, v0, v4}, Lcom/tencent/powermanager/uilib/CpuStatusView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/powermanager/uilib/CpuStatusView;->addView(Landroid/view/View;)V

    const v0, 0x7f080021

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->a:Landroid/widget/TextView;

    const v0, 0x7f080020

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->b:Landroid/widget/TextView;

    const v0, 0x7f08001f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->c:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->d:Z

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/uilib/CpuStatusView;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setCpuName(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x4080

    const/high16 v3, 0x3f00

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->a:Landroid/widget/TextView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->a:Landroid/widget/TextView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->c:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setActivie(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->d:Z

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->a(Z)V

    return-void
.end method

.method public setCpuHZ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCpuName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuStatusView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCpuStatus(ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setCpuHZ(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setActivie(Z)V

    return-void
.end method
