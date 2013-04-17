.class public Lcom/tencent/powermanager/uilib/CpuButtonView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/CpuButtonView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/CpuButtonView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x2

    const v0, 0x7f020108

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setBackgroundResource(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setGravity(I)V

    invoke-virtual {p0, p0}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/powermanager/uilib/CpuButtonView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->b:Landroid/widget/TextView;

    const v0, 0x7f080016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/CpuButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/CpuButtonView;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
