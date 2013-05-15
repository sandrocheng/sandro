.class public Lcom/avast/android/mobilesecurity/scan/ScanFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "ScanFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/avast/android/mobilesecurity/scan/k;


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/Button;

.field private i:Lcom/avast/android/mobilesecurity/scan/g;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Class;

.field private m:Landroid/net/Uri;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private t:Landroid/database/ContentObserver;

.field private u:I

.field private v:Lcom/avast/android/mobilesecurity/scan/ScanService;

.field private w:I

.field private x:Ljava/lang/Runnable;

.field private y:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->p:Z

    .line 98
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->q:Z

    .line 99
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->r:Z

    .line 325
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/e;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/scan/e;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->x:Ljava/lang/Runnable;

    .line 410
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/f;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/scan/f;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->y:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/scan/ScanFragment;Lcom/avast/android/mobilesecurity/scan/ScanService;)Lcom/avast/android/mobilesecurity/scan/ScanService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->v:Lcom/avast/android/mobilesecurity/scan/ScanService;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->f()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/scan/ScanFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->b(Z)V

    return-void
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->p:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0013

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->p:Z

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->am()Z

    move-result v0

    .line 380
    if-lez p1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const v0, 0x7f020179

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 388
    :cond_0
    :goto_2
    iput p1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->w:I

    .line 389
    return-void

    :cond_1
    move v0, v2

    .line 375
    goto :goto_0

    .line 381
    :cond_2
    const v0, 0x7f020186

    goto :goto_1

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private b(Z)V
    .locals 6
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->u:I

    .line 337
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->u:I

    div-int/lit8 v0, v0, 0x3c

    .line 338
    iget v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->u:I

    rem-int/lit8 v1, v1, 0x3c

    .line 339
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->d:Landroid/widget/TextView;

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->x:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Lcom/avast/android/mobilesecurity/scan/ScanService;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->v:Lcom/avast/android/mobilesecurity/scan/ScanService;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->j:Z

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x2713

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 398
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    .line 402
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->m:Landroid/net/Uri;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->m:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->o:Z

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 274
    sget-object v0, Lcom/avast/android/mobilesecurity/scan/j;->a:Lcom/avast/android/mobilesecurity/scan/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/j;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 275
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->n:Z

    if-eqz v0, :cond_2

    .line 276
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->m:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->i:Lcom/avast/android/mobilesecurity/scan/g;

    invoke-interface {v0, v1}, Lcom/avast/android/mobilesecurity/scan/g;->b(Z)V

    .line 295
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->i:Lcom/avast/android/mobilesecurity/scan/g;

    invoke-interface {v0, v1}, Lcom/avast/android/mobilesecurity/scan/g;->c(Z)V

    .line 280
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->f()V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->v:Lcom/avast/android/mobilesecurity/scan/ScanService;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->j:Z

    if-eqz v0, :cond_3

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    const-string v1, "widgetScan"

    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->v:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 292
    :cond_4
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->n:Z

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->o:Z

    goto :goto_0
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 368
    :pswitch_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->b(I)V

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/avast/android/mobilesecurity/scan/ScanProgress;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->j:Z

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->n:Z

    .line 300
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->e:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    iget-boolean v2, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 305
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    iget v2, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 306
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    iget v2, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    iget v3, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 308
    iget v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    iget v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->u:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->u:I

    .line 310
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->g:Landroid/widget/TextView;

    iget-boolean v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget v0, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    int-to-float v0, v0

    iget v2, p1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 315
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->b(Z)V

    .line 318
    iget v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->w:I

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->b(I)V

    .line 319
    return-void

    :cond_0
    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->m:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->i:Lcom/avast/android/mobilesecurity/scan/g;

    invoke-interface {v0, p1}, Lcom/avast/android/mobilesecurity/scan/g;->b(Z)V

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->i:Lcom/avast/android/mobilesecurity/scan/g;

    invoke-interface {v0, p1}, Lcom/avast/android/mobilesecurity/scan/g;->c(Z)V

    .line 350
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->f()V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f0c0204

    return v0
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 425
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->l:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->y:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 427
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->j:Z

    .line 428
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->j:Z

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->v:Lcom/avast/android/mobilesecurity/scan/ScanService;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->v:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->b(Lcom/avast/android/mobilesecurity/scan/k;)V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->v:Lcom/avast/android/mobilesecurity/scan/ScanService;

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->y:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->j:Z

    .line 440
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->e()V

    .line 184
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onAttach(Landroid/app/Activity;)V

    .line 155
    instance-of v0, p1, Lcom/avast/android/mobilesecurity/scan/g;

    if-eqz v0, :cond_0

    .line 156
    check-cast p1, Lcom/avast/android/mobilesecurity/scan/g;

    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->i:Lcom/avast/android/mobilesecurity/scan/g;

    .line 162
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->l:Ljava/lang/Class;

    .line 164
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->l:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ScanFragment needs serviceClass argument"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity has to implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/avast/android/mobilesecurity/scan/g;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "serviceClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->l:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 171
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_3

    .line 173
    const-string v0, "logUri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->m:Landroid/net/Uri;

    .line 174
    const-string v0, "skipable"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->p:Z

    .line 175
    const-string v0, "logInvisible"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->q:Z

    .line 176
    const-string v0, "widgetScan"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->r:Z

    .line 178
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->s:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->k:Z

    .line 142
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/avast/android/mobilesecurity/scan/b;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->s:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/avast/android/mobilesecurity/scan/b;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;Landroid/os/Handler;Landroid/support/v4/app/LoaderManager;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->t:Landroid/database/ContentObserver;

    .line 149
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 356
    packed-switch p1, :pswitch_data_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :pswitch_0
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->c()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 356
    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 188
    const v0, 0x7f030060

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 190
    const v0, 0x7f070110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    .line 191
    if-eqz p3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    const-string v2, "progressMax"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 193
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    const-string v2, "progress"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 195
    :cond_0
    const v0, 0x7f070140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->b:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f07005b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f070151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->d:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f07014d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->e:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f07014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->f:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f07010f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->g:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f070127

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/mobilesecurity/scan/c;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/scan/c;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0013

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->q:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    :cond_1
    const v0, 0x7f0700c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->p:Z

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const v2, 0x7f0c01e4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :cond_2
    new-instance v2, Lcom/avast/android/mobilesecurity/scan/d;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/scan/d;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    if-eqz p3, :cond_3

    .line 234
    const-string v0, "logLaunched"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->o:Z

    .line 235
    const-string v0, "scanRunning"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->n:Z

    .line 236
    const-string v0, "lastProblemsCount"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->w:I

    .line 239
    :cond_3
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 444
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroy()V

    .line 445
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->d()V

    .line 446
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->k:Z

    .line 267
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->d()V

    .line 269
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->t:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 256
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->k:Z

    .line 258
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c()V

    .line 259
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->t:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    const-string v0, "logLaunched"

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string v0, "scanRunning"

    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "progress"

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string v0, "progressMax"

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    :cond_0
    const-string v0, "lastProblemsCount"

    iget v1, p0, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    return-void
.end method
