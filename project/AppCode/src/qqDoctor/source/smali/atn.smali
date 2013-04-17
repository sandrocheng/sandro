.class public final Latn;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private B:Lyj;

.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Z

.field private o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

.field private p:Lajn;

.field private q:Lib;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llj;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private t:Landroid/util/DisplayMetrics;

.field private u:I

.field private v:Z

.field private w:Landroid/os/Messenger;

.field private x:Landroid/os/Handler;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030132

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput v0, p0, Latn;->b:I

    const/4 v0, -0x1

    iput v0, p0, Latn;->u:I

    new-instance v0, Lato;

    invoke-direct {v0, p0}, Lato;-><init>(Latn;)V

    iput-object v0, p0, Latn;->x:Landroid/os/Handler;

    new-instance v0, Latp;

    invoke-direct {v0, p0}, Latp;-><init>(Latn;)V

    iput-object v0, p0, Latn;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Latq;

    invoke-direct {v0, p0}, Latq;-><init>(Latn;)V

    iput-object v0, p0, Latn;->z:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Latr;

    invoke-direct {v0, p0}, Latr;-><init>(Latn;)V

    iput-object v0, p0, Latn;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic A(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic B(Latn;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Latn;->w:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic C(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic D(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic E(Latn;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic F(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Latn;I)I
    .locals 0

    iput p1, p0, Latn;->u:I

    return p1
.end method

.method static synthetic a(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 10

    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Latn;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Latn;->p:Lajn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Latn;->p:Lajn;

    invoke-virtual {v0}, Lajn;->getCount()I

    move-result v1

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->getSelectedItemPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    iget-object v0, p0, Latn;->l:Landroid/widget/TextView;

    iget-object v3, p0, Latn;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0a13

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    iget v0, v0, Llj;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Latn;->m:Landroid/widget/TextView;

    iget-object v3, p0, Latn;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0a14

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Latn;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0a31

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Latn;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Latn;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Latn;->m:Landroid/widget/TextView;

    iget-object v3, p0, Latn;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0a14

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Latn;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0a33

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Latn;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Latn;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Latn;Z)Z
    .locals 0

    iput-boolean p1, p0, Latn;->n:Z

    return p1
.end method

.method static synthetic b(Latn;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Latn;->s:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method private b()V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latn;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0640

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b09e4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b09dd

    new-instance v2, Latu;

    invoke-direct {v2, p0, v0}, Latu;-><init>(Latn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Latw;

    invoke-direct {v2, v0}, Latw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic c(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Latn;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Latn;)Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;
    .locals 1

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    return-object v0
.end method

.method static synthetic h(Latn;)V
    .locals 0

    invoke-direct {p0}, Latn;->b()V

    return-void
.end method

.method static synthetic i(Latn;)V
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latn;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0a36

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget v1, p0, Latn;->b:I

    if-eq v1, v4, :cond_0

    const v1, 0x7f0b09e1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_0
    const v1, 0x7f0b0338

    new-instance v2, Lats;

    invoke-direct {v2, p0, v0}, Lats;-><init>(Latn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Latt;

    invoke-direct {v2, v0}, Latt;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0b09e2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0
.end method

.method static synthetic j(Latn;)V
    .locals 0

    invoke-direct {p0}, Latn;->b()V

    return-void
.end method

.method static synthetic k(Latn;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Latx;

    invoke-direct {v1, p0}, Latx;-><init>(Latn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Latn;->v:Z

    return-void
.end method

.method static synthetic l(Latn;)V
    .locals 3

    iget-object v0, p0, Latn;->B:Lyj;

    if-nez v0, :cond_0

    new-instance v0, Lyj;

    iget-object v1, p0, Latn;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latn;->B:Lyj;

    :cond_0
    iget-object v0, p0, Latn;->B:Lyj;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyj;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic m(Latn;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Latn;)Z
    .locals 1

    iget-boolean v0, p0, Latn;->n:Z

    return v0
.end method

.method static synthetic o(Latn;)V
    .locals 0

    invoke-direct {p0}, Latn;->a()V

    return-void
.end method

.method static synthetic p(Latn;)I
    .locals 1

    iget v0, p0, Latn;->b:I

    return v0
.end method

.method static synthetic q(Latn;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Latn;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Latn;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Latn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Latn;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic w(Latn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Latn;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic y(Latn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z(Latn;)I
    .locals 1

    iget v0, p0, Latn;->u:I

    return v0
.end method


# virtual methods
.method public final loadDataList()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget v0, p0, Latn;->b:I

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Latn;->q:Lib;

    invoke-virtual {v0, v2}, Lib;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Latn;->r:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget v0, p0, Latn;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latn;->r:Ljava/util/List;

    move v1, v2

    :goto_0
    iget-object v0, p0, Latn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Latn;->q:Lib;

    iget-object v0, p0, Latn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "file_safe_file_info"

    const-string v5, "mFileSrcPath=?"

    new-array v6, v7, [Ljava/lang/String;

    aput-object v0, v6, v2

    const-string v0, "id ASC"

    invoke-virtual {v3, v4, v5, v6, v0}, Lib;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Llj;

    move-result-object v0

    iget-object v3, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 7

    const/16 v1, 0x400

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Latn;->t:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Latn;->t:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v0, 0x7f0803a5

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Latn;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Latn;->d:Landroid/widget/Button;

    const v0, 0x7f0803b3

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latn;->l:Landroid/widget/TextView;

    const v0, 0x7f0803b2

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latn;->m:Landroid/widget/TextView;

    const v0, 0x7f0803b0

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    iput-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    const v0, 0x7f0803a6

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Latn;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0803b5

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Latn;->f:Landroid/widget/Button;

    const v0, 0x7f0803b6

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Latn;->g:Landroid/widget/Button;

    const v0, 0x7f0803b7

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Latn;->h:Landroid/widget/Button;

    const v0, 0x7f0803b4

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latn;->i:Landroid/widget/TextView;

    const v0, 0x7f0803b1

    invoke-virtual {p0, v0}, Latn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Latn;->j:Landroid/widget/Button;

    new-instance v0, Lib;

    invoke-direct {v0}, Lib;-><init>()V

    iput-object v0, p0, Latn;->q:Lib;

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Latn;->mContext:Landroid/content/Context;

    const v2, 0x7f0b09ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, La;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    iput-object v0, p0, Latn;->s:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Latn;->d:Landroid/widget/Button;

    iget-object v1, p0, Latn;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->g:Landroid/widget/Button;

    iget-object v1, p0, Latn;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->f:Landroid/widget/Button;

    iget-object v1, p0, Latn;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->h:Landroid/widget/Button;

    iget-object v1, p0, Latn;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->i:Landroid/widget/TextView;

    iget-object v1, p0, Latn;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->j:Landroid/widget/Button;

    iget-object v1, p0, Latn;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    iget-object v1, p0, Latn;->z:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    iget-object v1, p0, Latn;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-boolean v6, p0, Latn;->n:Z

    iget-object v0, p0, Latn;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Latn;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Latn;->w:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Latn;->x:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Latn;->w:Landroid/os/Messenger;

    :cond_0
    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, p0, Latn;->u:I

    if-ne v1, v5, :cond_3

    const-string v1, "position"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Latn;->u:I

    iget v1, p0, Latn;->u:I

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_1
    const-string v1, "from_where"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Latn;->b:I

    const-string v1, "src_path_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Latn;->c:Ljava/util/ArrayList;

    iget v1, p0, Latn;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Latn;->h:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Latn;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Latn;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Latn;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "from_where"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "src_path_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Latn;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Latn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Latn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x64

    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Latn;->s:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latn;->s:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Latn;->r:Ljava/util/List;

    iget v1, p0, Latn;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Latn;->a:Ljava/util/List;

    iget v1, p0, Latn;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Latn;->a:Ljava/util/List;

    iget v1, p0, Latn;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Latn;->a:Ljava/util/List;

    iget v1, p0, Latn;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Latn;->a:Ljava/util/List;

    iget v1, p0, Latn;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Latn;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Latn;->u:I

    if-gez v0, :cond_2

    iput v2, p0, Latn;->u:I

    :cond_2
    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Latn;->refreshListData()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Latn;->s:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Latn;->s:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Latn;->mContext:Landroid/content/Context;

    const v2, 0x7f0b09e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, p0, Latn;->b:I

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_4
    :pswitch_2
    iget v0, p0, Latn;->b:I

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Latn;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0a07

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0}, Lpx;->d()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Latn;->u:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_3
    iput-boolean v2, p0, Latn;->n:Z

    iget-object v0, p0, Latn;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Latn;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onResume()V
    .locals 8

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget v0, p0, Latn;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    :goto_0
    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v4, p0, Latn;->q:Lib;

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    invoke-virtual {v0}, Llj;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, "file_safe_file_info"

    const-string v6, "mFileSrcPath=?"

    new-array v7, v3, [Ljava/lang/String;

    aput-object v0, v7, v2

    const-string v0, "id ASC"

    invoke-virtual {v4, v5, v6, v7, v0}, Lib;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Llj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llj;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Llj;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Latn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0}, Lpx;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    iget v0, p0, Latn;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Latn;->u:I

    iget v0, p0, Latn;->u:I

    if-gez v0, :cond_1

    iput v2, p0, Latn;->u:I

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :goto_2
    return-void

    :cond_3
    iget-boolean v0, p0, Latn;->v:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Latn;->v:Z

    iget-object v0, p0, Latn;->q:Lib;

    invoke-virtual {v0, v3}, Lib;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Llj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Llj;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lkq;

    invoke-direct {v4}, Lkq;-><init>()V

    invoke-virtual {v0}, Llj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0, v3}, Lkq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreVideo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Latn;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Latn;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Latn;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method

.method public final refreshListData()V
    .locals 4

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Latn;->p:Lajn;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latn;->a:Ljava/util/List;

    iget-object v0, p0, Latn;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget-object v1, p0, Latn;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lajn;

    invoke-virtual {p0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    iget-object v2, p0, Latn;->r:Ljava/util/List;

    iget-object v3, p0, Latn;->t:Landroid/util/DisplayMetrics;

    invoke-direct {v0, v1, p0, v2, v3}, Lajn;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/util/List;Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Latn;->p:Lajn;

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    iget-object v1, p0, Latn;->p:Lajn;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_3
    iget-object v0, p0, Latn;->p:Lajn;

    iget v1, p0, Latn;->u:I

    invoke-virtual {v0, v1}, Lajn;->a(I)V

    iget-object v0, p0, Latn;->o:Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    iget v1, p0, Latn;->u:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->setSelection(I)V

    iget-object v0, p0, Latn;->p:Lajn;

    invoke-virtual {v0}, Lajn;->notifyDataSetChanged()V

    invoke-direct {p0}, Latn;->a()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBar(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
