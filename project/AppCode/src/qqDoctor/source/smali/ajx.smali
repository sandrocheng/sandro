.class public final Lajx;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Lkv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Layp;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

.field private e:Lsl;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseView;",
            "Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkv;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Lajx;->c:I

    new-instance v0, Lajy;

    invoke-direct {v0, p0}, Lajy;-><init>(Lajx;)V

    iput-object v0, p0, Lajx;->f:Landroid/view/View$OnClickListener;

    check-cast p1, Layp;

    iput-object p1, p0, Lajx;->a:Layp;

    iput-object p2, p0, Lajx;->d:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v0, p0, Lajx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lajx;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lajx;->c:I

    iget-object v0, p0, Lajx;->a:Layp;

    invoke-virtual {v0}, Layp;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lajx;->e:Lsl;

    return-void
.end method

.method static synthetic a(Lajx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lajx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lkw;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget v1, p0, Lajx;->c:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lkw;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lajx;Lkv;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v5, 0x4d

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lajx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lajx;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0011

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lov;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v2, Layp;

    invoke-direct {v0, v2}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    const-class v2, Lof;

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->deleteTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lkv;->mCurrentSize:J

    const/4 v0, 0x0

    iput v0, p1, Lkv;->mProgress:F

    const/4 v0, -0x2

    iput v0, p1, Lkv;->mState:I

    invoke-virtual {p0}, Lajx;->notifyDataSetChanged()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lajx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lajx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lajx;)Layp;
    .locals 1

    iget-object v0, p0, Lajx;->a:Layp;

    return-object v0
.end method

.method static synthetic d(Lajx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lajx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lajx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lajx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lajx;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lajx;->d:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic g(Lajx;)Lsl;
    .locals 1

    iget-object v0, p0, Lajx;->e:Lsl;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/high16 v10, 0x42c8

    const/4 v9, 0x0

    if-nez p2, :cond_7

    const v0, 0x7f0300f6

    invoke-virtual {p0, p1, v0}, Lajx;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lajx$a;

    invoke-direct {v1}, Lajx$a;-><init>()V

    const v0, 0x7f080139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lajx$a;->a:Landroid/widget/TextView;

    const v0, 0x7f080095

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lajx$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f080331

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lajx$a;->c:Landroid/widget/TextView;

    const v0, 0x7f080332

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lajx$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080335

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    iput-object v0, v1, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    const v0, 0x7f080334

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lajx$a;->f:Landroid/widget/ImageView;

    const v0, 0x7f080286

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v1, Lajx$a;->e:Landroid/widget/RatingBar;

    const v0, 0x7f080333

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lajx$a;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v1

    :goto_0
    iget-object v0, p0, Lajx;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v1, v3, Lajx$a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v3, Lajx$a;->h:Landroid/widget/TextView;

    iget-object v2, v0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    iget-object v2, p0, Lajx;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lajx;->mItemModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {p0, p2, v1}, Lajx;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    iget-object v4, v0, Lkv;->d:Lkw;

    invoke-direct {p0, v4}, Lajx;->a(Lkw;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, v3, Lajx$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lajx;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    iget-object v1, p0, Lajx;->e:Lsl;

    if-eqz v1, :cond_8

    iget-object v1, v3, Lajx$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lajx;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Llv;

    invoke-direct {v2}, Llv;-><init>()V

    iget v1, p0, Lajx;->c:I

    iput v1, v2, Llv;->b:I

    invoke-direct {p0, v4}, Lajx;->a(Lkw;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    iput v5, v2, Llv;->b:I

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    iput v5, v2, Lmp;->g:I

    iput-object v1, v2, Llv;->d:Ljava/lang/String;

    iput v9, v2, Llv;->a:I

    iput-object v4, v2, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Lajz;

    invoke-direct {v1, p0}, Lajz;-><init>(Lajx;)V

    iput-object v1, v2, Lmp;->i:Labu$a;

    iget-object v1, p0, Lajx;->e:Lsl;

    invoke-virtual {v1, v2}, Lsl;->b(Lmp;)Z

    :cond_3
    :goto_1
    iget-object v4, v0, Lkv;->d:Lkw;

    iget-object v1, v3, Lajx$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lkw;->getSize()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_a

    iget-object v2, v3, Lajx$a;->c:Landroid/widget/TextView;

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lkw;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_4
    invoke-virtual {v4}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    const-string v1, ""

    :cond_6
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v3, Lajx$a;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, v3, Lajx$a;->e:Landroid/widget/RatingBar;

    iget-object v2, v0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->l()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v1, v0, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->o()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget v1, v0, Lkv;->mState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    iget-object v0, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadPreparation()V

    :goto_5
    return-object p2

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajx$a;

    move-object v3, v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lajx;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    iget-object v1, v3, Lajx$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, v3, Lajx$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lkw;->getSize()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_b

    iget-object v1, p0, Lajx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b0410

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    invoke-static {v5, v6}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    iget-object v2, v3, Lajx$a;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lajx;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lajx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020004

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lajx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lajx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Lajx$a;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lajx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v1, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-static {v0}, Lof;->c(Lkv;)F

    move-result v0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloading(I)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadWaiting()V

    goto/16 :goto_5

    :pswitch_8
    iget-object v1, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-static {v0}, Lof;->c(Lkv;)F

    move-result v0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadPause(I)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadComplete()V

    goto/16 :goto_5

    :pswitch_a
    iget-object v0, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setInstalled()V

    goto/16 :goto_5

    :pswitch_b
    iget-object v0, v3, Lajx$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setUpdatePreparation()V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
