.class public Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/powermanager/uilib/CpuStatusView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->a:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->b:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const v0, 0x7f030007

    invoke-static {p1, v0, v1}, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f08001b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const v0, 0x7f080019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const v0, 0x7f08001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const v0, 0x7f08001c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const v0, 0x7f08001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public setCpuLayout(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    :cond_0
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setCpuStatus(IZLjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setCpuStatus(ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setCpuStatus(ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setCpuStatus(ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->c:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuStatusView;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/powermanager/uilib/CpuStatusView;->setCpuStatus(ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
