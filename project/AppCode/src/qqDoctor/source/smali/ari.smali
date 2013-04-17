.class public final Lari;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lari$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:[I

.field private f:[B

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/Context;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/faceverify/util/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Lho;

.field private s:Landroid/util/DisplayMetrics;

.field private t:Lari$a;

.field private u:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030069

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lari;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lari;->n:Ljava/util/List;

    new-instance v0, Larj;

    invoke-direct {v0, p0}, Larj;-><init>(Lari;)V

    iput-object v0, p0, Lari;->u:Landroid/os/Handler;

    iput-object p1, p0, Lari;->m:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(I)I
    .locals 3

    const v2, 0x7f0b0a88

    const v0, 0x7f0b0a81

    const v1, 0x7f0b0a84

    packed-switch p0, :pswitch_data_0

    const v0, 0x7f0b0a86

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0b0a89

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lari;Lari$a;)Lari$a;
    .locals 0

    iput-object p1, p0, Lari;->t:Lari$a;

    return-object p1
.end method

.method static synthetic a(Lari;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic a(Lari;[B)[B
    .locals 0

    iput-object p1, p0, Lari;->f:[B

    return-object p1
.end method

.method static synthetic b(Lari;)Lho;
    .locals 1

    iget-object v0, p0, Lari;->r:Lho;

    return-object v0
.end method

.method static synthetic c(Lari;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lari;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lari;)Lari$a;
    .locals 1

    iget-object v0, p0, Lari;->t:Lari$a;

    return-object v0
.end method

.method static synthetic e(Lari;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lari;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lari;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lari;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lari;)[B
    .locals 1

    iget-object v0, p0, Lari;->f:[B

    return-object v0
.end method

.method static synthetic h(Lari;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lari;->p:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lari;)[I
    .locals 1

    iget-object v0, p0, Lari;->e:[I

    return-object v0
.end method

.method static synthetic j(Lari;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lari;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lari;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lari;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    iget-object v0, p0, Lari;->r:Lho;

    invoke-virtual {v0}, Lho;->cH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lari;->m:Landroid/content/Context;

    const v1, 0x7f0b0a93

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lari;->s:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lari;->m:Landroid/content/Context;

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/AddUserInfoActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/faceverify/AddUserInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lari;->s:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lari;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dataInfo4Ui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Larr;

    iget v1, v0, Larr;->a:I

    iput v1, p0, Lari;->a:I

    iget v1, v0, Larr;->b:I

    iput v1, p0, Lari;->b:I

    iget v1, v0, Larr;->c:I

    iput v1, p0, Lari;->c:I

    invoke-static {}, Lary;->a()Lary;

    move-result-object v1

    iget-wide v2, v0, Larr;->d:J

    invoke-virtual {v1, v2, v3}, Lary;->a(J)[B

    move-result-object v1

    iput-object v1, p0, Lari;->d:[B

    iget-object v1, p0, Lari;->d:[B

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lari;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lari;->b:I

    iget v2, p0, Lari;->c:I

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lari;->e:[I

    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lari;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lari;->g:Landroid/widget/ImageView;

    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lari;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lari;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080117

    invoke-virtual {p0, v1}, Lari;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lari;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lari;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lari;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f080119

    invoke-virtual {p0, v1}, Lari;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lari;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lari;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    iput-object v1, p0, Lari;->r:Lho;

    iget-object v1, p0, Lari;->r:Lho;

    invoke-virtual {v1}, Lho;->cI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lari;->l:Ljava/lang/String;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lari;->m:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v1, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b0a69

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b0a80

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v1, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    new-instance v2, Lark;

    invoke-direct {v2, p0}, Lark;-><init>(Lari;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Larl;

    invoke-direct {v1, p0}, Larl;-><init>(Lari;)V

    iput-object v1, p0, Lari;->q:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lari;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lari;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lari;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lari;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lari;->d:[B

    iget v2, p0, Lari;->b:I

    iget v3, p0, Lari;->c:I

    iget v4, p0, Lari;->a:I

    invoke-static {v1, v2, v3, v4}, La;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lari;->p:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lari;->s:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lari;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Lari;->p:Landroid/graphics/Bitmap;

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

    iget-object v3, p0, Lari;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lari;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lari;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lari;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lari;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Larr;->h:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v0, Larr;->g:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lari;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lari;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    iget-object v0, p0, Lari;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lari;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0a6b

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
