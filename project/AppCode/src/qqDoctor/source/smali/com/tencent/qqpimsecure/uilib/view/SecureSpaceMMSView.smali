.class public Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;
    }
.end annotation


# static fields
.field public static final SMILCOMPONENT:Ljava/lang/String; = "SMILComponent"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSMILComponentlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;"
        }
    .end annotation
.end field

.field private mViewlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setOrientation(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createViewData()V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v4, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x100

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x4188

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v2, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladl;

    invoke-virtual {v0}, Ladl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_4
    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2, v6, v2, v6}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getThumbnailWH(Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;
    .locals 5

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;)V

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v2, v3, :cond_1

    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x5

    iput v4, v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->width:I

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v2, v2, 0x5

    div-int/2addr v0, v2

    iput v0, v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->height:I

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    div-int/lit8 v4, v0, 0x3

    iput v4, v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->width:I

    mul-int/2addr v0, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v0, v2

    iput v0, v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->height:I

    goto :goto_1
.end method

.method private setChildClickEvent()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;

    invoke-direct {v4, p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;Ladg;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public CreateThumbnail(Ladg;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ladg;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object v0, p1

    check-cast v0, Ladh;

    invoke-virtual {v0}, Ladh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->getThumbnailWH(Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    move-object v0, p1

    check-cast v0, Ladh;

    invoke-virtual {v0}, Ladh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Ladh;

    invoke-virtual {p1}, Ladh;->e()Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->width:I

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView$BitmapThumbnailWH;->height:I

    invoke-static {v0, v2, v1}, Lgz;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020236

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ladg;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020353

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ladg;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public addChildView()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setChildClickEvent()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public createChidView()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->removeAllViews()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->createViewData()V

    return-void
.end method

.method public getBitmap(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->CreateThumbnail(Ladg;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020353

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public getChildView()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBitmap(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adapter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ladg;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mViewlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/MMSThumbnailSecureSpaceDefaultView;->setThumbnailImageDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    move v1, v3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->mSMILComponentlist:Ljava/util/ArrayList;

    goto :goto_0
.end method
