.class public Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;


# static fields
.field public static a:[I


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout$LayoutParams;

.field private h:I

.field private i:[I

.field private j:[I

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x94t 0x0t 0x3t 0x7ft
        0x96t 0x0t 0x3t 0x7ft
        0x92t 0x0t 0x3t 0x7ft
        0x91t 0x0t 0x3t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->j:[I

    new-instance v0, Ladu;

    invoke-direct {v0, p0}, Ladu;-><init>(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->k:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x8dt 0x0t 0x3t 0x7ft
        0x90t 0x0t 0x3t 0x7ft
        0x8ft 0x0t 0x3t 0x7ft
        0x8ct 0x0t 0x3t 0x7ft
        0x8bt 0x0t 0x3t 0x7ft
        0x8et 0x0t 0x3t 0x7ft
    .end array-data
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b:Landroid/widget/ImageView;

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->getmSlideViewGroup()Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;

    move-result-object v1

    const v0, 0x7f0801cc

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lady;

    invoke-direct {v2, p0}, Lady;-><init>(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801cd

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Ladz;

    invoke-direct {v1, p0}, Ladz;-><init>(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->invalidate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->finish()V

    return-void
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    return v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a()V

    return-void
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->setContentView(I)V

    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setBackgroundColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    array-length v0, v0

    if-ne v0, v4, :cond_0

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    if-ne v2, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->initSlideLayout(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setCurrentCanvasIndex(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08022f

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->c:Landroid/widget/ImageView;

    new-instance v2, Ladw;

    invoke-direct {v2, p0}, Ladw;-><init>(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    array-length v0, v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setAllowSlide(Z)V

    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ladx;

    invoke-direct {v1}, Ladx;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->j:[I

    sput-object v0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    array-length v0, v0

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    array-length v0, v0

    new-array v2, v0, [I

    move v0, v1

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    sget-object v3, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->a:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const v3, 0x7f030093

    aput v3, v2, v0

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->e:Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->setBackgroundColor(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 0x4
        0xbet 0x0t 0x3t 0x7ft
        0xc0t 0x0t 0x3t 0x7ft
        0xbft 0x0t 0x3t 0x7ft
    .end array-data
.end method

.method public onNextCanvas(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f08022f

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    if-ne v0, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->finish()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->X()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->i:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->h:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSlideStart()V
    .locals 0

    return-void
.end method

.method public onSlideStop()V
    .locals 0

    return-void
.end method
