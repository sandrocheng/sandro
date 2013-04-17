.class public Lcom/tencent/powermanager/uilib/ExpectTimeView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->h:Landroid/widget/TextView;

    new-instance v0, Lcy;

    invoke-direct {v0, p0}, Lcy;-><init>(Lcom/tencent/powermanager/uilib/ExpectTimeView;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->i:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->h:Landroid/widget/TextView;

    new-instance v0, Lcy;

    invoke-direct {v0, p0}, Lcy;-><init>(Lcom/tencent/powermanager/uilib/ExpectTimeView;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->i:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->f:Landroid/content/Context;

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->addView(Landroid/view/View;)V

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->g:Landroid/widget/TextView;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->h:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/ExpectTimeView;)V
    .locals 2

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->d:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->d:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->e:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->e:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    return v0
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    goto :goto_0
.end method

.method public static synthetic c(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    return v0
.end method

.method private c()V
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    if-lez v0, :cond_0

    const/16 v0, 0x3b

    iput v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    goto :goto_0
.end method

.method public static synthetic d(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->d:I

    return v0
.end method

.method public static synthetic e(Lcom/tencent/powermanager/uilib/ExpectTimeView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->e:I

    return v0
.end method

.method public static synthetic f(Lcom/tencent/powermanager/uilib/ExpectTimeView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setTextHour(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->g:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTextMin(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->h:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTimeText(IIII)V
    .locals 4

    const/4 v2, 0x3

    const/4 v1, -0x3

    iput p3, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->d:I

    iput p4, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->e:I

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move p1, p3

    :goto_0
    iput p1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->b:I

    iput p4, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->c:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->i:Landroid/os/Handler;

    const v1, 0x10001

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    sub-int v0, p1, p3

    if-gt v0, v2, :cond_2

    sub-int v0, p1, p3

    if-ne v0, v2, :cond_3

    if-le p2, p4, :cond_3

    :cond_2
    add-int/lit8 p1, p3, 0x3

    goto :goto_0

    :cond_3
    sub-int v0, p1, p3

    if-lt v0, v1, :cond_4

    sub-int v0, p1, p3

    if-ne v0, v1, :cond_5

    if-ge p2, p4, :cond_5

    :cond_4
    add-int/lit8 p1, p3, -0x3

    goto :goto_0

    :cond_5
    move p4, p2

    goto :goto_0
.end method

.method public setViewType(I)V
    .locals 6

    const v5, 0x7f080039

    const v4, 0x7f080036

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v1, 0x7f080035

    iget v0, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->a:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/tencent/powermanager/uilib/ExpectTimeView;->a:I

    packed-switch p1, :pswitch_data_0

    :goto_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020162

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
