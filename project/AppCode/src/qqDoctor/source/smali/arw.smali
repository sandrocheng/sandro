.class public final Larw;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:I

.field private g:[B

.field private h:Z

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/util/DisplayMetrics;

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03006c

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Larx;

    invoke-direct {v0, p0}, Larx;-><init>(Larw;)V

    iput-object v0, p0, Larw;->p:Landroid/os/Handler;

    iput-object p1, p0, Larw;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Larw;)Z
    .locals 1

    iget-boolean v0, p0, Larw;->m:Z

    return v0
.end method

.method static synthetic b(Larw;)I
    .locals 1

    iget v0, p0, Larw;->n:I

    return v0
.end method

.method static synthetic c(Larw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Larw;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Larw;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larw;->j:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    iget v0, p0, Larw;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lyj;

    iget-object v1, p0, Larw;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lyj;->a()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Larw;->l:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Larw;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Larw;->l:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Larw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larw;->b:Landroid/widget/ImageView;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Larw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Larw;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Larw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Larw;->c:Landroid/widget/TextView;

    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Larw;->findViewById(I)Landroid/view/View;

    invoke-virtual {p0}, Larw;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "type"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Larw;->n:I

    iget v0, p0, Larw;->n:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "PkgName"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Larw;->o:Ljava/lang/String;

    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Larw;->setBackText(I)V

    :cond_0
    const-string v0, "dataInfo4Ui"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Larr;

    const-string v3, "CameraCaptureFirstTry"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Larw;->m:Z

    iget v2, v0, Larr;->e:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Larw;->i:Z

    iget-boolean v1, p0, Larw;->i:Z

    if-eqz v1, :cond_3

    iget v1, v0, Larr;->a:I

    iput v1, p0, Larw;->d:I

    iget v1, v0, Larr;->b:I

    iput v1, p0, Larw;->e:I

    iget v1, v0, Larr;->c:I

    iput v1, p0, Larw;->f:I

    invoke-static {}, Lary;->a()Lary;

    move-result-object v1

    iget-wide v2, v0, Larr;->d:J

    invoke-virtual {v1, v2, v3}, Lary;->a(J)[B

    move-result-object v1

    iput-object v1, p0, Larw;->g:[B

    iget-object v1, p0, Larw;->c:Landroid/widget/TextView;

    iget-object v2, p0, Larw;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Larw;->c:Landroid/widget/TextView;

    const v2, 0x7f0b0a8c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v1, p0, Larw;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Larw;->j:Landroid/content/Context;

    const v2, 0x7f0b0a90

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    iget-boolean v1, p0, Larw;->i:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Larw;->g:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Larw;->g:[B

    iget v2, p0, Larw;->e:I

    iget v3, p0, Larw;->f:I

    iget v4, p0, Larw;->d:I

    invoke-static {v1, v2, v3, v4}, La;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Larw;->k:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v1, p0, Larw;->l:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Larw;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Larw;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newWidth * newHeight: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Larw;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Larw;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Larw;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Larw;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Larw;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Larr;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v0, Larr;->g:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Larw;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-boolean v1, v0, Larr;->f:Z

    iput-boolean v1, p0, Larw;->h:Z

    iget-object v1, p0, Larw;->c:Landroid/widget/TextView;

    iget-object v2, p0, Larw;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Larw;->c:Landroid/widget/TextView;

    const/high16 v2, 0x41a8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-boolean v1, p0, Larw;->h:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Larw;->c:Landroid/widget/TextView;

    const v2, 0x7f0b0a8d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v1, p0, Larw;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Larw;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-boolean v1, p0, Larw;->m:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Larw;->j:Landroid/content/Context;

    const v2, 0x7f0b0a91

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Larw;->c:Landroid/widget/TextView;

    const v2, 0x7f0b0a8e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Larw;->j:Landroid/content/Context;

    const v2, 0x7f0b0a8f

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Larw;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Larw;->k:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Larw;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Larw;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larw;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public final onOptionClick(I)V
    .locals 5

    iget-boolean v0, p0, Larw;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Larw;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Larw;->j:Landroid/content/Context;

    iget v1, p0, Larw;->n:I

    iget-object v2, p0, Larw;->o:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordEnterActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, -0x1

    invoke-static {v3, v1, v4, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Larw;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-boolean v0, p0, Larw;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Larw;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Larw;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Larw;->p:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Larw;->p:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    const v0, 0x7f0b0a68

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget-object v0, p0, Larw;->j:Landroid/content/Context;

    const v1, 0x7f0200e3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Larw;->j:Landroid/content/Context;

    const v1, 0x7f020335

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonBackground(Landroid/content/Context;I)V

    iget-object v0, p0, Larw;->j:Landroid/content/Context;

    const v1, 0x7f090006

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonTextColor(Landroid/content/Context;I)V

    const v0, 0x7f0200e1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    return-void
.end method
