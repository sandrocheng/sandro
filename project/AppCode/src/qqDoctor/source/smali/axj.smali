.class public final Laxj;
.super Lbmd;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lho;

.field private d:Ljt;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lajr;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lku;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Thread;

.field private q:I

.field private r:Z

.field private s:J

.field private t:Z

.field private u:Z

.field private v:Lkv;

.field private w:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

.field private x:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

.field private y:Landroid/os/Handler;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lbmd;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Laxj;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxj;->o:Ljava/util/List;

    const v0, 0x3fffffff

    iput v0, p0, Laxj;->q:I

    iput-boolean v2, p0, Laxj;->r:Z

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Laxj;->s:J

    iput-boolean v2, p0, Laxj;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Laxj;->u:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Laxk;

    invoke-direct {v1, p0}, Laxk;-><init>(Laxj;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Laxj;->y:Landroid/os/Handler;

    new-instance v0, Laxu;

    invoke-direct {v0, p0}, Laxu;-><init>(Laxj;)V

    iput-object v0, p0, Laxj;->z:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Laxj;)V
    .locals 3

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laxj;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    iget-object v1, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setSelection(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic B(Laxj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic C(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;
    .locals 1

    iget-object v0, p0, Laxj;->w:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    return-object v0
.end method

.method static synthetic D(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;
    .locals 1

    iget-object v0, p0, Laxj;->x:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    return-object v0
.end method

.method static synthetic E(Laxj;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Laxj;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic F(Laxj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic G(Laxj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic H(Laxj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic I(Laxj;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic J(Laxj;)V
    .locals 0

    invoke-direct {p0}, Laxj;->k()V

    return-void
.end method

.method static synthetic a(Lkw;)I
    .locals 2

    invoke-virtual {p0}, Lkw;->o()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x1e8483

    :goto_0
    return v0

    :cond_0
    const v0, 0x1e8481

    goto :goto_0
.end method

.method static synthetic a(Laxj;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Laxj;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lkw;->p()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Laxj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Laxj;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Laxj;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Laxj;I)V
    .locals 5

    const/4 v2, -0x2

    iget-object v0, p0, Laxj;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxj;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxj;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a0

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v0, 0x0

    iget-object v2, p0, Laxj;->k:Lajr;

    invoke-virtual {v2}, Lajr;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Laxj;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-ne v0, p1, :cond_0

    const v4, 0x7f0202f3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v4, p0, Laxj;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v4, 0x7f0202f4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic a(Laxj;Z)Z
    .locals 0

    iput-boolean p1, p0, Laxj;->r:Z

    return p1
.end method

.method static synthetic b(Laxj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxj;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Laxj;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Laxj;->i(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Laxj;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laxj;->t:Z

    return v0
.end method

.method static synthetic d(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Laxj;)Z
    .locals 1

    iget-boolean v0, p0, Laxj;->u:Z

    return v0
.end method

.method static synthetic f(Laxj;)Z
    .locals 1

    iget-boolean v0, p0, Laxj;->r:Z

    return v0
.end method

.method static synthetic g(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->z:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Laxj;)J
    .locals 2

    iget-wide v0, p0, Laxj;->s:J

    return-wide v0
.end method

.method private h(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ldx;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png.temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Laxj;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lkw;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lku;

    invoke-virtual {v0}, Lkw;->p()Ljava/lang/String;

    invoke-direct {v6, v3}, Lku;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, v1}, Laxj;->i(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Laxj;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic i(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private i(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v2, Llv;

    invoke-direct {v2}, Llv;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Llv;->b:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v2, Lmp;->g:I

    invoke-virtual {v0}, Lkw;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Llv;->d:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, v2, Llv;->a:I

    new-instance v0, Laxv;

    invoke-direct {v0, p0}, Laxv;-><init>(Laxj;)V

    iput-object v0, v2, Lmp;->i:Labu$a;

    invoke-virtual {p0}, Laxj;->getImageLoaderService()Lsl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsl;->b(Lmp;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic j(Laxj;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Laxj;->dIYAddLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static j(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->o()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Laxj;->z:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laxj;->z:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    const/4 v2, 0x6

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    const/16 v2, 0x400

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    new-instance v2, Laxs;

    invoke-direct {v2, p0}, Laxs;-><init>(Laxj;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSpecialCategory(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V

    new-instance v1, Laxt;

    invoke-direct {v1, p0}, Laxt;-><init>(Laxj;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchAdList(Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    return-void
.end method

.method static synthetic k(Laxj;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Laxj;->dIYAddLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private k()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Laxj;->hideEmptyView()V

    invoke-virtual {p0}, Laxj;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxj;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Laxj;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Laxj;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laxj;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->notifyDataSetChanged()V

    invoke-virtual {p0, v2}, Laxj;->setReloadData(Z)V

    iput-boolean v2, p0, Laxj;->t:Z

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic l(Laxj;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Laxj;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic m(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Laxj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Laxj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Laxj;)V
    .locals 0

    invoke-virtual {p0}, Laxj;->h()V

    return-void
.end method

.method static synthetic s(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Laxj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic u(Laxj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Laxj;)Ljt;
    .locals 1

    iget-object v0, p0, Laxj;->d:Ljt;

    return-object v0
.end method

.method static synthetic w(Laxj;)Lho;
    .locals 1

    iget-object v0, p0, Laxj;->b:Lho;

    return-object v0
.end method

.method static synthetic x(Laxj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Laxj;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Laxj;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic z(Laxj;)Lajr;
    .locals 1

    iget-object v0, p0, Laxj;->k:Lajr;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkv;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Laxj;->mDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a_()V
    .locals 2

    invoke-virtual {p0}, Laxj;->g()V

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-static {v0}, Laxj;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Laxj;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Laxj;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Laxj;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation

    new-instance v0, Laxq;

    invoke-direct {v0, p0}, Laxq;-><init>(Laxj;)V

    invoke-virtual {p0, v0}, Laxj;->setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V

    new-instance v0, Lali;

    invoke-virtual {p0}, Laxj;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lali;-><init>(Lbmd;Ljava/util/List;)V

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDIYFrameLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080186

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laxj;->g:Landroid/widget/ImageView;

    const v0, 0x7f080187

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laxj;->h:Landroid/widget/ImageView;

    const v0, 0x7f080188

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laxj;->i:Landroid/widget/ImageView;

    const v0, 0x7f080189

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laxj;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Laxj;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laxj;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laxj;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laxj;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0800fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Laxj;->w:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    const v0, 0x7f0800fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Laxj;->x:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iget-object v0, p0, Laxj;->w:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Laxj;->x:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    const v0, 0x7f0800ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    iput-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    const v0, 0x7f080143

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laxj;->l:Landroid/widget/TextView;

    const v0, 0x7f080142

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laxj;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f080144

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laxj;->f:Landroid/widget/LinearLayout;

    new-instance v0, Lajr;

    iget-object v2, p0, Laxj;->mContext:Landroid/content/Context;

    iget-object v3, p0, Laxj;->n:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lajr;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v0, p0, Laxj;->k:Lajr;

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    iget-object v2, p0, Laxj;->k:Lajr;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    const v2, 0x3ecccccd

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setSensitivity(F)V

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setSpacing(I)V

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    new-instance v2, Laxl;

    invoke-direct {v2, p0}, Laxl;-><init>(Laxj;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    new-instance v2, Laxm;

    invoke-direct {v2, p0}, Laxm;-><init>(Laxj;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    new-instance v2, Laxn;

    invoke-direct {v2, p0}, Laxn;-><init>(Laxj;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Laxj;->e:Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;

    iget v2, p0, Laxj;->q:I

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SingleFlingGallery;->setSelection(I)V

    return-object v1
.end method

.method public final loadDataList()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxj;->b:Lho;

    invoke-virtual {v0}, Lho;->br()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Laxj;->b:Lho;

    invoke-virtual {v2}, Lho;->bq()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-boolean v0, p0, Laxj;->t:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Laxj;->d:Ljt;

    iget-object v1, v0, Ljt;->b:Ljava/lang/String;

    const-string v2, "id ASC"

    invoke-virtual {v0, v1, v4, v4, v2}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Laxj;->mDataList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->o()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbmd;->a:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    const/4 v4, 0x6

    invoke-static {v3, v0, v4}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Laxj;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laxj;->o:Ljava/util/List;

    iget-object v0, p0, Laxj;->o:Ljava/util/List;

    invoke-direct {p0, v0}, Laxj;->h(Ljava/util/List;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Laxj;->z:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Laxj;->a_()V

    invoke-virtual {p0}, Laxj;->h()V

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Laxj;->j()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Laxj;->j()V

    goto :goto_1
.end method

.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lbmd;->onBackClick()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnd;->a(I)V

    invoke-virtual {p0}, Laxj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    const/16 v0, 0x6658

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/RankingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x65bf

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/CategoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x6659

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/GameCategoryListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x662c

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareCategoryListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080186
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mEmptyTemplateType:I

    return-void
.end method

.method public final onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lbmd;->onCreate()V

    invoke-virtual {p0}, Laxj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_FROM_NOTIFICATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6677

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laxj;->b:Lho;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Laxj;->d:Ljt;

    new-instance v0, Laxp;

    invoke-direct {v0, p0}, Laxp;-><init>(Laxj;)V

    iput-object v0, p0, Laxj;->p:Ljava/lang/Thread;

    iget-object v0, p0, Laxj;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lis;->a(Landroid/content/Context;)Lis;

    move-result-object v0

    iget-object v0, v0, Lis;->b:Landroid/content/SharedPreferences;

    const-string v1, "has_not_see_wek"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lov;->a(I)V

    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Laxj;->dIYAddLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Laxj;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/4 v3, 0x1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Laxj;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Laxj;->isHasRefreshHeader()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Laxj;->getDataList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v1, v0, Lkv;->mState:I

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    :cond_3
    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Laxj;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Laxj;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v4, 0xa

    iput v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Laxw;

    invoke-direct {v1, p0, v3}, Laxw;-><init>(Laxj;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Laxj;->u:Z

    iget-object v0, p0, Laxj;->z:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Lbmd;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Laxj;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Laxj;->getDataList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v1, v0, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->o()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    :cond_2
    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-static {v0}, Lof;->a(Lkv;)V

    iput-object v0, p0, Laxj;->v:Lkv;

    :cond_4
    iget-object v1, v0, Lkv;->d:Lkw;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->o()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const v0, 0x1e8483

    :goto_1
    invoke-virtual {p0, v1, v0}, Laxj;->a(Lkw;I)V

    goto :goto_0

    :cond_5
    const v0, 0x1e8481

    goto :goto_1
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Laxj;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Laxj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareCenterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6628

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Laxj;->k()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Laxj;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laxj;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x36 -> :sswitch_2
        0x45 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lbmd;->onPause()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/16 v2, 0x45

    const/16 v4, 0x2c

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020202

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0532

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020204

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    invoke-static {p1}, La;->d(Landroid/view/Menu;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lbmd;->onResume()V

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Laxj;->isReloadData()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Laxj;->g()V

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-static {v0}, Laxj;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Laxj;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Laxj;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laxj;->h()V

    :cond_1
    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-virtual {p0}, Laxj;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0}, Laxj;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    new-instance v1, Laxr;

    invoke-direct {v1, p0}, Laxr;-><init>(Laxj;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Laxj;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laxj;->startLoading()V

    goto :goto_0
.end method

.method public final onRetry()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laxj;->setReloadData(Z)V

    iget-object v0, p0, Laxj;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lbmd;->onStart()V

    iget-object v0, p0, Laxj;->v:Lkv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxj;->v:Lkv;

    invoke-static {v0}, Lof;->b(Lkv;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laxj;->v:Lkv;

    :cond_0
    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method public final refreshListData()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Laxj;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->notifyDataSetChanged()V

    invoke-virtual {p0, v1}, Laxj;->setReloadData(Z)V

    iput-boolean v1, p0, Laxj;->t:Z

    invoke-virtual {p0}, Laxj;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxj;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onRefreshComplete()V

    :cond_0
    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxj;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_1
    const v0, 0x7f02036b

    invoke-virtual {p0, v0}, Laxj;->setEmptyImage(I)V

    invoke-virtual {p0}, Laxj;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laxj;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Laxj;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Laxj;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Laxj;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCenterImage()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Laxj;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCenterImage()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Laxo;

    invoke-direct {v1, p0}, Laxo;-><init>(Laxj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Laxj;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    invoke-virtual {p0}, Laxj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "come_from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    :cond_1
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f0b028f

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
