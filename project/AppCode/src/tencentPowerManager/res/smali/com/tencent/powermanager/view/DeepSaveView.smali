.class public Lcom/tencent/powermanager/view/DeepSaveView;
.super Lcom/tencent/powermanager/uilib/view/BaseTabView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbx;


# instance fields
.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;

.field private e:Lcom/tencent/powermanager/uilib/CpuButtonView;

.field private f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

.field private g:Lan;

.field private h:Lr;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    iput-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->d:Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;

    iput-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->e:Lcom/tencent/powermanager/uilib/CpuButtonView;

    iput-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    iput-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->g:Lan;

    iput-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->h:Lr;

    new-instance v0, Ldx;

    invoke-direct {v0, p0}, Ldx;-><init>(Lcom/tencent/powermanager/view/DeepSaveView;)V

    iput-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->i:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/view/DeepSaveView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/tencent/powermanager/view/DeepSaveView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->g:Lan;

    invoke-virtual {v1}, Lan;->f()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/tencent/powermanager/view/DeepSaveView;->d:Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;

    iget-object v4, p0, Lcom/tencent/powermanager/view/DeepSaveView;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->setCpuStatus(IZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->g:Lan;

    invoke-static {}, Lan;->g()[Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->g:Lan;

    invoke-static {}, Lan;->c()I

    move-result v3

    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/powermanager/view/DeepSaveView;->d:Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;

    const/4 v7, 0x1

    if-nez v3, :cond_1

    const-string v0, "N/A"

    :goto_2
    invoke-virtual {v6, v5, v7, v0}, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->setCpuStatus(IZLjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    div-int/lit16 v0, v3, 0x3e8

    const/16 v8, 0x3e8

    if-ge v0, v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "MHz"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    int-to-float v0, v0

    const/high16 v8, 0x447a

    div-float/2addr v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "GHz"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/view/DeepSaveView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/view/DeepSaveView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->e:Lcom/tencent/powermanager/uilib/CpuButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->e:Lcom/tencent/powermanager/uilib/CpuButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0, v3}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->e:Lcom/tencent/powermanager/uilib/CpuButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/view/DeepSaveView;)Lr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->h:Lr;

    return-object v0
.end method


# virtual methods
.method public final a(D)V
    .locals 7

    invoke-static {}, Lao;->a()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0}, Lao;->b()I

    move-result v2

    invoke-virtual {v0}, Lao;->c()I

    move-result v3

    double-to-int v4, p1

    const-wide/high16 v5, 0x404e

    mul-double/2addr v5, p1

    double-to-int v5, v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setTimeText(IIII)V

    invoke-virtual {v0, p1, p2}, Lao;->a(D)V

    return-void
.end method

.method public final d()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->d()V

    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/DeepSaveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->d:Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/DeepSaveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CpuButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->e:Lcom/tencent/powermanager/uilib/CpuButtonView;

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/DeepSaveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/ExpectTimeView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/DeepSaveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->c:Landroid/widget/ImageView;

    invoke-static {}, Lan;->a()Lan;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->g:Lan;

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->h:Lr;

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {p0}, Laf;->a(Lbx;)V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->e()V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->e:Lcom/tencent/powermanager/uilib/CpuButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->g:Lan;

    invoke-virtual {v0}, Lan;->f()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/powermanager/view/DeepSaveView;->d:Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;

    invoke-virtual {v1, v0}, Lcom/tencent/powermanager/uilib/view/CpuStatuGridView;->setCpuLayout(I)V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/DeepSaveView;->a()V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->h:Lr;

    invoke-virtual {v0}, Lr;->r()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/DeepSaveView;->a(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->h:Lr;

    invoke-virtual {v0}, Lr;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->f()V

    invoke-static {p0}, Laf;->b(Lbx;)Z

    return-void
.end method

.method public final g()I
    .locals 1

    const v0, 0x7f030009

    return v0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-nez v0, :cond_1

    invoke-static {}, Laj;->c()V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->h:Lr;

    invoke-virtual {v0, v1}, Lr;->g(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/DeepSaveView;->a()V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->f:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->e:Lcom/tencent/powermanager/uilib/CpuButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CpuButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->a:Landroid/content/Context;

    const v1, 0x7f060046

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->a:Landroid/content/Context;

    const v1, 0x7f060047

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->a:Landroid/content/Context;

    const v1, 0x7f060048

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/DeepSaveView;->i:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
