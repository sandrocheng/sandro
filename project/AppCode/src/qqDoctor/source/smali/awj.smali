.class public final Lawj;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawj$a;,
        Lawj$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/util/DisplayMetrics;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/view/SurfaceView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ProgressBar;

.field private n:Lawj$b;

.field private o:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

.field private p:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

.field private q:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Z

.field private v:Lawj$a;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f030130

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/QQSecureDownload/caixin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lawj;->i:Ljava/lang/String;

    new-instance v0, Lawo;

    invoke-direct {v0, p0}, Lawo;-><init>(Lawj;)V

    iput-object v0, p0, Lawj;->y:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lawj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lawj;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lawj;)Lawj$b;
    .locals 1

    iget-object v0, p0, Lawj;->n:Lawj$b;

    return-object v0
.end method

.method static synthetic c(Lawj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lawj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lawj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lawj;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lawj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lawj;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lawj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lawj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lawj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lawj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lawj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lawj;)Z
    .locals 1

    iget-boolean v0, p0, Lawj;->u:Z

    return v0
.end method

.method static synthetic l(Lawj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lawj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lawj;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lawj;->u:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[A-Za-z0-9.]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lawj;->i:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/16 v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_2

    cmp-long v5, v2, v2

    if-gtz v5, :cond_5

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lk;->a(Ljava/io/File;Ljava/io/File;)Z

    const-wide/16 v0, 0x64

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_5
    move-wide v0, v2

    goto :goto_1
.end method

.method public final onBackClick()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    iget-object v0, p0, Lawj;->v:Lawj$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawj;->v:Lawj$a;

    invoke-virtual {v0}, Lawj$a;->a()V

    :cond_0
    iget-object v0, p0, Lawj;->v:Lawj$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawj;->v:Lawj$a;

    invoke-virtual {v0}, Lawj$a;->a()V

    :cond_1
    iget-object v0, p0, Lawj;->n:Lawj$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lawj;->n:Lawj$b;

    invoke-virtual {v0}, Lawj$b;->b()V

    :cond_2
    return-void
.end method

.method public final onCreate()V
    .locals 5

    const/16 v4, 0x400

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Lawj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lawj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lawj;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lawj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lawj;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lawj;->a:Landroid/widget/Button;

    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lawj;->e:Landroid/widget/ImageView;

    const v0, 0x7f0803a7

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lawj;->b:Landroid/widget/Button;

    const v0, 0x7f0803a9

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lawj;->k:Landroid/view/SurfaceView;

    iget-object v0, p0, Lawj;->a:Landroid/widget/Button;

    iget-object v1, p0, Lawj;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lawj;->b:Landroid/widget/Button;

    iget-object v1, p0, Lawj;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803aa

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lawj;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f0803ab

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lawj;->c:Landroid/widget/Button;

    iget-object v0, p0, Lawj;->c:Landroid/widget/Button;

    new-instance v1, Lawk;

    invoke-direct {v1, p0}, Lawk;-><init>(Lawj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803ac

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lawj;->d:Landroid/widget/Button;

    iget-object v0, p0, Lawj;->d:Landroid/widget/Button;

    new-instance v1, Lawl;

    invoke-direct {v1, p0}, Lawl;-><init>(Lawj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080372

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    iput-object v0, p0, Lawj;->q:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    iput-object v0, p0, Lawj;->o:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    iput-object v0, p0, Lawj;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    const v0, 0x7f0803a6

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f0803a5

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lawj;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0803a8

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lawj;->t:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lawj;->t:Landroid/widget/RelativeLayout;

    new-instance v1, Lawm;

    invoke-direct {v1, p0}, Lawm;-><init>(Lawj;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803a4

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lawj;->w:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lawj;->w:Landroid/widget/RelativeLayout;

    new-instance v1, Lawn;

    invoke-direct {v1, p0}, Lawn;-><init>(Lawj;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803ad

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lawj;->m:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lawj;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lawj$b;

    iget-object v1, p0, Lawj;->k:Landroid/view/SurfaceView;

    iget-object v2, p0, Lawj;->l:Landroid/widget/ProgressBar;

    invoke-direct {v0, p0, v1, v2}, Lawj$b;-><init>(Lawj;Landroid/view/SurfaceView;Landroid/widget/ProgressBar;)V

    iput-object v0, p0, Lawj;->n:Lawj$b;

    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lawj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawj;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lawj;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Lawj;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lawj;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lawj;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawj;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lawj;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lawj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lawj;->refreshListData()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lawj;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lawj;->mContext:Landroid/content/Context;

    const v2, 0x7f0b09e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lawj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :pswitch_3
    invoke-virtual {p0}, Lawj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lawj;->k:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-virtual {p0}, Lawj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v2, v1, :cond_0

    if-ne v3, v1, :cond_0

    const-string v1, "SMILComponent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lawj;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ladg;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lawj;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lawj;->q:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    iget-object v1, p0, Lawj;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lawj;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lawj;->k:Landroid/view/SurfaceView;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-virtual {v0}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lawj;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lawj;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lawj;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Ladg;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lawj;->q:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    iget-object v1, p0, Lawj;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lawj;->k:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lawj;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lawj;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lawj;->c:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lawj;->d:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lawj;->n:Lawj$b;

    invoke-virtual {v0}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lawj$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lawj;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lawj;->d:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Ladg;->b()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lawj$a;

    iget-object v2, p0, Lawj;->m:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lawj;->x:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Lawj$a;-><init>(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    iput-object v1, p0, Lawj;->v:Lawj$a;

    iget-object v1, p0, Lawj;->v:Lawj$a;

    invoke-virtual {v0}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lawj$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lawj;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lawj;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->k:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lawj;->d:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lawj;->o:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->o:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->startRotationAnimation()V

    iget-object v0, p0, Lawj;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->startRotationAnimation()V

    iget-object v0, p0, Lawj;->a:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lawj;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lawj;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lawj;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lawj;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lawj;->q:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->k:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lawj;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lawj;->o:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->stopRotationAnimation()V

    iget-object v0, p0, Lawj;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->stopRotationAnimation()V

    iget-object v0, p0, Lawj;->o:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingOutsideView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/imageview/LoadingInsideView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->q:Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    iget-object v0, p0, Lawj;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lawj;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lawj;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
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

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBar(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
