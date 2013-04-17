.class public Lcom/tencent/powermanager/uilib/PinnedHeaderListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    iget v2, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->d:I

    iget v3, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->e:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->getFirstVisiblePosition()I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->a:Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;

    invoke-interface {v0}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v1, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->a:Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    iget v2, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->d:I

    iget v3, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->e:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iput-boolean v5, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_3

    sub-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->a:Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    iget v3, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->d:I

    iget v4, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->e:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v5, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->c:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->d:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->e:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    instance-of v0, p1, Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->a:Lcom/tencent/powermanager/uilib/PinnedHeaderListView$a;

    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/PinnedHeaderListView;->requestLayout()V

    return-void
.end method
