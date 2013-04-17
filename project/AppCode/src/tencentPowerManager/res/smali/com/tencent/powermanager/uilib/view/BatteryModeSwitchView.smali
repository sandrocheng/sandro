.class public Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;,
        Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/powermanager/uilib/BatteryModeItemView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;

.field private f:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->a:Landroid/content/Context;

    const v0, 0x7f030003

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->b:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;

    iget-object v3, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->e:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->c:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg;

    iget v0, v0, Ldg;->a:I

    invoke-interface {v2, v0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;->a(I)V

    :cond_1
    check-cast p1, Lcom/tencent/powermanager/uilib/BatteryModeItemView;

    invoke-virtual {p1}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->f:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->c:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg;

    iget v0, v0, Ldg;->a:I

    invoke-interface {v2, v0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;->b(I)V

    :cond_1
    check-cast p1, Lcom/tencent/powermanager/uilib/BatteryModeItemView;

    invoke-virtual {p1}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->a()Z

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_2
    return v3
.end method

.method public setClickListener(Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->e:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg;

    new-instance v2, Lcom/tencent/powermanager/uilib/BatteryModeItemView;

    iget-object v3, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Ldg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setTitleText(Ljava/lang/String;)V

    iget-object v3, v0, Ldg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setSummaryText(Ljava/lang/String;)V

    iget-boolean v0, v0, Ldg;->b:Z

    invoke-virtual {v2, v0}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setChecked(Z)V

    invoke-virtual {v2, p0}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/BatteryModeItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/BatteryModeItemView;->setUnderLine(Z)V

    return-void
.end method

.method public setLongClickListener(Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->f:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;

    return-void
.end method
