.class public Lcom/antivirus/ui/callmessagefilter/fragment/s;
.super Lcom/antivirus/ui/a/a/a;


# instance fields
.field Y:Landroid/widget/ListAdapter;

.field Z:Landroid/widget/ListView;

.field private final a:Landroid/os/Handler;

.field aa:Landroid/view/View;

.field ab:Landroid/view/View;

.field ac:Landroid/view/View;

.field ad:Ljava/lang/CharSequence;

.field ae:Z

.field private final b:Ljava/lang/Runnable;

.field private final c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a:Landroid/os/Handler;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/t;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/t;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/s;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->b:Ljava/lang/Runnable;

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/fragment/u;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/fragment/u;-><init>(Lcom/antivirus/ui/callmessagefilter/fragment/s;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->c:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->q()Landroid/view/View;

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

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ae:Z

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Y:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Y:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Y:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a(Landroid/widget/ListAdapter;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ad:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ad:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-direct {p0, v3, v3}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a(ZZ)V

    goto :goto_2
.end method

.method private a(ZZ)V
    .locals 6

    const v5, 0x10a0001

    const/high16 v4, 0x10a

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ae:Z

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ae:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public N()Landroid/widget/ListView;
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/antivirus/ui/a/a/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a()V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Y:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Y:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ae:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a(ZZ)V

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

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ad:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ad:Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a(ZZ)V

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->Z:Landroid/widget/ListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ae:Z

    iput-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ac:Landroid/view/View;

    iput-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->ab:Landroid/view/View;

    iput-object v2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/s;->aa:Landroid/view/View;

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    return-void
.end method
