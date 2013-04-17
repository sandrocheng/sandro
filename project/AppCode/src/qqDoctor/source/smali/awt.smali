.class public final Lawt;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

.field private c:Lug;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030131

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lawv;

    invoke-direct {v0, p0}, Lawv;-><init>(Lawt;)V

    iput-object v0, p0, Lawt;->j:Landroid/content/BroadcastReceiver;

    new-instance v0, Laww;

    invoke-direct {v0, p0}, Laww;-><init>(Lawt;)V

    iput-object v0, p0, Lawt;->k:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lawt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lawt;->a:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->stopRotationAnimation()V

    iget-object v0, p0, Lawt;->b:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->stopRotationAnimation()V

    iget-object v0, p0, Lawt;->a:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v0, p0, Lawt;->b:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lawt;Lmk;)V
    .locals 3

    iget-object v0, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lawt;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lawt;->c:Lug;

    new-instance v1, Lml;

    iget v2, p1, Lmk;->id:I

    invoke-direct {v1, p1, v2}, Lml;-><init>(Lmk;I)V

    invoke-virtual {v0, v1}, Lug;->a(Lml;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lmk;)Z
    .locals 1

    invoke-static {p0}, Lawt;->b(Lmk;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lawt;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lawt;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lawt;Lmk;)V
    .locals 0

    invoke-direct {p0, p1}, Lawt;->c(Lmk;)V

    return-void
.end method

.method private static b(Lmk;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-wide v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->expiry:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic c(Lawt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Lmk;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    new-instance v0, Lfn;

    invoke-direct {v0}, Lfn;-><init>()V

    iget-object v1, p1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iput-object v1, v0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-virtual {v0}, Lfn;->a()V

    iget-object v0, v0, Lfn;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lawt;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    iget-object v1, p0, Lawt;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->createChidView()V

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->addChildView()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lawt;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    iget-object v1, p0, Lawt;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lawt;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->getBitmap(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lawt;->g:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    return-void

    :cond_1
    move v2, v3

    move v1, v3

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "adapter "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ladg;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v0}, Ladg;->b()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_6

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f020353

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    if-eq v0, v5, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0, v10}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setThumbnailmDefaultImageVisible(Z)V

    :cond_2
    :goto_1
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setThumbnailImageDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move v1, v5

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_5
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0, v10}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setViewAttr(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ladg;->b()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_8

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f02021a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    if-eq v0, v5, :cond_7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0, v10}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setThumbnailmDefaultImageVisible(Z)V

    goto/16 :goto_1

    :cond_7
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0, v10}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setViewAttr(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v0}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->getThumbnailWH(Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView$BitmapThumbnailWH;

    move-result-object v5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v0, v5, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView$BitmapThumbnailWH;->width:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v5, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView$BitmapThumbnailWH;->height:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailDefaultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method static synthetic d(Lawt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lawt;)I
    .locals 1

    iget v0, p0, Lawt;->f:I

    return v0
.end method

.method static synthetic f(Lawt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lawt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lawt;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lawt;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lawt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lawt;)V
    .locals 0

    invoke-direct {p0}, Lawt;->a()V

    return-void
.end method

.method static synthetic k(Lawt;)Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;
    .locals 1

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    return-object v0
.end method

.method static synthetic l(Lawt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lawt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lawt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lawt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lawt;)Lug;
    .locals 1

    iget-object v0, p0, Lawt;->c:Lug;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 7

    const v6, 0x7f0b0012

    const/16 v5, 0x69

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f080372

    invoke-virtual {p0, v0}, Lawt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    iput-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lawt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    iput-object v0, p0, Lawt;->a:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lawt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    iput-object v0, p0, Lawt;->b:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lawt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawt;->h:Landroid/widget/TextView;

    const v0, 0x7f0803ae

    invoke-virtual {p0, v0}, Lawt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lawt;->i:Landroid/widget/ImageView;

    sget-object v0, Lug;->g:Lug;

    if-nez v0, :cond_0

    new-instance v0, Lug;

    invoke-direct {v0}, Lug;-><init>()V

    sput-object v0, Lug;->g:Lug;

    :cond_0
    sget-object v0, Lug;->g:Lug;

    iput-object v0, p0, Lawt;->c:Lug;

    invoke-virtual {p0}, Lawt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "smslog"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmk;

    iget v2, v0, Lmk;->id:I

    iput v2, p0, Lawt;->f:I

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lawt;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lawt;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lawt;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lawt;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {v0}, Lawt;->b(Lmk;)Z

    move-result v2

    iput-boolean v2, v0, Lmk;->i:Z

    iget-boolean v2, v0, Lmk;->i:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lawt;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lawt;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lawt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lawt;->a()V

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lawt;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lawt;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lawt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lawt;->i:Landroid/widget/ImageView;

    new-instance v3, Lawu;

    invoke-direct {v3, p0, v0}, Lawu;-><init>(Lawt;Lmk;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v2, p0, Lawt;->c:Lug;

    iget-object v2, v2, Lug;->d:Ljava/util/HashSet;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lawt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_7
    new-instance v3, Ljava/lang/Integer;

    iget v4, v0, Lmk;->id:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lawt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lawt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lawt;->c:Lug;

    new-instance v2, Lml;

    iget v3, v0, Lmk;->id:I

    invoke-direct {v2, v0, v3}, Lml;-><init>(Lmk;I)V

    invoke-virtual {v1, v2}, Lug;->a(Lml;)V

    :cond_9
    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lawt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lawt;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, v0}, Lawt;->c(Lmk;)V

    goto/16 :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    invoke-virtual {p0}, Lawt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lawt;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lawt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lawt;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lawt;->a:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v0, p0, Lawt;->b:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v0, p0, Lawt;->a:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->startRotationAnimation()V

    iget-object v0, p0, Lawt;->b:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->startRotationAnimation()V

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lawt;->a()V

    iget-object v0, p0, Lawt;->d:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lawt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lawt;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Lawt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lawt;->j:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.service.ACTION_NOTIFY_INTERCEPT_MMSPATR_DOWNLOAD_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lawt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lawt;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpimsecure.service.ACTION_NOTIFY_INTERCEPT_MMSPATR_DOWNLOAD_FAILURE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    iget-object v0, p0, Lawt;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
