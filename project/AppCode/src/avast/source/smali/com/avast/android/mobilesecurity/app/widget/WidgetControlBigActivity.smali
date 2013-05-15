.class public Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;
.super Lcom/avast/android/generic/ui/BaseActivity;
.source "WidgetControlBigActivity.java"


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/manager/a/i;

.field private b:Lcom/avast/android/mobilesecurity/app/widget/g;

.field private c:Lcom/avast/android/mobilesecurity/app/widget/h;

.field private g:Landroid/os/Looper;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private final q:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseActivity;-><init>()V

    .line 203
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->q:Ljava/text/NumberFormat;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/a/j;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/manager/a/q;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/app/manager/a/q;-><init>()V

    new-instance v2, Lcom/avast/android/mobilesecurity/app/manager/a/n;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/app/manager/a/n;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/manager/a/j;-><init>(Lcom/avast/android/mobilesecurity/app/manager/a/k;Lcom/avast/android/mobilesecurity/app/manager/a/l;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->a:Lcom/avast/android/mobilesecurity/app/manager/a/i;

    .line 222
    new-instance v0, Lcom/avast/android/mobilesecurity/app/widget/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/widget/g;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;Lcom/avast/android/mobilesecurity/app/widget/a;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->b:Lcom/avast/android/mobilesecurity/app/widget/g;

    .line 224
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemSummaryInfo"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 226
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->g:Landroid/os/Looper;

    .line 227
    new-instance v1, Lcom/avast/android/mobilesecurity/app/widget/h;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->g:Landroid/os/Looper;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, p0, v2, v0}, Lcom/avast/android/mobilesecurity/app/widget/h;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;Landroid/os/Looper;Landroid/app/ActivityManager;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    .line 229
    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 329
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerActivity;->call(Landroid/content/Context;I)V

    .line 330
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->finish()V

    .line 331
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 235
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->h:Landroid/widget/ProgressBar;

    .line 236
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->i:Landroid/widget/ProgressBar;

    .line 237
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->j:Landroid/widget/ProgressBar;

    .line 238
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->k:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->l:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->m:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->n:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->o:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->p:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/avast/android/mobilesecurity/app/widget/a;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/widget/a;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 254
    new-instance v1, Lcom/avast/android/mobilesecurity/app/widget/b;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/widget/b;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 264
    new-instance v1, Lcom/avast/android/mobilesecurity/app/widget/c;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/widget/c;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 273
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 274
    new-instance v1, Lcom/avast/android/mobilesecurity/app/widget/d;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/widget/d;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 284
    new-instance v1, Lcom/avast/android/mobilesecurity/app/widget/e;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/widget/e;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 293
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 294
    new-instance v1, Lcom/avast/android/mobilesecurity/app/widget/f;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/widget/f;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 302
    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Ljava/text/NumberFormat;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->q:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/h;->sendEmptyMessage(I)Z

    .line 315
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/h;->sendEmptyMessage(I)Z

    .line 316
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/h;->sendEmptyMessage(I)Z

    .line 317
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/h;->sendEmptyMessage(I)Z

    .line 318
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/h;->sendEmptyMessage(I)Z

    .line 319
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/h;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    return-object v0
.end method

.method static synthetic l(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/manager/a/i;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->a:Lcom/avast/android/mobilesecurity/app/manager/a/i;

    return-object v0
.end method

.method static synthetic m(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;)Lcom/avast/android/mobilesecurity/app/widget/g;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->b:Lcom/avast/android/mobilesecurity/app/widget/g;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->a(Z)V

    .line 209
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->setContentView(I)V

    .line 211
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->a()V

    .line 212
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->b()V

    .line 213
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseActivity;->onDestroy()V

    .line 342
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->g:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 343
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseActivity;->onStart()V

    .line 307
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c()V

    .line 308
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseActivity;->onStop()V

    .line 336
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;->c:Lcom/avast/android/mobilesecurity/app/widget/h;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/h;->sendEmptyMessage(I)Z

    .line 337
    return-void
.end method
