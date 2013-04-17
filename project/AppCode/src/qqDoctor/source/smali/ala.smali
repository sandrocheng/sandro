.class public Lala;
.super Laju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lala$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laju",
        "<",
        "Lkv;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View$OnClickListener;

.field private b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:Lbmd;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

.field private g:Lsl;

.field private h:Z


# direct methods
.method public constructor <init>(Lbmd;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmd;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkv;",
            ">;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lbmd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Laju;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Lala;->d:I

    new-instance v0, Lalb;

    invoke-direct {v0, p0}, Lalb;-><init>(Lala;)V

    iput-object v0, p0, Lala;->a:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lala;->e:Lbmd;

    invoke-virtual {p1}, Lbmd;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iput-object v0, p0, Lala;->f:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput p3, p0, Lala;->d:I

    iget-object v0, p0, Lala;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lala;->c:Landroid/graphics/drawable/Drawable;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lala;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {p1}, Lbmd;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lala;->g:Lsl;

    return-void
.end method

.method static synthetic a(Lala;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lala;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lkw;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget v1, p0, Lala;->d:I

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

.method static synthetic a(Lala;Lkv;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lala;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v5, 0x4d

    invoke-virtual {v4, v3, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lala;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lala;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lov;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lala;->e:Lbmd;

    invoke-virtual {v1}, Lbmd;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->deleteTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lkv;->mCurrentSize:J

    const/4 v1, 0x0

    iput v1, p1, Lkv;->mProgress:F

    const/4 v1, -0x2

    iput v1, p1, Lkv;->mState:I

    invoke-virtual {p0}, Lala;->notifyDataSetChanged()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lala;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lala;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lala;)Lbmd;
    .locals 1

    iget-object v0, p0, Lala;->e:Lbmd;

    return-object v0
.end method

.method static synthetic d(Lala;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lala;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lala;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lala;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lala;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lala;->f:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic g(Lala;)Lsl;
    .locals 1

    iget-object v0, p0, Lala;->g:Lsl;

    return-object v0
.end method


# virtual methods
.method protected a(Lala$a;Lkv;)V
    .locals 4

    const/high16 v3, 0x42c8

    const/4 v1, 0x0

    iget-object v0, p2, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lala;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget v0, p2, Lkv;->mState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    iget-object v0, p1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadPreparation()V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lala;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lala;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lala;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lala;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lala$a;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-static {p2}, Lof;->c(Lkv;)F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloading(I)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadWaiting()V

    goto :goto_1

    :pswitch_8
    iget-object v0, p1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-static {p2}, Lof;->c(Lkv;)F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadPause(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setDownloadComplete()V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setInstalled()V

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setUpdatePreparation()V

    goto/16 :goto_1

    nop

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

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lala;->h:Z

    return-void
.end method

.method protected final b(Lala$a;Lkv;)V
    .locals 4

    iget-object v2, p2, Lkv;->d:Lkw;

    invoke-direct {p0, v2}, Lala;->a(Lkw;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p1, Lala$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lala;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lala;->g:Lsl;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lala$a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lala;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Llv;

    invoke-direct {v1}, Llv;-><init>()V

    iget v0, p0, Lala;->d:I

    iput v0, v1, Llv;->b:I

    invoke-direct {p0, v2}, Lala;->a(Lkw;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    iput v3, v1, Llv;->b:I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lmp;->g:I

    iput-object v0, v1, Llv;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v1, Llv;->a:I

    iput-object v2, v1, Lmp;->h:Ljava/lang/Object;

    new-instance v0, Lalc;

    invoke-direct {v0, p0}, Lalc;-><init>(Lala;)V

    iput-object v0, v1, Lmp;->i:Labu$a;

    iget-object v0, p0, Lala;->g:Lsl;

    invoke-virtual {v0, v1}, Lsl;->b(Lmp;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v2}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lala;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lala$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final c(Lala$a;Lkv;)V
    .locals 6

    iget-object v1, p2, Lkv;->d:Lkw;

    iget-object v0, p1, Lala$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lkw;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-object v0, p1, Lala$a;->c:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v1}, Lkw;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p1, Lala$a;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p1, Lala$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lala;->e:Lbmd;

    invoke-virtual {v1}, Lkw;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lbmd;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lala$a;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lala;->mContext:Landroid/content/Context;

    const v3, 0x7f0b03cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Laju;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    const v0, 0x7f0300f8

    invoke-virtual {p0, p1, v0}, Lala;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lala$a;

    invoke-direct {v1}, Lala$a;-><init>()V

    const v0, 0x7f080139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->a:Landroid/widget/TextView;

    const v0, 0x7f080095

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lala$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f080331

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->c:Landroid/widget/TextView;

    const v0, 0x7f080332

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080335

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    iput-object v0, v1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    const v0, 0x7f080334

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lala$a;->f:Landroid/widget/ImageView;

    const v0, 0x7f080337

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->h:Landroid/widget/TextView;

    const v0, 0x7f08033a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lala$a;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f08033d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lala$a;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0801a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->k:Landroid/widget/TextView;

    const v0, 0x7f08033b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->l:Landroid/widget/TextView;

    const v0, 0x7f08033e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lala$a;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f08033f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lala$a;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f080340

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lala$a;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f080336

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lala$a;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f080141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lala$a;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f080339

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lala$a;->s:Landroid/view/View;

    const v0, 0x7f08033c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lala$a;->t:Landroid/view/View;

    const v0, 0x7f080338

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lala$a;->r:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lala;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-boolean v1, p0, Lala;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, v2, Lala$a;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lala$a;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v2, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    iget-object v3, p0, Lala;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lala;->mItemModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {p0, p2, v1}, Lala;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    invoke-virtual {p0, v2, v0}, Lala;->b(Lala$a;Lkv;)V

    invoke-virtual {p0, v2, v0}, Lala;->c(Lala$a;Lkv;)V

    invoke-virtual {p0, v2, v0}, Lala;->a(Lala$a;Lkv;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lala$a;

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lala$a;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
