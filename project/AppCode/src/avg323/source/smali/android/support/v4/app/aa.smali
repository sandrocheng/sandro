.class public Landroid/support/v4/app/aa;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private final Y:Ljava/lang/Runnable;

.field private final Z:Landroid/widget/AdapterView$OnItemClickListener;

.field a:Landroid/widget/ListAdapter;

.field b:Landroid/widget/ListView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Ljava/lang/CharSequence;

.field h:Z

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aa;->i:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/ab;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ab;-><init>(Landroid/support/v4/app/aa;)V

    iput-object v0, p0, Landroid/support/v4/app/aa;->Y:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v4/app/ac;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/aa;)V

    iput-object v0, p0, Landroid/support/v4/app/aa;->Z:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private F()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/aa;->q()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z

    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/aa;->Z:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/aa;->a:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/aa;->a(Landroid/widget/ListAdapter;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aa;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/aa;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const v1, 0xff0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v4/app/aa;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/app/aa;->d:Landroid/widget/TextView;

    if-nez v1, :cond_5

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/aa;->c:Landroid/view/View;

    :goto_3
    const v1, 0xff0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_7

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/aa;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    iget-object v0, p0, Landroid/support/v4/app/aa;->c:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/aa;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/aa;->d:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/app/aa;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/aa;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-direct {p0, v3, v3}, Landroid/support/v4/app/aa;->a(ZZ)V

    goto/16 :goto_2
.end method

.method private a(ZZ)V
    .locals 6

    const v5, 0x10a0001

    const/high16 v4, 0x10a

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/aa;->F()V

    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/app/aa;->h:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x11

    const/4 v7, -0x2

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->h()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v3, 0xff0002

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    const v5, 0x101007a

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0003

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->h()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0001

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->h()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setId(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public a()Landroid/widget/ListView;
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/aa;->F()V

    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/support/v4/app/aa;->F()V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/aa;->a:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v3, p0, Landroid/support/v4/app/aa;->h:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/aa;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/aa;->a(ZZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/aa;->i:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/aa;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Landroid/support/v4/app/aa;->b:Landroid/widget/ListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aa;->h:Z

    iput-object v2, p0, Landroid/support/v4/app/aa;->f:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v4/app/aa;->e:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v4/app/aa;->c:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v4/app/aa;->d:Landroid/widget/TextView;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    return-void
.end method
