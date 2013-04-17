.class public final Lasx;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:I

.field private b:Landroid/widget/GridView;

.field private c:Lajh;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llq;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lata;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030070

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lasy;

    invoke-direct {v0, p0}, Lasy;-><init>(Lasx;)V

    iput-object v0, p0, Lasx;->g:Landroid/os/Handler;

    new-instance v0, Lasz;

    invoke-direct {v0, p0}, Lasz;-><init>(Lasx;)V

    iput-object v0, p0, Lasx;->h:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lig;

    invoke-direct {v0}, Lig;-><init>()V

    return-void
.end method

.method static synthetic a(Lasx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lasx;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lasx;)Lajh;
    .locals 1

    iget-object v0, p0, Lasx;->c:Lajh;

    return-object v0
.end method

.method static synthetic c(Lasx;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lasx;->f:Z

    return v0
.end method

.method static synthetic d(Lasx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lasx;)I
    .locals 1

    iget v0, p0, Lasx;->a:I

    return v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lasx;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lasx;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0
.end method

.method public final onBackClick()V
    .locals 1

    invoke-virtual {p0}, Lasx;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mEmptyTemplateType:I

    return-void
.end method

.method public final onCreate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lasx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    iget-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lasx;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-virtual {p0}, Lasx;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lasx;->a:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lasx;->d:Ljava/util/List;

    new-instance v0, Lajh;

    iget-object v1, p0, Lasx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lasx;->b:Landroid/widget/GridView;

    iget-object v3, p0, Lasx;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lajh;-><init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;)V

    iput-object v0, p0, Lasx;->c:Lajh;

    iget-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lasx;->c:Lajh;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lasx;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lasx;->c:Lajh;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lasx;->c:Lajh;

    invoke-virtual {v0}, Lajh;->b()V

    iput-boolean v4, p0, Lasx;->f:Z

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Lasx;->e:Lata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasx;->e:Lata;

    invoke-virtual {v0}, Lata;->d()V

    iget-object v0, p0, Lasx;->e:Lata;

    invoke-virtual {v0}, Lata;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lasx;->e:Lata;

    :cond_0
    iget-object v0, p0, Lasx;->c:Lajh;

    invoke-virtual {v0}, Lajh;->c()V

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

    iget-boolean v0, p0, Lasx;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lasx;->c:Lajh;

    invoke-virtual {v0, v1}, Lajh;->b(Z)V

    iget-object v0, p0, Lasx;->e:Lata;

    if-nez v0, :cond_0

    new-instance v0, Lata;

    iget-object v1, p0, Lasx;->mContext:Landroid/content/Context;

    iget v2, p0, Lasx;->a:I

    invoke-static {}, Lfi;->a()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lasx;->g:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lata;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/os/Handler;)V

    iput-object v0, p0, Lasx;->e:Lata;

    iget-object v0, p0, Lasx;->e:Lata;

    invoke-virtual {v0}, Lata;->a()V

    iget-object v0, p0, Lasx;->e:Lata;

    invoke-virtual {v0}, Lata;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lasx;->e:Lata;

    invoke-virtual {v0}, Lata;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lasx;->c:Lajh;

    invoke-virtual {v0, v1}, Lajh;->b(Z)V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    iget-object v0, p0, Lasx;->e:Lata;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lasx;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lasx;->e:Lata;

    invoke-virtual {v0}, Lata;->c()V

    :cond_0
    iget-object v0, p0, Lasx;->c:Lajh;

    invoke-virtual {v0, v1}, Lajh;->b(Z)V

    iget-object v0, p0, Lasx;->c:Lajh;

    invoke-virtual {v0, v1}, Lajh;->a(Z)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v2, 0x7f090006

    iget v0, p0, Lasx;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    const v1, 0x7f0202b8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    const v1, 0x7f020335

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    const v1, 0x7f090014

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonTextColor(Landroid/content/Context;I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    return-void

    :cond_0
    iget-object v0, p0, Lasx;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
