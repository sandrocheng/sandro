.class public final Lasq;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:I

.field private b:Landroid/widget/GridView;

.field private c:Ljava/lang/String;

.field private d:Lajg;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llo;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/widget/Button;

.field private j:Lasw;

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03006f

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lasr;

    invoke-direct {v0, p0}, Lasr;-><init>(Lasq;)V

    iput-object v0, p0, Lasq;->l:Landroid/os/Handler;

    new-instance v0, Lasv;

    invoke-direct {v0, p0}, Lasv;-><init>(Lasq;)V

    iput-object v0, p0, Lasq;->m:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    return-void
.end method

.method static synthetic a(Lasq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lasq;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lasq;)Lajg;
    .locals 1

    iget-object v0, p0, Lasq;->d:Lajg;

    return-object v0
.end method

.method static synthetic c(Lasq;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lasq;->k:Z

    return v0
.end method

.method static synthetic d(Lasq;)V
    .locals 4

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0a37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lasq;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lasq;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lasq;->f:I

    if-lez v2, :cond_1

    iget v2, p0, Lasq;->f:I

    iget-object v2, p0, Lasq;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setDescriptionTextView(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lasq;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lasq;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lasq;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lasq;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lasq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llo;

    iget-boolean v3, v0, Llo;->a:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Llo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a21

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filePaths"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "type"

    iget v3, p0, Lasq;->a:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fileInfos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lasq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lasq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_1
.end method

.method static synthetic g(Lasq;)I
    .locals 1

    iget v0, p0, Lasq;->f:I

    return v0
.end method

.method static synthetic h(Lasq;)I
    .locals 2

    iget v0, p0, Lasq;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lasq;->f:I

    return v0
.end method

.method static synthetic i(Lasq;)I
    .locals 2

    iget v0, p0, Lasq;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lasq;->f:I

    return v0
.end method

.method static synthetic j(Lasq;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lasq;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic k(Lasq;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lasq;->g:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lasq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    iget-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lasq;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-virtual {p0}, Lasq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lasq;->a:I

    invoke-virtual {p0}, Lasq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workdir"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lasq;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lasq;->e:Ljava/util/List;

    new-instance v0, Lajg;

    iget-object v1, p0, Lasq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lasq;->b:Landroid/widget/GridView;

    iget-object v3, p0, Lasq;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lajg;-><init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;)V

    iput-object v0, p0, Lasq;->d:Lajg;

    iget-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lasq;->d:Lajg;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lasq;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lasq;->d:Lajg;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lasq;->d:Lajg;

    invoke-virtual {v0}, Lajg;->b()V

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lasq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lasq;->i:Landroid/widget/Button;

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lasq;->g:Landroid/view/animation/Animation;

    iget-object v0, p0, Lasq;->g:Landroid/view/animation/Animation;

    new-instance v1, Lass;

    invoke-direct {v1, p0}, Lass;-><init>(Lasq;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lasq;->h:Landroid/view/animation/Animation;

    iget-object v0, p0, Lasq;->h:Landroid/view/animation/Animation;

    new-instance v1, Last;

    invoke-direct {v1, p0}, Last;-><init>(Lasq;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lasq;->i:Landroid/widget/Button;

    new-instance v1, Lasu;

    invoke-direct {v1, p0}, Lasu;-><init>(Lasq;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Lasq;->j:Lasw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasq;->j:Lasw;

    invoke-virtual {v0}, Lasw;->d()V

    iget-object v0, p0, Lasq;->j:Lasw;

    invoke-virtual {v0}, Lasw;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lasq;->j:Lasw;

    :cond_0
    iget-object v0, p0, Lasq;->d:Lajg;

    invoke-virtual {v0}, Lajg;->c()V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 3

    invoke-virtual {p0}, Lasq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lasq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method public final onStart()V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    iget-boolean v0, p0, Lasq;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lasq;->d:Lajg;

    invoke-virtual {v0, v1}, Lajg;->b(Z)V

    iget-object v0, p0, Lasq;->j:Lasw;

    if-nez v0, :cond_0

    iput v1, p0, Lasq;->f:I

    new-instance v0, Lasw;

    iget-object v1, p0, Lasq;->mContext:Landroid/content/Context;

    iget v2, p0, Lasq;->a:I

    iget-object v3, p0, Lasq;->c:Ljava/lang/String;

    iget-object v4, p0, Lasq;->l:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lasw;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lasq;->j:Lasw;

    iget-object v0, p0, Lasq;->j:Lasw;

    invoke-virtual {v0}, Lasw;->a()V

    iget-object v0, p0, Lasq;->j:Lasw;

    invoke-virtual {v0}, Lasw;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lasq;->j:Lasw;

    invoke-virtual {v0}, Lasw;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lasq;->d:Lajg;

    invoke-virtual {v0, v1}, Lajg;->b(Z)V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    iget-object v0, p0, Lasq;->j:Lasw;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lasq;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lasq;->j:Lasw;

    invoke-virtual {v0}, Lasw;->c()V

    :cond_0
    iget-object v0, p0, Lasq;->d:Lajg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lajg;->b(Z)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v2, 0x7f090006

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lasq;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    const v1, 0x7f0202b8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    const v1, 0x7f090014

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    const v1, 0x7f020335

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lasq;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonTextColor(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    return-void
.end method
