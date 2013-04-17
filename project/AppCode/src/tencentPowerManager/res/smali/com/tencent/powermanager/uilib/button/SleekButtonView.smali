.class public Lcom/tencent/powermanager/uilib/button/SleekButtonView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ldc;

    invoke-direct {v0, p0}, Ldc;-><init>(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->i:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ldc;

    invoke-direct {v0, p0}, Ldc;-><init>(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->i:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/button/SleekButtonView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->g:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->b:Landroid/widget/ImageView;

    const v0, 0x7f08007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->c:Landroid/widget/ImageView;

    const v0, 0x7f080080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->d:Landroid/widget/ImageView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->h:Z

    return v0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->f:I

    return v0
.end method

.method private c()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->g:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020123

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->f:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020124

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->i:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic d(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->f:I

    return v0
.end method

.method public static synthetic f(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->g:I

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->c()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->h:Z

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
